using System;
using UnityEngine;

namespace UnityStandardAssets.Characters.ThirdPerson
{
    [RequireComponent(typeof (ThirdPersonCharacter))]
    public class ThirdPersonUserControl : MonoBehaviour
    {
        private ThirdPersonCharacter m_Character; // A reference to the ThirdPersonCharacter on the object
        private Transform m_Cam;                  // A reference to the main camera in the scenes transform
        private Vector3 m_CamForward;             // The current forward direction of the camera
		private Vector3 m_Move;					 // the world-relative desired move direction, calculated from the camForward and user input.
		private bool m_Jump, canSprint = false, canDash = false, isMoving = false; 
        private Animator anim;
        private float sprintTimer, dashTimer;
        private static Vector3 playerPos;
                            
        private void Start()
        {
			m_Cam = Camera.allCameras[0].transform;
            m_Character = GetComponent<ThirdPersonCharacter>();
			anim = GetComponent<Animator>();
			playerPos = transform.position;
        }

        private void Update()
        {
            if (!m_Jump)
            {
				m_Jump = Input.GetButtonDown("Jump");
            }
			if (Input.GetKeyDown(KeyCode.LeftShift) && m_Character.m_IsGrounded)
			{
				sprintTimer = 0;
				canSprint = true;
			}
			if (Input.GetKeyUp(KeyCode.LeftShift))
			{
				if (canSprint)
				{
					anim.speed = 1;
					if (sprintTimer < 0.2f)
					{
						canDash = true;
						dashTimer = 0.5f;
					}
					canSprint = false;
				}
			}
			if (canSprint)
			{
				sprintTimer += Time.deltaTime;
				if (sprintTimer > 0.8f)
				{
					anim.speed = 1.5f;
				}
			}
			if (canDash)
			{
				transform.Translate(Vector3.forward * Time.deltaTime * 20);
				dashTimer += Time.deltaTime;
				if (dashTimer > 0.7)
				{
					canDash = false;
				}
			}
        }

        // Fixed update is called in sync with physics
        private void FixedUpdate()
        {
            // read inputs
            float h = Input.GetAxis("Horizontal");
            float v = Input.GetAxis("Vertical");
            
			//Check if playing is moving and disable sprinting if not moving
			if (transform.position.z != playerPos.z)
				isMoving = true;
			else
				isMoving = false;
			playerPos = transform.position;
			if (canSprint && !isMoving)
			{
				anim.speed = 1;
				canSprint = false;
			}

            // calculate move direction to pass to character
            if (m_Cam != null)
            {
                // calculate camera relative direction to move:
                //move player forward
                m_CamForward = Vector3.Scale(m_Cam.forward, new Vector3(1, 0, 1)).normalized;
                //Enable turn and move forward
                m_Move = v*m_CamForward + h*m_Cam.right;
            }
            else
            {
                // we use world-relative directions in the case of no main camera
                m_Move = v*Vector3.forward + h*Vector3.right;
            }
#if !MOBILE_INPUT
			// walk speed multiplier
	        if (Input.GetKey(KeyCode.LeftShift)) m_Move *= 1.5f;
#endif

            // pass all parameters to the character control script
            m_Character.Move(m_Move, m_Jump);
            m_Jump = false;
        }
    }
}

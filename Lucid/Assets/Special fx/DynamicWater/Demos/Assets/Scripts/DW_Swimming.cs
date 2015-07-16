using UnityEngine;
using LostPolygon.DynamicWaterSystem;
using UnityStandardAssets.Characters.FirstPerson;

/// <summary>
/// An example of the swimming script.
/// </summary>
[RequireComponent(typeof (CharacterController))]
[RequireComponent(typeof (WaterDetector))]
public class DW_Swimming : MonoBehaviour {
    public float SwimSpeed = 1f;
    public KeyCode SwimUpKey = KeyCode.X;

    private CharacterController _controller;
	private FirstPersonController _firstPersonController;
    private WaterDetector _waterDetector;

    private bool _isSubmerged = true;

    private void Start() {
		_firstPersonController = GetComponent<FirstPersonController>();
        Camera.allCameras[0].depthTextureMode = DepthTextureMode.Depth;
    }

    private void Update() {
        // Checking for WaterDetector
        if (_waterDetector == null) {
            _waterDetector = GetComponent<WaterDetector>() ?? gameObject.AddComponent<WaterDetector>();
        }

        // If we are in the water
        if (_waterDetector != null) {
            _controller = GetComponent<CharacterController>();
			_firstPersonController = GetComponent<FirstPersonController>();

            // If we are actually submerged to a some extent
            float waterLevel = _waterDetector.GetWaterLevel(transform.position);

            float min = _controller.bounds.center.y;
            float max = _controller.bounds.center.y + _controller.height / 2f;

            // Assume we can swim when at least half submerged into water
            _isSubmerged = (min < waterLevel && max > waterLevel) || (min < waterLevel && max < waterLevel);

            // Value of 1 means fully submerged, value of 0 means not submerged
            float submergedCoeff = Mathf.Clamp01((waterLevel - min) / (max - min));

            if (_isSubmerged) {
                bool flag = Input.GetKey(SwimUpKey);
				_firstPersonController.canJump = false;
				_firstPersonController.m_WalkSpeed = 2.5f;
				_firstPersonController.m_RunSpeed = 5;
				_firstPersonController.canPlaySound = false;
				_firstPersonController.m_GravityMultiplier = .5f;
                if (flag) {
					_firstPersonController.m_MoveDir.y = .5f;
                }

                // Swimming u
                if (Input.GetKey(SwimUpKey)) {
                    _controller.Move(Vector3.up * SwimSpeed * submergedCoeff * Time.deltaTime);
                }
            }
			else
			{
				_firstPersonController.m_WalkSpeed = 5;
				_firstPersonController.m_RunSpeed = 10;
				_firstPersonController.canJump = true;
				_firstPersonController.canPlaySound = true;
				_firstPersonController.m_GravityMultiplier = 2;
			}
        }
    }
}
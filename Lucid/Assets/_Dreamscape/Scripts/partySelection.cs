using UnityEngine;
using System.Collections;
using UnityStandardAssets.Characters.FirstPerson;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class partySelection : MonoBehaviour {
	[SerializeField] Transform partySelectionUI, aimer; 
	[SerializeField] GameObject partyNameInput;
	private GameObject target;
	private string roomName;
	private bool fadeIn = false, canFade = false;
	private CanvasGroup canvasGroup;
	
	void Awake ()
	{
		canvasGroup = partySelectionUI.gameObject.GetComponent<CanvasGroup>();
	}
	
	void Update () 
	{
		if (target != null)
		{
			aimer.rotation = Quaternion.LookRotation(aimer.position  - target.transform.position);
			partySelectionUI.rotation = Quaternion.Slerp(partySelectionUI.rotation, 
			                                             aimer.rotation, 
			                                      		 Time.deltaTime * 1.5f); 
		}
		if (Input.GetKeyDown("e"))
		{
			Cursor.visible = true;
			target.GetComponent<CharacterController>().enabled = false;
			target.GetComponent<FirstPersonController>().enabled = false;
			EventSystem.current.SetSelectedGameObject(partyNameInput.gameObject, null);
		}
		if (Input.GetKeyDown(KeyCode.Escape))
		{
			btnLeave();
		}
		if (canFade)
		{
			if (fadeIn)
			{
				canvasGroup.alpha += Time.deltaTime;
				if (canvasGroup.alpha > 1)
					canFade = false;
			}
			else
			{
				canvasGroup.alpha -= Time.deltaTime;
				if (canvasGroup.alpha < 0)
					canFade = false;
			}
		}
	}
	
	void OnTriggerEnter(Collider other)
	{
		if (other.gameObject.tag == "Player" && other.GetComponent<CharacterController>().enabled == true)
		{
			
			target = other.gameObject;
			canFade = true;
			fadeIn = true;
		}
	}
	
	void OnTriggerExit(Collider other)
	{
		if (other.gameObject.tag == "Player" && other.GetComponent<CharacterController>().enabled == true)
		{	
			canFade = true;
			fadeIn = false;
		}
	}
	
	public void btnLeave()
	{
		Cursor.visible = false;
		target.GetComponent<CharacterController>().enabled = true;
		target.GetComponent<FirstPersonController>().enabled = true;
	}
	
	public void btnConnect()
	{
		roomName = partyNameInput.GetComponent<InputField>().text;
		PhotonNetwork.LeaveRoom();
		PlayerPrefs.SetString("roomName", roomName);
		Application.LoadLevel(2);
	}
	
	
}

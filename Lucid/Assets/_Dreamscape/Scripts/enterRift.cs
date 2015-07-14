using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class enterRift : Photon.MonoBehaviour {
	public string roomName = "Cake";
	
	void Start () {
		//PhotonNetwork.LoadLevel();
	}
	
	void Update () {
	
	}
	
//	void OnTriggerEnter(Collider other)
//	{
//		if (other.gameObject.name == "yggdrasilInterior")
//		{
//			roomName = other.GetComponent<InputField>().text;
//			PhotonNetwork.LeaveRoom();
//			PlayerPrefs.SetString("roomName", roomName);
//			Application.LoadLevel(2);
//		}
//		
//	}
}

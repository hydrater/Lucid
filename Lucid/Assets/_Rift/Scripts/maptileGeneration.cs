using UnityEngine;
using System.Collections;

public class maptileGeneration : Photon.MonoBehaviour {
	const string VERSION = "Prototype";
	
	//FOR FOLIAGE SYSTEM, MAKE SURE TO DESTROY SCRIPT AFTER CHECKING

	void Awake () 
	{
		PhotonNetwork.ConnectUsingSettings(VERSION);
	}
	
	void OnJoinedLobby()
	{
		if (PlayerPrefs.GetString("roomName") == "Dreamscape" || !PlayerPrefs.HasKey("roomName"))
		{
			RoomOptions roomOptions = new RoomOptions() { isVisible = false, maxPlayers = 20};
			PhotonNetwork.JoinOrCreateRoom("Dreamscape", roomOptions, TypedLobby.Default);
			PlayerPrefs.SetString("roomName", "Dreamscape");
		}
		else
		{
			RoomOptions roomOptions = new RoomOptions() { isVisible = true, maxPlayers = 4};
			PhotonNetwork.JoinOrCreateRoom(PlayerPrefs.GetString("roomName"), roomOptions, TypedLobby.Default);
			PlayerPrefs.SetString("roomName", "Dreamscape");
		}
	}
	
	void OnJoinedRoom()
	{
		//size of 750
		for (int x = 0; x < 6; x++)
		{
			for (int y = 0; y < 6; y++)
			{
				switch(Random.Range(0,3))
				{
				case 0:
					PhotonNetwork.Instantiate("maptile0", new Vector3 (750*x,0,750*y), transform.rotation, 0);
					break;
				case 1:
					PhotonNetwork.Instantiate("maptile1", new Vector3 (750*x,0,750*y), transform.rotation, 0);
				break;
					case 2:
					PhotonNetwork.Instantiate("maptile2", new Vector3 (750*x,0,750*y), transform.rotation, 0);
					break;
				default:
				break;
				}
			}
		}
	}
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}

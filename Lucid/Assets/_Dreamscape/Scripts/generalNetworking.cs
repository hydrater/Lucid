using System.Collections.Generic;
using UnityEngine;
using System.Collections;
using UnityEngine.UI;

[RequireComponent(typeof(PhotonView))]
public class generalNetworking : Photon.MonoBehaviour
{
	private CanvasGroup canvasGroup;
	const string VERSION = "Prototype";
	[SerializeField] private string playerPrefab = "Player";
	[SerializeField] private GameObject loadingScreen;
	
	public Rect GuiRect = new Rect(0,0, 250,300);
	public bool IsVisible = true;
	public bool AlignBottom = false;
	public List<string> messages = new List<string>();
	private string inputLine = "";
	private Vector2 scrollPos = Vector2.zero;
	public static readonly string ChatRPC = "Chat";
	
	void Awake () 
	{
		PhotonNetwork.ConnectUsingSettings(VERSION);
		if (this.AlignBottom)
			this.GuiRect.y = Screen.height - this.GuiRect.height;
		PhotonNetwork.playerName = PlayerPrefs.GetString("Name");
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
		PhotonNetwork.Instantiate(playerPrefab, transform.position, transform.rotation, 0);
		Destroy(loadingScreen);
	}
	
	public void OnGUI()
	{
		if (!this.IsVisible || PhotonNetwork.connectionStateDetailed != PeerState.Joined)
		{
			return;
		}
		
		if (Event.current.type == EventType.KeyDown && (Event.current.keyCode == KeyCode.KeypadEnter || Event.current.keyCode == KeyCode.Return))
		{
			if (!string.IsNullOrEmpty(this.inputLine))
			{
				this.photonView.RPC("Chat", PhotonTargets.All, this.inputLine);
				this.inputLine = "";
				GUI.FocusControl("");
				return;
			}
			else
			{
				GUI.FocusControl("ChatInput");
			}
		}
		
		GUI.SetNextControlName("");
		GUILayout.BeginArea(this.GuiRect);
		scrollPos = GUILayout.BeginScrollView(scrollPos);
		GUILayout.FlexibleSpace();
		for (int i = 0; i < messages.Count; i++)
		{
			GUILayout.Label(messages[i]);
		}
		GUILayout.EndScrollView();
		GUILayout.BeginHorizontal();
		GUI.SetNextControlName("ChatInput");
		inputLine = GUILayout.TextField(inputLine);
		if (GUILayout.Button("Send", GUILayout.ExpandWidth(false)))
		{
			this.photonView.RPC("Chat", PhotonTargets.All, this.inputLine);
			this.inputLine = "";
			GUI.FocusControl("");
		}
		GUILayout.EndHorizontal();
		GUILayout.EndArea();
	}
	
	[PunRPC]
	public void Chat(string newLine, PhotonMessageInfo mi)
	{
		string senderName = mi.sender.name;
		this.messages.Add(senderName +": " + newLine);
		scrollPos.y =  Mathf.Infinity;
	}
	
	public void AddLine(string newLine)
	{
		this.messages.Add(newLine);
	}
	
	public void OnMasterClientSwitched(PhotonPlayer player)
	{
		string message;
		if (player.isLocal)
			message = "You are Master Client now.";
		else
			message = player.name + " is Master Client now.";
			AddLine(message);
	}
}












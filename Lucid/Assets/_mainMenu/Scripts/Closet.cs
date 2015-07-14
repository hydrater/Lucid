#pragma warning disable 0649
using UnityEngine;
using System.Collections;
using UnityStandardAssets.Characters.FirstPerson;

public class Closet : MonoBehaviour {
	[SerializeField] private GameObject closetUI, player, saveLoadUI;
	private bool canUse = false, canFade = false, fadeIn = false;
	private CanvasGroup canvasGroup;
	
	void Awake ()
	{
		canvasGroup = closetUI.GetComponent<CanvasGroup>();
	}
	
	void Update () {
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
		
		if (Input.GetKeyDown("e"))
		{
			if (canUse)
				{
					player.GetComponent<CharacterController>().enabled = false;
					player.GetComponent<FirstPersonController>().enabled = false;
					Cursor.visible = true;
					saveLoadUI.SetActive(true);
				}
		}
	}
	
	void OnTriggerEnter(Collider other)
	{
		if (other.tag == "Player")
		{	
			canFade = true;
			fadeIn = true;
			canUse = true;
			player = other.gameObject;
		}
	}
	
	void OnTriggerExit(Collider other)
	{
		if (other.tag == "Player")
		{	
			canFade = true;
			fadeIn = false;
			canUse = false;
		}
	}
}

#pragma warning disable 0649
using UnityEngine;
using System.Collections;
using UnityEngine.UI; 

public class Lamp : MonoBehaviour {
	[SerializeField] private AudioClip on, off;
	private AudioSource audioToPlay;
	[SerializeField] private GameObject lampUI, lights;
	private bool canUse = false, canFade = false, fadeIn = false, switchState = true;
	private CanvasGroup canvasGroup;
	[SerializeField] private Text instruction;
	
	void Awake ()
	{
		canvasGroup = lampUI.GetComponent<CanvasGroup>();
		audioToPlay = GetComponent<AudioSource>();
		
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
			if(canUse)
			{
				if (switchState)
				{
					lights.SetActive(false);
					switchState = false;
					instruction.text = "       Press E to\nbrighten the lights";
					audioToPlay.clip = off;
					audioToPlay.Play();
				}
				else
				{
					lights.SetActive(true);
					switchState = true;
					instruction.text = "       Press E to\n    dim the lights";
					audioToPlay.clip = on;
					audioToPlay.Play();
				}
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

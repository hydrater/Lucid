#pragma warning disable 0649
using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Bed : MonoBehaviour {
	[SerializeField] private GameObject bedUI, bedText;
	private bool fadeIn = false, canFade = false, canSleep = false;
	private CanvasGroup canvasGroup;
	
	void Awake ()
	{
		canvasGroup = bedUI.GetComponent<CanvasGroup>();
	}
	
	void Update () 
	{
		if (Input.GetKeyDown("e"))
		{
			if (canSleep)
			{
				Application.LoadLevel(1);
			}
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
		if (other.tag == "Player")
		{	
			if (!PlayerPrefs.HasKey("fileLoad"))
				bedText.GetComponent<Text>().text = "  Go to the closest\nand get a save first";
			else
			{
				bedText.GetComponent<Text>().text = "Press E to\ngo to bed";
				canSleep = true;
			}
			canFade = true;
			fadeIn = true;
		}
	}
	
	void OnTriggerExit(Collider other)
	{
		if (other.tag == "Player")
		{	
			canFade = true;
			fadeIn = false;
			canSleep = false;
		}
	}
}

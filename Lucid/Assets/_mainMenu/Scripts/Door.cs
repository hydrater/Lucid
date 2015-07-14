#pragma warning disable 0649
using UnityEngine;
using System.Collections;

public class Door : MonoBehaviour {
	
	[SerializeField] private GameObject door, target, doorUI;
	private bool doorMove = false, canMove = false, fadeIn = false, canFade = false;
	private CanvasGroup canvasGroup;
	
	void Awake ()
	{
		canvasGroup = doorUI.GetComponent<CanvasGroup>();
	}
	
	void Update () 
	{
		if (Input.GetKeyDown("e"))
		{
			if (canMove)
				doorMove = true;
		}
		if (doorMove)
		{
			if (Vector3.Distance(door.transform.position, target.transform.position) > 0.05f)
				door.transform.position = Vector3.Lerp(door.transform.position, target.transform.position, Time.deltaTime);
			else
				Application.Quit();
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
			canFade = true;
			fadeIn = true;
			canMove = true;
		}
	}
	
	void OnTriggerExit(Collider other)
	{
		if (other.tag == "Player")
		{	
			canFade = true;
			fadeIn = false;
			canMove = false;
		}
	}
}

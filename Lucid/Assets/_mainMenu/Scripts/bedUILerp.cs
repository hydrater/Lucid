#pragma warning disable 0649
using UnityEngine;
using System.Collections;

public class bedUILerp : MonoBehaviour {
	[SerializeField] private GameObject targetRotation;
	void Update () {
		transform.rotation = Quaternion.Slerp(transform.rotation, 
		                                      targetRotation.transform.rotation, 
		                                      Time.deltaTime * 1.5f); 
	}
}

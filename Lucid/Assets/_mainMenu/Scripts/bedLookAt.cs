#pragma warning disable 0649
using UnityEngine;
using System.Collections;

public class bedLookAt : MonoBehaviour {
	[SerializeField] private Transform target;
	void Update () {
		transform.LookAt(target);
	}
}

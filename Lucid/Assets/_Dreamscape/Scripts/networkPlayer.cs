using UnityEngine;
using System.Collections;
using UnityStandardAssets.Characters.ThirdPerson;

public class networkPlayer : Photon.MonoBehaviour {
	Vector3 realPosition = Vector3.zero;
	Quaternion realRotation = Quaternion.identity;
	float lastUpdateTime;
	[SerializeField] GameObject _camera;

	void Start () 
	{
		if (photonView.isMine)
		{
			GetComponent<ThirdPersonCharacter>().enabled = true;
			GetComponent<ThirdPersonUserControl>().enabled = true;
			_camera.SetActive(true);
		}
		else
		
		{
			GetComponent<Rigidbody>().isKinematic = true;
			GetComponent<Rigidbody>().useGravity = false;
		}
	}
	
	void Update()
	{
		//Debug.Log(test.GetComponent<AudioSource>().timeSamples);
		if (!photonView.isMine)
		{
			transform.position = Vector3.Lerp(transform.position, realPosition, 0.1f);
			transform.rotation = Quaternion.Lerp(transform.rotation, realRotation, 0.1f);
		}
	}
	
	public void OnPhotonSerializeView (PhotonStream stream, PhotonMessageInfo info)
	{
		if (stream.isWriting)
		{
			stream.SendNext(transform.position);
			stream.SendNext(transform.rotation);
		}
		else
		{
			realPosition = (Vector3)stream.ReceiveNext();
			realRotation = (Quaternion)stream.ReceiveNext();
		}
	}
}











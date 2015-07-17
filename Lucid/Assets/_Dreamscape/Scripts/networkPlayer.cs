using UnityEngine;
using System.Collections;
using UnityStandardAssets.Characters.ThirdPerson;

public class networkPlayer : Photon.MonoBehaviour {
	Vector3 realPosition = Vector3.zero;
	Quaternion realRotation = Quaternion.identity;
	float lastUpdateTime;

	void Start () 
	{
		if (photonView.isMine)
		{
			this.GetComponent<ThirdPersonCharacter>().enabled = true;
			this.GetComponent<ThirdPersonUserControl>().enabled = true;
		}
	}
	
	void Update()
	{
		//Debug.Log(test.GetComponent<AudioSource>().timeSamples);
		if (photonView.isMine)
		{
			
		}
		else
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
			//stream.SendNext(daldal);
		}
		else
		{
			realPosition = (Vector3)stream.ReceiveNext();
			realRotation = (Quaternion)stream.ReceiveNext();
			//daldal = (bool)stream.ReceiveNext();
		}
	}
}











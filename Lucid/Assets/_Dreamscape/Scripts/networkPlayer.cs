using UnityEngine;
using System.Collections;
using UnityStandardAssets.Characters.FirstPerson;

public class networkPlayer : Photon.MonoBehaviour {
	public GameObject otherObjects, rock, daldalpic;
	Vector3 realPosition = Vector3.zero;
	Quaternion realRotation = Quaternion.identity;
	float lastUpdateTime;
	public bool daldal = false;

	void Start () 
	{
		if (photonView.isMine)
		{
			otherObjects.SetActive(true);
			GetComponent<CharacterController>().enabled = true;
			GetComponent<FirstPersonController>().enabled = true;
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
		if (daldal)
		{
			rock.SetActive(false);
			daldalpic.SetActive(true);
		}
	}
	
	public void OnPhotonSerializeView (PhotonStream stream, PhotonMessageInfo info)
	{
		if (stream.isWriting)
		{
			stream.SendNext(transform.position);
			stream.SendNext(transform.rotation);
			stream.SendNext(daldal);
		}
		else
		{
			realPosition = (Vector3)stream.ReceiveNext();
			realRotation = (Quaternion)stream.ReceiveNext();
			daldal = (bool)stream.ReceiveNext();
		}
	}
}











using UnityEngine;
using System.Collections;

public class Finish : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		//transform.Rotate(1,0,0);
	}

	void OnTriggerExit() {
		GameObject.Find("ship").GetComponent<Main>().onFinishReached();
	}
}

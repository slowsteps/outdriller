using UnityEngine;
using System.Collections;



public class Button : MonoBehaviour {
	
	public string targetscene;
	
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		//print ("ticking");
	}
	
	void OnMouseDown() {
		this.transform.localScale = new Vector3(0.05f,0.05f,1f);	
	}
	
	//public Main targetscript;
	
	void OnMouseUp() {
		this.transform.localScale = new Vector3(0.0f,0.0f,1f);	
		Application.LoadLevel(targetscene);
	}
	
}

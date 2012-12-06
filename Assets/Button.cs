using UnityEngine;
using System.Collections;



public class Button : MonoBehaviour {
	
	public string targetscene;
	private float oldz;
	
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
		//print ("ticking");
	}
	
	void OnMouseDown() {
		this.transform.Translate(0,-0.01f,0);
	}
	
	//public Main targetscript;
	
	void OnMouseUp() {
		//this.transform.localScale = new Vector3(0.0f,0.0f,1f);	
		//this.transform.translate(0,-0.2f,0);
		this.transform.Translate(0,0.01f,0);
		Application.LoadLevel(targetscene);
	}
	
	
}

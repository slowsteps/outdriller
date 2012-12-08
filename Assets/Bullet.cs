using UnityEngine;
using System.Collections;

public class Bullet : MonoBehaviour {
	
	
	// Use this for initialization
	void Start () {
		transform.Rotate(90f,0,0);
		transform.localScale = new Vector3(3,1,1);
		//transform.position = GameObject.Find("barrel").transform.position;
	
	}
	
	// Update is called once per frame
	void Update () {
		
		//transform.localScale = newScale;
		transform.Translate(0.8f,0,0);
		//transform.position = Vector3.MoveTowards(transform.position,barrel.transform.position,0.2f);
	}
}

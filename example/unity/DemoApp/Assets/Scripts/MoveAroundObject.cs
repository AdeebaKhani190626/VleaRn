using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoveAroundObject : MonoBehaviour
{
    [SerializeField]
    private float _mouseSensitivity = 3.0f;

    private float _rotationY;
    private float _rotationX;

    private Vector3 _currentRotation;
    private Vector3 _smoothVelocity = Vector3.zero;
    
    [SerializeField]
    private float _smoothTime = 0.2f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        float mouseX = Input.GetAxis("Mouse X") * _mouseSensitivity;
        float mouseY = Input.GetAxis("Mouse Y") * _mouseSensitivity;

        _rotationY += mouseX;
        _rotationX += mouseY;

        _rotationX = Mathf.Clamp(_rotationX, -40, 40);

        Vector3 nextRotation = new Vector3(_rotationX, _rotationY);
        _currentRotation = Vector3.SmoothDamp(_currentRotation, nextRotation, ref _smoothVelocity, _smoothTime);
        transform.localEulerAngles = _currentRotation;
    }
}

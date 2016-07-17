//
//  imageCaptureViewController.swift
//  testvariable
//
//  Created by Veronica Tan on 17/7/16.
//  Copyright © 2016 Veronica Tan. All rights reserved.
//

import UIKit

class imageCaptureViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func snapPhotoButton(sender: AnyObject) {
        if (UIImagePickerController.isSourceTypeAvailable(.Camera))
        {
        if UIImagePickerController.availableCaptureModesForCameraDevice(.Rear) != nil {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.Camera
            presentViewController(imagePicker, animated: true, completion: nil)
        } else {
            let alertController = UIAlertController(title: "Rear camera does not exist", message: "Application cannot access the camera", preferredStyle: .Alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alertController.addAction(defaultAction)
            
            presentViewController(alertController, animated: true, completion: nil)
        }
        } else {
            let alertController = UIAlertController(title: "Camera does not exist", message: "Application cannot access the camera", preferredStyle: .Alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alertController.addAction(defaultAction)
            
            presentViewController(alertController, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func selectPhotoButton(sender: AnyObject) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imageView.image = image
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController = segue.destinationViewController as! petNameViewController
        
        let post = Post()
        post.image = imageView.image!
        DestViewController.post = post
    }
    
}

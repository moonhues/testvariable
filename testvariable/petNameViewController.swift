//
//  ViewController.swift
//  testvariable
//
//  Created by Veronica Tan on 17/7/16.
//  Copyright © 2016 Veronica Tan. All rights reserved.
//

import UIKit

class petNameViewController: UIViewController {

    @IBOutlet weak var petNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("ddd")
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController = segue.destinationViewController as! petNameDisplayViewController
        
            let post = Post()
            post.title = petNameTextField.text!
        DestViewController.post = post
    }
   
}


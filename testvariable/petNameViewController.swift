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
    
    var post = Post?()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("ddd")
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController1 = segue.destinationViewController as! petNameDisplayViewController
        
       // let post = Post()
        post!.title = petNameTextField.text!
        DestViewController1.post = post
    }
    
}


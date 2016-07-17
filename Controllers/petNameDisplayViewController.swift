//
//  petNameDisplayViewController.swift
//  testvariable
//
//  Created by Veronica Tan on 17/7/16.
//  Copyright © 2016 Veronica Tan. All rights reserved.
//

import UIKit

class petNameDisplayViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var petNameTextLabel: UILabel!
    
    //var labelText = String()
    var post = Post?()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  petNameTextLabel.text = labelText
        petNameTextLabel.text = post?.title
        print(petNameTextLabel.text)
        imageView.image = post?.image
    }

}

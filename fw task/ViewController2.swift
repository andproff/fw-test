//
//  ViewController2.swift
//  fw task
//
//  Created by MacBookPro2 on 6/22/16.
//  Copyright © 2016 wasea. All rights reserved.
//

import UIKit
class ViewController2: UIViewController {
    var name = ""
    var email = ""
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label1.text = "Name: \(LoginManager.sharedInstance.User.name)"
        label2.text = "Email: \(LoginManager.sharedInstance.User.email)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
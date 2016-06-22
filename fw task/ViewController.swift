//
//  ViewController.swift
//  fw task
//
//  Created by MacBookPro2 on 6/22/16.
//  Copyright © 2016 wasea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        button1.addTarget(self, action: #selector(ViewController.logInLinkedIn), forControlEvents: UIControlEvents.TouchUpInside)
        button2.addTarget(self, action: #selector(ViewController.logInGoogle), forControlEvents: UIControlEvents.TouchUpInside)
        
    }

    
    func logInLinkedIn() {
        
    }
    func logInGoogle() {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


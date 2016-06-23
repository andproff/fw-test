//
//  LoginManager.swift
//  fw task
//
//  Created by MacBookPro2 on 6/22/16.
//  Copyright © 2016 wasea. All rights reserved.
//

import Foundation
import LinkedinIOSHelper

public class UserModel {
    var name = ""
    var email = ""
}

class LoginInfoLinkedin {
    var client_id = "77qmwj4lqh9x6g"
    var secret = "E11xocNh4gvi3OFK"
    var redirect = "https://www.google.com/?gws_rd=ssl"
    var state = "habrahabr"
}

public class LoginManager {
    static let sharedInstance = LoginManager()
    public var User = UserModel()
    private var linkInfo = LoginInfoLinkedin()
    private init(){}
    
    func getUserInfo(sender:ViewController){
        let linkedin = LinkedInHelper.sharedInstance()
        linkedin.cancelButtonText = "Close"
        let permissions = [ 3, 6]
        linkedin.showActivityIndicator = true
        linkedin.requestMeWithSenderViewController(sender, clientId: linkInfo.client_id, clientSecret:linkInfo.secret ,  redirectUrl: linkInfo.redirect, permissions: permissions, state: linkInfo.state, successUserInfo: {
            (info: [NSObject : AnyObject]!) in
            print(info)
            self.User.name = info["formattedName"] as! String
            self.User.email = info["emailAddress"] as! String
            NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "succes", object: nil))
        }) { (err: NSError!) in
            print(err)
        }
    }
    
    
}

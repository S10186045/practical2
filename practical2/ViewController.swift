//
//  ViewController.swift
//  practical2
//
//  Created by MAD2_P01 on 21/10/19.
//  Copyright © 2019 Victor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //creating list
    var friendList:[Friend] = []
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        //create new friend
        let friend1 = Friend(firstname: "Amy", lastname: "Ann" , age:19)
        let friend2 = Friend(firstname: "Billy", lastname: "Boo" , age:20)
        
        //appending created friend into the list
        friendList.append(friend1)
        friendList.append(friend2)
        
    }
}


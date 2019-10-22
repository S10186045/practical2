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
    
    @IBOutlet weak var txtFriends: UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        //create new friend
        let friend1 = Friend(firstname: "Amy", lastname: "Ann" , age:19)
        let friend2 = Friend(firstname: "Billy", lastname: "Boo" , age:20)
        let friend3 = Friend(firstname: "Jacky", lastname: "Tan" , age:22)
        let friend4 = Friend(firstname: "John", lastname: "Lim" , age:18)
        let friend5 = Friend(firstname: "Jollie", lastname: "Koh" , age:19)
        
        //appending created friend into the list
        friendList.append(friend1)
        friendList.append(friend2)
        friendList.append(friend3)
        friendList.append(friend4)
        friendList.append(friend5)
        
       
        
        print("The average age is \(findAverageAge())")
    }
    
    func showAllFriends(){
        txtFriends.text=""
        for f in friendList{
            txtFriends.text = txtFriends.text! + "\(f.firstName) \(f.lastName) \(f.age)" + "\n"
        }
    }
    
    func displayFriendsUnder20(){
        for f in friendList{
            if f.age < 20{
                txtFriends.text = txtFriends.text! + "\(f.firstName) \(f.lastName), you are under age!"
            }
        }
    }
    
    func findAverageAge()->Double{
        var average: Double = 0
        var total: Double = 0
        
        for f in friendList{
            total = total + Double(f.age)
        }
        
        average = total / Double(friendList.count)
       
        return average
    }
    
    @IBAction func btnClick(_ sender: Any) {
        showAllFriends()
    
    }
}


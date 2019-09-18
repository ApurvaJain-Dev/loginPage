//
//  FinalViewController.swift
//  loginPage
//
//  Created by Student-001 on 09/09/19.
//  Copyright © 2019 apurva. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet var firstNameLabel: UILabel!
    
    
    @IBOutlet var lastNameLabel: UILabel!
    
    
    @IBOutlet var emailLabel: UILabel!
    
    
    @IBOutlet var locationLabel: UILabel!
    
    
    @IBOutlet var mobileNumberLabel: UILabel!
    
    
    @IBOutlet var pinCodeLabel: UILabel!
    
    
    @IBOutlet var passwordLabel: UILabel!
    
    
    @IBOutlet var confirmPasswordLabel: UILabel!
    
    var userDetails : [String : String]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.title = "Welcome " + userDetails["FirstName"]!
        firstNameLabel.text = "First Name : " + userDetails["FirstName"]!
        lastNameLabel.text = "Last Name : " + userDetails["SecondName"]!
        emailLabel.text = "Email : " + userDetails["email"]!
        locationLabel.text = "Location : " + userDetails["location"]!
        mobileNumberLabel.text = "Mobile Number : " + userDetails["mobile"]!
        pinCodeLabel.text = "Pin Code : " + userDetails["pinCode"]!
       
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

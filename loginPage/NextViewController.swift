//
//  NextViewController.swift
//  loginPage
//
//  Created by Student-001 on 09/09/19.
//  Copyright © 2019 apurva. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet var firstNameText: UITextField!
    
    
    @IBOutlet var lastNameText: UITextField!
    
    
    @IBOutlet var emailSignUpText: UITextField!
    
    
    @IBOutlet var locationText: UITextField!
    
    
    @IBOutlet var mobileNumberText: UITextField!
    
    
    @IBOutlet var pinCodeText: UITextField!
    
    
    @IBOutlet var passwordSignUpText: UITextField!
    
    
    @IBOutlet var confirmPasswordText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func submitInformationButton(_ sender: UIButton) {
        
        
        
        
      
        if !isValidFirstNameAndLastNameAndLocation(name: firstNameText.text!) {
            let alert = UIAlertController(title: "ALert", message: "Enter First Name", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        if !isValidFirstNameAndLastNameAndLocation(name: lastNameText.text!) {
            let alert = UIAlertController(title: "ALert", message: "Enter Last Name", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        if !isValidEmailAddress(name: emailSignUpText.text!) {
            let alert = UIAlertController(title: "ALert", message: "Enter Email Address Properly", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        if !isValidFirstNameAndLastNameAndLocation(name: locationText.text!) {
            let alert = UIAlertController(title: "ALert", message: "Enter location Properly", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        if !isValidPhoneNumberAndPinCode(name: mobileNumberText.text!) {
            let alert = UIAlertController(title: "ALert", message: "Enter phone number Properly", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        if !isValidPhoneNumberAndPinCode(name: pinCodeText.text!) {
            let alert = UIAlertController(title: "ALert", message: "Enter pin code Properly", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        if  (passwordSignUpText.text == confirmPasswordText.text) {
            print("password is correct")
            let login = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            
            navigationController?.pushViewController(login, animated: true)
        }
        else {
            let alert = UIAlertController(title: "Alert", message: "Enter both the password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
      // if (emailSignUpText.text?.isValidEmail())! {
        
        
        }
    
    func isValidFirstNameAndLastNameAndLocation(name: String) -> Bool {
        
        let regex = try! NSRegularExpression(pattern: "^[A-Z]{1,9}$", options: .caseInsensitive)
        return regex.firstMatch(in: name, options: [], range: NSRange(location: 0, length: name.count)) != nil
    }
    
    func isValidEmailAddress(name: String) -> Bool {
         let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
        return regex.firstMatch(in: name, options: [], range: NSRange(location: 0, length: name.count)) != nil
    }
    
    func isValidPhoneNumberAndPinCode(name: String) -> Bool {
        let regex = try! NSRegularExpression(pattern: "^[0-9]{0,10}$", options: .caseInsensitive)
        return regex.firstMatch(in: name, options: [], range: NSRange(location: 0, length: name.count)) != nil
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

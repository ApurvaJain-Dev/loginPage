//
//  ViewController.swift
//  loginPage
//
//  Created by Student-001 on 09/09/19.
//  Copyright © 2019 apurva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!

    
    @IBOutlet var passwordTextField: UITextField!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func loginButton(_ sender: UIButton) {
        
        if (emailTextField.text?.isValidEmail())! {
            
        
        let finalForward = storyboard?.instantiateViewController(withIdentifier: "FinalViewController") as! FinalViewController
        
        navigationController?.pushViewController(finalForward, animated: true)
        
    }
        else {
             let alert = UIAlertController(title: "Alert", message: "Please enter email address", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler:  nil ))
            self.present(alert, animated: true, completion: nil)
        }
    
    }
    @IBAction func signUpButton(_ sender: UIButton) {
        
     let next = storyboard?.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        
        navigationController?.pushViewController(next, animated: true)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension String {
    func isValidEmail() -> Bool {
        // here, `try!` will always succeed because the pattern is valid
        let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
        return regex.firstMatch(in: self, options: [], range: NSRange(location: 0, length: count)) != nil
    }
}

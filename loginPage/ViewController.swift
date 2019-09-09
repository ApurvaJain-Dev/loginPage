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
    
    var emailTextFields: String = ""
    
    @IBOutlet var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func loginButton(_ sender: UIButton) {
        
        let finalForward = storyboard?.instantiateViewController(withIdentifier: "FinalViewController") as! FinalViewController
        
        navigationController?.pushViewController(finalForward, animated: true)
        
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


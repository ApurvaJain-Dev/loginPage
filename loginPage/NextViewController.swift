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
        
        let login = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        navigationController?.pushViewController(login, animated: true)
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

//
//  ViewController.swift
//  appWordpay
//
//  Created by Jacob Smith on 11/27/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var placeFirstViewTextField: UITextField!
    @IBOutlet weak var sentenceTextField: UITextView!
    
    //properties:
    

    //functions:
    override func viewDidLoad() {
        super.viewDidLoad()
        
        placeFirstViewTextField.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! SecondViewController
        if let placeVar = placeFirstViewTextField.text {
            print(placeVar)
            nvc.firstDataPassed = placeVar
        }
 
        
    }
    

}


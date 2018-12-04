//
//  SecondViewController.swift
//  appWordpay
//
//  Created by Jacob Smith on 11/28/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //properties:
    
    var firstDataPassed: String = ""
    var secondDataPassed: String!
    @IBOutlet weak var MVPSecondViewTextField: UITextView!
    var defaultData: String!
    
    //functions:
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(firstDataPassed)
        
        let firstPartOfTheFullSentence = "My uncle wants to go the "
        
        MVPSecondViewTextField.text = "\(firstPartOfTheFullSentence)" + "\(firstDataPassed)"
        
        
        
        
    }
    

    
}

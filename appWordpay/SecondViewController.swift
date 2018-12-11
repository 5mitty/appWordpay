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
    var stretch1NounSVC: String = ""
    var stretch1AdjectiveSVC: String = ""
    var stretch1VerbSVC: String = ""
    
    @IBOutlet weak var MVPSecondViewTextField: UITextView!
    
    @IBOutlet weak var S1SVCMadLibTextView: UITextView!
    
    //functions:
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MVP Start
        print(firstDataPassed)
        
        let firstPartOfTheFullSentence = "My uncle wants to go the "
        
        MVPSecondViewTextField.text = "\(firstPartOfTheFullSentence)" + "\(firstDataPassed)."
        //MVP End
        
        // The adjective foot stomps on Noun while you just Verb
        
        
        //Stretch 1 Start
        if stretch1NounSVC == "" {
            return
        } else {
            S1SVCMadLibTextView.text = "The " + "\(stretch1AdjectiveSVC.lowercased()) " + "foot stomps on " + "\(stretch1NounSVC), " + "while you just " + "\(stretch1VerbSVC.lowercased())."
        }
        
        //Stretch 1 End
        
    }
    

    
}

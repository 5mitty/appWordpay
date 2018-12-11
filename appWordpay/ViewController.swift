//
//  ViewController.swift
//  appWordpay
//
//  Created by Jacob Smith on 11/27/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //properties:
    
    //MVP
    @IBOutlet weak var placeFirstViewTextField: UITextField!
    @IBOutlet weak var sentenceTextField: UITextView!
    //Stretch1
    @IBOutlet weak var onTypedStretch1Noun: UITextField!
    @IBOutlet weak var onTypedStretch1Adjective: UITextField!
    @IBOutlet weak var onTypedStretch1Verb: UITextField!
    //Stretch2
    var isGoingToStretch23: Bool = false
    
    
    //functions:
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MVP
        placeFirstViewTextField.delegate = self
        
        //Stretch 1
        onTypedStretch1Noun.delegate = self
        onTypedStretch1Verb.delegate = self
        onTypedStretch1Adjective.delegate = self
        
    }
    
    @IBAction func onGoToStretch23(_ sender: Any) {
        isGoingToStretch23 = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(segue.identifier)
        if segue.identifier == "addSentenceSegue" {
            let nvc = segue.destination as! SecondViewController
            //MVP
            if let placeVar = placeFirstViewTextField.text {
                print(placeVar)
                nvc.firstDataPassed = placeVar
            }
        }
        if segue.identifier == "madLibSegue" {
            let nvc = segue.destination as! SecondViewController
            //Stretch1
            if let madLibNoun = onTypedStretch1Noun.text {
                print(madLibNoun)
                nvc.stretch1NounSVC = madLibNoun
            }
            if let madLibAdjective = onTypedStretch1Adjective.text {
                print(madLibAdjective)
                nvc.stretch1AdjectiveSVC = madLibAdjective
            }
            
            if let madLibVerb = onTypedStretch1Verb.text {
                print(madLibVerb)
                nvc.stretch1VerbSVC = madLibVerb
            }
        }
        if segue.identifier == "stretch23Segue" {
            let nvc = segue.destination as! ThirdViewController
        }
        
        
 
        
        
    }
    

}


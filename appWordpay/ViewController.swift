//
//  ViewController.swift
//  appWordpay
//
//  Created by Jacob Smith on 11/27/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var placeFirstViewTextField: UITextField!
    @IBOutlet weak var sentenceTextField: UITextView!
    
    //properties:
    

    //functions:
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewController
    }

}


//
//  ThirdViewController.swift
//  appWordpay
//
//  Created by Jacob Smith on 12/6/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var lookForWordTextField: UITextField!
    @IBOutlet weak var sentenceLabel: UILabel!
    var hasWord: Bool = false
    var wordLookingFor: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onFindWordButtonPressed(_ sender: Any) {
        wordLookingFor = "\(lookForWordTextField.text!)"
        FindWord()
    }
    
    func FindWord() -> Bool {
        
        print(wordLookingFor)
        print(sentenceLabel.text!)
        
        if sentenceLabel.text!.contains(wordLookingFor) {
            print("Found it")
            hasWord = true
        } else {
            print("Did not find it")
            hasWord = false
        }
        
        if hasWord == true {
            let alert = UIAlertController(title: ":)", message: nil, preferredStyle: .alert)
            let cancelAlert = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(cancelAlert)
            self.present(alert, animated: true)
        } else {
            let alert = UIAlertController(title: ";(", message: nil, preferredStyle: .alert)
            let cancelAlert = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(cancelAlert)
            self.present(alert, animated: true)
        }


        return hasWord
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

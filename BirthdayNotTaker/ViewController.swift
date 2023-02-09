//
//  ViewController.swift
//  BirthdayNotTaker
//
//  Created by Murat Çelik on 5.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var BirthdayTextField: UITextField!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var BirthdayLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
     
        let storeName = UserDefaults.standard.object(forKey: "name")
        let storeBirthday = UserDefaults.standard.object(forKey: "birthay")
        
        //Cating = as? vs  as!
        
        if let newName = storeName as? String{
            NameLabel.text = "Name: \(newName)"
        }
        if let newBirthday = storeBirthday as? String{
            BirthdayLabel.text = "Birthday: \(newBirthday)"
        }
        
    }
    @IBAction func saveClicked(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(BirthdayTextField.text!, forKey: "birthday")
        
        NameLabel.text = "Name: \(nameTextField.text!)"
        BirthdayLabel.text = "Birthday: \(BirthdayTextField.text!)"
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        
        let storeName = UserDefaults.standard.object(forKey: "name")
        let storeBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storeName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            NameLabel.text = "name"
        }
        if(storeBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            BirthdayLabel.text = "birthday"
        }
       
        
        UserDefaults.standard.removeObject(forKey: "name")
    }
    
    
}


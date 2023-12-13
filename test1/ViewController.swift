//
//  ViewController.swift
//  test1
//
//  Created by kamal on 21/11/23.
//

import UIKit
import FirebaseDatabaseInternal
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var passWordTextView: UITextField!
    @IBOutlet weak var emailTextView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextView.layer.borderWidth = 1
        emailTextView.layer.borderColor = UIColor.black.cgColor
        passWordTextView.layer.borderWidth = 1
        passWordTextView.layer.borderColor = UIColor.black.cgColor
        
        // Do any additional setup after loading the view.
        
        
        
    }
    
    @IBAction func signUp(_ sender: Any) {
        
        var ref: DatabaseReference!
        ref = Database.database().reference()
        
        ref.child("User's").childByAutoId().key
        let array = ["email": emailTextView.text,"password": passWordTextView.text]
        ref.child("User's").childByAutoId().setValue(array){
            (error:Error?, ref:DatabaseReference) in
            if let error = error {
                print("Data could not be saved: \(error).")
            } else {
                print("Data saved successfully!")
            }
        }
    }
    
    @IBAction func signIN(_ sender: Any) {
        
//        let databaseReference = Database.database().reference().child("User's")
//            if databaseReference.queryOrdered(byChild: "email").queryEqual(toValue: emailTextView.text).observeSingleEvent(of: .value){[self]
//                (snapshot) in
//                if snapshot.
            }
            
        }



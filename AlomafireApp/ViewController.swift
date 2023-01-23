//
//  ViewController.swift
//  AlomafireApp
//
//  Created by Md Abrar Nasim on 23/01/23.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var TextView1: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func Button1(_ sender: UIButton) {
        TextView1.text = "Button was clicked";
        AF.request("https://reqres.in/api/users/2").response{
            response in debugPrint(response)
        }
    }
    
}


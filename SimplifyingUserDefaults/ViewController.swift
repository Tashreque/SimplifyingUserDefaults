//
//  ViewController.swift
//  SimplifyingUserDefaults
//
//  Created by Tashreque Mohammed Haq on 25/9/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        save()
        
        retrieve()
    }
    
    private func save() {
        UserDefaultsManager<String>("current_user").value = "Tashreque"
    }
    
    private func retrieve() {
        if let savedUserName = UserDefaultsManager<String>("current_user").value {
            print("The saved user was \(savedUserName)")
        }
    }

}


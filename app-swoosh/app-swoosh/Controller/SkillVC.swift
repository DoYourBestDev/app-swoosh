//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Air on 05.10.2017.
//  Copyright © 2017 Air. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func finishBtnWasPressed(_ sender: Any) {
         performSegue(withIdentifier: "blueSegue", sender: self)
    }
    
    @IBAction func goBackToSkill(back: UIStoryboardSegue) {
        
    }
    
}

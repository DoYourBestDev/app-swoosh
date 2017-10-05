//
//  ViewController.swift
//  app-swoosh
//
//  Created by Air on 01.10.2017.
//  Copyright © 2017 Air. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func getStartedBtnWassPressed(_ sender: Any){
        performSegue(withIdentifier: "leagueVCSegue", sender: self)
    }
    
    @IBAction func goBack(back: UIStoryboardSegue) {
        
    }

}


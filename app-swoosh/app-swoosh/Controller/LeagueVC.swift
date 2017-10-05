//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Air on 05.10.2017.
//  Copyright © 2017 Air. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
    }
    
    
    @IBAction func goBack(back: UIStoryboardSegue) {
        
    }

}

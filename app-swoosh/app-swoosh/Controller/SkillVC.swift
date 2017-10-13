//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Air on 05.10.2017.
//  Copyright © 2017 Air. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    var player: Player!
    var bckColor: UIColor?

    @IBOutlet weak var ballerBtn: BorderButton!
    @IBOutlet weak var beginnerBtn: BorderButton!
    @IBOutlet weak var finishBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
        bckColor = ballerBtn.backgroundColor
    }
    
    
    @IBAction func onBegginerTapped(_ sender: Any) {
        
        
    }
    @IBAction func onBallerTapped(_ sender: Any) {
        
    }
    @IBAction func finishBtnWasPressed(_ sender: Any) {
        
    }
    
    @IBAction func goBackToSkill(back: UIStoryboardSegue) {
        
    }
    
    @IBAction func selectButton(button: UIButton) {
        if button == ballerBtn {
            button.backgroundColor = UIColor.darkGray
            beginnerBtn.isEnabled = false
        } else {
            button.backgroundColor = UIColor.darkGray
            ballerBtn.isEnabled = false
        }
    }
    func selectedSkillLvl (choosedLeague: String) {
        player.selectedSkillLevel = choosedLeague
    }
}

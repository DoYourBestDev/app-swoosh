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

        //player = Player()
        bckColor = ballerBtn.backgroundColor
    }
    
    
    @IBAction func onBegginerTapped(_ sender: Any) {
        selectButton(button: beginnerBtn)
        ballerBtn.isEnabled = false
        finishBtn.isEnabled = true
    }
    @IBAction func onBallerTapped(_ sender: Any) {
        selectButton(button: ballerBtn)
        beginnerBtn.isEnabled = false
        finishBtn.isEnabled = true
    }
    @IBAction func finishBtnWasPressed(_ sender: Any) {
        print("all good ! ")
        print(player.desiredLeague)
        print(player.selectedSkillLevel)
    }
    
    @IBAction func goBackToSkill(back: UIStoryboardSegue) {
        resetBtnSettingsAndDisableNextBtn()
    }
    
    @IBAction func selectButton(button: UIButton) {
        if button == ballerBtn {
            button.backgroundColor = UIColor.darkGray
            beginnerBtn.isEnabled = false
            player.selectedSkillLevel = "baller"
        } else {
            button.backgroundColor = UIColor.darkGray
            ballerBtn.isEnabled = false
            player.selectedSkillLevel = "beginner"
        }
    }
    func selectedSkillLvl (choosedLeague: String) {
        player.selectedSkillLevel = choosedLeague
    }
    
    func resetBtnSettingsAndDisableNextBtn () {
        beginnerBtn.isEnabled = true
        beginnerBtn.backgroundColor = bckColor
        ballerBtn.isEnabled = true
        ballerBtn.backgroundColor = bckColor
        finishBtn.isEnabled = false
    }
}

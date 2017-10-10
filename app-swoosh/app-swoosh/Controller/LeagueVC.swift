//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Air on 05.10.2017.
//  Copyright © 2017 Air. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    @IBOutlet weak var mensBtn: BorderButton!
    @IBOutlet weak var womensBtn: BorderButton!
    @IBOutlet weak var coedBtn: BorderButton!
    var btnWasSelected = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectButton(button: mensBtn)
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectButton(button: womensBtn)
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectButton(button: coedBtn)
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    @IBAction func selectButton(button: UIButton) {
        if button == mensBtn {
            button.backgroundColor = UIColor.darkGray
            womensBtn.isEnabled = false
            coedBtn.isEnabled = false
        } else if button == womensBtn {
            button.backgroundColor = UIColor.darkGray
            mensBtn.isEnabled = false
            coedBtn.isEnabled = false
        } else {
            button.backgroundColor = UIColor.darkGray
            mensBtn.isEnabled = false
            womensBtn.isEnabled = false
        }
    }
    
    @IBAction func goBack(back: UIStoryboardSegue) {
        nextBtn.isEnabled = false
    }

}

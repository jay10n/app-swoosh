//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Jayton Schmeeckle on 1/2/18.
//  Copyright © 2018 Jayton Schmeeckle. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
        
    }

    @IBAction func onNextTapped(_ sender: Any) {
        //Segue to skillVC
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    //Store the users selection in the player variable
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    
    func selectLeague(leagueType: String) {
        //allow the user to continue onto skillVC by enabling nextBtn
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
            
        }
    }

}

//
//  ViewController.swift
//  RPS
//
//  Created by 4d on 12/19/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var ComputerSign: UILabel!
    @IBOutlet var GameStatus: UILabel!
    @IBOutlet var UserRock: UIButton!
    @IBOutlet var UserPaper: UIButton!
    @IBOutlet var UserScissors: UIButton!
    @IBOutlet var PlayAgain: UIButton!
    
    
    @IBAction func UsersRock(_ sender: Any) {
        
    }
    @IBAction func UsersPaper(_ sender: Any) {
        
    }
    @IBAction func UsersScissors(_ sender: Any) {
        
    }
    @IBAction func paButton(_ sender: Any) {
        
    }
    
    func updateInterface(uh : GameState) {
        if uh == .start {
            ComputerSign.text = "🤖"
            PlayAgain.isHidden = true
            UserRock.isEnabled = true
            UserPaper.isEnabled = true
            UserScissors.isEnabled = true
        }
    }
}


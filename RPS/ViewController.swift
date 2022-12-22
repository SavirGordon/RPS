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
        updateInterface(uh: .start)
    }
    
    @IBOutlet var ComputerSign: UILabel!
    @IBOutlet var GameStatus: UILabel!
    @IBOutlet var UserRock: UIButton!
    @IBOutlet var UserPaper: UIButton!
    @IBOutlet var UserScissors: UIButton!
    @IBOutlet var PlayAgain: UIButton!
    
    
    @IBAction func UsersRock(_ sender: Any) {
        play(ha: .rock)
    }
    @IBAction func UsersPaper(_ sender: Any) {
        play(ha: .paper)
    }
    @IBAction func UsersScissors(_ sender: Any) {
        play(ha: .scissors)
    }
    @IBAction func paButton(_ sender: Any) {
        updateInterface(uh: .start)
    }
    
    func updateInterface(uh : GameState) {
        if uh == .start {
            ComputerSign.text = "🤖"
            GameStatus.text = "Make a move"
            PlayAgain.isHidden = true
            UserRock.isEnabled = true
            UserPaper.isEnabled = true
            UserScissors.isEnabled = true
            view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        else if uh == .win {
            view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            GameStatus.text = "You Win!"
            PlayAgain.isHidden = false
        }
        else if uh == .lose {
            view.backgroundColor = #colorLiteral(red: 0.8227084279, green: 0.1810534894, blue: 0.1553189456, alpha: 1)
            GameStatus.text = "You Lose"
            PlayAgain.isHidden = false
        }
        else {
            view.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
            GameStatus.text = "You tied"
            PlayAgain.isHidden = false
        }
    }
    
    func play(ha: Sign){
        let compSign = randomSign()
        let state = ha.checkWin(opponent: compSign)
        ComputerSign.text = compSign.emoji
        UserRock.isEnabled = false
        UserPaper.isEnabled = false
        UserScissors.isEnabled = false
        PlayAgain.isHidden = true
        updateInterface(uh: state)
    }
}


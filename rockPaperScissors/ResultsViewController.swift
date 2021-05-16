//
//  ResultsViewController.swift
//  rockPaperScissors
//
//  Created by Jameka Echols on 5/15/21.
//

import UIKit

class ResultsViewController: UIViewController {

    var userChoice: String!
    var computerChoice: String!
    var opponentMove: String!
    
    @IBOutlet weak var resultsPic: UIImageView!
    @IBOutlet weak var resultsLabel: UILabel!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        // call the random func
        opponentPlay()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // test to make sure we are getting the correct choice
        print(userChoice!)

    }
    
    
    func opponentPlay()  {
        let rand = Int(1 + arc4random() % 3)
        
        switch rand {
        case 1:
            computerChoice = "rock"
        case 2:
            computerChoice = "paper"
        case 3:
            computerChoice = "scissors"
        default:
            computerChoice = "fail"
        }
        
        
        if computerChoice == userChoice {
            self.resultsPic.image = UIImage(named: "itsATie.png")
            self.resultsLabel.text = "Its a tie!"
            
        }else if computerChoice == "rock" && userChoice == "paper"{
            self.resultsPic.image = UIImage(named: "PaperCoversRock")
            self.resultsLabel.text = "You Win!"
            
        }else if computerChoice == "rock" && userChoice == "scissors"{
            self.resultsPic.image = UIImage(named: "RockCrushesScissors")
            self.resultsLabel.text = "You Lose!"
            
        }else if computerChoice == "paper" && userChoice == "rock"{
            self.resultsPic.image = UIImage(named: "PaperCoversRock")
            self.resultsLabel.text = "You Lose!"
            
        }else if computerChoice == "scissors" && userChoice == "rock"{
            self.resultsPic.image = UIImage(named: "RockCrushesScissors")
            self.resultsLabel.text = "You Win"
            
        }else if computerChoice == "scissors" && userChoice == "paper"{
            self.resultsPic.image = UIImage(named: "ScissorsCutPaper")
            self.resultsLabel.text = "You Lose"
            
        }else if computerChoice == "paper" && userChoice == "scissors"{
            self.resultsPic.image = UIImage(named: "ScissorsCutPaper")
            self.resultsLabel.text = "You Win"
            
        }
    }
    
    
    @IBAction func playAgain(){
        self.dismiss(animated: true, completion: nil)
    }

}

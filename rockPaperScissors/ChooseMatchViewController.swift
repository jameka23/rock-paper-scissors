//
//  ViewController.swift
//  rockPaperScissors
//
//  Created by Jameka Echols on 5/15/21.
//

import UIKit

class ChooseMatchViewController: UIViewController {

    //declare outlets
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    // action for rockButton CODE ONLY segue
    
    @IBAction func rockAction() {
        // define the controller to transition to
        let resultsController = storyboard?.instantiateViewController(identifier: "ResultsViewController") as! ResultsViewController
        
        resultsController.userChoice = "rock"
        
        // present the resultsController
        present(resultsController, animated: true, completion: nil)
    }
    
    // action for paperButton CODE & SEGUE
    @IBAction func paperAction(){
        performSegue(withIdentifier: "choiceMade", sender: self)
    }
    
    
    //prepare the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // check the segue
        
        if segue.identifier == "choiceMade"{
            let controller = segue.destination as! ResultsViewController
            
            controller.userChoice = "paper"
        }else if segue.identifier == "choiceMade2" {
            let controller = segue.destination as! ResultsViewController
            
            controller.userChoice = "scissors"
        }
    }
}


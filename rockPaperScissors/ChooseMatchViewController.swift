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
        
        // present the resultsController
        present(resultsController, animated: true, completion: nil)
    }
    
    // action for paperButton
    @IBAction func paperAction(){
        performSegue(withIdentifier: "choiceMade", sender: self)
        
        
    }
}


//
//  FirstExperimentViewController.swift
//  App
//
//  Created by Pulkit Agarwal on 9/20/20.
//  Copyright © 2020 Pulkit Agarwal. All rights reserved.
//

import UIKit

class FirstExperimentViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBOutlet weak var observationText: UITextView!
    var observation = ""
    

    @IBAction func transferData(_ sender: Any) {
        self.observation = observationText.text!
        performSegue(withIdentifier: "pass", sender: self)
    }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! NinthExperimentViewController
        vc.finalObservation = self.observation
    }
    
}

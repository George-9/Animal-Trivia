//
//  ThirdViewController.swift
//  Animal Trivia
//
//  Created by George Ashton on 13/08/2015.
//  Copyright © 2015 George Ashton. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var aLabel: UILabel!
    
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var bLabel: UILabel!
    
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var cLabel: UILabel!
    
    @IBOutlet weak var startOverButton: UIButton!
    
    let myRedColor = UIColor(red: 0.98, green: 0.39, blue: 0.4, alpha: 1.0)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        startOverButton.layer.cornerRadius = 7.0
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func aButtonPressed(sender: UIButton) {
        let incorrectAnswerImage = UIImage(named: "incorrectAnswer")
        aButton.setImage(incorrectAnswerImage, forState: UIControlState.Normal)
        aLabel.textColor = myRedColor
        disableButtons()
      
    }
    
    @IBAction func bButtonPressed(sender: UIButton) {
        
        let incorrectAnswerImage = UIImage(named: "incorrectAnswer")
        bButton.setImage(incorrectAnswerImage, forState: UIControlState.Normal)
        bLabel.textColor = myRedColor
        disableButtons()
    }
    
    @IBAction func cButtonPressed(sender: UIButton) {
        
        let correctAnswerImage = UIImage(named: "correctAnswer")
        cButton.setImage(correctAnswerImage, forState: UIControlState.Normal)
        cLabel.textColor = UIColor.greenColor()
        disableButtons()
        
    }
    
    func disableButtons() {
        
        aButton.enabled = false
        bButton.enabled = false
        cButton.enabled = false
    }

}

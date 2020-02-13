//
//  ViewController.swift
//  BullsEye
//
//  Created by Thossakrai Nakkasem on 11/2/20.
//  Copyright © 2020 Thossakrai Nakkasem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 0
    var targetValue: Int = 0
    var roundValue: Int = 0
    var totalScore: Int = 0
    var roundScore: Int = 0

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
//    @IBOutlet weak var startOverButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = String(totalScore)
        startNewRound()
    }
    
    @IBAction func showAlert() {
        calculateScore()
        let message = "The slider value is \(currentValue)\n" + "You got \(roundScore) points!"
        let alert = UIAlertController(title: "Hit!", message: message
            , preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
//        if currentValue == targetValue {
//            print("Hooray!")
//        }
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = Int(slider.value.rounded())
    }

    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(50)
        targetLabel.text = String(targetValue)
        roundValue += 1
        roundLabel.text = String(roundValue)
    }
    
    func calculateScore() {
        print("target : \(targetValue) ... current : \(currentValue)")
        roundScore = 100 - abs(currentValue - targetValue)
        print("score = \(roundScore)")
        totalScore += roundScore
        scoreLabel.text = String(totalScore)
    }
    
    @IBAction func startOver() {
        totalScore = 0
        roundValue = 0
        scoreLabel.text = String(totalScore)
        print("hit!")
        startNewRound()
    }
}


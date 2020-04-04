//
//  ViewController.swift
//  It's my Quizz
//
//  Created by Léa on 02/04/2020.
//  Copyright © 2020 Lea Dukaez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myQuizz = QuizzModel()

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if let answerPressed = sender.titleLabel?.text {
            let answerColor = myQuizz.checkAnswer(answer: answerPressed)
            sender.backgroundColor = answerColor
        }
        
        if myQuizz.questionNumber == myQuizz.quizz.count-1 {
            questionLabel.text! = "Well done! Your score is \(myQuizz.pointCounter)"
        }
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (Timer) in
            self.updateUI()
        }
    }
    
    func updateUI() {
        trueButton.backgroundColor = .none
        falseButton.backgroundColor = .none
        questionLabel.text! = myQuizz.nextQuestion()
        scoreLabel.text! = "Score: \(myQuizz.pointCounter)"
        progressBar.progress = myQuizz.progress
    }
}


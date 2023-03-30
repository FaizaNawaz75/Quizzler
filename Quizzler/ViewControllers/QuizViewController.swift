//
//  ViewController.swift
//  Quizzler
//
//  Created by Faiza Nawaz on 14/03/2023.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        if (quizBrain.isCorrectAnswer(userAnswer: sender.currentTitle!)) {
            sender.backgroundColor = UIColor.green
        }
        else {
            sender.backgroundColor = UIColor.red
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        quizBrain.nextQuestion()
    }
    
    @objc fileprivate func updateUI() {
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.quizProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
    }
    
    
    
}


//
//  QuizBrain.swift
//  Quizzler
//
//  Created by Faiza Nawaz on 30/03/2023.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    let quizItems = [Question(q: "A slug's blood is green.", a: "True"),
                     Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
                     Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
                     Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
                     Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
                     Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
                     Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
                     Question(q: "Google was originally called 'Backrub'.", a: "True"),
                     Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
                     Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
                     Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
                     Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")]
    
    //MARK: - Business Logic
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        
        return quizItems[questionNumber].text
    }
    
    func quizProgress() -> Float {
        
        return Float(questionNumber+1) / Float(quizItems.count)
    }
    
    mutating func nextQuestion() {
        
        questionNumber += 1
        
        if (questionNumber == quizItems.count) {
            resetQuiz()
        }
    }
    
    mutating func resetQuiz() {
        questionNumber = 0
        score = 0
    }
    
    mutating func isCorrectAnswer(userAnswer: String) -> Bool {
        
        if (userAnswer == quizItems[questionNumber].answer) {
            score += 1
            return true
        }
        
        return false
    }
}

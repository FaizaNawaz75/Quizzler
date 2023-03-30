//
//  Question.swift
//  Quizzler
//
//  Created by Faiza Nawaz on 23/03/2023.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}

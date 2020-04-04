//
//  Quizz.swift
//  It's my Quizz
//
//  Created by Léa on 03/04/2020.
//  Copyright © 2020 Lea Dukaez. All rights reserved.
//

import Foundation

struct Question {
    let question: String
    let answer: String
    
    init(q: String, a: String) {
        question = q
        answer = a
    }
}

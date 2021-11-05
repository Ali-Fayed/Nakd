//
//  FinalQuizQuestions.swift
//  Nakd
//
//  Created by Ali Fayed on 04/11/2021.
//


import Foundation

class FinalQuizQuestions {
    let questionImage: String
    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let correctAnswer: Int
    
    init(image: String, questionText: String, choiceA: String, choiceB: String, choiceC: String, answer: Int){
        questionImage = image
        question = questionText
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        correctAnswer = answer
    }
}

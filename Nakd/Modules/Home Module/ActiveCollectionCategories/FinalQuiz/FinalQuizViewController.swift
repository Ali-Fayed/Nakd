//
//  FinalQuizViewController.swift
//  Nakd
//
//  Created by Ali Fayed on 04/11/2021.
//

import UIKit
import Lottie
class FinalQuizViewController: UIViewController {
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var flagView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    let animationView = AnimationView()
    let label = UILabel()
    static let successAnimation = "success"
    static let failAnimation = "failure"
    //Outlet for Buttons
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    let allQuestions = FinalQuizQuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()
        optionD.isHidden = true
        title = "FinalQuiz".localized()
    }
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer {
            score += 1
        }else{
            if questionNumber != allQuestions.list.count - 1 {
                let alert = UIAlertController(title: "Error".localized(), message: "Wrong Answer Do You Want To Read or Watch More?".localized(), preferredStyle: .alert)
                let restartAction = UIAlertAction(title: "Go To".localized(), style: .default) { action in
                    self.navigationController?.popViewController(animated: true)
                }
                let resumeAction = UIAlertAction(title: "Resume".localized(), style: .default) { action in
                    self.animationView.isHidden = true
                    self.animationView.stop()
                }
                alert.addAction(restartAction)
                alert.addAction(resumeAction)
                present(alert, animated: true, completion: nil)
                startAnimation(animation: FinalQuizViewController.failAnimation)
            }
        }
        questionNumber += 1
        updateQuestion()
    }
    private func startAnimation (animation: String) {
        animationView.isHidden = false
        animationView.animation = Animation.named(animation)
        animationView.frame = CGRect(x: 0, y: 400, width: 400, height: 400)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
    }
    func updateQuestion(){
        if questionNumber <= allQuestions.list.count - 1{
            flagView.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
            questionLabel.text = allQuestions.list[questionNumber].question
            optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControl.State.normal)
            optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControl.State.normal)
            optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControl.State.normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
            updateUI()
        } else {
            let alert = UIAlertController(title: "Awesome".localized(), message: "End of Quiz. Do you want to start over?".localized(), preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart".localized(), style: .default, handler: {action in self.restartQuiz()})
            let backAction = UIAlertAction(title: "Go To".localized(), style: .default) { alert in
                self.navigationController?.popViewController(animated: true)
            }
            alert.addAction(restartAction)
            alert.addAction(backAction)
            present(alert, animated: true, completion: nil)
            startAnimation(animation: FirstUnitFormViewController.successAnimation)
        }
    }
    func updateUI(){
        optionA.layer.cornerRadius = 10
        optionB.layer.cornerRadius = 10
        optionC.layer.cornerRadius = 10
        optionD.layer.cornerRadius = 10
        scoreLabel.text = "Score: ".localized() + "\(score)"
        questionCounter.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
        progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
    }
    
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
        optionC.isHidden = false
        optionD.isHidden = false
    }
}

//
//  LoginViewController.swift
//  Nakd
//
//  Created by Ali Fayed on 05/11/2021.
//

import UIKit
import XCoordinator
import Lottie

class LoginViewController: UIViewController {
    var router: StrongRouter<AppRoute>?
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    let animationView = AnimationView()
    static let animation = "robot"
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButton.layer.cornerRadius = 20
        userNameText.layer.cornerRadius = 5
        passwordLabel.layer.cornerRadius = 5
        startAnimation ()
    }
    
    @IBAction func tapButton(_ sender: UIButton) {
        if userNameText.text?.isEmpty == false , passwordLabel.text?.isEmpty == false {
            router?.trigger(.home)
        }
    }
    
    private func startAnimation () {
        animationView.animation = Animation.named(LoginViewController.animation)
        animationView.frame = CGRect(x: -10, y: 550, width: 400, height: 400)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.stop()
        view.addSubview(animationView)
    }
}

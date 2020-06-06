//
//  HomeScreenViewController.swift
//  YouTubePlayer
//
//  Created by Jamario Davis on 6/5/20.
//  Copyright © 2020 KAYCAM. All rights reserved.
//

import UIKit
import Lottie

class HomeScreenViewController: UIViewController {

    let animationView = AnimationView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupAnimation()
    }
    private func setupAnimation() {
       animationView.frame = view.bounds
       animationView.animation = Animation.named("12447-share-on-youtube")
       animationView.contentMode = .scaleAspectFit
       animationView.loopMode = .loop
       animationView.play()
       view.addSubview(animationView)
    }
    override func viewDidAppear(_ animated: Bool) {
         DispatchQueue.main.asyncAfter(deadline:.now() + 3.5, execute: {
              self.performSegue(withIdentifier:"segue",sender: self)
         })
    }
}

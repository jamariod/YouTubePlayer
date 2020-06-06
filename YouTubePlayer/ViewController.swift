//
//  ViewController.swift
//  YouTubePlayer
//
//  Created by Jamario Davis on 6/5/20.
//  Copyright © 2020 KAYCAM. All rights reserved.
//


import youtube_ios_player_helper
import UIKit


class ViewController: UIViewController, YTPlayerViewDelegate {
    
    @IBOutlet var playerView: YTPlayerView!

    override func viewDidLoad() {
        super.viewDidLoad()
       let otherPlayer = YTPlayerView()
         view.addSubview(otherPlayer)
        playerView.delegate = self
        playerView.load(withVideoId: "DDU-rZs-Ic4", playerVars: ["playsinline": 1])
    }
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }
}


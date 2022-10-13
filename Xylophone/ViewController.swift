//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//


import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let seconds = 0.2
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        print(sender.currentTitle)
        playSound(soundName: sender.currentTitle!)
        sender.alpha = 0.5
        print("Start")
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            sender.alpha = 1.0
            print("End")
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
         
}

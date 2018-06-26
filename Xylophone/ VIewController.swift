//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        playNote(note: sender.tag)
        
    }

    func playNote(note: Int) -> Void {
        let url = Bundle.main.url(forResource: "note\(note)", withExtension: "wav")
        
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            guard let player = player else { return }
            player.play()
        } catch {
            print(error.localizedDescription)
        }
    }
}


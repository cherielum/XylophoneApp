//
//  ViewController.swift
//  Xylophone


import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
      let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
        
        //catching errors
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            self.player = sound
            sound.numberOfLoops = 0
            sound.prepareToPlay()
            sound.play()
            print("testing")
        } catch {
            print("error loading file")
            // couldn't load file :(
        }
        
    }
    
  

}


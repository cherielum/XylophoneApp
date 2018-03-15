//
//  ViewController.swift
//  Xylophone


import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    var selectedSoundFileName: String = ""
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        //subtract one because array starts at 0. therefore note1 can be 0.
        
        selectedSoundFileName = soundArray[sender.tag - 1]
        
        print(selectedSoundFileName)
        
        playSound()
    }
    
    func playSound() {
        //sets up location of where sound is
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        //plays same sound
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
            
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }
    

}


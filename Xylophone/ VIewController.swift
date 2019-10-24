//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    let noteArray: [String] = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(note: noteArray[sender.tag - 1])
        
        
        
    }
    
    func playSound(note: String){
        
        let soundUrl = Bundle.main.url(forResource: note, withExtension: "wav")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        }
        catch{
            print(error)
        }
        
        audioPlayer.play()
    }
    
  

}


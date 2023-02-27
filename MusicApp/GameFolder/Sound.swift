//
//  Sound.swift
//  MusicApp
//
//  Created by Alyssa Feinberg on 2/22/23.
//

import Foundation

enum Difficulty {
    case easy, medium, hard
}

struct Sound {
    var used = false
    var missed = 0
    let difficulty: Difficulty
    let soundFile: String
    
    init(difficulty: Difficulty, soundFile: String) {
        self.difficulty = difficulty
        self.soundFile = soundFile
    }
}

struct SoundConroller {
    
//    
//    func playSound(_ soundFileName : String) {
//        if sound == false {             // Have a toggle to mute sound in app
//            guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: nil) else {
//                fatalError("Unable to find \(soundFileName) in bundle")
//            }
//
//            do {
//                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
//            } catch {
//                print(error.localizedDescription)
//            }
//            audioPlayer.play()
//        }
//    }
}

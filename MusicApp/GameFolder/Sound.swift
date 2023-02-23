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

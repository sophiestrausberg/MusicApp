//
//  GameController.swift
//  MusicApp
//
//  Created by Sophie Strausberg on 3/2/23.
//

import Foundation

class GameController {
    var soundQueue: Queue<Sound> = Queue()
    
    init() {
        for (_, value) in allSounds {
            var index = Int.random(in: 0...value.count-1)
            soundQueue.enqueue(value[index])
        }
        
        print(soundQueue)
    }
    
//    func enqueueSounds() {
//        for (_, value) in allSounds {
//            var index = Int.random(in: 0...value.count-1)
//            soundQueue.enqueue(value[index])
//        }
//    }
    
    func runGame() {
        
    }
}

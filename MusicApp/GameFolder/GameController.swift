//
//  GameController.swift
//  MusicApp
//
//  Created by Sophie Strausberg on 3/2/23.
//

import Foundation
import SwiftUI

class GameController: ObservableObject {
    
    var soundQueue: Queue<Sound> = Queue()
    @State private var timerLength: Int
    

    
    init(_ timerLength: Int) {
        for (_, value) in allSounds {
            let index = Int.random(in: 0...value.count-1)
            soundQueue.enqueue(value[index])
        }
        
        self.timerLength = timerLength
        //_timerLength = State(initialValue: timerLength)

        print(soundQueue)
        
        runGame()
    }
    
    
    func runGame() {
        
        var timeLimit = false
        
        let timer2 = Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { timer in
            timeLimit = true
            print("DONEEE!!!!")
            print(timeLimit)
        }

        while !timeLimit {
            print(timeLimit)
        }
        
    }
}

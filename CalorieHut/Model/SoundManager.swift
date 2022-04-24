//
//  SoundManager.swift
//  CalorieHut
//
//  Created by Youssif Hany on 20/04/2022.
//

import Foundation
import AVKit

class SoundManager{
    
    static let instance = SoundManager()
    
    var player : AVAudioPlayer?
    
    func playSound(){
        guard let url = Bundle.main.url(forResource: "ding", withExtension: ".mp3") else{ return }
        
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }catch let error{
            print("Error playing sound: \(error.localizedDescription)")
        }
        
    }
}

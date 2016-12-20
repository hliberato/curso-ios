//
//  ViewController.swift
//  RpgSounds
//
//  Created by Henrique Liberato on 13/12/16.
//  Copyright © 2016 Henrique Liberato. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var soundEffect: AVAudioPlayer!
    

    @IBAction func tabern(_ sender: Any) {
        let path = Bundle.main.path(forResource: "taberna.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        do{
            if soundEffect == nil {
                soundEffect = try AVAudioPlayer(contentsOf: url)
            }
            if soundEffect.url?.absoluteString == url.absoluteString {
                if soundEffect.isPlaying {
                    soundEffect.stop()
                }else{
                    soundEffect.play()
                }
            }else{
                soundEffect = try AVAudioPlayer(contentsOf: url)
                soundEffect.play()
            }
        }catch {
        }
    }
    
    @IBAction func city(_ sender: Any) {
        let path = Bundle.main.path(forResource: "cidade.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        do{
            if soundEffect == nil {
                soundEffect = try AVAudioPlayer(contentsOf: url)
            }
            if soundEffect.url?.absoluteString == url.absoluteString {
                if soundEffect.isPlaying {
                    soundEffect.stop()
                }else{
                    soundEffect.play()
                }
            }else{
                soundEffect = try AVAudioPlayer(contentsOf: url)
                soundEffect.play()
            }
        }catch {
        }
    }
    
    
    @IBAction func battle(_ sender: Any) {
        let path = Bundle.main.path(forResource: "batalha.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        do{
            if soundEffect == nil {
                soundEffect = try AVAudioPlayer(contentsOf: url)
            }
            if soundEffect.url?.absoluteString == url.absoluteString {
                if soundEffect.isPlaying {
                    soundEffect.stop()
                }else{
                    soundEffect.play()
                }
            }else{
                soundEffect = try AVAudioPlayer(contentsOf: url)
                soundEffect.play()
            }
        }catch {
        }
    }
    
        
    @IBAction func boss(_ sender: Any) {
        let path = Bundle.main.path(forResource: "boss.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        do{
            if soundEffect == nil {
                soundEffect = try AVAudioPlayer(contentsOf: url)
            }
            if soundEffect.url?.absoluteString == url.absoluteString {
                if soundEffect.isPlaying {
                    soundEffect.stop()
                }else{
                    soundEffect.play()
                }
            }else{
                soundEffect = try AVAudioPlayer(contentsOf: url)
                soundEffect.play()
            }
        }catch {
        }

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.shared.isIdleTimerDisabled = true
    }
    

}


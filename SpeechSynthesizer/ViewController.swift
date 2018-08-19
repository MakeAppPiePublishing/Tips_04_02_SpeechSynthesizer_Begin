//
//  ViewController.swift
//  SpeechSynthesizer
//
//  A exercise file for iOS Development Tips Weekly
//  by Steven Lipton (C)2018, All rights reserved
//  For videos go to http://bit.ly/TipsLinkedInLearning
//  For code go to http://bit.ly/AppPieGithub
//
import UIKit
import AVFoundation

class ViewController: UIViewController, VoiceTableViewControllerDelegate {

    @IBOutlet weak var speakingText: UITextField!
    var speechVoice = AVSpeechSynthesisVoice()
    
    @IBAction func speak(_ sender: UIButton) { //<-- Add code here
        
    }
    
    //delegate function
    func didSelectVoice(voice: AVSpeechSynthesisVoice) {
        speechVoice = voice
        title = voice.name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        title = "Default Voice"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "voices"{
           let  vc = segue.destination as! VoiceTableViewController
            vc.delegate = self
        }
    }

}


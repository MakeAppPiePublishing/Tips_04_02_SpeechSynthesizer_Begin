//
//  VoiceTableViewController.swift
//  SpeechSynthesizer
//
//  A exercise file for iOS Development Tips Weekly
//  by Steven Lipton (C)2018, All rights reserved
//  For videos go to http://bit.ly/TipsLinkedInLearning
//  For code go to http://bit.ly/AppPieGithub
//
//  A table view controller for selecting a language
//

import UIKit
import AVFoundation

protocol VoiceTableViewControllerDelegate{
    func didSelectVoice(voice:AVSpeechSynthesisVoice)
}


class VoiceTableViewController:UITableViewController {
    
    let voices = ["fill","in","this","list"] //list of voices
    var delegate:VoiceTableViewControllerDelegate! = nil
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return voices.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let row = indexPath.row
        let voice = voices[row]
        cell.textLabel?.text = voice  
        cell.detailTextLabel?.text = voice
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let row = indexPath.row
        //delegate.didSelectVoice(voice: voices[row])
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

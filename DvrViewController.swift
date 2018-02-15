//
//  DvrViewController.swift
//  RemoteControl II
//
//  Created by Keertika on 2/11/18.
//  Copyright © 2018 DePaul University. All rights reserved.
//

import UIKit

class DvrViewController: UIViewController {
    
    
    @IBOutlet weak var dvrPower: UILabel!
    
    @IBOutlet weak var dvrState: UILabel!
    
    @IBOutlet weak var Switch: UISwitch!
    
    @IBOutlet weak var play: UIButton!
    
    @IBOutlet weak var stop: UIButton!
    
    @IBOutlet weak var pause: UIButton!
    
    @IBOutlet weak var fastForward: UIButton!
    
    @IBOutlet weak var fastRewind: UIButton!
    
    @IBOutlet weak var record: UIButton!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    dvrPower.text = "ON"
    dvrState.text = "Stopped"
    }

    //Power Switch
    @IBAction func switchToggled(_ sender: UISwitch) {
    dvrPower.text = (sender.isOn ? "ON" : "OFF")
    Switch.setOn(sender.isOn, animated: true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playButton(_ sender: UIButton) {
        if dvrState.text == "Recording" {
            let alertController = UIAlertController(title: title, message: "Warning: This action will stop the recording! Do you really want to do this?", preferredStyle: .actionSheet)
            
            let yesButton = UIAlertAction(title: "Yes", style: .default, handler:
            { action in
                let title = "Message"
                let message = "You have successfully changed the DVR state"
                let alertController = UIAlertController(title: title,message: message,preferredStyle: .alert)
                
                // Create the action.
                let okAction = UIAlertAction(title: "OK", style: .default, handler:
                {action in
                    self.dvrState.text = "Playing"
                })
                alertController.addAction(okAction)
                self.present(alertController,animated: true,completion: nil)
            })
            
            let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            alertController.addAction(yesButton)
            alertController.addAction(cancelButton)
            present(alertController, animated: true, completion: nil)
            
        }
            
        
        else {
            dvrState.text = "Playing"
            
        }
        
    }
    
    
    @IBAction func stopButton(_ sender: UIButton) {
        dvrState.text = "Stopped"
    }
    
    @IBAction func pauseButton(_ sender: UIButton) {
        if (dvrState.text == "Recording" || dvrState.text == "Stopped" || dvrState.text == "Fast Rewinding" || dvrState.text == "Fast Forwarding" ){
            let alertController = UIAlertController(title: title, message: "Warning: This action will change the DVR state! Do you really want to do this?", preferredStyle: .actionSheet)
            
            let yesButton = UIAlertAction(title: "Yes", style: .default, handler:
            { action in
                let title = "Message"
                let message = "You have successfully changed the DVR state"
                let alertController = UIAlertController(title: title,message: message,preferredStyle: .alert)
                
                // Create the action.
                let okAction = UIAlertAction(title: "OK", style: .default, handler:
                {action in
                    self.dvrState.text = "Paused"
                })
                alertController.addAction(okAction)
                self.present(alertController,animated: true,completion: nil)
            })
            
            let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            alertController.addAction(yesButton)
            alertController.addAction(cancelButton)
            present(alertController, animated: true, completion: nil)
            
        }
        else if dvrState.text == "Playing" {
            dvrState.text = "Paused"
    }
    }
    
    @IBAction func fastForwardButton(_ sender: UIButton) {
        if (dvrState.text == "Recording" || dvrState.text == "Stopped" || dvrState.text == "Fast Rewinding" || dvrState.text == "Paused" ){
            let alertController = UIAlertController(title: title, message: "Warning: This action will change the DVR state! Do you really want to do this?", preferredStyle: .actionSheet)
            
            let yesButton = UIAlertAction(title: "Yes", style: .default, handler:
            { action in
                let title = "Message"
                let message = "You have successfully changed the DVR state"
                let alertController = UIAlertController(title: title,message: message,preferredStyle: .alert)
                
                // Create the action.
                let okAction = UIAlertAction(title: "OK", style: .default, handler:
                {action in
                    self.dvrState.text = "Fast Forwarding"
                })
                alertController.addAction(okAction)
                self.present(alertController,animated: true,completion: nil)
            })
            
            let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            alertController.addAction(yesButton)
            alertController.addAction(cancelButton)
            present(alertController, animated: true, completion: nil)
            
        }
        else if  dvrState.text == "Playing" {
            dvrState.text = "Fast Forwarding"
        }
    }
    
    @IBAction func fastRewindButton(_ sender: UIButton) {
        if (dvrState.text == "Recording" || dvrState.text == "Stopped" || dvrState.text == "Fast Forwarding" || dvrState.text == "Paused" ) {
            let alertController = UIAlertController(title: title, message: "Warning: This action will change the DVR State! Do you really want to do this?", preferredStyle: .actionSheet)
            
            let yesButton = UIAlertAction(title: "Yes", style: .default, handler:
            { action in
                let title = "Message"
                let message = "You have successfully changed the DVR state"
                let alertController = UIAlertController(title: title,message: message,preferredStyle: .alert)
                
                // Create the action.
                let okAction = UIAlertAction(title: "OK", style: .default, handler:
                {action in
                    self.dvrState.text = "Fast Rewinding"
                })
                alertController.addAction(okAction)
                self.present(alertController,animated: true,completion: nil)
            })
            
            let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            alertController.addAction(yesButton)
            alertController.addAction(cancelButton)
            present(alertController, animated: true, completion: nil)
            
        }
        else if  dvrState.text == "Playing" {
            dvrState.text = "Fast Rewinding"
        }
    }
    
    @IBAction func recordButton(_ sender: UIButton){
        if (dvrState.text == "Playing" || dvrState.text == "Fast Forwarding" || dvrState.text == "Fast Rewinding" || dvrState.text == "Paused" ){
            let alertController = UIAlertController(title: title, message: "Warning: This action will start the recording! Do you really want to do this?", preferredStyle: .actionSheet)
            
            let yesButton = UIAlertAction(title: "Yes", style: .default, handler:
            { action in
                let title = "Message"
                let message = "You have successfully changed the DVR state"
                let alertController = UIAlertController(title: title,message: message,preferredStyle: .alert)
                
                // Create the action.
                let okAction = UIAlertAction(title: "OK", style: .default, handler:
                {action in
                    self.dvrState.text = "Recording"
                })
                alertController.addAction(okAction)
                self.present(alertController,animated: true,completion: nil)
            })
            
            let cancelButton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            alertController.addAction(yesButton)
            alertController.addAction(cancelButton)
            present(alertController, animated: true, completion: nil)
        }
            
        else if dvrState.text == "Stopped"{
            dvrState.text = "Recording"
            
        }
        
    }
    
    @IBAction func switchToTV(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    //Method to handle enabling all controls on the remote.
    @IBAction func controlsEnabled(_ sender: UISwitch) {
        let enabled = sender.isOn
        play.isEnabled = enabled
        stop.isEnabled = enabled
        pause.isEnabled = enabled
        fastForward.isEnabled = enabled
        fastRewind.isEnabled = enabled
        record.isEnabled = enabled
        
    }
    
    //Method to handle disabling all controls on the remote.
    @IBAction func controlsDisbaled(_ sender: UISwitch) {
        let hidden = sender.isHidden
        play.isHidden = hidden
        stop.isHidden = hidden
        pause.isHidden = hidden
        fastForward.isHidden = hidden
        fastRewind.isHidden = hidden
        record.isHidden = hidden
        dvrState.text = "Stopped"
        
    }
    
}

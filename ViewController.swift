//
//  ViewController.swift
//  RemoteControl II
//
//  Created by Keertika on 2/10/18.
//  Copyright © 2018 DePaul University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTV: UILabel!
    
    @IBOutlet weak var tvPower: UILabel!
    
    @IBOutlet weak var speakerVolumn: UILabel!
    
    @IBOutlet weak var currentChannel: UILabel!
    
    @IBOutlet weak var tvPowerStatus: UILabel!
    
    @IBOutlet weak var speakerVolumnStatus: UILabel!
    
    @IBOutlet weak var currentChannelNumber: UILabel!
    
    @IBOutlet weak var Switch: UISwitch!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var button0: UIButton!
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var button5: UIButton!
    
    @IBOutlet weak var button6: UIButton!
    
    @IBOutlet weak var button7: UIButton!
    
    @IBOutlet weak var button8: UIButton!
    
    @IBOutlet weak var button9: UIButton!
    
    @IBOutlet weak var buttonChIncrease: UIButton!
    
    @IBOutlet weak var buttonChDecrease: UIButton!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tvPowerStatus.text = "ON"
        currentChannelNumber.text = "7"
        speakerVolumnStatus.text = "50"
        slider.value = 50
        
    }
    
    //Power Switch
    @IBAction func switchToggled(_ sender: UISwitch) {
        tvPowerStatus.text = (sender.isOn ? "ON" : "OFF")
        Switch.setOn(sender.isOn, animated: true)
        
    }
    
    //Volumn Slider
    @IBAction func sliderMoved(_ sender: UISlider) {
        speakerVolumnStatus.text = "\(Int(sender.value))"
    }
    
    var currentchannel: String = ""
    
    //Channel Numbers
    @IBAction func ChannelButtons(_ sender: UIButton) {
        
        if let title = sender.currentTitle {
            switch title {
            case "0":
                if (currentchannel.count == 0){
                    currentchannel += "0"
                }
                else if (currentchannel.count == 1){
                    currentchannel += "0"
                    if (currentchannel == "00"){
                        currentchannel = "01"
                        
                    }
                    currentChannelNumber.text = currentchannel
                    currentchannel = ""
                    
                }
            case "1":
                if (currentchannel.count == 0){
                    currentchannel += "1"
                }
                else if (currentchannel.count == 1){
                    currentchannel += "1"
                    currentChannelNumber.text = currentchannel;
                    currentchannel = ""
                }
            case "2":
                if (currentchannel.count == 0){
                    currentchannel += "2"
                }
                else if (currentchannel.count == 1){
                    currentchannel += "2"
                    currentChannelNumber.text = currentchannel;
                    currentchannel = ""
                }
            case "3":
                if (currentchannel.count == 0){
                    currentchannel += "3"
                }
                else if (currentchannel.count == 1){
                    currentchannel += "3"
                    currentChannelNumber.text = currentchannel;
                    currentchannel = ""
                }
            case "4":
                if (currentchannel.count == 0){
                    currentchannel += "4"
                }
                else if (currentchannel.count == 1){
                    currentchannel += "4"
                    currentChannelNumber.text = currentchannel;
                    currentchannel = ""
                }
            case "5":
                if (currentchannel.count == 0){
                    currentchannel += "5"
                }
                else if (currentchannel.count == 1){
                    currentchannel += "5"
                    currentChannelNumber.text = currentchannel;
                    currentchannel = ""
                }
            case "6":
                if (currentchannel.count == 0){
                    currentchannel += "6"
                }
                else if (currentchannel.count == 1){
                    currentchannel += "6"
                    currentChannelNumber.text = currentchannel;
                    currentchannel = ""
                }
            case "7":
                if (currentchannel.count == 0){
                    currentchannel += "7"
                }
                else if (currentchannel.count == 1){
                    currentchannel += "7"
                    currentChannelNumber.text = currentchannel;
                    currentchannel = ""
                }
            case "8":
                if (currentchannel.count == 0){
                    currentchannel += "8"
                }
                else if (currentchannel.count == 1){
                    currentchannel += "8"
                    currentChannelNumber.text = currentchannel;
                    currentchannel = ""
                }
            case "9":
                if (currentchannel.count == 0){
                    currentchannel += "9"
                }
                else if (currentchannel.count == 1){
                    currentchannel += "9"
                    currentChannelNumber.text = currentchannel;
                    currentchannel = ""
                }
            default:
                break
            }
            
        }
        
    }
    
    //CH+ button
    @IBAction func channelIncrease(_ sender: UIButton) {
        var currentChannel = Int(currentChannelNumber.text!)
        if (currentChannel == 99)
        {
            currentChannelNumber.text = "1"
        }
        else
        {
            currentChannel = currentChannel! + 1
            currentChannelNumber.text = "\(currentChannel!)"
        }
        
    }
    
    //CH- button
    @IBAction func channelDecrease(_ sender: UIButton) {
        var currentChannel = Int(currentChannelNumber.text!)
        if (currentChannel == 1)
        {
            currentChannelNumber.text = "99"
        }
        else
        {
            currentChannel = currentChannel! - 1
            currentChannelNumber.text = "\(currentChannel!)"
        }
        
    }
    
    //Favorite Channels
    @IBAction func FavChannels(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        switch index {
        case 0:
            currentChannelNumber.text = "10"
        case 1:
            currentChannelNumber.text = "20"
        case 2:
            currentChannelNumber.text = "30"
        case 3:
            currentChannelNumber.text = "40"
        default:
            currentChannelNumber.text = "10"
        }
        
        
        
    }
    
    //Method to handle enabling all controls on the remote.
    @IBAction func controlsEnabled(_ sender: UISwitch) {
        let enabled = sender.isOn
        slider.isEnabled = enabled
        segmentedControl.isEnabled = enabled
        button0.isEnabled = enabled
        button1.isEnabled = enabled
        button2.isEnabled = enabled
        button3.isEnabled = enabled
        button4.isEnabled = enabled
        button5.isEnabled = enabled
        button6.isEnabled = enabled
        button7.isEnabled = enabled
        button8.isEnabled = enabled
        button9.isEnabled = enabled
        buttonChIncrease.isEnabled = enabled
        buttonChDecrease.isEnabled = enabled
        
    }
    
    //Method to handle disabling all controls on the remote.
    @IBAction func controlsDisbaled(_ sender: UISwitch) {
        let hidden = sender.isHidden
        slider.isHidden = hidden
        segmentedControl.isHidden = hidden
        button0.isHidden = hidden
        button1.isHidden = hidden
        button2.isHidden = hidden
        button3.isHidden = hidden
        button4.isHidden = hidden
        button5.isHidden = hidden
        button6.isHidden = hidden
        button7.isHidden = hidden
        button8.isHidden = hidden
        button9.isHidden = hidden
        buttonChIncrease.isHidden = hidden
        buttonChDecrease.isHidden = hidden
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  TwoTableViewController.swift
//  SystemSoundDemo
//
//  Created by Wei-Cheng Ling on 2020/11/23.
//

import UIKit
import AVFoundation


class TwoTableViewController: UITableViewController {

    let cafFileNameArray = SoundIDList.cafFileNames()
    var selectedIndex = 0
    
    
    // MARK: - viewLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    
    // MARK: - Setup
    
    func setup() {
        self.navigationItem.title = "Alert Tone"
        self.tabBarItem.title = "File Name"
    }
    

    // MARK: - TableView DataSource
    
    /*
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "/System/Library/Audio/UISounds/"
    }*/

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cafFileNameArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "ItemCell2"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)

        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellIdentifier)
        }
        
        let filename = cafFileNameArray[indexPath.row]
        
        cell!.selectionStyle = .none
        cell!.textLabel?.font = UIFont.systemFont(ofSize: 16)
        cell!.textLabel?.adjustsFontSizeToFitWidth = true
        cell!.textLabel?.text = filename.replacingOccurrences(of: "/System/Library/Audio/UISounds/", with: "")
        
        if indexPath.row == selectedIndex {
            cell!.accessoryType = .checkmark
        } else {
            cell!.accessoryType = .none
        }
        
        return cell!
    }
    
    
    // MARK: - UITableView Delegate
        
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
        
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        tableView.reloadData()
        
        let cafFileName = cafFileNameArray[indexPath.row]
        playCaf(fileName: cafFileName)
    }
    
    
    // MARK: - Play Sound
    
    func playCaf(fileName: String) {
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playAndRecord)
            var alertSound : SystemSoundID = 0
            let url = URL(fileURLWithPath: fileName)
            AudioServicesCreateSystemSoundID(url as CFURL, &alertSound)
            AudioServicesPlaySystemSound(alertSound)
        } catch {
            print("Play \(fileName)...... Error!")
        }
    }
    
}

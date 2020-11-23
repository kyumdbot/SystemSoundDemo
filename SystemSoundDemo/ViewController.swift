//
//  ViewController.swift
//  SystemSoundDemo
//
//  Created by Wei-Cheng Ling on 2020/11/23.
//

import UIKit
import AVFoundation


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView : UITableView!
    
    let soundIDArray = SoundIDList.idArray()
    var selectedIndex = 0
    
    
    // MARK: - viewLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    
    // MARK: - Setup
    
    func setup() {
        self.automaticallyAdjustsScrollViewInsets = false
        self.navigationItem.title = "Alert Tone"
        self.tabBarItem.title = "Sound ID"
    }
    
    
    // MARK: - TableView DataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return soundIDArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "ItemCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)

        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellIdentifier)
        }
        
        let soundId   = soundIDArray[indexPath.row]
        let soundName = SoundIDList.infoDictionary()[soundId] ?? ""
        
        cell!.selectionStyle = .none
        cell!.textLabel?.font = .systemFont(ofSize: 18)
        cell!.textLabel?.numberOfLines = 2
        cell!.detailTextLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        cell!.detailTextLabel?.textColor = UIColor.systemPink
        
        cell!.textLabel?.text = soundName.replacingOccurrences(of: " - ", with: "\n")
        cell?.detailTextLabel?.text = "ID: \(soundId)"
        
        if indexPath.row == selectedIndex {
            cell!.accessoryType = .checkmark
        } else {
            cell!.accessoryType = .none
        }
        
        return cell!
    }
    
    
    // MARK: - UITableView Delegate
        
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 84
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        tableView.reloadData()
        
        let soundId = soundIDArray[indexPath.row]
        AudioServicesPlaySystemSound(soundId)
    }

}


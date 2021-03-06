//
//  SettingsTableViewCell.swift
//  BMH
//
//  Created by Shreyas Zagade on 3/29/18.
//  Copyright © 2018 Bamboo Mobile Health. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var unitsLabel: UILabel!
    
    var parent : SettingsViewController!
    var sectionNo : Int!
    var indexNo : Int!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func inputTextFieldTextChanged(_ sender: UITextField) {
        if let value = Int(sender.text!){
            parent.tableData[sectionNo][indexNo].goalValue = value
        }else{
            sender.text = ""
        }
    }
    
    @IBAction func inputTextFieldDidBeginEditing(_ sender: UITextField) {
        let value = Int(sender.text!)
        if value == 0 {
            sender.text = ""
        }
        parent.lastTextField = sender
    }
    
    @IBAction func inputTextFieldDidEndEditing(_ sender: UITextField) {
        if sender.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            sender.text = "0"
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

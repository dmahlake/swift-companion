//
//  SkillsCellTableViewCell.swift
//  Swifty Companion
//
//  Created by Mudenda Muntanga on 2018/10/23.
//  Copyright © 2018 Mudenda Muntanga. All rights reserved.
//

import UIKit

class SkillsCell: UITableViewCell {

    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    func initCell(name: String, value: Float) {
        
        nameLabel.text = name

        let val : String = String(value)
        valueLabel.text = "\(val) %"
        
        progressView.progress = value.truncatingRemainder(dividingBy: 1)

    }
}

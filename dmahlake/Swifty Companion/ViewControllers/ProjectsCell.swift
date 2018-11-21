//
//  ProjectsCell.swift
//  Swifty Companion
//
//  Created by Mudenda Muntanga on 2018/10/23.
//  Copyright © 2018 Mudenda Muntanga. All rights reserved.
//

import UIKit

class ProjectsCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var markLabel: UILabel!
    
    func initCell(key: Projects) {
        guard let status = key.status else { return }
        
        if status == "finished" {
            nameLabel.text = key.validated! ? "✅ \(key.project?.name ?? "")" :  "❌ \(key.project?.name ?? "")";
            markLabel.text = "\(key.final_mark ?? 0) %"
        } else {
            nameLabel.text = "⏳ \(key.project?.name ?? "")"
            markLabel.text = ""
        }
    }
}


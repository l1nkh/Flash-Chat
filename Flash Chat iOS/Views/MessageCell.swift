//
//  MessageCell.swift
//  Flash Chat iOS
//
//  Created by Diogo Henriques on 24/01/2026.
//  Copyright © 2026 diogo-h. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var messageBubble: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        messageBubble.layer.cornerRadius = messageBubble.frame.height / 3
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Aditya Purandare on 10/02/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    
    var repo: GithubRepo! {
        didSet{
            self.nameLabel.text = repo.name
            self.ownerLabel.text = repo.ownerHandle
            self.forkLabel.text = "\(repo.forks!)"
            self.starLabel.text = "\(repo.stars!)"
            self.descriptionLabel.text = repo.repoDescription
            
            if let AvatarURL = repo.ownerAvatarURL {
                self.avatarImageView.setImageWithURL(NSURL(string: AvatarURL)!)
            } else {
                self.avatarImageView = nil
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

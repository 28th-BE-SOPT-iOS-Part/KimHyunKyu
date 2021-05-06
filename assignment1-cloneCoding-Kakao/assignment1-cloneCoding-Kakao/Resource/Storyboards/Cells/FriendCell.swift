//
//  FriendCell.swift
//  assignment1-cloneCoding-Kakao
//
//  Created by kimhyungyu on 2021/05/05.
//

import UIKit

class FriendCell: UITableViewCell {
    
    //MARK: - Properties
    
    static let identifier = "FriendCell"
    
    //MARK: - @IBOutlet Properties
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(image: UIImage,
                name: String,
                state: String) {
        profileImage.image = image
        nameLabel.text = name
        stateLabel.text = state
    }
}

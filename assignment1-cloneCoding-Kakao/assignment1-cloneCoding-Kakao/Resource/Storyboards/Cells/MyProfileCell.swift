//
//  MyProfileCell.swift
//  assignment1-cloneCoding-Kakao
//
//  Created by kimhyungyu on 2021/05/05.
//

import UIKit

class MyProfileCell: UITableViewCell {

    //MARK: - Properties
    
    static let identifier = "MyProfileCell"
    
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
    
    func setData(image: String,
                name: String,
                state: String) {
        if let image = UIImage(named: image)
        {
            self.profileImage.image = image
        }
        else
        {
            self.profileImage.image = UIImage()
        }
        nameLabel.text = name
        stateLabel.text = state
    }
}

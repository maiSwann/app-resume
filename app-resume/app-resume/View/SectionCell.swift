//
//  SectionCell.swift
//  app-resume
//
//  Created by Maïlys Perez on 17/12/2020.
//

import UIKit

class SectionCell: UITableViewCell {

    @IBOutlet weak var itemImgView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8))
    }
    
    func configureCell(withImage image: UIImage, andTitle title: String) {
        itemImgView.image = image
        titleLbl.text = title
    }

}

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
    
    func configureCell(withImage image: UIImage, andTitle title: String) {
        itemImgView.image = image
        titleLbl.text = title
    }

}

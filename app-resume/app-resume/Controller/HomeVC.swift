//
//  HomeViewController.swift
//  app-resume
//
//  Created by Maïlys Perez on 17/12/2020.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var sectionTable: UITableView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        sectionTable.delegate = self
        sectionTable.dataSource = self
        
        sectionTable.clipsToBounds = true
        sectionTable.layer.cornerRadius = 30
        sectionTable.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = sectionTable.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath) as? SectionCell else {
            return UITableViewCell()
        }
        cell.configureCell(withImage: imageArray[indexPath.row]!, andTitle: titleArray[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        
        headerView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
}

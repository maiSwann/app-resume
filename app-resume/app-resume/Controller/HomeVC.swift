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
    
}

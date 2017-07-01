//
//  MainViewController.swift
//  PodTest
//
//  Created by Jakkawad Chaiplee on 6/16/2560 BE.
//  Copyright © 2560 Jakkawad Chaiplee. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var movie:Movie!
    var movies = [Movie]()
    var sectionName = ["Speed", "Click", "Thor"]
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: TableView
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionName.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0") as? MovieTypeTableViewCell
        cell0?.lblSectionName.text = sectionName[indexPath.section]
        cell0?.loadJSON(keyword: sectionName[indexPath.section])
        return cell0!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  PodTest
//
//  Created by Jakkawad Chaiplee on 6/16/2560 BE.
//  Copyright © 2560 Jakkawad Chaiplee. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var movie:Movie!
    var movies = [Movie]()
    
    @IBOutlet weak var tableView: UITableView!

    func loadJSON(keyword: String) {
        Alamofire.request("http://www.omdbapi.com/?apikey=a7cc5d0f&s=\(keyword)").responseJSON { response in
            if let result = response.result.value as? Dictionary<String, AnyObject> {
//                print(result)
                if let search = result["Search"] as? [Dictionary<String, AnyObject>] {
//                    print(search)
                    for object in search {
                        let movie = Movie(movieDict: object)
//                        print(movie.title)
                        self.movies.append(movie)
                    }
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    
    //MARK: TableView
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0") as? MovieTypeTableViewCell
//        let movie = movies[indexPath.row]
//        cell0?.textLabel?.text = movie.title
        return cell0!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        loadJSON(keyword: "speed")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


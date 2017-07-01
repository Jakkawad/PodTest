//
//  MovieTypeTableViewCell.swift
//  PodTest
//
//  Created by Jakkawad Chaiplee on 7/1/2560 BE.
//  Copyright © 2560 Jakkawad Chaiplee. All rights reserved.
//

import UIKit
import Alamofire

class MovieTypeTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

    var movie:Movie!
    var movies = [Movie]()

    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var lblSectionName: UILabel!
    
    func loadJSON(keyword: String) {
        Alamofire.request("http://www.omdbapi.com/?apikey=a7cc5d0f&s=\(keyword)").responseJSON { response in
            if let result = response.result.value as? Dictionary<String, AnyObject> {
                if let search = result["Search"] as? [Dictionary<String, AnyObject>] {
                    for object in search {
                        let movie = Movie(movieDict: object)
                        self.movies.append(movie)
                    }
                    self.collectionView.reloadData()
                }
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell0 = collectionView.dequeueReusableCell(withReuseIdentifier: "tableCell0", for: indexPath) as? MovieTypeCollectionViewCell
        let movie = movies[indexPath.row]
        cell0?.configureCell(movie: movie)
        return cell0!
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        loadJSON(keyword: "speed")
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

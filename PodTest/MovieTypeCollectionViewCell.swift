//
//  MovieTypeCollectionViewCell.swift
//  PodTest
//
//  Created by Jakkawad Chaiplee on 7/1/2560 BE.
//  Copyright © 2560 Jakkawad Chaiplee. All rights reserved.
//

import UIKit

class MovieTypeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    func configureCell(movie: Movie) {
        // ConfigureCell
        lblName.text = movie.title
        imageView.imageFromServerURL(urlString: movie.poster)
    }
}

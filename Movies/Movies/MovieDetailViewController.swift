//
//  MovieDetailViewController.swift
//  Movies
//
//  Created by Henrique Liberato on 04/01/17.
//  Copyright © 2017 Henrique Liberato. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController{
    
    var movie: Movie!
    
    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var titleDetail: UILabel!
    @IBOutlet weak var descriptionDetail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageDetail.image = movie.image
        titleDetail.text = movie.title
        descriptionDetail.text = movie.description
    }
    
}

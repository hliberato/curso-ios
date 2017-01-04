//
//  Movie.swift
//  Movies
//
//  Created by Henrique Liberato on 04/01/17.
//  Copyright © 2017 Henrique Liberato. All rights reserved.
//

import UIKit

class Movie{
    var title: String!
    var description: String!
    var image: UIImage!
    
    init(title: String, description: String, image: UIImage) {
        self.title = title
        self.description = description
        self.image = image
    }
}

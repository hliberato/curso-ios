//
//  ViewController.swift
//  Movies
//
//  Created by Henrique Liberato on 04/01/17.
//  Copyright © 2017 Henrique Liberato. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        var movie: Movie
        movie = Movie(title: "Meu nome é Bond", description: "James Bond.", image: #imageLiteral(resourceName: "filme1"))
        movies.append(movie)
        movie = Movie(title: "Star Wars", description: "Vende mais que água no deserto.", image: #imageLiteral(resourceName: "filme2"))
        movies.append(movie)
        movie = Movie(title: "Impacto Mortal", description: "Todos morrem no final.", image: #imageLiteral(resourceName: "filme3"))
        movies.append(movie)
        movie = Movie(title: "Deadpool", description: "Não recomendado para menores de 68 anos.", image: #imageLiteral(resourceName: "filme4"))
        movies.append(movie)
        movie = Movie(title: "O Regresso", description: "Finalmente um Oscar para o DiCaprio, coitado.", image: #imageLiteral(resourceName: "filme5"))
        movies.append(movie)
        movie = Movie(title: "A Herdeira", description: "Faço a mínima ideia.", image: #imageLiteral(resourceName: "filme6"))
        movies.append(movie)
        movie = Movie(title: "Caçadores de emoção", description: "Seria melhor ter visto o filme do pelé.", image: #imageLiteral(resourceName: "filme7"))
        movies.append(movie)
        movie = Movie(title: "Regresso do mal", description: "A não, o Nicolas Cage de novo não.", image: #imageLiteral(resourceName: "filme8"))
        movies.append(movie)
        movie = Movie(title: "Tarzan", description: "Prefira o da Disney.", image: #imageLiteral(resourceName: "filme9"))
        movies.append(movie)
        movie = Movie(title: "Hardcore ", description: "Um androide batendo em muita gente.", image: #imageLiteral(resourceName: "filme10"))
        movies.append(movie)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie: Movie = movies[indexPath.row]
        let movieCell = "movieCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: movieCell, for: indexPath) as! MovieCell
        cell.titleMovie.text = movie.title
        cell.imageMovie.image = movie.image
        cell.descriptionMovie.text = movie.description
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero
        cell.imageMovie.layer.cornerRadius = 42
        cell.imageMovie.clipsToBounds = true
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movieDetail" {
            if let indexPath = tableView.indexPathForSelectedRow{
                let selectedMovie = self.movies[indexPath.row]
                let viewControllerDestination = segue.destination as! MovieDetailViewController
                viewControllerDestination.movie = selectedMovie
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


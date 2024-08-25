//
//  FavoritesViewController.swift
//  FeaturesAppMovieTracker
//
//  Created by Thiago Valentim on 21/08/24.
//

import UIKit

class FavoritesViewController: UIViewController {

    var screen: FavoritesScreen?
    var viewModel: FavoritesViewModel = FavoritesViewModel()
  
    
    
    override func loadView() {
        screen = FavoritesScreen()
        self.view = screen
        view.backgroundColor = UIColor(named: "defaultBackgroundColor")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.tableView.delegate = self
        screen?.tableView.dataSource = self
    }
    
}

//func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//       return 180
//   }

// MARK: metodo responsalvel pela interação das cell
extension FavoritesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movie = viewModel.loadCurrentMovie(indexPath: indexPath)
        print(movie.name)
        
    }
}

extension FavoritesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  viewModel.numberOfRowsInSection
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieTableViewCell.identifier, for: indexPath) as? MovieTableViewCell
        
//        cell?.delegate = self
        cell?.setupCell(movies: viewModel.loadCurrentMovie(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    
}


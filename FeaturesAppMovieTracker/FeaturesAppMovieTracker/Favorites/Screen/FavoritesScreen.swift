//
//  FavoritesScreen.swift
//  FeaturesAppMovieTracker
//
//  Created by Thiago Valentim on 21/08/24.
//

import UIKit



class FavoritesScreen: UIView {
    
//    var screen: UITableViewCell = MovieTableViewCell()


    // Criando TableView
    lazy var tableView:UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(MovieTableViewCell.self, forCellReuseIdentifier: MovieTableViewCell.identifier)
        tableView.separatorStyle = .none
//        tableView.backgroundColor = .white
        return tableView
    }()
    
    
    init() {
        super.init(frame: .zero)
        backgroundColor = UIColor(named: "defaultBackgroundColor")
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: Todos os elementos da tela, serao chamados aqui, para serem add na view
    func addElements() {
        addSubview(tableView)
    }

    // MARK: Setando as contraints de cada elemento presente na screen
    func configConstraints () {
       
        NSLayoutConstraint.activate([

            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo:  leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            
        ])
    }
    
    func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
      tableView.delegate = delegate
      tableView.dataSource = dataSource
    }
}






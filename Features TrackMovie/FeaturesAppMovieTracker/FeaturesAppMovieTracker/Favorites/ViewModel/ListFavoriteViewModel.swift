//
//  ListFavoriteViewModel.swift
//  FeaturesAppMovieTracker
//
//  Created by Thiago Valentim on 22/08/24.
//

import Foundation


class ListFavoriteViewModel {
    
    //    private var listMovie: [Detail] = [Detail(title: "Doctor Strange", image: "image1", list: [Item (image: "star.fill", text: "9.5")]),
    //                                       Detail(title: "Doctor Strange", image: "image2", list: [Item (image: "star.fill", text: "8.5")]),
    //                                       Detail(title: "Doctor Strange", image: "image3", list: [Item (image: "star.fill", text: "6.5")]),
    //                                       Detail(title: "Doctor Strange", image: "image4", list: [Item (image: "star.fill", text: "4.5")]),
    //                                       Detail(title: "Doctor Strange", image: "image5", list: [Item (image: "star.fill", text: "7.5")]),
    //                                       
    //    ]
    
    private var listMovie: [Detail] = [Detail(title: "Dounbledor Secret", image: "car"),
                                       Detail(title: "Doctor Strange", image: "star"),
                                       Detail(title: "Spider Man", image: "figure.baseball"),
                                       Detail(title: "Lost City", image: "person"),
                                       Detail(title: "Sonic", image: "house"),
                                       Detail(title: "Dog Adventure", image: "figure.run"),
                                       Detail(title: "Doctor Strange", image: "star"),
                                       Detail(title: "Spider Man", image: "figure.baseball"),
                                       Detail(title: "Lost City", image: "person"),
                                       Detail(title: "Sonic", image: "house"),
                                       Detail(title: "Dog Adventure", image: "figure.run"),
    ]
    
    
    func getListPerson() -> [Detail] {
        return listMovie
    }
    
    // variavel computada
    var getComputerMovie: [Detail]{
        return listMovie
    }
    
    // retorna quantas celulas vai ter, de acordo com o numero de itens em listMovie
    var numberOfRowsInSection: Int {
        return listMovie.count
    }
    
    //
    func loadCurrentMovie(indexPath: IndexPath) -> Detail {
        return listMovie[indexPath.row]
        
    }
    
}


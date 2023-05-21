//
//  HomaViewControll.swift
//  PC_2v
//
//  Created by Alex Parco on 20/05/23.
//

import Foundation


class HomaViewControll {
    var results = [Results]()
    
    let urlTodo: String = "https://rickandmortyapi.com/api/character"
    
    func loadData() async {
        guard let url = URL(string: urlTodo) else {
            print("Error en la url")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decodeResponse = try? JSONDecoder().decode(Response.self, from: data) {
                results = decodeResponse.results
                print(results)
            }
        } catch let error {
            print("Error \(error.localizedDescription)")
        }
    }

}

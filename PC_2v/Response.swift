//
//  Response.swift
//  PC_2v
//
//  Created by Alex Parco on 20/05/23.
//

import Foundation

struct Response: Codable{
    let results: [Results]
}

struct Results: Codable {
    let image: String
    let name: String
    let status: String
    let species: String
}

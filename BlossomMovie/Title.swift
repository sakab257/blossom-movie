//
//  Title.swift
//  BlossomMovie
//
//  Created by Salim on 24/11/2025.
//

import Foundation

struct APIObject: Decodable{
    var results: [Title] = []
}

struct Title: Decodable, Identifiable {
    var id: Int?
    var title: String?
    var name: String?
    var overview: String?
    var posterPath: String?
}

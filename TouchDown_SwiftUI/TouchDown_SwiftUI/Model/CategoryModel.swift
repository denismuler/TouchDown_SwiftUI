//
//  CategoryModel.swift
//  TouchDown_SwiftUI
//
//  Created by Georgie Muler on 27.03.2023.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}

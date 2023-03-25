//
//  CodableBundleExtension.swift
//  TouchDown_SwiftUI
//
//  Created by Georgie Muler on 25.03.2023.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // Locate the JSON File
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate file")
        }
        // Create a property
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        // Create a decoder
        
        let decoder = JSONDecoder()
        // Create a property for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        // Return the ready-to-use data
        return decodedData
    }
}

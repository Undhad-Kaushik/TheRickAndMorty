//
//  RMEndPoint.swift
//  TheRickAndMorty
//
//  Created by undhad kaushik on 02/04/23.
//

import Foundation

/// Represents unique  API endpoint

@frozen  enum RMEndPoint: String {
    /// End point to get character info
    case character
    /// End point to get location info
    case location
    /// End point to get episode info
    case episode
}

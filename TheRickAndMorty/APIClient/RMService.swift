//
//  RMService.swift
//  TheRickAndMorty
//
//  Created by undhad kaushik on 02/04/23.
//

import Foundation

    /// primary API service object to get Rick And Morty data

final class RMService {
    ///sharesd singleton instance
    static let shared = RMService()
    /// privetized constructor
    private init() {}
    
    /// send Rick and Morty  API call
    /// - perameters:
    ///     - request: Request instance
    ///     - complation: call back with data or error 
    public func exicute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}

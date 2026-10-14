//
//  AppConfig.swift
//  Basic_Networking_Swift
//
//  Created by Tahir Awan on 10/10/2026.
//

import Foundation



struct APPConfig: Codable{
    
    let baseURL: String
    
    
    
    static let fallback = APPConfig(
        baseURL: "https://jsonplaceholder.typicode.com"
        
    )
    
    private(set) static var shared: APPConfig = .fallback
    
    
}





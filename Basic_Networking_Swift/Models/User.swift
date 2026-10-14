//
//  User.swift
//  Basic_Networking_Swift
//
//  Created by Tahir Awan on 13/10/2026.
//

import Foundation

/// A User Instance returned by the REST API (GET /Users).

struct User: Codable, Hashable {
    let name: String
    let email: String
}

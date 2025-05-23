//
//  RyzeBundle.swift
//  Ryze
//
//  Created by Rafael Escaleira on 24/03/25.
//

import Foundation

public actor RyzeBundle {
    public var identifier: String? {
        Bundle.main.bundleIdentifier
    }
    
    public var version: String? {
        Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
    }
    
    public init() {}
}

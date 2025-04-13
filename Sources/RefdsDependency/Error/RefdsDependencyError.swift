//
//  RefdsDependencyError.swift
//  Refds
//
//  Created by Rafael Escaleira on 28/03/25.
//

@_exported import RefdsFoundation

public enum RefdsDependencyError: RefdsError {
    case unregisteredDependencyDescription(String)
    
    public var description: String {
        switch self {
        case let .unregisteredDependencyDescription(type):
            return .localized(for: .unregisteredDependencyDescription, with: type)
        }
    }
    
    public var errorDescription: String? {
        switch self {
        case let .unregisteredDependencyDescription(type):
            return .localized(for: .unregisteredDependencyErrorDescription, with: type)
        }
    }
    
    public var failureReason: String? {
        switch self {
        case let .unregisteredDependencyDescription(type):
            return .localized(for: .unregisteredDependencyFailureReason, with: type)
        }
    }
    
    public var recoverySuggestion: String? {
        switch self {
        case let .unregisteredDependencyDescription(type):
            return .localized(for: .unregisteredDependencyRecoverySuggestion, with: type)
        }
    }
}

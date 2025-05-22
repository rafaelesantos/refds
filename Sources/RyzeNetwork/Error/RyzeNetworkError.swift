//
//  RyzeNetworkError.swift
//  Ryze
//
//  Created by Rafael Escaleira on 29/03/25.
//

@_exported import RyzeFoundation

public enum RyzeNetworkError: RyzeError {
    case invalidURL
    case invalidResponse
    case noConnectivity
    case badRequest
    case serverError
    case unauthorized
    case forbidden
    case noCache
    
    public var description: String {
        switch self {
        case .invalidURL: return .localized(for: .invalidURLDescription)
        case .invalidResponse: return .localized(for: .invalidResponseDescription)
        case .noConnectivity: return .localized(for: .noConnectivityDescription)
        case .badRequest: return .localized(for: .badRequestDescription)
        case .serverError: return .localized(for: .serverErrorDescription)
        case .unauthorized: return .localized(for: .unauthorizedDescription)
        case .forbidden: return .localized(for: .forbiddenDescription)
        case .noCache: return .localized(for: .noCacheDescription)
        }
    }
    
    public var errorDescription: String? {
        switch self {
        case .invalidURL: return .localized(for: .invalidURLErrorDescription)
        case .invalidResponse: return .localized(for: .invalidResponseErrorDescription)
        case .noConnectivity: return .localized(for: .noConnectivityErrorDescription)
        case .badRequest: return .localized(for: .badRequestErrorDescription)
        case .serverError: return .localized(for: .serverErrorErrorDescription)
        case .unauthorized: return .localized(for: .unauthorizedErrorDescription)
        case .forbidden: return .localized(for: .forbiddenErrorDescription)
        case .noCache: return .localized(for: .noCacheErrorDescription)
        }
    }
    
    public var failureReason: String? {
        switch self {
        case .invalidURL: return .localized(for: .invalidURLFailureReason)
        case .invalidResponse: return .localized(for: .invalidResponseFailureReason)
        case .noConnectivity: return .localized(for: .noConnectivityFailureReason)
        case .badRequest: return .localized(for: .badRequestFailureReason)
        case .serverError: return .localized(for: .serverErrorFailureReason)
        case .unauthorized: return .localized(for: .unauthorizedFailureReason)
        case .forbidden: return .localized(for: .forbiddenFailureReason)
        case .noCache: return .localized(for: .noCacheFailureReason)
        }
    }
    
    public var recoverySuggestion: String? {
        switch self {
        case .invalidURL: return .localized(for: .invalidURLRecoverySuggestion)
        case .invalidResponse: return .localized(for: .invalidResponseRecoverySuggestion)
        case .noConnectivity: return .localized(for: .noConnectivityRecoverySuggestion)
        case .badRequest: return .localized(for: .badRequestRecoverySuggestion)
        case .serverError: return .localized(for: .serverErrorRecoverySuggestion)
        case .unauthorized: return .localized(for: .unauthorizedRecoverySuggestion)
        case .forbidden: return .localized(for: .forbiddenRecoverySuggestion)
        case .noCache: return .localized(for: .noCacheRecoverySuggestion)
        }
    }
}

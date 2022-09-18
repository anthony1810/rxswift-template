//
//  HomeAPI.swift
//  RxTemplate
//
//  Created by Anthony Tran on 18/03/2022.
//

import Moya

public enum HomeAPI {
    case search
}

extension HomeAPI: TargetType {
    public var baseURL: URL { return Environment.apiUrl }
    public var path: String {
        switch self {
        case .search:
            return "/trending/movie/day"
        }
    }
    
    public var method: Moya.Method {
        return .get
    }
    
    public var task: Task {
        switch self {
        default:
            return .requestParameters(parameters: ["api_key": Environment.apiKey],
                                      encoding: URLEncoding.default)
        }
    }
    
    public var validationType: ValidationType {
        return .none
    }
    
    public var sampleData: Data {
        return "".data(using: String.Encoding.utf8)!
    }
    
    public var headers: [String : String]? {
        return [:]
    }
}

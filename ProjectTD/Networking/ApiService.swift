//
//  ApiService.swift
//  ProjectTD
//
//  Created by User on 25/04/18.
//  Copyright © 2018 User. All rights reserved.
//
import Moya

enum ApiService{
    case question
}

extension ApiService: TargetType {
    var baseURL: URL {
        return URL(string: "https://private-965f0-assessment5.apiary-mock.com")!
    }
    
    var path: String {
        switch self {
        case .question:
            return "/questions"
        }
    }
    
    var method: Method {
        switch self {
        default:
            return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        return .requestPlain
    }
    
    var headers: [String : String]? {
        return ["Content-Type":"application/json","Accept":"application/json"]
    }
    
    
}

//
//  Authorization.swift
//  ProjectTD
//
//  Created by User on 25/04/18.
//  Copyright © 2018 User. All rights reserved.
//
import Moya

extension ApiService: AccessTokenAuthorizable{
    var authorizationType: AuthorizationType {
        switch self {
        case .question:
            return .none
        }
    }
}


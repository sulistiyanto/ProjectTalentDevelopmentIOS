//
//  RoutingDestination.swift
//  ProjectTD
//
//  Created by User on 25/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import ReSwift

enum RoutingDestination : String {
    case list = "QuestionViewController"
    case detail = "DetailViewController"
    
    var controller: UIViewController {
        switch self {
        case .detail:
            return DetailViewController()
        case .list:
            return QuestionViewController()
        }
    }
}

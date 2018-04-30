//
//  RoutingState.swift
//  ProjectTD
//
//  Created by User on 25/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import ReSwift

struct RoutingState: StateType {
    var destination: RoutingDestination
    
    init(destination: RoutingDestination  = .list) {
        self.destination = destination
    }
}

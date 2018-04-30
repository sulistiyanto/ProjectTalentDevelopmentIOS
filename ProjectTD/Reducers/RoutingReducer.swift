//
//  RoutingReducer.swift
//  ProjectTD
//
//  Created by User on 25/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import ReSwift

func routingReducer(action: Action, state: RoutingState?) -> RoutingState {
    var state = state ?? RoutingState()
    switch action {
    case let routingAction as DetailAction:
        state.destination = routingAction.destination
    default:
        break
    }
    return state
}

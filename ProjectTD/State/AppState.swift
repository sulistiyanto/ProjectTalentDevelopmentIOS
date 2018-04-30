//
//  AppState.swift
//  ProjectTD
//
//  Created by User on 25/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import ReSwift

struct AppState: StateType {
    let routingState: RoutingState
    let questionState: QuestionState
    let detailState: DetailState
}

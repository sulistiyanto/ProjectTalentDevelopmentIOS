//
//  AppReducer.swift
//  ProjectTD
//
//  Created by User on 25/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import ReSwift

func appReducer(action: Action, state: AppState?) -> AppState {
    return AppState(routingState: routingReducer(action: action, state: state?.routingState),
                    questionState: questionReducer(actions: action, state: state?.questionState),
                    detailState: detailReducer(action: action, state: state?.detailState))
}

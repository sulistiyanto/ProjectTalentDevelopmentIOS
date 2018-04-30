//
//  QuestionDetailReducer.swift
//  ProjectTD
//
//  Created by User on 26/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import ReSwift

func detailReducer(action: Action, state: DetailState?) -> DetailState {
    var state = state ?? DetailState()
    switch action {
    case let detailAction as DetailAction:
        state.questionModel = detailAction.model
    default:
        break
    }
    return state
}

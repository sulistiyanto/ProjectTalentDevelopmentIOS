//
//  QuestionReducer.swift
//  ProjectTD
//
//  Created by User on 25/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import ReSwift

func questionReducer(actions: Action, state: QuestionState?) -> QuestionState {
    var state = state ?? QuestionState(questionModel: [])
    switch actions {
    case let action as FetchQuestionAction:
        state.questionModel = action.model
    default:
        break
    }
    return state
}

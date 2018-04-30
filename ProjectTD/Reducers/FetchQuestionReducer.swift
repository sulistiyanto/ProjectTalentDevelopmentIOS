//
//  FetchQuestionReducer.swift
//  ProjectTD
//
//  Created by User on 26/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import ReSwift

func fetchQuestionReducer(state: AppState, store: Store<AppState>) -> FetchQuestionAction{
    NetworkAdapter.request(target: .question, success: { (response) in
        do {
            let decoder = JSONDecoder()
            let response: [QuestionModel] = try decoder.decode([QuestionModel].self, from: response.data)
            DispatchQueue.main.async {
                store.dispatch(FetchQuestionAction(model: response))
                print(response)
            }
        }catch {
            store.dispatch(RequestErrorAction(error: "parsing data failed"))
        }
    }, error: { (error) in
        
    }) { (moyaErro) in
        
    }
    
    return FetchQuestionAction(model: [])
}

//
//  QuestionViewController.swift
//  ProjectTD
//
//  Created by User on 25/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit
import ReSwift

class QuestionViewController: UITableViewController {
    
    var questionList: QuestionTableView?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        store.subscribe(self){
            $0.select({$0.questionState})
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        store.unsubscribe(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        store.dispatch(fetchQuestionReducer)
        questionList = QuestionTableView(frame: .zero)
        questionList?.registerCellClass(QuestionTableViewCell.self)
        questionList?.separatorStyle = UITableViewCellSeparatorStyle.none
        guard let list = questionList else {
            return
        }
        view.addSubview(list)
        self.title = "Question"
        list.constraintEntireSuperview(toView: view, value: 0)
    }
}

extension QuestionViewController : StoreSubscriber {
    func newState(state: QuestionState) {
        questionList?.initTableView(model: state.questionModel)
    }
}

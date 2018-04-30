//
//  DetailViewController.swift
//  ProjectTD
//
//  Created by User on 25/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit
import ReSwift

class DetailViewController: UIViewController, StoreSubscriber {
    
    var model : QuestionModel?
    var questionLabel = UILabel()
    var dateLabel = UILabel()
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        store.subscribe(self) {
            $0.select {
                $0.detailState
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        store.unsubscribe(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let margins = view.layoutMarginsGuide
        self.title = "Detail"
        
        view.addSubview(questionLabel)
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        questionLabel.topAnchor.constraint(equalTo: margins.topAnchor, constant: 16).isActive = true
        questionLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        questionLabel.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        
        view.addSubview(dateLabel)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant:5).isActive = true
        dateLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        dateLabel.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        
    }
    
    func newState(state: DetailState) {
        model = state.questionModel
        questionLabel.text = model?.question
        dateLabel.text = model?.published_at
    }
}


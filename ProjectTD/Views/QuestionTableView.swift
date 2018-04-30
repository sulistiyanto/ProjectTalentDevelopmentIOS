//
//  QuestionTableView.swift
//  ProjectTD
//
//  Created by User on 25/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

class QuestionTableView: UITableView, UITableViewDataSource, UITableViewDelegate {
    
    var model: [QuestionModel?] = []
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .white
        dataSource = self
        delegate = self
        self.separatorStyle = UITableViewCellSeparatorStyle.none
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initTableView(model: [QuestionModel?]) {
        self.model = model
        self.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = QuestionTableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: QuestionTableViewCell.identifier)
        cell.configureCell(model: model[indexPath.row]!)
        cell.backgroundColor = UIColor.clear
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let navigationState : RoutingDestination = .detail
        store.dispatch(DetailAction(destination: navigationState, model: model[indexPath.row] as Any as! QuestionModel))
    }
}

//
//  QuestionModel.swift
//  ProjectTD
//
//  Created by User on 25/04/18.
//  Copyright © 2018 User. All rights reserved.
//

struct QuestionModel: Decodable {
    var question: String
    var published_at: String
    var choices: [String]
}

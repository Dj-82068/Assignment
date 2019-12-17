//
//  Row.swift
//  info_Assignment
//
//  Created by Admin on 16/12/19.
//  Copyright © 2019 ccs. All rights reserved.
//

import Foundation
struct RecordsList:Decodable {
    let rows: [Row]
}

struct Row : Decodable{
    let title : String
    let description : String
    let imageHref : String
}

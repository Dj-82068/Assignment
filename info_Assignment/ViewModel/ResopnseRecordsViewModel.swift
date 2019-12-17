//
//  ResopnseRecordsViewModel.swift
//  info_Assignment
//
//  Created by Admin on 16/12/19.
//  Copyright © 2019 ccs. All rights reserved.
//

import Foundation


struct RecordListViewModel {
    let Rows : [Row]
}

struct RecordViewModel {
    private let row : Row
    
    init(_ row :Row) {
        self.row = row
    }
    
    var title : String{
        return self.row.title
    }
    var drscription : String{
        return self.row.description
    }
    var imageHref : String{
        return self.row.imageHref
    }
}

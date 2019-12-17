//
//  webservice.swift
//  info_Assignment
//
//  Created by Admin on 16/12/19.
//  Copyright © 2019 ccs. All rights reserved.
//

import Foundation

class webservice{
    func getRows(url : URL, completion : @escaping ([Row]?)->()){
        URLSession.shared.dataTask(with: url){data, response, error in
            
            if let error = error{
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data {
                
                print(data)
                
                let recordList = try? JSONDecoder().decode(RecordsList.self, from: data)

                if let List = recordList{
                    completion(List.rows)
                }
            print(recordList?.rows)
                
            }
            }.resume()
    }
}

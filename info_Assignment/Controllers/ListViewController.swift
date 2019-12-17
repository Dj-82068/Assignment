//
//  ListViewController.swift
//  info_Assignment
//
//  Created by Admin on 16/12/19.
//  Copyright © 2019 ccs. All rights reserved.
//

import UIKit
import Kingfisher

class ListViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    
    let CountryInfoTableview = UITableView()
    private var recordListVM : RecordListViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        view.addSubview(CountryInfoTableview)
        setupTableView()
        setUpNavigation()
        setup()
        
    }
    private func setup(){
        self.navigationController?.navigationBar.prefersLargeTitles = true
        let url = URL(string: "https://dl.dropboxusercontent.com/s/2iodh4vg0eortkl/facts.json")!
        webservice().getRows(url: url){ records in
            
            if let records = records{
                self.recordListVM = RecordListViewModel(Rows : records)
                DispatchQueue.main.async {
                    self.CountryInfoTableview.reloadData()
                }
            }
        }
    }

    func setupTableView(){
        
        CountryInfoTableview.translatesAutoresizingMaskIntoConstraints = false
        CountryInfoTableview.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor).isActive = true
        CountryInfoTableview.leadingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        CountryInfoTableview.trailingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        CountryInfoTableview.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        CountryInfoTableview.register(MycellTableViewCell.self, forCellReuseIdentifier: "contactCell")
        
        CountryInfoTableview.dataSource = self
        CountryInfoTableview.delegate = self
        
    }
    func setUpNavigation() {
        navigationItem.title = "Title"
        self.navigationController?.navigationBar.barTintColor = _ColorLiteralType(red: 0.2431372549, green: 0.7647058824, blue: 0.8392156863, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:_ColorLiteralType(red: 1, green: 1, blue: 1, alpha: 1)]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as! MycellTableViewCell
        
        
        
        /* If json is in correct format
         
        let recordsVM = self.recordListVM.Rows[indexPath.row]
        if let imgurl = recordsVM.imageHref as? String{
            let url = URL(string: imgurl)
            cell.profileImageView.kf.setImage(with: url)
        }
        cell.Title.text = recordsVM.title
        cell.DetailedLabel.text = recordsVM.description
         
        */
        
        //Setting static values because not getting proper json response from server
        
        cell.profileImageView.image = UIImage.init(named: "icon-user")
        cell.Title.text = "Title"
        cell.DetailedLabel.text = "This is a dummy text just to check that table view is working properly and cells are ecpanding dynamically."
        
        return cell
    }
    
    
}

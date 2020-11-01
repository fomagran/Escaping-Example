//
//  TableViewController.swift
//  Escaping Example
//
//  Created by Fomagran on 2020/10/31.
//

import UIKit

class TableViewController: UITableViewController {
    
    var movies = [Movie]()
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.img.image = movies[indexPath.row].image
        cell.title.text = movies[indexPath.row].title
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(getMovie), name: NSNotification.Name("getMovie"), object: nil)
        MovieAPI.getMovieNoCompletion()
                
        print("Something to do1")
        self.title = "영화목록"
        print("Something to do2")
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(tapLeftButton))

    }
    
    @objc func getMovie(_ notification:NSNotification) {
        movies = notification.userInfo?["movies"] as! [Movie]
        tableView.reloadData()
    }

    
    
    @objc func tapLeftButton(){
        print("DEBUG:tap Edit Button")
    }



}



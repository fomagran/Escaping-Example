//
//  TableViewController.swift
//  Escaping Example
//
//  Created by Fomagran on 2020/10/31.
//

import UIKit

class TableViewController: UITableViewController {
    var movies = [Movie]()
    override func viewDidLoad() {
        super.viewDidLoad()

        MovieAPI.getMovie { (isSuccess, movies) in
          if isSuccess {
            self.movies = movies
            print("Completion is Success")
            self.tableView.reloadData()
          }
        }
//        MovieAPI.getMovie2 { (isSuccess, movies) in
//          if isSuccess {
//            self.movies = movies
//            self.tableView.reloadData()
//          }
//        }
        print("Something to do1")
        print("Something to do2")

    }

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


}

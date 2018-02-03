//
//  ViewController.swift
//  JSONTests
//
//  Created by Cristi on 03/02/2018.
//  Copyright © 2018 Cristi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var users : [User]? = [User]()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        fetchData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (users!.count)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Users"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath)
        cell.textLabel?.text = users![indexPath.row].name
        cell.detailTextLabel?.text = users![indexPath.row].company?.name
        
        return cell
    }
    
    
    func fetchData()
    {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()

                self.users = try decoder.decode([User].self, from: data)
                
//                print("Count: ", self.users!.count)
//                print("Name: ", self.users![0].name as Any)
//                print("Address: ", self.users![0].address?.street as Any)
//                print("Lat: ", self.users![0].address?.geo?.lat as Any)
            } catch let err {
                print("Error: ", err)
            }
            
            DispatchQueue.main.async {
                
                self.tableView.reloadData()
            }
            
        }.resume()
    }
}


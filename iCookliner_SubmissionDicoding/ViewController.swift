//
//  ViewController.swift
//  iCookliner_SubmissionDicoding
//
//  Created by Diana Febrina Lumbantoruan on 12/06/21.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    var indeks : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "customCell")
        
        tableView.dataSource = self
        tableView.delegate = self
        
        indeks = 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch segmentedControl.selectedSegmentIndex{
        case 0:
            return meals.count
        case 1:
            return cakes.count
        default:
            break
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as? CustomCell{
            switch segmentedControl.selectedSegmentIndex{
            case 0:
                let meal = meals[indexPath.row]
                cell.imageObject.image = meal.imageMeal
                cell.nameOfObject.text = meal.titleMeal
                break
            case 1:
                let cake = cakes[indexPath.row]
                cell.imageObject.image = cake.imageCake
                cell.nameOfObject.text = cake.nameCake
                break
            default:
                break
            }
            
            return cell
        }
        
        else{
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            detail.meall = meals[indexPath.row]
            break
        case 1:
            detail.cakee = cakes[indexPath.row]
        default:
            break
        }
        
        self.navigationController?.pushViewController(detail, animated: true)
    }
    
    @IBAction func segmentedSwitch(_ sender: UISegmentedControl) {
        self.tableView.reloadData()
    }
    
}


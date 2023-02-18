//
//  DetailViewController.swift
//  iCookliner_SubmissionDicoding
//
//  Created by Diana Febrina Lumbantoruan on 13/06/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleFood: UILabel!
    @IBOutlet weak var imageFood: UIImageView!
    @IBOutlet weak var ingredientsFood: UILabel!
    @IBOutlet weak var howToCook: UILabel!
    @IBOutlet weak var sumberReceipt: UILabel!
    
    var meall : Meal?
    var cakee : Cake?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let result1 = meall {
            titleFood.text = result1.titleMeal
            imageFood.image = result1.imageMeal
            ingredientsFood.text = result1.ingredientMeal
            howToCook.text = result1.instructionMeal
            sumberReceipt.text = result1.source
            
        }
        
        if let result2 = cakee {
            titleFood.text = result2.nameCake
            imageFood.image = result2.imageCake
            ingredientsFood.text = result2.ingredientCake
            howToCook.text = result2.instructionCake
            sumberReceipt.text = result2.sumber
        }

    }
}

//
//  NextViewController.swift
//  Swift5TebleViewBesic
//
//  Created by minato on 2021/03/06.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var todoLabel: UILabel!
    
    
    var todoString = String()
    
    
    override func viewDidLoad() {

        
        
        super.viewDidLoad()

        todoLabel.text = todoString
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

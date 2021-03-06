//
//  ViewController.swift
//  Swift5TebleViewBesic
//
//  Created by minato on 2021/03/06.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate,UITableViewDataSource, UITableViewDelegate,UITextFieldDelegate {


    @IBOutlet weak var textFild: UITextField!
    @IBOutlet weak var tebleView: UITableView!
   
    var textArray = [String]()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        tebleView.delegate = self
        tebleView.dataSource = self
        textFild.delegate = self
    }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
            return 1
            
        }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell =
                tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            
            cell.textLabel?.text = textArray[indexPath.row]
            cell.imageView?.image = UIImage(named: "checkImage")
            
            return cell
            
            
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        
    }



    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height/6
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textArray.append(textField.text!)
        textField.resignFirstResponder()
        textField.text = ""
        tebleView.reloadData()
        return true
        
        
    }


}






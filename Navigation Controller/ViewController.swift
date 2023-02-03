//
//  ViewController.swift
//  Navigation Controller
//
//  Created by Akshay Yendhe on 05/01/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.title = "My Title"
    }
    
    @IBAction func didTapButton(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(vc, animated: true)
        vc.navigationItem.largeTitleDisplayMode = .never
    }

}

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Hello"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapButton(){
        navigationController?.popViewController(animated: true)
    }


}



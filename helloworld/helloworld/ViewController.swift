//
//  ViewController.swift
//  helloworld
//
//  Created by Ahngeunwoo on 2020/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func Click_moveBtn(_ sender: Any) {
        //옵셔널 바인딩
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "DetailController")
        self.navigationController?.pushViewController(controller!, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //click event

    
}

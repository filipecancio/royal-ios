//
//  ViewController.swift
//  royal-ios
//
//  Created by Felipe Soares Cancio on 03/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var lblid: UILabel!
    @IBOutlet weak var lblphone: UILabel!
    @IBOutlet weak var lblImage: UIImageView!
    @IBOutlet weak var scrollbtn: UIScrollView!
    
    @IBAction func clickRafaela(_ sender: Any) {
        lblImage.image = UIImage(named: "rafaela")!
        lblname.text = "Rafaela Abdon"
        lblid.text = "321"
        lblphone.text = "77 9999-9999"
    }
    @IBAction func clickGabriel(_ sender: Any) {
        lblImage.image = UIImage(named: "gabriel")!
        lblname.text = "Gabriel Leão"
        lblid.text = "321"
        lblphone.text = "77 9999-9999"
    }
    
    @IBAction func clickGleisson(_ sender: Any) {
        lblImage.image = UIImage(named: "gleisson")!
        lblname.text = "Gleisson Carvalho"
        lblid.text = "321"
        lblphone.text = "77 9999-9999"
    }
    @IBAction func clickIanka(_ sender: Any) {
        lblImage.image = UIImage(named: "ianka")!
        lblname.text = "Ianka Ferraz"
        lblid.text = "321"
        lblphone.text = "77 9999-9999"
    }
    @IBAction func clickIsaac(_ sender: Any) {
        lblImage.image = UIImage(named: "isaac")!
        lblname.text = "Isaac Matos"
        lblid.text = "321"
        lblphone.text = "77 9999-9999"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


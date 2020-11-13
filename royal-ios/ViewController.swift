//
//  ViewController.swift
//  royal-ios
//
//  Created by Felipe Soares Cancio on 03/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    //Variaveis de requisicao
    var user:Contact!
    var contacts:[Contact]!
    var transactions:[Transaction]!
    var report:TransactionReport!
    
    //Pagina inicial
    @IBOutlet weak var userAvatar: UIImageView!;
    @IBOutlet weak var userName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Requisicoes da api
        getUser{
            (data) in
                self.user = data
        }
        getContacts{
            (data) in
                self.contacts = data
        }
        getTransactions{
            (data) in
                self.transactions = data
        }
        getReport{
            (data) in
                self.report = data
        }
    }
    
    
    



}


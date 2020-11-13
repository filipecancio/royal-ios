import Foundation
func getContacts(completion: @escaping ([Contact])->()){
    let url_string = URL(string: "https://royal.cancio.dev/contacts")!
    let task = URLSession.shared.dataTask(with: url_string){(data,response,error) in
        guard let responseData = data else {return}
        
        do{
            let contactsObject = try JSONDecoder().decode([Contact].self, from: responseData)
            completion(contactsObject)
        }catch let error{
            print("error: \(error)")
        }
    }
    task.resume()
}
func getUser(completion: @escaping (Contact)->()){
    let url_string = URL(string: "https://royal.cancio.dev/home")!
    let task = URLSession.shared.dataTask(with: url_string){(data,response,error) in
        guard let responseData = data else {return}
        
        do{
            let contactObject = try JSONDecoder().decode(Contact.self, from: responseData)
            completion(contactObject)
        }catch let error{
            print("error: \(error)")
        }
    }
    task.resume()
}
func getTransactions(completion: @escaping ([Transaction])->()){
    let url_string = URL(string: "https://royal.cancio.dev/transactions")!
    let task = URLSession.shared.dataTask(with: url_string){(data,response,error) in
        guard let responseData = data else {return}
        
        do{
            let transactionsObject = try JSONDecoder().decode([Transaction].self, from: responseData)
            completion(transactionsObject)
        }catch let error{
            print("error: \(error)")
        }
    }
    task.resume()
}
func getReport(completion: @escaping (TransactionReport)->()){
    let url_string = URL(string: "https://royal.cancio.dev/transactions")!
    let task = URLSession.shared.dataTask(with: url_string){(data,response,error) in
        guard let responseData = data else {return}
        
        do{
            let transactionReportObject = try JSONDecoder().decode(TransactionReport.self, from: responseData)
            completion(transactionReportObject)
        }catch let error{
            print("error: \(error)")
        }
    }
    task.resume()
}

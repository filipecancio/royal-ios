//
//  service.swift
//  royal-ios
//
//  Created by Felipe Soares Cancio on 12/11/20.
//

import Foundation

func getData(completion: @escaping ([Contact])->()){
    let url_string = URL(string: "https://royal.cancio.dev/contacts")!
    let task = URLSession.shared.dataTask(with: url_string){(data,response,error) in
        guard let responseData = data else {return}
        
        do{
            let contactsObject = try JSONDecoder().decode([Contact].self, from: responseData)
            completion(contactsObject)
        }catch let error{
            print("error: \(error)")
        }
        /*
         if let dataString = String(data:responseData,encoding: .utf8)
         {
             print(dataString)
         }
         */
    }
    task.resume()
}

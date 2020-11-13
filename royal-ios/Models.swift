import Foundation
struct Contact:Codable {
    let name: String?
    let nick: String?
    let email: String?
    let phone: String?
    let id: String?
    let avatar: String?
}
struct Transaction:Codable {
    let name: String?
    let nick: String?
    let date: String?
    let value: String?
    let id: String?
    let avatar: String?
    let type: String?
}
struct TransactionReport:Codable {
    let month: Float?
    let year: String?
    let totalsCredit: [TotalTransaction]?
}
struct TotalTransaction:Codable {
    let nick: [String]?
    let debit: Float?
    let credit: Float?
    let id: String?
    let totalsDebit: [Float]?
    let totalsCredit: [Float]?
}

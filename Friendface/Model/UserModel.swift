// User.swift

// MARK: - LIBRARIES -

import Foundation



struct UserModel: Decodable,
                  Identifiable {
   
   // MARK: PROPERTIES
   
   let id: String
   var isActive: Bool
   let name: String
   let age: Int
   let company: String
   let email: String
   let address: String
   let about: String
   let registered: String
   let tags: [String]
   let friends: [FriendModel]
}

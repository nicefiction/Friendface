// FriendFaceDataModel.swift

// MARK: - LIBRARIES -

import Foundation



class FriendFaceDataModel: ObservableObject {
   
   @Published var users = Array<UserModel>()
}

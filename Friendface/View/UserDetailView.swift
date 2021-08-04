// UserDetailView.swift

// MARK: - LIBRARIES -

import SwiftUI



struct UserDetailView: View {
   
   // MARK: - PROPERTIES
   
   let user: UserModel
   
   
   
   // MARK: - COMPUTED PROPERTIES
   
   var body: some View {
      
      Text(user.name)
   }
}





// MARK: - PREVIEWS -

struct UserDetailView_Previews: PreviewProvider {
   
   // MARK: - PROPERTIES
   
   static let users = Bundle.main.decode("users.json")
   
   
   
   // MARK: - COMPUTED PROPERTIES
   
   static var previews: some View {
      
      UserDetailView(user: users[0])
   }
}

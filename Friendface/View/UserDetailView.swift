// UserDetailView.swift

// MARK: - LIBRARIES -

import SwiftUI



struct UserDetailView: View {
   
   // MARK: - PROPERTIES
   
   let user: UserModel
   var users: [UserModel]
   
   
   
   // MARK: - COMPUTED PROPERTIES
   
   var body: some View {
      
      VStack {
         List {
            ForEach(user.friends) { (friend: FriendModel) in
               NavigationLink(destination: FriendDetailView(friend: friend,
                                                            user: user)) {
                  Text(friend.name)
               }
            }
         }
      }
      .navigationBarTitle(Text(user.name),
                          displayMode: .inline)
   }
}





// MARK: - PREVIEWS -

struct UserDetailView_Previews: PreviewProvider {

   // MARK: - PROPERTIES

   static var friendFaceFataModelExample = FriendFaceDataModel()
   static var exampleUsers = friendFaceFataModelExample.users
   static let exampleUser = UserModel(id: "eccdf4b8-c9f6-4eeb-8832-28027eb70155",
                                      isActive: true,
                                      name: "Gale Dyer",
                                      age: 28,
                                      company: "Cemention",
                                      email: "galedyer@cemention.com",
                                      address: "652 Gatling Place, Kieler, Arizona, 1705",
                                      about: "Laboris ut dolore ullamco officia mollit reprehenderit qui eiusmod anim cillum qui ipsum esse reprehenderit. Deserunt quis consequat ut ex officia aliqua nostrud fugiat Lorem voluptate sunt consequat. Sint exercitation Lorem irure aliquip duis eiusmod enim. Excepteur non deserunt id eiusmod quis ipsum et consequat proident nulla cupidatat tempor aute. Aliquip amet in ut ad ullamco. Eiusmod anim anim officia magna qui exercitation incididunt eu eiusmod irure officia aute enim.\r\n",
                                      registered: "2014-07-05T04:25:04-01:00",
                                      tags: [ "irure", "labore", "et", "sint", "velit", "mollit", "et" ],
                                      friends: [
                                       FriendModel(id: "1c18ccf0-2647-497b-b7b4-119f982e6292", name: "Daisy Bond"),
                                       FriendModel(id: "a1ef63f3-0eab-49a8-a13a-e538f6d1c4f9", name: "Tanya Roberson")
                                      ])


   
   

   // MARK: - COMPUTED PROPERTIES

   static var previews: some View {

      UserDetailView(user: exampleUser,
                     users: exampleUsers)
   }
}

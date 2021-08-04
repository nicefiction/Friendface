// ContentView.swift

// MARK: - LIBRRARIES -

import SwiftUI



struct ContentView: View {
   
   // MARK: - PROPERTIES -
   
   let users: [UserModel] = Bundle.main.decode("users.json")
   
   
   
   
   // MARK: - COMPUTED PROPERTIES -
   
   var body: some View {
      
      NavigationView {
         List {
            ForEach(users, id: \.id) { (user: UserModel) in
               NavigationLink(destination: UserDetailView(user: user)) {
                  HStack(alignment: .top) {
                     Text(user.name)
                        .font(.headline)
                        .fontWeight(.semibold)
                     Spacer()
                     VStack(alignment: .trailing) {
                     ForEach(user.tags,
                             id: \.self) { (tag: String) in
                           Text(tag)
                              .font(.subheadline)
                              .foregroundColor(Color.secondary)
                        }
                     }
                  }
               }
            }
         }
         .navigationTitle(Text("Friendface"))
      }
   }
      
   
   
   // MARK: - METHODS -

}





// MARK: - PREVIEWS -

struct ContentView_Previews: PreviewProvider {
   
   static var previews: some View {
      
      ContentView()
   }
}

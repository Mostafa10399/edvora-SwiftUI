import SwiftUI
import SDWebImageSwiftUI

struct Header: View {
    let imageee:String
    var body: some View {
        HStack {
            Text("Edvora")
                .frame( height: 53)
                .font(.system(size: 44, weight: .bold, design: .serif))
            Spacer()
            WebImage(url: URL(string: imageee))
                .resizable()
                .frame(width: 50, height: 50)
                .aspectRatio( contentMode: .fit)
                .clipShape(Circle())
                
            
        }
        .padding(.horizontal,20)
    }
}

//struct HeaderTwo_Previews: PreviewProvider {
//    static var previews: some View {
//        Header()
//    }
//}

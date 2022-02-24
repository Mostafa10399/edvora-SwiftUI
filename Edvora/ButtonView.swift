import SwiftUI


struct ButtonView: View {
    @Binding var current:String
    var image:String
    var animation : Namespace.ID
    var body: some View {
        Button(action:{
            withAnimation {
                current = image
            }
        })
        {
            VStack( spacing: 5)
            {
                Text(image)
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                ZStack(alignment: .leading)
                {
//
                    if current == image
                    {
                        
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 39 ,height: 4,alignment: .leading)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                    }
                }
            }
        }
        

    }
}

//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        
////        ButtonView()
//    }
//}


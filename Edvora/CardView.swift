//
//  Transactions.swift
//  Edvora
//
//  Created by Mostafa Mahmoud on 2/22/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct CardView: View {
    let imageString :String
    let itRide:Int
    let DateRide:String
    var body: some View {
    
                ZStack(){
                   WebImage(url: URL(string: imageString)!)
                        .resizable()
                        .cornerRadius(10)
                       
                        .padding(5)
                    VStack
                    {
                        Spacer()
                        TaskBar(idRide: itRide, dateRide: DateRide).padding(.horizontal,5)
                    }
                } .frame( height: 230)
            .background(.clear)
                
                    
      

    }
}

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//     
//            CardView().previewLayout(.sizeThatFits).previewInterfaceOrientation(.portraitUpsideDown)
//        }
//    }
//}



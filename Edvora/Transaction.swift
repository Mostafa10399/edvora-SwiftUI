//
//  TransActions.swift
//  BasicBankApp
//
//  Created by Mostafa Mahmoud on 2/5/22.
//

import SwiftUI
struct TransActions: View {
    @ObservedObject var netWorkManger = NetworkManger()
    var body: some View {
       
        List(netWorkManger.posts,rowContent: { item in
            VStack
            {
              
                CardView(itRide: item.id, DateRide: item.date)

            }
        }
             )
      
        .onAppear {
            netWorkManger.fetchData()
        }
    }
}

struct TransActions_Previews: PreviewProvider {
    static var previews: some View {
        TransActions().previewLayout(.sizeThatFits)
    }
}



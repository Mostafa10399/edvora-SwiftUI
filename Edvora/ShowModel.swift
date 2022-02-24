//
//  ShowModel.swift
//  Edvora
//
//  Created by Mostafa Mahmoud on 2/24/22.
//

import SwiftUI

struct ShowModel: View {
    @Binding var isShowing:Bool
    var body: some View {
        if isShowing
        {
            ZStack(alignment: .bottom)
            {
                Color.white
                    .ignoresSafeArea()
                    .opacity(0.3)
                    .onTapGesture {
                        isShowing = false
                    }
                
                VStack
                {
                    Text("Hello")
                }
                .frame( height: 400)
                .frame(maxWidth:.infinity)
                .background(.white)
                .opacity(0.6)
        }
            .frame( maxWidth:.infinity, maxHeight: .infinity, alignment: .bottom)
                .ignoresSafeArea()
                .animation(.easeInOut)
                .transition(.move(edge: .bottom))
       
        }
    }
}

struct ShowModel_Previews: PreviewProvider {
    static var previews: some View {
        ShowModel(isShowing: .constant(true))
    }
}

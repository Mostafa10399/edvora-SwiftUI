//
//  TaskBar.swift
//  Edvora
//
//  Created by Mostafa Mahmoud on 2/22/22.
//


import SwiftUI

struct TaskBar: View {
    let idRide:Int
    let dateRide:String
    var body: some View {
        HStack
        {
            Text("#")
                .frame(width: 15, height: 15)
                .foregroundColor(.blue)
                .padding(.leading,20)
            Text("\(idRide)")
                .foregroundColor(.black)
            Spacer()
            Image(systemName: "calendar")
                .frame(width: 20, height: 20)
                .foregroundColor(.blue)
            Text("\(dateRide)")
                .foregroundColor(.black)
                .padding(.trailing,20)
            
        }
        .frame( height: 55)
        .frame(maxWidth:.infinity)
        .background(Color.ColorGray)
        .cornerRadius(10)
    }
}

//
//struct TaskBar_Previews: PreviewProvider {
//    static var previews: some View {
//        TaskBar()
//    }
//}

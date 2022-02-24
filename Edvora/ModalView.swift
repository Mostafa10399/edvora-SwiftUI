//
//  ModalView.swift
//  Edvora
//
//  Created by Mostafa Mahmoud on 2/24/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct ModalView: View {
    
    let id : Int
    let origin_station_code:Int
    let station_path :[Int]
    let destination_station_code:Int
    let date : String
    let map_url:String
    let state:String
    let city:String
    let userLocation:Int
    
    var body: some View {
        VStack(){
            WebImage(url: URL(string: map_url))
                .resizable()
                .cornerRadius(10)
                .frame( height: 230)
                .padding(5)
            
            
            ZStack {
                Rectangle().cornerRadius(10)
                    .frame( height: 320)
                    .foregroundColor(.white)
                    .padding()
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                
                VStack(alignment: .trailing) {
                    HStack
                    {
                        VStack(alignment: .leading) {
                            Text("Ride Id")
                            Text("\(id)")
                        }
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("Origin Station")
                            Text("\(origin_station_code)")
                        }
                    }
                    .padding()
                    .padding(.horizontal)
                    
                    Divider()
                    HStack
                    {
                        VStack(alignment: .leading) {
                            Text("Date")
                            Text("\(date)")
                        }
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("Distance")
                            Text("\(destination_station_code - userLocation )")
                        }
                    }
                    .padding()
                    .padding(.horizontal)
                    
                    Divider()
                    HStack
                    {
                        VStack(alignment: .leading) {
                            Text("State")
                            Text("\(state)")
                        }
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("Distance")
                            Text("\(city)")
                        }
                    }
                    .padding()
                    .padding(.horizontal)
                    Divider()
                    HStack
                    {
                        VStack(alignment: .leading) {
                            Text("Station Path")
                            HStack {
                                ForEach(0..<station_path.count) { i in
                                 
                                        Text("\(station_path[i])")
                                        .padding(.horizontal,5)
                                    
                                }
                            }
                            
                        }
                        Spacer()
                        VStack(alignment: .trailing) {
                            
                        }
                    }
                    .padding()
                    .padding(.horizontal)
                    
                    
                    
                }
            }
            //                .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
            //                    .cornerRadius(10)
            
        }
        
        
        .background(.clear)
        
        .ignoresSafeArea()
    }
}

//struct ModalView_Previews: PreviewProvider {
//    static var previews: some View {
//        ModalView()
//    }
//}

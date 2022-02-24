//
//  ContentView.swift
//  Edvora
//
//  Created by Mostafa Mahmoud on 2/22/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var netWorkManger = NetworkManger()
    @State var top = UIApplication.shared.windows.first?.safeAreaInsets.top
    @State var current = "Nearest"
    @State private var showpop = false
 
    @Namespace var animation
    
    var body: some View {
        VStack {
            if let url = netWorkManger.userData?.url
            {
                Header(imageee:(url))

            }
            HStack {
                HStack( spacing: 23)
                {
                    ButtonView(current: $current, image: "Nearest", animation: animation)
                    ButtonView(current: $current, image: "Upcomming", animation: animation)
                    ButtonView(current: $current, image: "Past", animation: animation)
                    
                    
                }
                Spacer()
                Button(action:{})
                {
                    HStack( spacing: 9.5)
                    {
                        Image(systemName:  "line.3.horizontal.decrease" )
                            .foregroundColor(.blue)
                        Text("Filters")
                            .foregroundColor(.black)
                    }
                }
                

                
            }.padding(.horizontal,20)
//
//            NavigationView {
                List(netWorkManger.posts) {  post in
                        
//                    NavigationLink(destination : ModalView()) {
                        VStack {
                       
                            VStack {
                                CardView(imageString: post.map_url, itRide: post.id, DateRide: post.date)
                                    
                                    .onTapGesture {
                                        showpop.toggle()
                                        
                                    }.sheet(isPresented: $showpop) {
                                        if let s = netWorkManger.userData?.station_code
                                        {
                                            ModalView(id: post.id, origin_station_code: post.origin_station_code, station_path: post.station_path, destination_station_code: post.destination_station_code, date: post.date, map_url: post.map_url, state: post.state, city: post.city, userLocation: s)
                                        }
                                       
                                           
                                    }
                            }
                                
                            
                         
                        }.background(Color.clear)
//                    }

                }
              
//                .navigationBarHidden(true)
//            }
                
                
//            }
        }
        .onAppear {
            netWorkManger.fetchData()
            netWorkManger.fetchDataForUser()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
extension Color {
    static let ColorGray = Color("ColorGray")
   
    
    
    
}


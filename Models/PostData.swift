
import Foundation

struct PostData:Codable,Identifiable,Hashable
{
    
  
    let id : Int
    let origin_station_code:Int
    let station_path :[Int]
    let destination_station_code:Int
    let date : String
    let map_url:String
    let state:String
    let city:String
    
    
    
}




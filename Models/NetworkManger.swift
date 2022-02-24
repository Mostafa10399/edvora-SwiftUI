
import Foundation
import SwiftUI
class NetworkManger:ObservableObject

{
    @Published var posts = [PostData]()
    @Published var userData :UserModel?
   
    
    func fetchData()
    {
         let urlString =  "https://assessment.api.vweb.app/rides"
        performRequest(urlString: urlString)
      
    }
    
    
    func performRequest (urlString:String)
    {
        if let url = URL(string: urlString)
        {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url)
            { data, response, error in
                if  error != nil {
                    print("error caused by :\(error)")
                    return
                }
                else if let safeData = data
                {
                   if let recivedData =  self.parseJSON(safeData)
                    {
                       DispatchQueue.main.async {
                           self.posts=recivedData
                       }
                   }
                }
                
            }
            task.resume()
    }
    
    }
    func parseJSON(_ newsData:Data) ->[PostData]?
    {
        let decoder = JSONDecoder()
        do
        {
            let decodedData:[PostData] = try decoder.decode([PostData].self, from: newsData)
            print(decodedData.count)
            return decodedData
        }
        catch
        {
            print(error)
            return nil
        }
    }
}
extension NetworkManger
{
    
    func fetchDataForUser()
    {
         let urlString =  "https://assessment.api.vweb.app/user"
        performUserRequest(urlString: urlString)
      
    }
    
    
    func performUserRequest (urlString:String)
    {
        if let url = URL(string: urlString)
        {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url)
            { data, response, error in
                if  error != nil {
                    print("error caused by :\(error)")
                    return
                }
                else if let safeData = data
                {
                   if let recivedData =  self.parseUserJSON(safeData)
                    {
                       DispatchQueue.main.async {
                           self.userData=recivedData
                       }
                   }
                }
                
            }
            task.resume()
    }
    
    }
    func parseUserJSON(_ newsData:Data) -> UserModel?
    {
        let decoder = JSONDecoder()
        do
        {
            let decodedData = try decoder.decode(UserModel.self , from: newsData)
            print(decodedData)
            return decodedData
        }
        catch
        {
            print(error)
            return nil
        }
    }
}


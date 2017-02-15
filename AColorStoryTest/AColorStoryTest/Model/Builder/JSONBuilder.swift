import Foundation

struct JSONBuilder {
    func sells(from fileName: String) throws -> [Sells] {
        guard let filePath = Bundle.main.url(forResource: fileName, withExtension: "json")
            else { throw NSError(with: "No such file") }
        let data = try Data(contentsOf: filePath)
        let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
        
        guard let jsonDict = json as? [Any]
            else { throw NSError(with: "Invalid JSON format") }
        let dirtySells = jsonDict.map(Sells.init) /// Init array of Sells objects
        
        let sells = dirtySells.filter({ $0 != nil }) as! [Sells] /// Remove nil sells
        
        return sells
    }
}

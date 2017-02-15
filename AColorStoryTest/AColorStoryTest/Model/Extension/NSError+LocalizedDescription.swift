import Foundation

extension NSError {
    convenience init(with localizedDescription: String) {
        self.init(domain: "AColorStory", code: -100, userInfo: [NSLocalizedDescriptionKey: localizedDescription])
    }
}

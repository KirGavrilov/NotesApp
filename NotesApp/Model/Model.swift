import Foundation

let standard = UserDefaults.standard

struct Model {
     var title: String {
        get {
            let title = standard.string(forKey: "title") ?? ""
            return title
        }
        set {
            standard.set(newValue, forKey: "title")
            standard.synchronize()
        }
    }
    var note: String {
        get {
            let note = standard.string(forKey: "note") ?? ""
            return note
        }
        set {
            standard.set(newValue, forKey: "note")
            standard.synchronize()
        }
    }
}


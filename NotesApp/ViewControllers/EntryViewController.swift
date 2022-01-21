import UIKit

class EntryViewController: UIViewController {
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var noteField: UITextView!

    public var complition: ((String, String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleField.becomeFirstResponder()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTapeSave))
    }
    
    @objc func didTapeSave() {
        if let text = titleField.text, !text.isEmpty, !noteField.text.isEmpty {
            complition?(text, noteField.text)
        }
    }
}

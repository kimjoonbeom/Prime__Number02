import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var jb1A: UILabel!
    @IBOutlet weak var tetA: UITextField!

    
    var isPrime = true
    
    @IBAction func Check(_ sender: Any) {
        let Number = Int(tetA.text!)
        var isPrime = true
        if Number != 1 {
            isPrime = false
        }
        
    if Number != 1 && Number != 2 {
        for i in 2 ..< Number! {
            if Number! % i == 0 {
                isPrime = false
      
                }
            }
        }
        
        if isPrime == true {
            jb1A.text = "prime number"
        } else {
            jb1A.text = "Not Prime number"
        }
        
        }
    
    @IBAction func Reset(_ sender: Any) {
        tetA.text = ""
        jb1A.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tetA.delegate = self
        
    }
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        tetA.resignFirstResponder()
        return true
    }

}



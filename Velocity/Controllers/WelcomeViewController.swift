

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var secondTitleLable: CLTypingLabel!
    @IBOutlet weak var registrationButton: UIButton!
    @IBOutlet weak var logInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registrationButton.layer.cornerRadius = 30
        logInButton.layer.cornerRadius = 30
        
    
        typingAnimation(wordOfTitle: "VELOCITY", timerInterval: 0.2, currentLable: titleLabel)
        
        Timer.scheduledTimer(withTimeInterval: 1.6, repeats: false, block: {_ in self.secondTitleLable.text = "E L E C T R O N I C S"})
//        Timer.scheduledTimer(withTimeInterval: 1.6, repeats: false) { timer in
//            self.typingAnimation(wordOfTitle: "E L E C T R O N I C S", timerInterval: 0.05, currentLable: self.secondTitleLable)
//        }
        
        
    }
    

    
    
    func typingAnimation(wordOfTitle : String, timerInterval : Double, currentLable : UILabel) {
        var charIndex = 0.0
        currentLable.text = ""
        for letter in wordOfTitle {
            Timer.scheduledTimer(withTimeInterval: timerInterval * charIndex, repeats: false) { timer in
                currentLable.text?.append(letter)
            }
            charIndex += 1
        }
    }
}

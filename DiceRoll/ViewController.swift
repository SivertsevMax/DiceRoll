
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    @IBOutlet weak var rollButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let delay = DispatchTime.now() + 2
        DispatchQueue.main.asyncAfter(deadline: delay){
            
        }
        diceImageViewOne.image = UIImage(named: "2")
        diceImageViewTwo.image = UIImage(named: "3")
        rollButton.layer.cornerRadius = 5
        diceImageViewOne.layer.cornerRadius = 5
        diceImageViewTwo.layer.cornerRadius = 5
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let imageDice = ["1", "2", "3", "4", "5", "6"]
        diceImageViewOne.image = UIImage(named: imageDice.randomElement()!)
        diceImageViewTwo.image = UIImage(named: imageDice.randomElement()!)
    }
    
}


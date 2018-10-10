

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    let url = Bundle.main.url(forReseoures: "note1" , withExtention: 'wav'

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {   
        var audioPlayer = AVAudioPlayer()
        print(sender.tag)        
    }
  
}


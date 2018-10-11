

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var player = AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) { 
         
    }
  func playSound(){
       let soundUrl = Bundle.main.url(forReseoures: "note1" , withExtention: 'wav')
        do {
            audioPlayer =  try AVAudioPlayer(contentsOf: soundUrl)   
        } 
        catch {
            print (error.description)            
        }
        audioPlayer.play()
        //print(sender.tag)      
  
  }
}


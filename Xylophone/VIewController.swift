

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{    
    var player = AVAudioPlayer!
     var selectedSoundFileName : String = ""
    let soundArray = ["note1", "note2", "note3", "note4", "note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {        
        playSound(soundFileName: soundArray[sender.tag - 1])         
    }
    
    func playSound(soundFileName : String){
       let soundUrl = Bundle.main.url(forReseoures: SoundFileName , withExtention: 'wav')
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


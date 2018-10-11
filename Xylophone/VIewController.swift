

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{    
    var audioPlayer : AVAudioPlayer!
    var selectedSoundFileName : String = ""
    let soundArray = ["note1", "note2", "note3", "note4", "note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {        
        playSound(soundFileName: soundArray[sender.tag - 1])         
    }
    
    func playSound(soundFileName : String){
       let soundUrl = Bundle.main.url(forResource: soundFileName , withExtension: "wav")
        do {
            audioPlayer =  try AVAudioPlayer(contentsOf: soundUrl!)   
        } 
        catch {
            print (error)            
        }
        audioPlayer.play()
        //print(sender.tag)      
  
  }
}


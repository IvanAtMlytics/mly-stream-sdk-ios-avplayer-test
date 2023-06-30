import AliyunPlayer
import MLYSDK
import MuxCore
import MuxStatsAliPlayer
import SnapKit
import UIKit

class AliPlayerViewController: UIViewController {
    var mlyPlayer: MLYAliPlayer!
    var player: AliPlayer!
    var plugin: MLYAliPlayerPlugin = .init()
     
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        do {
            try MLYDriver.initialize { options in
                options.client.id = clientID
            }
        } catch {
            print(error)
        }
    }
     
    func setupView() {
        let playerView:UIView =  .init(frame: CGRect(x: 0, y: 0, width: UIView.screenWidth(), height: UIView.screenHeight()))
        self.mlyPlayer = MLYAliPlayer(view: self.view, playerView: playerView, videoURL: videoURL)
        self.player = self.mlyPlayer.player
        let muxModel = self.mlyPlayer.getMuxConfigModel()
        self.plugin.adapt(muxModel: muxModel)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.plugin.deactivate()
        super.viewDidDisappear(animated)
    }
}
 

import Foundation

class MainScene: CCNode {
    weak var grid: Grid!
    weak var scoreLabel: CCLabelTTF!
    weak var highScoreLabel: CCLabelTTF!
    
    func didLoadFromCCB() {
        NSUserDefaults.standardUserDefaults().addObserver(self, forKeyPath: "highscore", options: .allZeros, context: nil)
        updateHighscore()
    }
    
    func updateHighscore() {
        var newHighscore = NSUserDefaults.standardUserDefaults().integerForKey("highscore")
        highScoreLabel.string = "\(newHighscore)"
    }
    
    override func observeValueForKeyPath(keyPath: String, ofObject object: AnyObject, change: [NSObject : AnyObject], context: UnsafeMutablePointer<Void>) {
        if keyPath == "highscore" {
            updateHighscore()
        }
    }
    
}

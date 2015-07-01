import Foundation

class GameEnd: CCNode {
    weak var messageLabel: CCLabelTTF!
    weak var scoreLabel: CCLabelTTF!
    
    func newGame() {
        var mainScene = CCBReader.loadAsScene("MainScene")
        CCDirector.sharedDirector().presentScene(mainScene)
    }
    
    func setMessage(message: String, score: Int) {
        messageLabel.string = message
        scoreLabel.string = "\(score)"
    }
}
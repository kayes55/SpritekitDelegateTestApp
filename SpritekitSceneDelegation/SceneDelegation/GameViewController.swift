import SpriteKit

class GameViewController: UIViewController, GameSceneDelegate {
	
	@IBOutlet weak var skView: SKView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let scene = GameScene(size: skView.bounds.size)
		
		/* Set the scale mode to scale to fit the window */
		scene.scaleMode = .aspectFill
		
		skView.presentScene(scene)
		
        // make the viewController confronts to the protocol here
		scene.gameSceneDelegate = self
	}
	
	
	func gameOver() {
		
        
        // your transition code goes here
		let menuScene = MenuScene(size: skView.bounds.size)
        
        let transition = SKTransition.reveal(with: .left, duration: 1)
        if let view = self.skView {
            if let gestureRecognizers = view.gestureRecognizers {
                
                for recognizer in gestureRecognizers {
                    view.removeGestureRecognizer(recognizer)
                }
            }
            
            menuScene.scaleMode = .aspectFit
            menuScene.backgroundColor = SKColor.lightGray
            view.presentScene(menuScene, transition: transition)
            view.ignoresSiblingOrder = true
            view.showsNodeCount = true
            view.showsFPS = true
        }
    
	}
}





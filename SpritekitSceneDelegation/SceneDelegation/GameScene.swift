import SpriteKit

protocol GameSceneDelegate {
	func gameOver()
}

class GameScene: SKScene {
	
	var gameSceneDelegate: GameSceneDelegate?
	var health: Int = 10
	var helthLabel = SKLabelNode(fontNamed: "Chalkduster")
	
    override func didMove(to view: SKView) {
	
	/* Setup your scene here */
        helthLabel.text = "GameScene";
        helthLabel.fontSize = 20;
        helthLabel.position = CGPoint(x:self.frame.midX, y:self.frame.midY);
	
        self.addChild(helthLabel)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        /* Called when a touch begins */
        
        for _ in touches {
		
		  health -= 1
		  helthLabel.text = "Your health is \(health)"
		
		if health <= 0 {
			self.gameSceneDelegate?.gameOver()
		}
	}
    }

	override init(size: CGSize) {
		super.init(size: size)
	}

	required init?(coder aDecoder: NSCoder) {
	    fatalError("init(coder:) has not been implemented")
	}
	
    override func update(_ currentTime: TimeInterval) {
        /* Called before each frame is rendered */
    }
}

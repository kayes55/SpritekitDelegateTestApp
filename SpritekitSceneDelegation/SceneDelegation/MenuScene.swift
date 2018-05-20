import SpriteKit

class MenuScene: SKScene	{
	
	var label = SKLabelNode(fontNamed: "Chalkduster")
	
	override func didMove(to view: SKView) {
		
		label.text = "The Game is finished! This is the menu"
		label.fontSize = 16
		label.position = CGPoint(x:self.frame.midX, y:self.frame.midY);

		self.addChild(label)
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

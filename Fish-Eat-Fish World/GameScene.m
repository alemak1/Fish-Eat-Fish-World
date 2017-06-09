//
//  GameScene.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/2/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import "GameScene.h"
#import <UIKit/UIKit.h>

#import "UIColor+SpecialColorSchemes.h"
#import "UIColor+FishColorSchemes.h"
#import "TextureAtlasManager.h"
#import "EntityManager.h"

#import "Fish.h"
#import "GKFish.h"

//For debug purposes:
#import "CollisionConfiguration.h"

@implementation GameScene {
    NSTimeInterval _lastUpdateTime;
    SKShapeNode *_spinnyNode;
    SKLabelNode *_label;
    
}

SKTileMapNode * _oceanTileMap;


- (void)sceneDidLoad {
    // Setup your scene here
    
    // Initialize update time
    _lastUpdateTime = 0;

    //Initialize the entity manager with the current scene
    _entityManager = [[EntityManager alloc] initWithScene:self];
    
    //Set background color
    [self setBackgroundColor:[UIColor cyanColor]];
    
    //Set the anchor point for the scene node to the middle of the screen
    [self setAnchorPoint:CGPointMake(0.5, 0.5)];
    
    //Set the physics world contact delegate to the current game scene
    [[self physicsWorld] setContactDelegate:self];
    
    SKNode* backgroundNode = [[SKScene nodeWithFileNamed:@"OceanScene3"] childNodeWithName:@"RootNode"];
    
    if(backgroundNode != nil){
        [backgroundNode moveToParent:self];

    }
    

    SKTileMapNode* oceanWater = [backgroundNode childNodeWithName:@"OceanWater"];
    
    _oceanTileMap = oceanWater;
    
    /** Configure scene's pathfinding grid **/
    
    CGSize tileSize = [oceanWater tileSize];
    
    
    
    NSInteger numberOfColumns = [oceanWater numberOfColumns];
    NSInteger numberOfRows = [oceanWater numberOfRows];
    
    vector_int2 startingPoint = vector2(0, 0);
    
    GKGridGraph* oceanGridGraph = [GKGridGraph graphFromGridStartingAt:startingPoint width:numberOfColumns height:numberOfRows diagonalsAllowed:YES];
    
    
    
    if(oceanWater != nil){
        
        
        SKAction* waterMovement1 = [SKAction moveBy:CGVectorMake(20.00, 0.00) duration:0.50];
        SKAction* waterMovement2 = [SKAction moveBy:CGVectorMake(-20.00, 0.00) duration:0.50];
        SKAction* repeatingWaterMovement = [SKAction repeatActionForever: [SKAction sequence:@[
            waterMovement1, waterMovement2
            ]]];
        
        SKAction* waterFlowAnimation = [SKAction runAction:repeatingWaterMovement onChildWithName:@"OceanWater"];
        
        [backgroundNode runAction:waterFlowAnimation];
        
    }
    
    [self setOverlayNode:[[SKNode alloc] init]];
    [_overlayNode setZPosition:15.0];
    
    [self setControlNode:[SKSpriteNode spriteNodeWithImageNamed:@"lineDark49"]];
    [_controlNode setName:@"controlNode"];
    [_controlNode setPosition:CGPointMake(50.0, -100.00)];
    
    [_overlayNode addChild:_controlNode];
    
    [self addChild:_overlayNode];
    
    _worldNode = [[SKNode alloc] init];
    [_worldNode setZPosition:5.00];
    [_worldNode setPosition:CGPointMake(0.00, 0.00)];
    [self addChild:_worldNode];
    
    CGPoint redPos = CGPointMake(0.0, 0.0);
    CGPoint orangePos = CGPointMake(0.0, 50.0);
    CGPoint bluePos = CGPointMake(0.0, -50.0);
    CGPoint greenPos = CGPointMake(0.0, -100.0);
    CGPoint pinkPos = CGPointMake(0.0,100.0);
    
    CGFloat scalingFactor = 1.20;
    
    Fish* pinkFish = [[Fish alloc] initWithFishColor:PINK andWithInitialPosition:pinkPos andWithScaleFactor:scalingFactor andWithPlayerStatus:NO];
   // [[pinkFish physicsBody] setCategoryBitMask:PINK_FISH_CATEGORY_BITMASK];
    
    GKFish* pinkFishEntity = [[GKFish alloc] initWithFishNode:pinkFish];
    [[self entityManager] addToWorld:pinkFishEntity];
    
   // [_worldNode addChild:pinkFish];
    
    Fish* pinkFish2 = [[Fish alloc] initWithFishColor:PINK andWithInitialPosition:CGPointMake(-50.0, 100.0) andWithScaleFactor:1.0 andWithPlayerStatus:NO];
    
    GKFish* pinkFishEntity2 = [[GKFish alloc] initWithFishNode:pinkFish2];
    [[self entityManager] addToWorld:pinkFishEntity2];
    
    //[_worldNode addChild:pinkFish2];
    
    Fish* orangeFish = [[Fish alloc] initWithFishColor:ORANGE andWithInitialPosition:orangePos andWithScaleFactor: scalingFactor andWithPlayerStatus:NO];
   // [[orangeFish physicsBody] setCategoryBitMask:ORANGE_FISH_CATEGORY_BITMASK];
    
    GKFish* orangeFishEntity = [[GKFish alloc] initWithFishNode:orangeFish];
    [[self entityManager] addToWorld:orangeFishEntity];
    
    //[_worldNode addChild:orangeFish];
    
    Fish* orangeFish2 = [[Fish alloc] initWithFishColor:ORANGE andWithInitialPosition:CGPointMake(40.0, 100.0) andWithScaleFactor:1.0 andWithPlayerStatus:NO];
    [_worldNode addChild:orangeFish2];
    
    Fish* orangeFish3 = [[Fish alloc]initWithFishColor:ORANGE andWithInitialPosition:CGPointMake(150.0, 100.0) andWithScaleFactor:1.0 andWithPlayerStatus:NO];
    [_worldNode addChild:orangeFish3];
    
    Fish* redFish = [[Fish alloc] initWithFishColor:RED andWithInitialPosition:redPos andWithScaleFactor:scalingFactor andWithPlayerStatus:NO];
    //[[redFish physicsBody] setCategoryBitMask:RED_FISH_CATEGORY_BITMASK];
    [_worldNode addChild:redFish];
     
    Fish* greenFish = [[Fish alloc] initWithFishColor:GREEN andWithInitialPosition:greenPos andWithScaleFactor:scalingFactor andWithPlayerStatus:NO];
   // [[greenFish physicsBody] setCategoryBitMask:GREEN_FISH_CATEGORY_BITMASK];
     [_worldNode addChild:greenFish];
     
    
    
    _player = [[Fish alloc] initWithFishColor:BLUE andWithInitialPosition:bluePos andWithScaleFactor:scalingFactor andWithPlayerStatus:YES];
    [_worldNode addChild:_player];
    
  
    //Fish* fish2 = [[Fish alloc] initWithRandomColorAndWithPosition:initialPos andWithScaleFactor:scalingFactor];

}


- (vector_int2) getGraphPositionFor:(CGPoint)worldPosition forTileMap:(SKTileMapNode*)tileMap{
    
    //Get height and width of a single tile in the tile map
    
    CGFloat tileWidth = [tileMap tileSize].width;
    CGFloat tileHeight = [tileMap tileSize].height;
    
    //Convert world position to tile map position
    
    CGPoint tileMapPosition = [tileMap convertPoint:worldPosition fromNode:[self worldNode]];
    
    CGFloat xPos = tileMapPosition.x;
    CGFloat yPos = tileMapPosition.y;
    
    int tileWidthUnitsTraversed = xPos/tileWidth;
    int tileHeightUnitsTraveresed = yPos/tileHeight;
    
    return vector2(tileWidthUnitsTraversed, tileHeightUnitsTraveresed);
    
}

- (CGPoint) getWorldPositionFor:(vector_int2)graphLocation forTileMap:(SKTileMapNode*)tileMap{

    //Get height and width of a single tile in the tile map
    
    CGFloat tileWidth = [tileMap tileSize].width;
    CGFloat tileHeight = [tileMap tileSize].height;
    
    int graphXPos = graphLocation.x;
    int graphYPos = graphLocation.y;
    
    CGFloat xPos = graphXPos*tileWidth+tileWidth/2;
    CGFloat yPos = graphYPos*tileHeight+tileHeight/2;
    
    CGPoint tileMapPos = CGPointMake(xPos, yPos);
    
    return [_worldNode convertPoint:tileMapPos fromNode:tileMap];
    
}


- (void)touchDownAtPoint:(CGPoint)pos {
   
}

- (void)touchMovedToPoint:(CGPoint)pos {
 
}

- (void)touchUpAtPoint:(CGPoint)pos {
   
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    // Run 'Pulse' action from 'Actions.sks'
    
    for (UITouch *t in touches) {
        CGPoint touchLocation = [t locationInNode:_controlNode];
        
        CGFloat controlNodeWidth = [_controlNode frame].size.width;
        CGFloat controlNodeHeight = [_controlNode frame].size.height;
        CGFloat oneThirdCNWidth = controlNodeWidth/3.0;
        CGFloat oneThirdCNHeight = controlNodeHeight/3.0;
        
        SKPhysicsBody* playerPB = [[self player] physicsBody];

        
        if(touchLocation.x < oneThirdCNWidth/2.0 && touchLocation.x > -oneThirdCNWidth/2.0){
            if (touchLocation.y < -oneThirdCNHeight){
                NSLog(@"Player moved down");
                
                CGVector impulseVector = CGVectorMake(0.00, -10.0);
                [playerPB applyForce:impulseVector];
                
                
                /**
                FishOrientation playerOrientation = (int)[_player valueForKey:@"fishOrientation"];
                
                SKPhysicsBody* playerPhysicsBody = [[self player] valueForKeyPath:@"physicsBody"];
                
                NSLog(@"The player's horizontal velocity is %f",playerPhysicsBody.velocity.dx);
                
                NSLog(@"The player orientation is %@", (playerOrientation == 0) ? @"LEFT":@"RIGHT");
                **/
                
                /**
                FishOrientation playerOrientation = [_player fishOrientation];
                NSLog(@"The player orientation is %@",(playerOrientation == 0) ? @"LEFT":@"RIGHT");
                 **/
                
            }
            
            if (touchLocation.y > oneThirdCNHeight){
                NSLog(@"Player moved up");
                
                CGVector impulseVector = CGVectorMake(0.00, 10.0);
                [playerPB applyForce:impulseVector];
                
                /**
                FishOrientation playerOrientation = (int)[_player valueForKey:@"fishOrientation"];
                
                SKPhysicsBody* playerPhysicsBody = [[self player] valueForKeyPath:@"physicsBody"];
                
                NSLog(@"The player's horizontal velocity is %f",playerPhysicsBody.velocity.dx);
                
                NSLog(@"The player orientation is %@", (playerOrientation == 0) ? @"LEFT":@"RIGHT");
                 **/
                
                /**
                FishOrientation playerOrientation = [_player fishOrientation];
                NSLog(@"The player orientation is %@",(playerOrientation == 0) ? @"LEFT":@"RIGHT");
                 **/
            }
        }
        
        
        if(touchLocation.y > -oneThirdCNHeight/2.0 && touchLocation.y < oneThirdCNHeight/2.0){
            if (touchLocation.x < -oneThirdCNWidth){
                NSLog(@"Player moved left");
                
                CGVector impulseVector = CGVectorMake(-10.00, 0.00);
                [playerPB applyForce:impulseVector];
                
                /**
                FishOrientation playerOrientation = (int)[_player valueForKey:@"fishOrientation"];
                
                SKPhysicsBody* playerPhysicsBody = [[self player] valueForKeyPath:@"physicsBody"];
                
                NSLog(@"The player's horizontal velocity is %f",playerPhysicsBody.velocity.dx);
                
                NSLog(@"The player orientation is %@", (playerOrientation == 0) ? @"LEFT":@"RIGHT");
                 **/
                
                /**
                FishOrientation playerOrientation = [_player fishOrientation];
                NSLog(@"The player orientation is %@",(playerOrientation == 0) ? @"LEFT":@"RIGHT");
                 **/
            }
            
            if (touchLocation.x > oneThirdCNWidth){
                NSLog(@"Player moved right");
                
                CGVector impulseVector = CGVectorMake(10.00, 0.00);
                [playerPB applyForce:impulseVector];
                
                /**
                FishOrientation playerOrientation = (int)[_player valueForKey:@"fishOrientation"];
                
                SKPhysicsBody* playerPhysicsBody = [[self player] valueForKeyPath:@"physicsBody"];
                
                NSLog(@"The player's horizontal velocity is %f",playerPhysicsBody.velocity.dx);
                
                NSLog(@"The player orientation is %@", (playerOrientation == 0) ? @"LEFT":@"RIGHT");
                 **/
                
                /**
                FishOrientation playerOrientation = [_player fishOrientation];
                NSLog(@"The player orientation is %@",(playerOrientation == 0) ? @"LEFT":@"RIGHT");
                 **/
            }
        }
        
     
        
    
    }
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    for (UITouch *t in touches) {[self touchMovedToPoint:[t locationInNode:self]];}
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *t in touches) {[self touchUpAtPoint:[t locationInNode:self]];}
}
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *t in touches) {[self touchUpAtPoint:[t locationInNode:self]];}
}


/** Game Loop Functions **/

-(void)update:(CFTimeInterval)currentTime {
    // Called before each frame is rendered
    
    // Initialize _lastUpdateTime if it has not already been
    if (_lastUpdateTime == 0) {
        _lastUpdateTime = currentTime;
    }
    
    
    // Calculate time since last update
    CGFloat dt = currentTime - _lastUpdateTime;
    
    [_entityManager update:dt];
    
    /**
    vector_int2 playerPos = [self getGraphPositionFor:[_player position] forTileMap:_oceanTileMap];
    
    NSLog(@"The player's current graph position is x: %d, y: %d",playerPos.x,playerPos.y);
     **/
    
    _lastUpdateTime = currentTime;
}

- (void) didSimulatePhysics{
    
}


- (void) didEvaluateActions{
    
    
}



@end

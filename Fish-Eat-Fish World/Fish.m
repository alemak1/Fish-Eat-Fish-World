//
//  Fish.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/2/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>

#import "Fish.h"
#import "Fish+HelperMethods.h"
#import "TextureAtlasManager.h"
#import "CollisionSettings.h"

/** Class extension is used here to emulated private methods, which are forward declared ehre and encapsulated in the main implementation file **/
@implementation Fish


    SKAction* _defaultAnimation;
    NSMutableDictionary<NSString*,SKAction*>* _animationsDictionary;

    void * fishContext = &fishContext;

/** Conveience initializer that takes fishColor as its sole argument and which then delegates to a designated initializer **/

- (id) initWithRandomColorAndWithPosition:(CGPoint)initialPosition andWithScaleFactor:(CGFloat)scalingFactor andWithPlayerStatus:(BOOL)isPlayer{
    
    FishColor randomFishColor = [Fish getRandomFishColor];
    
    SKTexture* fishTexture = [Fish getTextureForFishColor:randomFishColor andForFishOrientation: RIGHT];
    
    CGSize fishSize = [fishTexture size];
    UIColor* clearColor = [UIColor clearColor];
    
    self = [self initWithTexture:fishTexture color: clearColor size:fishSize];
    
    /** Set the anchor point of the fish sprite node to (0.5,0.5) **/
    CGPoint fishAnchorPoint = CGPointMake(0.5, 0.5);
    [self setAnchorPoint:fishAnchorPoint];
    
    /** Set the initial position of the fish sprite node **/
    [self setPosition:initialPosition];
    
    /** Store a reference to the fish color **/
    [self setFishColor:randomFishColor];
    
    /** Configure the physics properties for the fish **/
    SKPhysicsBody* fishPhysicsBody = [SKPhysicsBody bodyWithTexture:fishTexture size:fishSize];
    
    //General physics properties
    [fishPhysicsBody setAffectedByGravity:NO];
    [fishPhysicsBody setDynamic:YES];
    
    //Bitmasks for Collision Events
    
    CollisionConfiguration* collisionConfiguration = [Fish getCollisionConfigurationForFishColor:randomFishColor];
    
    if(isPlayer){
        [CollisionConfiguration addPlayerCategoryBitMaskFor:collisionConfiguration];
    }
    
    [fishPhysicsBody setCategoryBitMask:[collisionConfiguration categoryBitMask]];
    [fishPhysicsBody setCollisionBitMask:[collisionConfiguration collisionBitMask]];
    [fishPhysicsBody setContactTestBitMask:[collisionConfiguration contactBitMask]];
    

    
    [self setPhysicsBody:fishPhysicsBody];
    
    
    [self registerPropertyObservers];
    [self setFishVelocityViaPhysicsBody:CGVectorMake(0.00, 0.00)];
    
    /** After assigning a texture to the sprite node, reset the scale of the sprite node **/
    [self setScale:scalingFactor];
    
    return self;

    
    
}

- (id) initWithFishColor: (FishColor)fishColor andWithInitialPosition:(CGPoint)initialPosition andWithScaleFactor: (CGFloat)scalingFactor andWithPlayerStatus:(BOOL)isPlayer{
   
  
    /** Allocate and default initalize a fish texture **/
    
    SKTexture* fishTexture = [Fish getTextureForFishColor:fishColor andForFishOrientation:RIGHT];

    
    CGSize fishSize = [fishTexture size];
    UIColor* clearColor = [UIColor clearColor];
    
    
    self = [self initWithTexture:fishTexture color: clearColor size:fishSize];
    
    /** Set the anchor point of the fish sprite node to (0.5,0.5) **/
    CGPoint fishAnchorPoint = CGPointMake(0.5, 0.5);
    [self setAnchorPoint:fishAnchorPoint];
    
    /** Set the initial position of the fish sprite node **/
    [self setPosition:initialPosition];
    
    /** Store a reference to the fish color **/
    [self setFishColor:fishColor];
    
    /** Configure the physics properties for the fish **/
    SKPhysicsBody* fishPhysicsBody = [SKPhysicsBody bodyWithTexture:fishTexture size:fishSize];
    
    //General physics properties
    [fishPhysicsBody setAffectedByGravity:NO];
    [fishPhysicsBody setDynamic:YES];
    [fishPhysicsBody setLinearDamping:0.00];
    
    //Bitmasks for Collision Events
    
    CollisionConfiguration* collisionConfiguration = [Fish getCollisionConfigurationForFishColor:fishColor];
    
    if(isPlayer){
        [CollisionConfiguration addPlayerCategoryBitMaskFor:collisionConfiguration];
    }
    
    NSLog(@"Fish with color %@ has a category bitmask value of: %d", [Fish getFishColorNameForFishColorEnum:fishColor], [collisionConfiguration categoryBitMask]);
    
    [fishPhysicsBody setCategoryBitMask:[collisionConfiguration categoryBitMask]];
    [fishPhysicsBody setCollisionBitMask:[collisionConfiguration collisionBitMask]];
    [fishPhysicsBody setContactTestBitMask:[collisionConfiguration contactBitMask]];
    
    [self setPhysicsBody:fishPhysicsBody];
    
   
    
    [self configureDefaultAnimation];
    
    [self runAction:_defaultAnimation withKey:@"defaultAnimation"];
    
    [self registerPropertyObservers];
    
    /** After assigning a texture to the sprite node, reset the scale of the sprite node **/
    [self setScale:scalingFactor];
    
    return self;
    
}

- (FishOrientation)fishOrientation{
    
    SKPhysicsBody* playerPB = [self physicsBody];
    
    CGFloat horizontalVelocity = [playerPB velocity].dx;
    
    return (horizontalVelocity > 0) ? RIGHT:LEFT;
    
}

/** Designated initializer has parameters for texture, color, and size **/

- (id) initWithTexture:(SKTexture *)texture color:(UIColor *)color size:(CGSize)size{
    
    self = [super initWithTexture:texture color:color size:size];
    

    return self;
}


- (void) registerPropertyObservers{
    
    NSUInteger kvObservingOptions = NSKeyValueObservingOptionOld | NSKeyValueObservingOptionNew;
    
    
    [self addObserver:self forKeyPath:@"currentFishVelocity" options: kvObservingOptions context:nil];
    
    NSLog(@"Finished registering observers for currentFishVelocity");
}


- (void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    
    NSLog(@"Some observed properties changed");
    
    
        if([keyPath isEqualToString:@"currentFishVelocity"]){
            NSLog(@"The current velocity of the fish changed.");
            NSLog(@"%@", change);
            
            [self updatePlayerAnimations];
        
        
    }
  
    
   
}

- (void) updatePlayerAnimations{
    NSLog(@"Updating player animations...");
    
    SKAction* setTextureAction = [SKAction setTexture:[Fish getTextureForFishColor:[self fishColor] andForFishOrientation:[self fishOrientation]]];
    [self runAction:setTextureAction];
  
}

/** Game Loop Functions **/
- (void) update:(CFTimeInterval)currentTime{
    
}

/** Private Helper Methods **/

- (void) configureDefaultAnimation{
    
    TextureAtlasManager* textureAtlasManager = [TextureAtlasManager sharedManager];
    
    NSMutableArray<SKTexture*>* textureArray = [[NSMutableArray<SKTexture*> alloc] init];
    
    switch ([self fishColor]) {
        case ORANGE:
            [textureArray addObjectsFromArray:@[
                [textureAtlasManager getColoredFishTextureWithName:OrangeFishNormalTextureName],
                [textureAtlasManager getColoredFishTextureWithName:OrangeFishWithOutlineTextureName]
            ]];
            break;
        case RED:
            [textureArray addObjectsFromArray:@[
                [textureAtlasManager getColoredFishTextureWithName:RedFishNormalTextureName],
                [textureAtlasManager getColoredFishTextureWithName:RedFishWithOutlineTextureName]
            ]];
            break;
        case BLUE:
            [textureArray addObjectsFromArray:@[
                [textureAtlasManager getColoredFishTextureWithName:BlueFishNormalTextureName],
                [textureAtlasManager getColoredFishTextureWithName:BlueFishWithOutlineTextureName]
                ]];
            break;
        case GREEN:
            [textureArray addObjectsFromArray:@[
                [textureAtlasManager getColoredFishTextureWithName:GreenFishNormalTextureName],
                [textureAtlasManager getColoredFishTextureWithName:GreenFishWithOutlineTextureName]
                ]];
            break;
        case PINK:
            [textureArray addObjectsFromArray:@[
                [textureAtlasManager getColoredFishTextureWithName:PinkFishNormalTextureName],
                [textureAtlasManager getColoredFishTextureWithName:PinkFishWithOutlineTextureName]
            ]];
            break;
        default:
            break;
    }
    
    _defaultAnimation = [SKAction repeatActionForever:[SKAction animateWithTextures:textureArray timePerFrame:0.20]];
    
    
    
    
}

//MARK: ****** NSCoding Protocol Required Methods

-(id) initWithCoder:(NSCoder *)aDecoder{
    
    
    /*Fish color allows for the appropriate fish texture to be determied*/
    
    
    NSNumber* wrappedFishColor = [aDecoder decodeObjectForKey:@"fishColor"];
    NSInteger fishColor = [wrappedFishColor integerValue];
    
    NSNumber* wrappedOrientation = [aDecoder decodeObjectForKey:@"fishOrientation"];
    NSInteger fishOrientation = [wrappedOrientation integerValue];
    
    NSValue* wrappedPosition = [aDecoder decodeObjectForKey:@"fishPosition"];
    CGPoint fishPosition = [wrappedPosition CGPointValue];
    
    NSValue* wrappedVelocity = [aDecoder decodeObjectForKey:@"fishVelocity"];
    CGVector fishVelocity = [wrappedVelocity CGVectorValue];
    
    /** Allocate and default initalize a fish texture **/
    
    SKTexture* fishTexture = [Fish getTextureForFishColor:fishColor andForFishOrientation:fishOrientation];
    
    
    CGSize fishSize = [fishTexture size];
    UIColor* clearColor = [UIColor clearColor];
    
    
    self = [self initWithTexture:fishTexture color: clearColor size:fishSize];
    
    if(!self){
        return nil;
    }
    
    self.fishColor = fishColor;
    
    //TODO: Add a physics body and continue initializing the physics body with decoded velocity in addition to other default values (such as linear damping, affectedByGravity, etc.) ...

    
    return self;
}
-(void) encodeWithCoder:(NSCoder *)aCoder{
    
    NSNumber* wrappedFishColor = [NSNumber numberWithInt:self.fishColor];
    [aCoder encodeObject:wrappedFishColor forKey:@"fishColor"];
    
    NSNumber* wrappedOrientation = [NSNumber numberWithInteger:self.fishOrientation];
    [aCoder encodeObject:wrappedOrientation forKey:@"fishOrientation"];
    
    CGPoint currentPosition = [self getFishPositionFromSpriteNode];
    NSValue* wrappedPosition = [NSValue valueWithCGPoint:currentPosition];
    [aCoder encodeObject:wrappedPosition forKey:@"fishPosition"];
    
    CGVector currentVelocity = [self getFishVelocityFromPhysicsBody];
    NSValue* wrappedVelocity = [NSValue valueWithCGVector:currentVelocity];
    [aCoder encodeObject:wrappedVelocity forKey:@"fishVelocity"];
    
    
}


//MARK: ******* Custom Accessor Methods for the Position and Velocity

-(CGVector)getFishVelocityFromPhysicsBody{
    
    SKPhysicsBody* currentPhysicsBody = [self physicsBody];
    
    if(currentPhysicsBody != nil){
        return [currentPhysicsBody velocity];
    }
    
    return CGVectorMake(0.00, 0.00);
}

-(void) setFishVelocityViaPhysicsBody:(CGVector)newVelocity{
    
    SKPhysicsBody* currentPhysicsBody = [self physicsBody];
    
    [currentPhysicsBody setVelocity:newVelocity];
}

- (CGPoint) getFishPositionFromSpriteNode{
    
    return [self position];
    
}

- (void) setFishPositionViaSpriteNode:(CGPoint)newPosition{
    
    [self setPosition:newPosition];
}

//MARK: ******* NSKeyedArchiver/NSKeyedUnarchiver-based Utilities for Saving/Loading Fish

- (void) saveFish{
    [NSKeyedArchiver archiveRootObject:self toFile:@"/path/to/archive"];
}

- (void) loadFish{
    [NSKeyedUnarchiver unarchiveObjectWithFile:@"/path/to/archive"];
}

@end

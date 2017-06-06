//
//  Fish.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/2/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#ifndef Fish_h
#define Fish_h

#import <SpriteKit/SpriteKit.h>
#import "FishColor.h"
#import "FishOrientation.h"

@interface Fish : SKSpriteNode<NSCoding>

    //MARK: Properties

    @property FishColor fishColor;
    @property FishOrientation fishOrientation;

    //MARK: Fish Position and Velocity are derived properties whose underlying value lie with the sprite node and physics body, respectively; they have custom setters that access the underlying sprite node and physics body respectively

    @property (getter=getFishVelocityFromPhysicsBody,setter=setFishVelocityViaPhysicsBody:) CGVector currentFishVelocity;
    @property (getter=getFishPositionFromSpriteNode,setter=setFishPositionViaSpriteNode:) CGPoint currentFishPosition;

    //MARK: Initializers

    - (id) initWithFishColor: (FishColor)fishColor andWithInitialPosition:(CGPoint)initialPosition andWithScaleFactor: (CGFloat)scalingFactor;

    - (id) initWithRandomColorAndWithPosition:(CGPoint)initialPosition andWithScaleFactor:(CGFloat)scalingFactor;

    //MARK: Game Loop Functions

    - (void) update:(CFTimeInterval)currentTime;

    //MARK: NSCoding Required Methods

    -(id) initWithCoder:(NSCoder *)aDecoder;
    -(void) encodeWithCoder:(NSCoder *)aCoder;

    //MARK: NSKeyArchiver/Unarchiver-Based Saving/Loading Utilityies

    - (void) saveFish;
    - (void) loadFish;

@end

#endif /* Fish_h */



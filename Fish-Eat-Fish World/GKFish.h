//
//  GKFish.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/9/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#ifndef GKFish_h
#define GKFish_h

#import <SpriteKit/SpriteKit.h>
#import <GameplayKit/GameplayKit.h>
#import "FishColor.h"
#import "Fish.h"
#import "Fish+HelperMethods.h"

@interface GKFish : GKEntity

- (id) initWithFishNode: (Fish*)fishNode;

- (id) initWithFishColor: (FishColor)fishColor andWithInitialPosition:(CGPoint)initialPosition andWithScaleFactor: (CGFloat)scalingFactor andWithPlayerStatus:(BOOL)isPlayer;

- (id) initWithRandomColorAndWithPosition:(CGPoint)initialPosition andWithScaleFactor:(CGFloat)scalingFactor andWithPlayerStatus: (BOOL)isPlayer;

@end


#endif /* GKFish_h */

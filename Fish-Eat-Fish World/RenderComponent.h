//
//  RenderComponent.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/9/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#ifndef RenderComponent_h
#define RenderComponent_h

#import <SpriteKit/SpriteKit.h>
#import <GameplayKit/GameplayKit.h>
#import "FishColor.h"

@interface RenderComponent : GKComponent

/** Properties **/

@property SKSpriteNode* node;


/** Initializers **/

- (id) initWithSpriteNode: (SKSpriteNode*)spriteNode;

- (id) initWithFishColor: (FishColor)fishColor andWithInitialPosition:(CGPoint)initialPosition andWithScaleFactor: (CGFloat)scalingFactor andWithPlayerStatus:(BOOL)isPlayer;

- (id) initWithRandomColorAndWithPosition:(CGPoint)initialPosition andWithScaleFactor:(CGFloat)scalingFactor andWithPlayerStatus: (BOOL)isPlayer;


@end

#endif /* RenderComponent_h */

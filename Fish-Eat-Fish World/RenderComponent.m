//
//  RenderComponent.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/9/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>
#import "RenderComponent.h"
#import "Fish.h"
#import "Fish+HelperMethods.h"

@implementation RenderComponent

- (id) initWithSpriteNode: (SKSpriteNode*)spriteNode{
    
    self = [super init];
    
    [self setNode:spriteNode];
    
    return self;
}

- (id) initWithFishColor: (FishColor)fishColor andWithInitialPosition:(CGPoint)initialPosition andWithScaleFactor: (CGFloat)scalingFactor andWithPlayerStatus:(BOOL)isPlayer{
    
    self = [super init];
    
    _node = [[Fish alloc] initWithFishColor:fishColor andWithInitialPosition:initialPosition andWithScaleFactor:scalingFactor andWithPlayerStatus:isPlayer];
    
    return self;
}

- (id) initWithRandomColorAndWithPosition:(CGPoint)initialPosition andWithScaleFactor:(CGFloat)scalingFactor andWithPlayerStatus: (BOOL)isPlayer{
    
    self = [super init];
    
    FishColor randomFishColor = [Fish getRandomFishColor];
    
    _node = [[Fish alloc] initWithFishColor:randomFishColor andWithInitialPosition:initialPosition andWithScaleFactor:scalingFactor andWithPlayerStatus:isPlayer];
    
    return self;
    
}



@end

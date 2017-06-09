//
//  GKFish.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/9/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GKFish.h"
#import "RenderComponent.h"

@implementation GKFish


- (id) initWithFishNode: (Fish*)fishNode{

    self = [super init];
    
    RenderComponent* renderComponent = [[RenderComponent alloc] initWithSpriteNode:fishNode];
    
    [self addComponent:renderComponent];
    
    return self;
}


- (id) initWithFishColor: (FishColor)fishColor andWithInitialPosition:(CGPoint)initialPosition andWithScaleFactor: (CGFloat)scalingFactor andWithPlayerStatus:(BOOL)isPlayer{
    
    self = [super init];
    
    RenderComponent* renderComponent = [[RenderComponent alloc] initWithFishColor:fishColor andWithInitialPosition:initialPosition andWithScaleFactor:scalingFactor andWithPlayerStatus:isPlayer];
    
    [self addComponent:renderComponent];
    
    return self;
}

- (id) initWithRandomColorAndWithPosition:(CGPoint)initialPosition andWithScaleFactor:(CGFloat)scalingFactor andWithPlayerStatus: (BOOL)isPlayer{
    
    self = [super init];

    RenderComponent* renderComponent = [[RenderComponent alloc] initWithRandomColorAndWithPosition:initialPosition andWithScaleFactor:scalingFactor andWithPlayerStatus:isPlayer];
    
    [self addComponent:renderComponent];
    
    return self;
}


@end

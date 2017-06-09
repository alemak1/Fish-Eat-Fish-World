//
//  EntityManager.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/9/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EntityManager.h"
#import "RenderComponent.h"
#import "GameScene.h"

@implementation EntityManager

/** Initializers **/

- (id) initWithScene: (GameScene*)scene{
    
    self = [super init];
    
    _scene = scene;
    
    return self;
    
}

/** Utility Functions **/

- (void) addToWorld:(GKEntity*)entity{
    
    [[self entities] setByAddingObject:entity];
    
    RenderComponent* renderComponent = (RenderComponent*)[entity componentForClass:[RenderComponent class]];
                                        
    SKSpriteNode* renderNode = [renderComponent node];
    
    [[[self scene] worldNode] addChild:renderNode];
    
    for (GKComponentSystem* componentSystem in [self componentSystems]) {
        [componentSystem addComponentWithEntity:entity];
    }
}

- (void) removeFromWorld:(GKEntity*) entity{
    
    RenderComponent* renderComponent = (RenderComponent*)[entity componentForClass:[RenderComponent class]];
    
    SKSpriteNode* renderNode = [renderComponent node];
    [renderNode removeFromParent];
    
    [[self entities] removeObject:entity];
    
    [_toRemove addObject:entity];
}

- (void) update: (CFTimeInterval) deltaTime{
    
    for (GKComponentSystem* componentSystem in [self componentSystems]) {
        [componentSystem updateWithDeltaTime:deltaTime];
    }
    
    for (GKEntity*currentRemove in [self toRemove]) {
        for (GKComponentSystem* componentSystem in [self componentSystems]) {
            [componentSystem removeComponentWithEntity:currentRemove];
        }
    }
    
    [_toRemove removeAllObjects];
}

- (NSArray<GKComponentSystem*>*) componentSystems{
    
    GKComponentSystem* renderComponentSystem = [[GKComponentSystem alloc] initWithComponentClass:[RenderComponent class]];
    
    return [NSMutableArray arrayWithObjects:renderComponentSystem, nil];
}

@end

//
//  EntityManager.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/9/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#ifndef EntityManager_h
#define EntityManager_h

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>
#import <GameplayKit/GameplayKit.h>

@class GameScene;

@interface EntityManager: NSObject

@property NSMutableSet<GKEntity*>* entities;
@property NSMutableSet<GKEntity*>* toRemove;
@property (readonly) NSMutableArray<GKComponentSystem*>* componentSystems;
@property GameScene* scene;

/** Initializers **/

- (id) initWithScene: (GameScene*)scene;

/** Utility Functions **/

- (void) addToWorld:(GKEntity*)entity;
- (void) removeFromWorld:(GKEntity*) entity;
- (void) update: (CFTimeInterval) deltaTime;


@end

#endif /* EntityManager_h */

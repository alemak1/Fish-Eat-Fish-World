//
//  GameScene.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/2/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import <GameplayKit/GameplayKit.h>
#import "Fish.h"

@class EntityManager;

@interface GameScene : SKScene<SKPhysicsContactDelegate>


    @property (nonatomic) NSMutableDictionary<NSString*, GKGraph *> *graphs;
    @property EntityManager* entityManager;

    @property Fish* player;

    //MARK: ****** Game Scene Node Layers

    @property SKNode* worldNode;
    @property SKNode* overlayNode;
    @property SKSpriteNode* controlNode;
    @property SKNode* oceanGridGraph;


@end

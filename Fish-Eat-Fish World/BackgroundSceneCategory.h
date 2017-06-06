//
//  BackgroundSceneCategory.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/6/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#ifndef BackgroundSceneCategory_h
#define BackgroundSceneCategory_h


typedef enum : NSUInteger {
    SandFloorBackground,
    RockFloorBackground,
    DirtFloorBackground,
} BackgroundSceneCategory;


#define BACKGROUND_SCENE_CATEGORIES @[@"Sand Floor Background",@"Rock Floor Background",@"Dirt Floor Background"]


#endif /* BackgroundSceneCategory_h */

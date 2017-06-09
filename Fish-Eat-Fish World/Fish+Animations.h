//
//  Fish+Animations.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/8/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#ifndef Fish_Animations_h
#define Fish_Animations_h

#import "Fish.h"
#import "FishColor.h"
#import "Fish+HelperMethods.h"

@interface Fish(Animations)

//MARK: Animations

+ (SKAction*) dieAnimation;
+ (SKAction*) growAnimation;
+ (SKAction*) shrinkAnimation;

@end

#endif /* Fish_Animations_h */

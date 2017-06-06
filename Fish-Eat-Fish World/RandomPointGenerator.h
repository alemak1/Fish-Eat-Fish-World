//
//  RandomPointGenerator.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/4/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#ifndef RandomPointGenerator_h
#define RandomPointGenerator_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface RandomPointGenerator : NSObject

typedef enum ScreenQuadrants{
    UPPER_LEFT,
    UPPER_RIGHT,
    LOWER_LEFT,
    LOWER_RIGHT
} ScreenQuadrant;

+ (CGPoint) getRandomUpperScreenPoint;
+ (CGPoint) getRandomLowerScreenPoint;
+ (CGPoint) getRandomLeftHalfPoint;
+ (CGPoint) getRandomRightHalfPoint;
+ (CGPoint) getRandomScreenQuadrantPointForQuadrant:(ScreenQuadrant)screenQuadrant;


@end


#endif /* RandomPointGenerator_h */

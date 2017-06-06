//
//  RandomPointGenerator.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/4/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GameplayKit/GameplayKit.h>

#import "RandomPointGenerator.h"

@implementation RandomPointGenerator


/** The functions assume a point relative to an origin located at the screen center **/

+ (CGPoint) getRandomUpperScreenPoint{
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    
    CGFloat screenHeight = screenBounds.size.height;
    CGFloat screenWidth = screenBounds.size.width;

    
    GKRandomDistribution* randomXDist = [GKRandomDistribution distributionWithLowestValue:-screenWidth/2.0 highestValue:screenWidth/2.0];
    
     GKRandomDistribution* randomYDist = [GKRandomDistribution distributionWithLowestValue:0 highestValue:screenHeight/2.0];
    
    CGFloat randomXVal = [randomXDist nextInt];
    CGFloat randomYVal = [randomYDist nextInt];
    
    return CGPointMake(randomXVal, randomYVal);
}

+ (CGPoint) getRandomLowerScreenPoint{
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    
    CGFloat screenHeight = screenBounds.size.height;
    CGFloat screenWidth = screenBounds.size.width;
    
    GKRandomDistribution* randomXDist = [GKRandomDistribution distributionWithLowestValue:-screenWidth/2.0 highestValue:screenWidth/2.0];
    
    GKRandomDistribution* randomYDist = [GKRandomDistribution distributionWithLowestValue:0 highestValue:-screenHeight/2.0];
    
    CGFloat randomXVal = [randomXDist nextInt];
    CGFloat randomYVal = [randomYDist nextInt];
    
    return CGPointMake(randomXVal, randomYVal);

}

+ (CGPoint) getRandomLeftHalfPoint{
    
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    
    CGFloat screenHeight = screenBounds.size.height;
    CGFloat screenWidth = screenBounds.size.width;
    
    GKRandomDistribution* randomXDist = [GKRandomDistribution distributionWithLowestValue:-screenWidth/2.0 highestValue:0];
    
    GKRandomDistribution* randomYDist = [GKRandomDistribution distributionWithLowestValue:-screenHeight/2.0 highestValue:screenHeight/2.0];
    
    CGFloat randomXVal = [randomXDist nextInt];
    CGFloat randomYVal = [randomYDist nextInt];
    
    return CGPointMake(randomXVal, randomYVal);
}

+ (CGPoint) getRandomRightHalfPoint{
    
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    
    CGFloat screenHeight = screenBounds.size.height;
    CGFloat screenWidth = screenBounds.size.width;
    
    GKRandomDistribution* randomXDist = [GKRandomDistribution distributionWithLowestValue:0.0 highestValue:screenWidth/2.0];
    
    GKRandomDistribution* randomYDist = [GKRandomDistribution distributionWithLowestValue:-screenHeight/2.0 highestValue:screenHeight/2.0];
    
    CGFloat randomXVal = [randomXDist nextInt];
    CGFloat randomYVal = [randomYDist nextInt];
    
    return CGPointMake(randomXVal, randomYVal);
}

+ (CGPoint) getRandomScreenQuadrantPointForQuadrant:(ScreenQuadrant)screenQuadrant{


    
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    
    CGFloat screenWidth = screenBounds.size.width;
    CGFloat screenHeight = screenBounds.size.height;
    
    CGFloat screenTop = screenHeight/2.0;
    CGFloat screenBottom = -screenHeight/2.0;
    CGFloat screenLeft = -screenWidth/2.0;
    CGFloat screenRight = screenWidth/2.0;

    
    GKRandomDistribution* randomXDist;
    
    GKRandomDistribution* randomYDist;
    
    switch(screenQuadrant){
        case UPPER_LEFT:
            randomXDist = [GKRandomDistribution distributionWithLowestValue:screenLeft highestValue:0];
            randomYDist = [GKRandomDistribution distributionWithLowestValue:0 highestValue:screenTop];
            break;
        case UPPER_RIGHT:
            randomXDist = [GKRandomDistribution distributionWithLowestValue:0 highestValue:screenRight];
            randomYDist = [GKRandomDistribution distributionWithLowestValue:0 highestValue:screenTop];
            break;
        case LOWER_LEFT:
            randomXDist = [GKRandomDistribution distributionWithLowestValue:screenLeft highestValue:0];
            randomYDist = [GKRandomDistribution distributionWithLowestValue:screenBottom    highestValue:0];
            break;
        case LOWER_RIGHT:
            randomXDist = [GKRandomDistribution distributionWithLowestValue:0 highestValue:screenRight];
            randomYDist = [GKRandomDistribution distributionWithLowestValue:screenBottom highestValue:0];
            break;
    }
    
    CGFloat randomXVal = [randomXDist nextInt];
    CGFloat randomYVal = [randomYDist nextInt];
    
    return CGPointMake(randomXVal, randomYVal);
    
}


@end

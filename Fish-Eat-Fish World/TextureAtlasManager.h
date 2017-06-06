//
//  TextureAtlasManager.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/2/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#ifndef TextureAtlasManager_h
#define TextureAtlasManager_h

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>

@interface TextureAtlasManager : NSObject

+ (id) sharedManager;

- (SKTexture*) getBlowfishTextureWithName:(NSString*)textureName;
- (SKTexture*) getBluePlantsTextureWithName: (NSString*) textureName;
- (SKTexture*) getColoredFishTextureWithName: (NSString*) textureName;
- (SKTexture*) getBonyFishTextureWithName: (NSString*)textureName;
- (SKTexture*) getGroundAtlasTextureWithName: (NSString*)textureName;
- (SKTexture*) getGreenPlantsTextureWithName: (NSString*)textureName;
- (SKTexture*) getNumbersTextureWithName: (NSString*)textureName;
- (SKTexture*) getPurplePlantsTextureWithName: (NSString*)textureName;
- (SKTexture*) getRocksTextureWithName: (NSString*)textureName;
- (SKTexture*) getSandTextureWithName: (NSString*) textureName;
- (SKTexture*) getWaterTextureWithName: (NSString*) textureName;

extern NSString* const GreenFishNormalTextureName;
extern NSString* const GreenFishWithOutlineTextureName;
extern NSString* const GreenFishBonyEmptyTextureName;
extern NSString* const GreenFishBonyFullTextureName;
extern NSString* const GreenFishNormalTextureLeftName;
extern NSString* const GreenFishWithOutlineTextureLeftName;
extern NSString* const GreenFishBonyEmptyTextureLeftName;
extern NSString* const GreenFishBonyFullTextureLeftName;

extern NSString* const PinkFishNormalTextureName;
extern NSString* const PinkFishWithOutlineTextureName;
extern NSString* const PinkFishBonyEmptyTextureName;
extern NSString* const PinkFishBonyFullTextureName;
extern NSString* const PinkFishNormalTextureLeftName;
extern NSString* const PinkFishWithOutlineTextureLeftName;
extern NSString* const PinkFishBonyEmptyTextureLeftName;
extern NSString* const PinkFishBonyFullTextureLeftName;

extern NSString* const OrangeFishNormalTextureName;
extern NSString* const OrangeFishWithOutlineTextureName;
extern NSString* const OrangeFishBonyEmptyTextureName;
extern NSString* const OrangeFishBonyFullTextureName;
extern NSString* const OrangeFishNormalTextureLeftName;
extern NSString* const OrangeFishWithOutlineTextureLeftName;
extern NSString* const OrangeFishBonyEmptyTextureLeftName;
extern NSString* const OrangeFishBonyFullTextureLeftName;

extern NSString* const BlueFishNormalTextureName;
extern NSString* const BlueFishNormalTextureLeftName;
extern NSString* const BlueFishWithOutlineTextureName;
extern NSString* const BlueFishWithOutlineTextureLeftName;
extern NSString* const BlueFishBonyEmptyTextureName;
extern NSString* const BlueFishBonyEmptyTextureLeftName;
extern NSString* const BlueFishBonyFullTextureName;
extern NSString* const BlueFishBonyFullTextureLeftName;


extern NSString* const RedFishNormalTextureName;
extern NSString* const RedFishWithOutlineTextureName;
extern NSString* const RedFishBonyEmptyTextureName;
extern NSString* const RedFishBonyFullTextureName;
extern NSString* const RedFishNormalTextureLeftName;
extern NSString* const RedFishWithOutlineTextureLeftName;
extern NSString* const RedFishBonyEmptyTextureLeftName;
extern NSString* const RedFishBonyFullTextureLeftName;


/** Blowfish **/

extern NSString* const BlowfishOutlinedTextureName;
extern NSString* const BlowfishNormalTextureName;

/** Eel **/

extern NSString* const EelFullNormal;
extern NSString* const EelFullOutlined;
extern NSString* const EelFrontNormal;
extern NSString* const EelFrontOutlined;
extern NSString* const EelBackNormal;
extern NSString* const EelBackOutlined;



/** Plants **/

extern NSString* const PurplePlantsNormalThree;
extern NSString* const PurplePlantsNormalTwoA;
extern NSString* const PurplePlantsNormalTwoB;
extern NSString* const PurplePlantsNormalTwoC;

extern NSString* const PurplePlantsOutlinedThree;
extern NSString* const PurplePlantsOutlinedTwoA;
extern NSString* const PurplePlantsOutlinedTwoB;
extern NSString* const PurplePlantsOutlinedTwoC;


extern NSString* const GreenPlantsNormalThree;
extern NSString* const GreenPlantsNormalTwoA;
extern NSString* const GreenPlantsNormalTwoB;
extern NSString* const GreenPlantsNormalTwoC;

extern NSString* const GreenPlantsOutlinedThree;
extern NSString* const GreenPlantsOutlinedTwoA;
extern NSString* const GreenPlantsOutlinedTwoB;
extern NSString* const GreenPlantsOutlinedTwoC;

/** Rocks **/

extern NSString* const GreyRockNormal1;
extern NSString* const GreyRockOutlined1;
extern NSString* const GreyRockNormal2;
extern NSString* const GreyRockOutlined2;
extern NSString* const BlueRockNormal;
extern NSString* const BlueRockOutlined;

/** Water Tiles **/

extern NSString* const WaterSurface;
extern NSString* const WaterMiddle;


/** Sand Tiles **/


extern NSString* const SandSurfaceCurvedFiveDots;
extern NSString* const SandSurfaceCurvedFourDots;
extern NSString* const SandSurfaceCurvedFourDotsMound;

extern NSString* const SandSurfaceCurvedTwoDots;
extern NSString* const SandSurfaceCurvedTwoDotsMound;
extern NSString* const SandSurfaceCurvedThreeDotsMound;
extern NSString* const SandSurfaceCurvedFourDotsMound;

extern NSString* const SandSurfaceConcaveFiveDots;
extern NSString* const SandSurfaceConcaveFourDots;
extern NSString* const SandSurfaceConvexThreeDots;
extern NSString* const SandSurfaceConvexTwoDotsMound;
extern NSString* const SandSurfaceConvexFourDots;

extern NSString* const SandMiddleDottedFour;
extern NSString* const SandMiddleDottedThree;
extern NSString* const SandMiddleDottedTwo;
extern NSString* const SandMiddleStarFish;
extern NSString* const SandMiddleSeaShell;




/** Ground Tiles **/

extern NSString* const GroundSurfaceCurvedFiveDots;
extern NSString* const GroundSurfaceCurvedFourDots;
extern NSString* const GroundSurfaceCurvedFourDotsMound;

extern NSString* const GroundSurfaceCurvedTwoDots;
extern NSString* const GroundSurfaceCurvedTwoDotsMound;
extern NSString* const GroundSurfaceCurvedThreeDotsMound;
extern NSString* const GroundSurfaceCurvedFourDotsMound;

extern NSString* const GroundSurfaceConcaveFiveDots;
extern NSString* const GroundSurfaceConcaveFourDots;
extern NSString* const GroundSurfaceConvexThreeDots;
extern NSString* const GroundSurfaceConvexTwoDotsMound;
extern NSString* const GroundSurfaceConvexFourDots;

extern NSString* const GroundMiddleDottedFour;
extern NSString* const GroundMiddleDottedThree;
extern NSString* const GroundMiddleDottedTwo;
extern NSString* const GroundMiddleStarFish;
extern NSString* const GroundMiddleSeaShell;



@end


#endif /* TextureAtlasManager_h */


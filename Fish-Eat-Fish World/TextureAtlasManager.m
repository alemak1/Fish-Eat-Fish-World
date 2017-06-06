//
//  TextureAtlasManager.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/2/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TextureAtlasManager.h"

@implementation TextureAtlasManager


 NSString* const GreenFishNormalTextureName = @"fishTile_072";
 NSString* const GreenFishWithOutlineTextureName  = @"fishTile_073";
 NSString* const GreenFishBonyEmptyTextureName = @"fishTile_090";
 NSString* const GreenFishBonyFullTextureName = @"fishTile_091";
 NSString* const GreenFishNormalTextureLeftName = @"greenFishNormal_left";
 NSString* const GreenFishWithOutlineTextureLeftName = @"greenFishOutline_left";
 NSString* const GreenFishBonyEmptyTextureLeftName = @"greenFishBonyEmpty_left";
 NSString* const GreenFishBonyFullTextureLeftName = @"greenFishBonyFull_left";


 NSString* const PinkFishNormalTextureName  = @"fishTile_074";
 NSString* const PinkFishWithOutlineTextureName  = @"fishTile_075";
 NSString* const PinkFishBonyEmptyTextureName = @"fishTile_092";
 NSString* const PinkFishBonyFullTextureName = @"fishTile_093";
 NSString* const PinkFishNormalTextureLeftName = @"pinkFishNormal_left";
 NSString* const PinkFishWithOutlineTextureLeftName = @"pinkFishOutline_left";
 NSString* const PinkFishBonyEmptyTextureLeftName = @"pinkFishBonyEmpty_left";
 NSString* const PinkFishBonyFullTextureLeftName = @"pinkFishBonyFull_left";

 NSString* const OrangeFishNormalTextureName  = @"fishTile_080";
 NSString* const OrangeFishWithOutlineTextureName  = @"fishTile_081";
 NSString* const OrangeFishBonyEmptyTextureName = @"fishTile_092";
 NSString* const OrangeFishBonyFullTextureName = @"fishTile_093";
 NSString* const OrangeFishNormalTextureLeftName = @"orangeFishNormal_left";
 NSString* const OrangeFishWithOutlineTextureLeftName = @"orangeFishOutline_left";
 NSString* const OrangeFishBonyEmptyTextureLeftName = @"orangeFishBonyEmpty_left";
 NSString* const OrangeFishBonyFullTextureLeftName = @"ornageFishBonyFull_left";

 NSString* const BlueFishNormalTextureName  = @"fishTile_076";
 NSString* const BlueFishWithOutlineTextureName  = @"fishTile_077";
 NSString* const BlueFishBonyEmptyTextureName  = @"fishTile_094";
 NSString* const BlueFishBonyFullTextureName  = @"fishTile_095";
 NSString* const BlueFishNormalTextureLeftName = @"blueFishNormal_left";
 NSString* const BlueFishWithOutlineTextureLeftName = @"blueFishOutlined_left";
 NSString* const BlueFishBonyEmptyTextureLeftName = @"blueFishBonyEmpty_left";
 NSString* const BlueFishBonyFullTextureLeftName = @"blueFishBonyFull_left";


 NSString* const RedFishNormalTextureName  = @"fishTile_078";
 NSString* const RedFishWithOutlineTextureName = @"fishTile_079";
 NSString* const RedFishBondyEmptyTextureName  = @"fishTile_096";
 NSString* const RedFishBonyFullTextureName = @"fishTile_097";
 NSString* const RedFishNormalTextureLeftName = @"redFishNormal_left";
 NSString* const RedFishWithOutlineTextureLeftName = @"redFishOutlined_left";
 NSString* const RedFishBonyEmptyTextureLeftName = @"redFishBonyEmpty_left";
 NSString* const RedFishBonyFullTextureLeftName = @"redFishBonyFull_left";



/** Blowfish **/

 NSString* const BlowfishOutlinedTextureName = @"fishTile_101";
 NSString* const BlowfishNormalTextureName = @"fishTile_100";

/** Eel **/

 NSString* const EelFullNormal = @"fishTile_102";
 NSString* const EelFullOutlined = @"fishTile_103";
 NSString* const EelFrontNormal = @"fishTile_105";
 NSString* const EelFrontOutlined = @"fishTile_107";
 NSString* const EelBackNormal = @"fishTile_104";
 NSString* const EelBackOutlined = @"fishTile_106";



/** Plants **/

 NSString* const PurplePlantsNormalThree = @"fishTile_010";
 NSString* const PurplePlantsNormalTwoA = @"fishTile_011";
 NSString* const PurplePlantsNormalTwoB = @"fishTile_012";
 NSString* const PurplePlantsNormalTwoC = @"fishTile_013";

 NSString* const PurplePlantsOutlinedThree = @"fishTile_014";
 NSString* const PurplePlantsOutlinedTwoA = @"fishTile_015";
 NSString* const PurplePlantsOutlinedTwoB = @"fishTile_016";
 NSString* const PurplePlantsOutlinedTwoC = @"fishTile_017";


 NSString* const GreenPlantsNormalThree = @"fishTile_028";
 NSString* const GreenPlantsNormalTwoA = @"fishTile_029";
 NSString* const GreenPlantsNormalTwoB = @"fishTile_030";
 NSString* const GreenPlantsNormalTwoC = @"fishTile_031";

 NSString* const GreenPlantsOutlinedThree = @"fishTile_032";
 NSString* const GreenPlantsOutlinedTwoA = @"fishTile_033";
 NSString* const GreenPlantsOutlinedTwoB = @"fishTile_034";
 NSString* const GreenPlantsOutlinedTwoC = @"fishTile_035";

/** Rocks **/

 NSString* const GreyRockNormal1 = @"fishTile_082";
 NSString* const GreyRockOutlined1 = @"fishTile_084";
 NSString* const GreyRockNormal2 = @"fishTile_083";
 NSString* const GreyRockOutlined2 = @"fishTile_085";
 NSString* const BlueRockNormal = @"fishTile_086";
 NSString* const BlueRockOutlined = @"fishTile_087";

/** Water Tiles **/

 NSString* const WaterSurface = @"fishTile_088";
 NSString* const WaterMiddle = @"fishTile_089";


/** Sand Tiles **/


NSString* const SandSurfaceCurvedFiveDotsNormal = @"";
NSString* const SandSurfaceCurvedFiveDotsOutlined = @"";
NSString* const SandSurfaceCurvedFourDotsMoundNormal = @"";
NSString* const SandSurfaceCurvedFourDotsMoundOutlined = @"";

NSString* const SandSurfaceCurvedTwoDotsNormal = @"";
NSString* const SandSurfaceCurvedTwoDotsOutlined = @"";

NSString* const SandSurfaceCurvedThreeDotsMoundNormal = @"";
NSString* const SandSurfaceCurvedThreeDotsMoundOutlined = @"";

NSString* const SandSurfaceConcaveFiveDotsNormal = @"";
NSString* const SandSurfaceConcaveFiveDotsOutlined = @"";

NSString* const SandSurfaceConcaveFourDots = @"";
NSString* const SandSurfaceConvexThreeDotsNormal = @"";
NSString* const SandSurfaceConvexThreeDotsOutlined = @"";

NSString* const SandSurfaceConvexTwoDotsMoundNormal = @"";
NSString* const SandSurfaceConvexTwoDotsMoundOutlined = @"";

NSString* const SandSurfaceConvexFourDots = @"";

NSString* const SandMiddleDottedFour = @"";
NSString* const SandMiddleDottedTwo = @"";
NSString* const SandMiddleStarFish = @"";
NSString* const SandMiddleSeaShell = @"";



/** Ground Tiles **/

 NSString* const GroundSurfaceCurvedFiveDotsNormal = @"fishTile_038";
 NSString* const GroundSurfaceCurvedFiveDotsOutlined = @"fishTile_056";
 NSString* const GroundSurfaceCurvedFourDotsMoundNormal = @"fishTile_041";
 NSString* const GroundSurfaceCurvedFourDotsMoundOutlined = @"fishTile_059";

 NSString* const GroundSurfaceCurvedTwoDotsNormal = @"fishTile_040";
 NSString* const GroundSurfaceCurvedTwoDotsOutlined = @"fishTile_058";

 NSString* const GroundSurfaceCurvedThreeDotsMoundNormal = @"fishTile_039";
 NSString* const GroundSurfaceCurvedThreeDotsMoundOutlined = @"fishTile_057";

 NSString* const GroundSurfaceConcaveFiveDotsNormal = @"fishTile_042";
 NSString* const GroundSurfaceConcaveFiveDotsOutlined = @"fishTile_060";

 NSString* const GroundSurfaceConcaveFourDots = @"fishTile_063";
 NSString* const GroundSurfaceConvexThreeDotsNormal = @"fishTile_043";
 NSString* const GroundSurfaceConvexThreeDotsOutlined = @"fishTile_061";

 NSString* const GroundSurfaceConvexTwoDotsMoundNormal = @"fishTIle_044";
 NSString* const GroundSurfaceConvexTwoDotsMoundOutlined = @"fishTIle_062";

 NSString* const GroundSurfaceConvexFourDots = @"fishTile_045";

 NSString* const GroundMiddleDottedFour = @"fishTile_037";
 NSString* const GroundMiddleDottedTwo = @"fishTile_036";
 NSString* const GroundMiddleStarFish = @"fishTile_054";
 NSString* const GroundMiddleSeaShell = @"fishTile_056";




/** The different texture atlas managers are implemented as instance variables, because they are private class variables and should not be part of the public interface  **/

    SKTextureAtlas* _blowFishAtlas;
    SKTextureAtlas* _coloredFishAtlas;
    SKTextureAtlas* _bluePlantsAtlas;
    SKTextureAtlas* _bonyFishAtlas;
    SKTextureAtlas* _eelAtlas;
    SKTextureAtlas* _greenPlantsAtlas;
    SKTextureAtlas* _groundAtlas;
    SKTextureAtlas* _numbersAtlas;
    SKTextureAtlas* _purplePlantsAtlas;
    SKTextureAtlas* _rocksAtlas;
    SKTextureAtlas* _sandAtlas;
    SKTextureAtlas* _waterAtlas;


+ (id) sharedManager{
    static TextureAtlasManager* sharedTAManager = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedTAManager = [[self alloc] init];
    });
    
    return sharedTAManager;
}


- (id) init{
    
    if(self = [super init]){
        _blowFishAtlas = [SKTextureAtlas atlasNamed:@"BlowFish.atls"];
        _coloredFishAtlas = [SKTextureAtlas atlasNamed:@"ColoredFish.atlas"];
        _bluePlantsAtlas = [SKTextureAtlas atlasNamed:@"BluePlants.atlas"];
        _bonyFishAtlas = [SKTextureAtlas atlasNamed:@"BonyFish.atlas"];
        _eelAtlas = [SKTextureAtlas atlasNamed:@"Eel.atlas"];
        _greenPlantsAtlas = [SKTextureAtlas atlasNamed:@"GreenPlants.atlas"];
        _groundAtlas = [SKTextureAtlas atlasNamed:@"Ground.atlas"];
        _numbersAtlas = [SKTextureAtlas atlasNamed:@"Numbers"];
        _purplePlantsAtlas = [SKTextureAtlas atlasNamed:@"PurplePlants.atlas"];
        _rocksAtlas = [SKTextureAtlas atlasNamed:@"Rocks.atlas"];
        _sandAtlas = [SKTextureAtlas atlasNamed:@"Sand.atlas"];
        _waterAtlas = [SKTextureAtlas atlasNamed:@"Water.atlas"];
        
    }
    
    return self;
}

- (SKTexture*) getBlowfishTextureWithName:(NSString*)textureName{
    return [_blowFishAtlas textureNamed:textureName];
    
}

- (SKTexture*) getBluePlantsTextureWithName: (NSString*) textureName{
    return [_bluePlantsAtlas textureNamed: textureName];
    
}

- (SKTexture*) getColoredFishTextureWithName: (NSString*) textureName{
    return [_coloredFishAtlas textureNamed:textureName];
}

- (SKTexture*) getBonyFishTextureWithName: (NSString*)textureName{
    return [_bonyFishAtlas textureNamed: textureName];
}

- (SKTexture*) getGroundAtlasTextureWithName: (NSString*)textureName{
    return [_groundAtlas textureNamed:textureName];
}

- (SKTexture*) getGreenPlantsTextureWithName: (NSString*)textureName{
    return [_greenPlantsAtlas textureNamed:textureName];
}

- (SKTexture*) getNumbersTextureWithName: (NSString*)textureName{
    return [_numbersAtlas textureNamed:textureName];
}

- (SKTexture*) getPurplePlantsTextureWithName: (NSString*)textureName{
    return [_purplePlantsAtlas textureNamed: textureName];
}

- (SKTexture*) getRocksTextureWithName: (NSString*)textureName{
    return [_rocksAtlas textureNamed:textureName];
}

- (SKTexture*) getSandTextureWithName: (NSString*) textureName{
    return [_sandAtlas textureNamed:textureName];
}

- (SKTexture*) getWaterTextureWithName: (NSString*) textureName{
    return [_waterAtlas textureNamed:textureName];
}


@end

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
 NSString* const GreenFishBonyEmptyTextureLeftName = @"deadGreenEmpty_left";
 NSString* const GreenFishBonyFullTextureLeftName = @"deadGreenFull_left";


 NSString* const PinkFishNormalTextureName  = @"fishTile_074";
 NSString* const PinkFishWithOutlineTextureName  = @"fishTile_075";
 NSString* const PinkFishBonyEmptyTextureName = @"fishTile_092";
 NSString* const PinkFishBonyFullTextureName = @"fishTile_093";
 NSString* const PinkFishNormalTextureLeftName = @"pinkFishNormal_left";
 NSString* const PinkFishWithOutlineTextureLeftName = @"pinkFishOutline_left";
 NSString* const PinkFishBonyEmptyTextureLeftName = @"deadPinkEmpty_left";
 NSString* const PinkFishBonyFullTextureLeftName = @"deadPinkFull_left";

 NSString* const OrangeFishNormalTextureName  = @"fishTile_080";
 NSString* const OrangeFishWithOutlineTextureName  = @"fishTile_081";
 NSString* const OrangeFishBonyEmptyTextureName = @"fishTile_092";
 NSString* const OrangeFishBonyFullTextureName = @"fishTile_093";
 NSString* const OrangeFishNormalTextureLeftName = @"orangeFishNormal_left";
 NSString* const OrangeFishWithOutlineTextureLeftName = @"orangeFishOutline_left";
 NSString* const OrangeFishBonyEmptyTextureLeftName = @"deadOrangeEmpty_left";
 NSString* const OrangeFishBonyFullTextureLeftName = @"deadOrangeFull_left";

 NSString* const BlueFishNormalTextureName  = @"fishTile_076";
 NSString* const BlueFishWithOutlineTextureName  = @"fishTile_077";
 NSString* const BlueFishBonyEmptyTextureName  = @"fishTile_094";
 NSString* const BlueFishBonyFullTextureName  = @"fishTile_095";
 NSString* const BlueFishNormalTextureLeftName = @"blueFishNormal_left";
 NSString* const BlueFishWithOutlineTextureLeftName = @"blueFishOutlined_left";
 NSString* const BlueFishBonyEmptyTextureLeftName = @"deadBlueEmpty_left";
 NSString* const BlueFishBonyFullTextureLeftName = @"deadBlueFull_left";


 NSString* const RedFishNormalTextureName  = @"fishTile_078";
 NSString* const RedFishWithOutlineTextureName = @"fishTile_079";
 NSString* const RedFishBonyEmptyTextureName  = @"fishTile_096";
 NSString* const RedFishBonyFullTextureName = @"fishTile_097";
 NSString* const RedFishNormalTextureLeftName = @"redFishNormal_left";
 NSString* const RedFishWithOutlineTextureLeftName = @"redFishOutlined_left";
 NSString* const RedFishBonyEmptyTextureLeftName = @"deadRedEmpty_left";
 NSString* const RedFishBonyFullTextureLeftName = @"deadRedFull_left";



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


/** String Constants for Collectibles Texture Names **/

 NSString* const Drill = @"";
 NSString* const Sander  = @"";
 NSString* const Item3  = @"";
 NSString* const Wrench  = @"";
 NSString* const Item4Bolt  = @"";


 NSString* const Scraper  = @"";
 NSString* const DoubleWrench  = @"";
 NSString* const Clamp  = @"";
 NSString* const Pliers  = @"";
 NSString* const Hammer  = @"";

 NSString* const PaintBrush  = @"";
 NSString* const Item12  = @"";
 NSString* const Item13  = @"";
 NSString* const PaintRollerBrush  = @"";
 NSString* const PaintScraper  = @"";

 NSString* const Saw  = @"";
 NSString* const Item17  = @"";
 NSString* const Screw  = @"";
 NSString* const Nail  = @"";
 NSString* const Axe  = @""; //Item20

 NSString* const Pickaxe  = @"";
 NSString* const Shovel  = @"";
 NSString* const DoubleSidedHammer  = @"";
 NSString* const Pencil  = @"";
 NSString* const BallpointPen  = @""; //Item25

 NSString* const Marker  = @"";
NSString* const FountainPenRed = @"";
 NSString* const FountainPenBlue  = @"";
 NSString* const InkPenWithFeather  = @"";
 NSString* const Stamper  = @""; //Item25

 NSString* const Item26  = @"";
 NSString* const Item27  = @"";
 NSString* const Item28  = @"";
 NSString* const Item29  = @"";
 NSString* const Seal  = @""; //Item30

 NSString* const Palette  = @"";
 NSString* const OpenBookWithBlueCover  = @"";
 NSString* const OpenBookWithRedCover  = @"";
 NSString* const ClosedBookWithYellowCover  = @"";
 NSString* const ClosedBookWithRedCover  = @""; //Item35


 NSString* const Folder = @"";
 NSString* const Ladder = @"";
 NSString* const Clipboard = @"";
 NSString* const Item39  = @"";
 NSString* const Item40  = @""; //Item40

 NSString* const Item41  = @"";
 NSString* const Item42  = @"";
 NSString* const Item43  = @"";
 NSString* const Item44 = @"";
 NSString* const Item45 = @""; //Item45

 NSString* const Item46 = @"";
 NSString* const Item47 = @"";
 NSString* const Flashlight = @"";
 NSString* const Item49 = @"";
 NSString* const Item50 = @""; //Item50

 NSString* const Item51  = @"";
 NSString* const Item52 = @"";
 NSString* const Item53 = @"";
 NSString* const Item54 = @"";
 NSString* const Item55 = @""; //Item55

 NSString* const Item56 = @"";
 NSString* const Item57 = @"";
 NSString* const Item58 = @"";
 NSString* const Item59 = @"";
 NSString* const Item60 = @""; //Item60

 NSString* const Item61 = @"";
 NSString* const Item62 = @"";
 NSString* const Item63 = @"";
 NSString* const Item64 = @"";
 NSString* const Item65  = @""; //Item65

 NSString* const Item66 = @"";
 NSString* const Item67 = @"";
 NSString* const Item68 = @"";
 NSString* const Item69 = @"";
 NSString* const Item70 = @""; //Item65

 NSString* const Item71 = @"";
 NSString* const Item72 = @"";
 NSString* const Item73 = @"";
 NSString* const Item74 = @"";
 NSString* const Item75 = @""; //Item75

 NSString* const Item76 = @"";
 NSString* const Item77 = @"";
 NSString* const Item78 = @"";
 NSString* const Item79 = @"";
 NSString* const Item80 = @""; //Item80

 NSString* const Item81 = @"";
 NSString* const Item82 = @"";
 NSString* const Item83 = @"";
 NSString* const Item84 = @"";
 NSString* const Item85 = @""; //Item85

 NSString* const Item86 = @"";
 NSString* const Item87 = @"";
 NSString* const Item88 = @"";
 NSString* const Item89 = @"";
 NSString* const Item90 = @""; //Item90

 NSString* const Item91 = @"";
 NSString* const Item92 = @"";
 NSString* const Item93 = @"";
 NSString* const Item94 = @"";
 NSString* const Item95 = @""; //Item95

 NSString* const Item96 = @"";
 NSString* const Item97 = @"";
 NSString* const Item98 = @"";
 NSString* const Item99 = @"";
 NSString* const Item100 = @""; //Item100

 NSString* const Item101 = @"";
 NSString* const Item102 = @"";
 NSString* const Item103 = @"";
 NSString* const Item104 = @"";
 NSString* const Item105 = @""; //Item105

 NSString* const Item106 = @"";
 NSString* const Item107 = @"";
 NSString* const Item108 = @"";
 NSString* const Item109 = @"";
 NSString* const Item110 = @""; //Item110

 NSString* const Item111 = @"";
 NSString* const Item112 = @"";
 NSString* const Item113 = @"";
 NSString* const Item114 = @"";
 NSString* const Item115 = @""; //Item115

 NSString* const Item116 = @"";
 NSString* const Item117 = @"";
 NSString* const Item118 = @"";
 NSString* const Item119 = @"";
 NSString* const Item120 = @""; //Item120


 NSString* const Item121 = @"";
 NSString* const Item122 = @"";
 NSString* const Item123 = @"";
 NSString* const Item124 = @"";
 NSString* const Item125 = @""; //Item115

 NSString* const Item126 = @"";
 NSString* const Item127 = @"";
 NSString* const Item128 = @"";
 NSString* const Item129 = @"";
 NSString* const Item130 = @""; //Item130

 NSString* const Item141 = @"";
 NSString* const Item142 = @"";
 NSString* const Item143 = @"";
 NSString* const Item144 = @"";
 NSString* const Item145 = @""; //Item145

 NSString* const Item146;
 NSString* const Item147 = @"";
 NSString* const Item148 = @"";
 NSString* const Item149 = @"";
 NSString* const Item150 = @""; //Item150

 NSString* const Item161 = @"";
 NSString* const Item162 = @"";
 NSString* const Item163 = @"";
 




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
    SKTextureAtlas* _orangePlantAtlas;
    SKTextureAtlas* _groundAtlas;
    SKTextureAtlas* _numbersAtlas;
    SKTextureAtlas* _purplePlantsAtlas;
    SKTextureAtlas* _rocksAtlas;
    SKTextureAtlas* _sandAtlas;
    SKTextureAtlas* _waterAtlas;
    SKTextureAtlas* _collectiblesAtlas;



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
        _collectiblesAtlas = [SKTextureAtlas atlasNamed:@"Collectibles.atlas"];
        _orangePlantAtlas = [SKTextureAtlas atlasNamed:@"OrangePlant.atlas"];
    }
    
    return self;
}

- (SKTexture*) getCollectibleTextureWithName: (NSString*) textureName{
    return [_collectiblesAtlas textureNamed:textureName];
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

- (SKTexture*) getOrangePlantsTextureWithName: (NSString*)textureName{
    return [_orangePlantAtlas textureNamed:textureName];
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

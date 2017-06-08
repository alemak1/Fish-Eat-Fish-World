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
- (SKTexture*) getCollectibleTextureWithName: (NSString*) textureName;
- (SKTexture*) getOrangePlantsTextureWithName: (NSString*)textureName;

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


/** String Constants for Collectibles Texture Names **/

extern NSString* const Drill;
extern NSString* const Sander;
extern NSString* const Item3;
extern NSString* const Wrench;
extern NSString* const Item4Bolt;


extern NSString* const Scraper;
extern NSString* const DoubleWrench;
extern NSString* const Clamp;
extern NSString* const Pliers;
extern NSString* const Hammer;

extern NSString* const PaintBrush;
extern NSString* const Item12;
extern NSString* const Item13;
extern NSString* const PaintRollerBrush;
extern NSString* const PaintScraper;

extern NSString* const Saw;
extern NSString* const Item12;
extern NSString* const Screw;
extern NSString* const Nail;
extern NSString* const Axe; //Item20

extern NSString* const Pickaxe;
extern NSString* const Shovel;
extern NSString* const DoubleSidedHammer;
extern NSString* const Pencil;
extern NSString* const BallpointPen; //Item25

extern NSString* const Marker;
extern NSString* const FountainPenRed;
extern NSString* const FountainPenBlue;
extern NSString* const InkPenWithFeather;
extern NSString* const Stamper; //Item25

extern NSString* const Marker;
extern NSString* const FountainPenRed;
extern NSString* const FountainPenBlue;
extern NSString* const InkPenWithFeather;
extern NSString* const Seal; //Item30

extern NSString* const Palette;
extern NSString* const OpenBookWithBlueCover;
extern NSString* const OpenBookWithRedCover;
extern NSString* const ClosedBookWithYellowCover;
extern NSString* const ClosedBookWithRedCover; //Item35


extern NSString* const Folder;
extern NSString* const Ladder;
extern NSString* const Clipboard;
extern NSString* const InkPenWithFeather;
extern NSString* const Item40; //Item40

extern NSString* const Item41;
extern NSString* const Item42;
extern NSString* const Item43;
extern NSString* const Item44;
extern NSString* const Item45; //Item45

extern NSString* const Item46;
extern NSString* const Item47;
extern NSString* const Flashlight;
extern NSString* const Item49;
extern NSString* const Item50; //Item50

extern NSString* const Item51;
extern NSString* const Item52;
extern NSString* const Item53;
extern NSString* const Item54;
extern NSString* const Item55; //Item55

extern NSString* const Item56;
extern NSString* const Item57;
extern NSString* const Item58;
extern NSString* const Item59;
extern NSString* const Item60; //Item60

extern NSString* const Item61;
extern NSString* const Item62;
extern NSString* const Item63;
extern NSString* const Item64;
extern NSString* const Item65; //Item65

extern NSString* const Item66;
extern NSString* const Item67;
extern NSString* const Item68;
extern NSString* const Item69;
extern NSString* const Item70; //Item65

extern NSString* const Item71;
extern NSString* const Item72;
extern NSString* const Item73;
extern NSString* const Item74;
extern NSString* const Item75; //Item75

extern NSString* const Item76;
extern NSString* const Item77;
extern NSString* const Item78;
extern NSString* const Item79;
extern NSString* const Item80; //Item80

extern NSString* const Item81;
extern NSString* const Item82;
extern NSString* const Item83;
extern NSString* const Item84;
extern NSString* const Item85; //Item85

extern NSString* const Item86;
extern NSString* const Item87;
extern NSString* const Item88;
extern NSString* const Item89;
extern NSString* const Item90; //Item90

extern NSString* const Item91;
extern NSString* const Item92;
extern NSString* const Item93;
extern NSString* const Item94;
extern NSString* const Item95; //Item95

extern NSString* const Item96;
extern NSString* const Item97;
extern NSString* const Item98;
extern NSString* const Item99;
extern NSString* const Item100; //Item100

extern NSString* const Item101;
extern NSString* const Item102;
extern NSString* const Item103;
extern NSString* const Item104;
extern NSString* const Item105; //Item105

extern NSString* const Item106;
extern NSString* const Item107;
extern NSString* const Item108;
extern NSString* const Item109;
extern NSString* const Item110; //Item110

extern NSString* const Item111;
extern NSString* const Item112;
extern NSString* const Item113;
extern NSString* const Item114;
extern NSString* const Item115; //Item115

extern NSString* const Item116;
extern NSString* const Item117;
extern NSString* const Item118;
extern NSString* const Item119;
extern NSString* const Item120; //Item120


extern NSString* const Item121;
extern NSString* const Item122;
extern NSString* const Item123;
extern NSString* const Item124;
extern NSString* const Item125; //Item115

extern NSString* const Item126;
extern NSString* const Item127;
extern NSString* const Item128;
extern NSString* const Item129;
extern NSString* const Item130; //Item130

extern NSString* const Item141;
extern NSString* const Item142;
extern NSString* const Item143;
extern NSString* const Item144;
extern NSString* const Item145; //Item145

extern NSString* const Item146;
extern NSString* const Item147;
extern NSString* const Item148;
extern NSString* const Item149;
extern NSString* const Item150; //Item150

extern NSString* const Item161;
extern NSString* const Item162;
extern NSString* const Item163;
extern NSString* const Item164;
extern NSString* const Item165; //Item165

extern NSString* const Item166;
extern NSString* const Item167;
extern NSString* const Item168;
extern NSString* const Item169;
extern NSString* const Item170; //Item170



@end


#endif /* TextureAtlasManager_h */


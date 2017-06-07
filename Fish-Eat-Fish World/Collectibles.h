//
//  Collectibles.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/7/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#ifndef Collectibles_h
#define Collectibles_h

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>

@interface Collectible : SKSpriteNode

typedef enum{
    ITEM1 = 1, ITEM2, ITEM3, ITEM4, ITEM5, ITEM6, ITEM7, ITEM8, ITEM9, ITEM10,
    ITEM11, ITEM12, ITEM13, ITEM14, ITEM15, ITEM16, ITEM17, ITEM18, ITEM19, ITEM20,
    ITEM21, ITEM22, ITEM23, ITEM24, ITEM25, ITEM26, ITEM27, ITEM28, ITEM29, ITEM30,
    ITEM31, ITEM32, ITEM33, ITEM34, ITEM35, ITEM36, ITEM37, ITEM38, ITEM39, ITEM40,
    ITEM41, ITEM42, ITEM43, ITEM44, ITEM45, ITEM46, ITEM47, ITEM48, ITEM49, ITEM50,
    ITEM51, ITEM52, ITEM53, ITEM54, ITEM55, ITEM56, ITEM57, ITEM58, ITEM59, ITEM60,
    ITEM61, ITEM62, ITEM63, ITEM64, ITEM65, ITEM66, ITEM67, ITEM68, ITEM69, ITEM70,
    ITEM71, ITEM72, ITEM73, ITEM74, ITEM75, ITEM76, ITEM77, ITEM78, ITEM79, ITEM80,
    ITEM81, ITEM82, ITEM83, ITEM84, ITEM85, ITEM86, ITEM87, ITEM88, ITEM89, ITEM90,
    ITEM91, ITEM92, ITEM93, ITEM94, ITEM95, ITEM96, ITEM97, ITEM98, ITEM99, ITEM100,
    ITEM101, ITEM102, ITEM103, ITEM104, ITEM105, ITEM106, ITEM107, ITEM108, ITEM109, ITEM110,
    ITEM111, ITEM112, ITEM113, ITEM114, ITEM115, ITEM116, ITEM117, ITEM118, ITEM119, ITEM120,
    ITEM121, ITEM122, ITEM123, ITEM124, ITEM125, ITEM126, ITEM127, ITEM128, ITEM129, ITEM130,
    
    ITEM131, ITEM132, ITEM133, ITEM134, ITEM135, ITEM136, ITEM137, ITEM138, ITEM139, ITEM140,

    
    
} CollectibleItem;

+ (NSMutableDictionary<NSNumber*,NSArray<NSString*>*>*) alternativeNamesDictionary;

+ (UIImage*) getImageFor:(CollectibleItem)collectibleItem;

+ (NSString*) getFilenameFor:(CollectibleItem)collectibleItem;

+ (NSString*) getFilenameWithoutNumberFormatterFor:(CollectibleItem)collectibleItem;



@end

#endif /* Collectibles_h */

//
//  Collectibles.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/7/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Collectibles.h"

@implementation Collectible

+ (NSMutableDictionary<NSNumber*,NSArray<NSString*>*>*) alternativeNamesDictionary{
    static NSMutableDictionary<NSNumber*,NSArray<NSString*>*>* collectiblesDict = nil;
    
    if(collectiblesDict == nil){
        collectiblesDict = [[NSMutableDictionary<NSNumber*,NSArray<NSString*>*> alloc] init];
        
        for (int itemNumber = 0; itemNumber < 164; itemNumber++) {
            NSNumber* itemNumberKey = [NSNumber numberWithInt:itemNumber];
            
            [collectiblesDict setObject:[Collectible getAlternativeNamesFor:itemNumber] forKey:itemNumberKey];
        }
    }
    
    return collectiblesDict;
}

+ (UIImage*) getImageFor:(CollectibleItem)collectibleItem{
    
    return [UIImage imageNamed:[Collectible getFilenameFor:collectibleItem]];
}

+ (NSString*) getFilenameFor:(CollectibleItem)collectibleItem{
    
    NSNumberFormatter* numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setMinimumIntegerDigits:3];

    NSString* numberString = [numberFormatter stringFromNumber:[NSNumber numberWithInt:collectibleItem]];
    
    return [NSString stringWithFormat:@"genericItem_color_%@",numberString];
}

+ (NSString*) getFilenameWithoutNumberFormatterFor:(CollectibleItem)collectibleItem{
    
    NSString* numberString;
    
    if(collectibleItem < 10){
        numberString = [NSString stringWithFormat:@"00%d",collectibleItem];
    }else if(collectibleItem < 100){
        numberString = [NSString stringWithFormat:@"0%d",collectibleItem];
    }else{
        numberString = [NSString stringWithFormat:@"%d",collectibleItem];
    }
    
    return [NSString stringWithFormat:@"genericItem_color_%@",numberString];
    
}

+ (NSArray<NSString*>*) getAlternativeNamesFor:(CollectibleItem)collectibleItem{
    
    switch (collectibleItem) {
        case ITEM1:
            return @[@"",@""];
        default:
            return @[@"",@""];
    }
}



@end

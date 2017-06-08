//
//  SKPhysicsContact+HelperMethods.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/8/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import "SKPhysicsContact+HelperMethods.h"
#import "CollisionConfiguration.h"

@implementation SKPhysicsContact (HelperMethods)

+(NSArray<ContactHandler>*)allContactHandlersForContact:(SKPhysicsContact*)contact{
    
    return [NSArray arrayWithObjects:@[
    
    [contact getPlayerContactHandler],
    [contact getRedFishContactHandler],
    [contact getBlueFishContactHandler]
    
    ], nil];
}

+ (ContactHandler) contactHandlerForContact:(SKPhysicsContact*)contact withReferenceCategoryBitmask:(int32_t)referenceCategoryBitmask withRedFishContactHandler:(OtherBodyContactHandler)redFishContactHandler withBlueFishContactHandler:(OtherBodyContactHandler)blueFishContactHandler withGreenFishContactHandler:(OtherBodyContactHandler)greenFishContactHandler withPinkFishContactHandler:(OtherBodyContactHandler)pinkFishContactHandler withOrangeFishContactHandler:(OtherBodyContactHandler)orangeFishContactHandler withPlayerContactHandler:(OtherBodyContactHandler)playerContactHandler withOrangePlantContactHandler:(OtherBodyContactHandler)orangePlantContactHandler withPurplePlantContactHandler:(OtherBodyContactHandler)purplePlantContactHandler withGreenPlantContactHandler:(OtherBodyContactHandler)greenPlantContactHandler withEelContactHandler:(OtherBodyContactHandler)eelContactHandler withBlowfishContactHandler:(OtherBodyContactHandler)blowFishContactHandler withBarrierContactHandler:(OtherBodyContactHandler)barrierContactHandler withCollectibleContactHandler:(OtherBodyContactHandler)collectibleContactHandler{
    
    int32_t bodyACategoryBitmask = [[contact bodyA] categoryBitMask];
    
    
    //Player Collision Logic
    
    return ^{
        
        SKPhysicsBody* referenceBody = ((bodyACategoryBitmask & referenceCategoryBitmask) > 0) ? [contact bodyA] : [contact bodyB];
        
        SKPhysicsBody* otherBodyRelativeToReferenceBody = ((bodyACategoryBitmask & referenceCategoryBitmask) > 0) ? [contact bodyB] : [contact bodyA];
        
        switch ([otherBodyRelativeToReferenceBody categoryBitMask]) {
            case RED_FISH_CATEGORY_BITMASK:
                redFishContactHandler(referenceBody);
            case BLUE_FISH_CATEGORY_BITMASK:
                blueFishContactHandler(referenceBody);
            case PINK_FISH_CATEGORY_BITMASK:
                pinkFishContactHandler(referenceBody);
            case ORANGE_FISH_CATEGORY_BITMASK:
                orangeFishContactHandler(referenceBody);
            case GREEN_FISH_CATEGORY_BITMASK:
                greenFishContactHandler(referenceBody);
            case PLAYER_CATEGORY_BITMASK:
                playerContactHandler(referenceBody);
            case COLLECTIBLE_CATEGORY_BITMASK:
                collectibleContactHandler(referenceBody);
            case BARRIER_CATEGORY_BITMASK:
                barrierContactHandler(referenceBody);
            case BLOWFISH_CATEGORY_BITMASK:
                blowFishContactHandler(referenceBody);
            case GREEN_PLANT_CATEGORY_BITMASK:
                greenPlantContactHandler(referenceBody);
            case ORANGE_PLANT_CATEGORY_BITMASK:
                orangeFishContactHandler(referenceBody);
            case PURPLE_PLANT_CATEGORY_BITMASK:
                purplePlantContactHandler(referenceBody);
            case EEL_CATEGORY_BITMASK:
                eelContactHandler(referenceBody);
            default:
                break;
        }
        
    };
}





- (ContactHandler) getBlueFishContactHandler{
    return [self contactHandlerWithReferenceCategoryBitmask:BLUE_FISH_CATEGORY_BITMASK
            
                                  withRedFishContactHandler:^(SKPhysicsBody*playerBody){
                                      NSLog(@"The physics body %@ has contacted the red fish", playerBody);
                                  }
            
                                 withBlueFishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the blue fish", playerBody);
                                 }
            
                                withGreenFishContactHandler:^(SKPhysicsBody*playerBody){
                                    NSLog(@"The physics body %@ has contacted the green fish", playerBody);
                                }
            
                                 withPinkFishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the pink fish", playerBody);
                                 }
            
                               withOrangeFishContactHandler:^(SKPhysicsBody*playerBody){
                                   NSLog(@"The physics body %@ has contacted the orange fish", playerBody);
                               }
            
                                   withPlayerContactHandler:^(SKPhysicsBody*playerBody){
                                       NSLog(@"The physics body %@ has contacted the player", playerBody);
                                   }
            
                              withOrangePlantContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the orange fish", playerBody);
                              }
            
                              withPurplePlantContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the purple plant", playerBody);
                                  
                              }
            
                               withGreenPlantContactHandler:^(SKPhysicsBody*playerBody){
                                   NSLog(@"The physics body %@ has contacted the green fish", playerBody);
                               }
            
                                      withEelContactHandler:^(SKPhysicsBody*playerBody){
                                          NSLog(@"The physics body %@ has contacted the eel", playerBody);
                                      }
            
                                 withBlowfishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the blowfish", playerBody);
                                 }
            
                                  withBarrierContactHandler:^(SKPhysicsBody*playerBody){
                                      NSLog(@"The physics body %@ has contacted the barrier fish", playerBody);
                                  }
            
                              withCollectibleContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the collectible", playerBody);
                                  
                              }
            ];
    
    
}




- (ContactHandler) getRedFishContactHandler{
    return [self contactHandlerWithReferenceCategoryBitmask:RED_FISH_CATEGORY_BITMASK
            
                                  withRedFishContactHandler:^(SKPhysicsBody*playerBody){
                                      NSLog(@"The physics body %@ has contacted the red fish", playerBody);
                                  }
            
                                 withBlueFishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the blue fish", playerBody);
                                 }
            
                                withGreenFishContactHandler:^(SKPhysicsBody*playerBody){
                                    NSLog(@"The physics body %@ has contacted the green fish", playerBody);
                                }
            
                                 withPinkFishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the pink fish", playerBody);
                                 }
            
                               withOrangeFishContactHandler:^(SKPhysicsBody*playerBody){
                                   NSLog(@"The physics body %@ has contacted the orange fish", playerBody);
                               }
            
                                   withPlayerContactHandler:^(SKPhysicsBody*playerBody){
                                       NSLog(@"The physics body %@ has contacted the player", playerBody);
                                   }
            
                              withOrangePlantContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the orange fish", playerBody);
                              }
            
                              withPurplePlantContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the purple plant", playerBody);
                                  
                              }
            
                               withGreenPlantContactHandler:^(SKPhysicsBody*playerBody){
                                   NSLog(@"The physics body %@ has contacted the green fish", playerBody);
                               }
            
                                      withEelContactHandler:^(SKPhysicsBody*playerBody){
                                          NSLog(@"The physics body %@ has contacted the eel", playerBody);
                                      }
            
                                 withBlowfishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the blowfish", playerBody);
                                 }
            
                                  withBarrierContactHandler:^(SKPhysicsBody*playerBody){
                                      NSLog(@"The physics body %@ has contacted the barrier fish", playerBody);
                                  }
            
                              withCollectibleContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the collectible", playerBody);
                                  
                              }
            ];
    
    
}


- (ContactHandler) getPlayerContactHandler{
    return [self contactHandlerWithReferenceCategoryBitmask:PLAYER_CATEGORY_BITMASK
                                                                                     
        withRedFishContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the red fish", playerBody);
            }
                                                                                     
        withBlueFishContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the blue fish", playerBody);
            }
                                                                                     
        withGreenFishContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the green fish", playerBody);
            }
            
        withPinkFishContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the pink fish", playerBody);
            }
        
        withOrangeFishContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the orange fish", playerBody);
            }
        
        withPlayerContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the player", playerBody);
            }
        
        withOrangePlantContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the orange fish", playerBody);
            }
        
        withPurplePlantContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the purple plant", playerBody);
                                                                                                              
            }
       
        withGreenPlantContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the green fish", playerBody);
            }
    
        withEelContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the eel", playerBody);
            }
            
        withBlowfishContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the blowfish", playerBody);
        }
        
        withBarrierContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the barrier fish", playerBody);
        }
                                                                                     
        withCollectibleContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the collectible", playerBody);
                                                                                                              
        }
    ];
            
    
}

- (ContactHandler) contactHandlerWithReferenceCategoryBitmask:(int32_t)referenceCategoryBitmask withRedFishContactHandler:(OtherBodyContactHandler)redFishContactHandler withBlueFishContactHandler:(OtherBodyContactHandler)blueFishContactHandler withGreenFishContactHandler:(OtherBodyContactHandler)greenFishContactHandler withPinkFishContactHandler:(OtherBodyContactHandler)pinkFishContactHandler withOrangeFishContactHandler:(OtherBodyContactHandler)orangeFishContactHandler withPlayerContactHandler:(OtherBodyContactHandler)playerContactHandler withOrangePlantContactHandler:(OtherBodyContactHandler)orangePlantContactHandler withPurplePlantContactHandler:(OtherBodyContactHandler)purplePlantContactHandler withGreenPlantContactHandler:(OtherBodyContactHandler)greenPlantContactHandler withEelContactHandler:(OtherBodyContactHandler)eelContactHandler withBlowfishContactHandler:(OtherBodyContactHandler)blowFishContactHandler withBarrierContactHandler:(OtherBodyContactHandler)barrierContactHandler withCollectibleContactHandler:(OtherBodyContactHandler)collectibleContactHandler{
    
    int32_t bodyACategoryBitmask = [[self bodyA] categoryBitMask];
    
    
    //Player Collision Logic
    
    return ^{
        
        SKPhysicsBody* referenceBody = ((bodyACategoryBitmask & referenceCategoryBitmask) > 0) ? [self bodyA] : [self bodyB];
        
        SKPhysicsBody* otherBodyRelativeToReferenceBody = ((bodyACategoryBitmask & referenceCategoryBitmask) > 0) ? [self bodyB] : [self bodyA];
        
        switch ([otherBodyRelativeToReferenceBody categoryBitMask]) {
            case RED_FISH_CATEGORY_BITMASK:
                redFishContactHandler(referenceBody);
            case BLUE_FISH_CATEGORY_BITMASK:
                blueFishContactHandler(referenceBody);
            case PINK_FISH_CATEGORY_BITMASK:
                pinkFishContactHandler(referenceBody);
            case ORANGE_FISH_CATEGORY_BITMASK:
                orangeFishContactHandler(referenceBody);
            case GREEN_FISH_CATEGORY_BITMASK:
                greenFishContactHandler(referenceBody);
            case PLAYER_CATEGORY_BITMASK:
                playerContactHandler(referenceBody);
            case COLLECTIBLE_CATEGORY_BITMASK:
                collectibleContactHandler(referenceBody);
            case BARRIER_CATEGORY_BITMASK:
                barrierContactHandler(referenceBody);
            case BLOWFISH_CATEGORY_BITMASK:
                blowFishContactHandler(referenceBody);
            case GREEN_PLANT_CATEGORY_BITMASK:
                greenPlantContactHandler(referenceBody);
            case ORANGE_PLANT_CATEGORY_BITMASK:
                orangeFishContactHandler(referenceBody);
            case PURPLE_PLANT_CATEGORY_BITMASK:
                purplePlantContactHandler(referenceBody);
            case EEL_CATEGORY_BITMASK:
                eelContactHandler(referenceBody);
            default:
                break;
        }
        
    };
    
}


@end

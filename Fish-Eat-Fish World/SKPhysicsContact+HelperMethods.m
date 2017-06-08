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

+(void) executeContactHandlersForContactObject: (SKPhysicsContact*) contact{
    
    ContactHandler playerContactHandler = [SKPhysicsContact getPlayerContactHandlerForContactObject:contact];
    
    ContactHandler blueFishContactHandler = [SKPhysicsContact getBlueFishContactHandlerForContactObject:contact];
    
    ContactHandler redFishContactHandler = [SKPhysicsContact getRedFishContactHandlerForContactObject:contact];
    
    ContactHandler pinkFishContactHandler = [SKPhysicsContact getPinkFishContactHandlerForContactObject:contact];
    
    ContactHandler greenFishContactHandler = [SKPhysicsContact getGreenFishContactHandlerForContactObject:contact];
    
    ContactHandler orangeFishContactHandler = [SKPhysicsContact getOrangeFishContactHandlerForContactObject:contact];
    
    playerContactHandler();
    
    blueFishContactHandler();
    redFishContactHandler();
    greenFishContactHandler();
    orangeFishContactHandler();
    pinkFishContactHandler();
}


+(NSArray<ContactHandler>*)allContactHandlersForContact:(SKPhysicsContact*)contact{
    
    return [NSArray arrayWithObjects:@[
    
    [SKPhysicsContact getPlayerContactHandlerForContactObject:contact],
    [SKPhysicsContact getRedFishContactHandlerForContactObject:contact],
    [SKPhysicsContact getBlueFishContactHandlerForContactObject:contact]
    
    ], nil];
}

+ (ContactHandler) contactHandlerForContact:(SKPhysicsContact*)contact withReferenceCategoryBitmask:(int32_t)referenceCategoryBitmask withRedFishContactHandler:(OtherBodyContactHandler)redFishContactHandler withBlueFishContactHandler:(OtherBodyContactHandler)blueFishContactHandler withGreenFishContactHandler:(OtherBodyContactHandler)greenFishContactHandler withPinkFishContactHandler:(OtherBodyContactHandler)pinkFishContactHandler withOrangeFishContactHandler:(OtherBodyContactHandler)orangeFishContactHandler withPlayerContactHandler:(OtherBodyContactHandler)playerContactHandler withOrangePlantContactHandler:(OtherBodyContactHandler)orangePlantContactHandler withPurplePlantContactHandler:(OtherBodyContactHandler)purplePlantContactHandler withGreenPlantContactHandler:(OtherBodyContactHandler)greenPlantContactHandler withEelContactHandler:(OtherBodyContactHandler)eelContactHandler withBlowfishContactHandler:(OtherBodyContactHandler)blowFishContactHandler withBarrierContactHandler:(OtherBodyContactHandler)barrierContactHandler withCollectibleContactHandler:(OtherBodyContactHandler)collectibleContactHandler{
        
    
    //Player Collision Logic
    
    return ^{
        
        int32_t bodyACategoryBitmask = [[contact bodyA] categoryBitMask];
        int32_t bodyBCategoryBitmask = [[contact bodyB] categoryBitMask];
        
        //If neither physics body has a category bitmask that matches that of the reference category bitmask, then exit the function
        
        if(!((bodyACategoryBitmask & referenceCategoryBitmask) > 0) && !((bodyBCategoryBitmask & referenceCategoryBitmask) > 0)){
            return;
        }
        
        
        SKPhysicsBody* referenceBody = ((bodyACategoryBitmask & referenceCategoryBitmask) > 0) ? [contact bodyA] : [contact bodyB];
        
        SKPhysicsBody* otherBodyRelativeToReferenceBody = ((bodyACategoryBitmask & referenceCategoryBitmask) > 0) ? [contact bodyB] : [contact bodyA];
        
        switch ([otherBodyRelativeToReferenceBody categoryBitMask]) {
            case RED_FISH_CATEGORY_BITMASK:
                redFishContactHandler(referenceBody);
                break;
            case BLUE_FISH_CATEGORY_BITMASK:
                blueFishContactHandler(referenceBody);
                break;
            case PINK_FISH_CATEGORY_BITMASK:
                pinkFishContactHandler(referenceBody);
                break;
            case ORANGE_FISH_CATEGORY_BITMASK:
                orangeFishContactHandler(referenceBody);
                break;
            case GREEN_FISH_CATEGORY_BITMASK:
                greenFishContactHandler(referenceBody);
                break;
            case PLAYER_CATEGORY_BITMASK:
                playerContactHandler(referenceBody);
                break;
            case COLLECTIBLE_CATEGORY_BITMASK:
                collectibleContactHandler(referenceBody);
                break;
            case BARRIER_CATEGORY_BITMASK:
                barrierContactHandler(referenceBody);
                break;
            case BLOWFISH_CATEGORY_BITMASK:
                blowFishContactHandler(referenceBody);
                break;
            case GREEN_PLANT_CATEGORY_BITMASK:
                greenPlantContactHandler(referenceBody);
                break;
            case ORANGE_PLANT_CATEGORY_BITMASK:
                orangeFishContactHandler(referenceBody);
                break;
            case PURPLE_PLANT_CATEGORY_BITMASK:
                purplePlantContactHandler(referenceBody);
                break;
            case EEL_CATEGORY_BITMASK:
                eelContactHandler(referenceBody);
                break;
            default:
                break;
        }
        
    };
}





+ (ContactHandler) getBlueFishContactHandlerForContactObject:(SKPhysicsContact*)contact{
    return [self contactHandlerWithReferenceCategoryBitmask:BLUE_FISH_CATEGORY_BITMASK forContact:contact
            
                                  withRedFishContactHandler:^(SKPhysicsBody*playerBody){
                                      NSLog(@"The physics body %@ has contacted the red fish", @"Blue Fish");
                                  }
            
                                 withBlueFishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the blue fish", @"Blue Fish");
                                 }
            
                                withGreenFishContactHandler:^(SKPhysicsBody*playerBody){
                                    NSLog(@"The physics body %@ has contacted the green fish", @"Blue Fish");
                                }
            
                                 withPinkFishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the pink fish", @"Blue Fish");
                                 }
            
                               withOrangeFishContactHandler:^(SKPhysicsBody*playerBody){
                                   NSLog(@"The physics body %@ has contacted the orange fish", @"Blue Fish");
                               }
            
                                   withPlayerContactHandler:^(SKPhysicsBody*playerBody){
                                       NSLog(@"The physics body %@ has contacted the player", @"Blue Fish");
                                   }
            
                              withOrangePlantContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the orange fish", @"Blue Fish");
                              }
            
                              withPurplePlantContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the purple plant", @"Blue Fish");
                                  
                              }
            
                               withGreenPlantContactHandler:^(SKPhysicsBody*playerBody){
                                   NSLog(@"The physics body %@ has contacted the green fish", @"Blue Fish");
                               }
            
                                      withEelContactHandler:^(SKPhysicsBody*playerBody){
                                          NSLog(@"The physics body %@ has contacted the eel", @"Blue Fish");
                                      }
            
                                 withBlowfishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the blowfish", @"Blue Fish");
                                 }
            
                                  withBarrierContactHandler:^(SKPhysicsBody*playerBody){
                                      NSLog(@"The physics body %@ has contacted the barrier fish", @"Blue Fish");
                                  }
            
                              withCollectibleContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the collectible", @"Blue Fish");
                                  
                              }
            ];
    
    
}




+ (ContactHandler) getRedFishContactHandlerForContactObject:(SKPhysicsContact*)contact{
    return [self contactHandlerWithReferenceCategoryBitmask:RED_FISH_CATEGORY_BITMASK forContact:contact
            
                                  withRedFishContactHandler:^(SKPhysicsBody*playerBody){
                                      NSLog(@"The physics body %@ has contacted the red fish", @"Red Fish");
                                  }
            
                                 withBlueFishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the blue fish", @"Red Fish");
                                 }
            
                                withGreenFishContactHandler:^(SKPhysicsBody*playerBody){
                                    NSLog(@"The physics body %@ has contacted the green fish", @"Red Fish");
                                }
            
                                 withPinkFishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the pink fish", @"Red Fish");
                                 }
            
                               withOrangeFishContactHandler:^(SKPhysicsBody*playerBody){
                                   NSLog(@"The physics body %@ has contacted the orange fish", @"Red Fish");
                               }
            
                                   withPlayerContactHandler:^(SKPhysicsBody*playerBody){
                                       NSLog(@"The physics body %@ has contacted the player", @"Red Fish");
                                   }
            
                              withOrangePlantContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the orange fish", @"Red Fish");
                              }
            
                              withPurplePlantContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the purple plant", @"Red Fish");
                                  
                              }
            
                               withGreenPlantContactHandler:^(SKPhysicsBody*playerBody){
                                   NSLog(@"The physics body %@ has contacted the green fish", @"Red Fish");
                               }
            
                                      withEelContactHandler:^(SKPhysicsBody*playerBody){
                                          NSLog(@"The physics body %@ has contacted the eel", @"Red Fish");
                                      }
            
                                 withBlowfishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the blowfish", @"Red Fish");
                                 }
            
                                  withBarrierContactHandler:^(SKPhysicsBody*playerBody){
                                      NSLog(@"The physics body %@ has contacted the barrier fish", @"Red Fish");
                                  }
            
                              withCollectibleContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the collectible", @"Red Fish");
                                  
                              }
            ];
    
    
}



+ (ContactHandler) getPinkFishContactHandlerForContactObject:(SKPhysicsContact*)contact{
    return [self contactHandlerWithReferenceCategoryBitmask:PINK_FISH_CATEGORY_BITMASK forContact:contact
            
                                  withRedFishContactHandler:^(SKPhysicsBody*playerBody){
                                      NSLog(@"The physics body %@ has contacted the red fish", @"Pink Fish");
                                  }
            
                                 withBlueFishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the blue fish", @"Pink Fish");
                                 }
            
                                withGreenFishContactHandler:^(SKPhysicsBody*playerBody){
                                    NSLog(@"The physics body %@ has contacted the green fish", @"Pink Fish");
                                }
            
                                 withPinkFishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the pink fish", @"Pink Fish");
                                 }
            
                               withOrangeFishContactHandler:^(SKPhysicsBody*playerBody){
                                   NSLog(@"The physics body %@ has contacted the orange fish", @"Pink Fish");
                               }
            
                                   withPlayerContactHandler:^(SKPhysicsBody*playerBody){
                                       NSLog(@"The physics body %@ has contacted the player", @"Pink Fish");
                                   }
            
                              withOrangePlantContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the orange fish", @"Pink Fish");
                              }
            
                              withPurplePlantContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the purple plant", @"Pink Fish");
                                  
                              }
            
                               withGreenPlantContactHandler:^(SKPhysicsBody*playerBody){
                                   NSLog(@"The physics body %@ has contacted the green fish", @"Pink Fish");
                               }
            
                                      withEelContactHandler:^(SKPhysicsBody*playerBody){
                                          NSLog(@"The physics body %@ has contacted the eel", @"Red Fish");
                                      }
            
                                 withBlowfishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the blowfish", @"Pink Fish");
                                 }
            
                                  withBarrierContactHandler:^(SKPhysicsBody*playerBody){
                                      NSLog(@"The physics body %@ has contacted the barrier fish", @"Pink Fish");
                                  }
            
                              withCollectibleContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the collectible", @"Pink Fish");
                                  
                              }
            ];
    
    
}



+ (ContactHandler) getOrangeFishContactHandlerForContactObject:(SKPhysicsContact*)contact{
    return [self contactHandlerWithReferenceCategoryBitmask:ORANGE_FISH_CATEGORY_BITMASK forContact:contact
            
                                  withRedFishContactHandler:^(SKPhysicsBody*playerBody){
                                      NSLog(@"The physics body %@ has contacted the red fish", @"Orange Fish");
                                  }
            
                                 withBlueFishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the blue fish", @"Orange Fish");
                                 }
            
                                withGreenFishContactHandler:^(SKPhysicsBody*playerBody){
                                    NSLog(@"The physics body %@ has contacted the green fish", @"Orange Fish");
                                }
            
                                 withPinkFishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the pink fish", @"Orange Fish");
                                 }
            
                               withOrangeFishContactHandler:^(SKPhysicsBody*playerBody){
                                   NSLog(@"The physics body %@ has contacted the orange fish", @"Orange Fish");
                               }
            
                                   withPlayerContactHandler:^(SKPhysicsBody*playerBody){
                                       NSLog(@"The physics body %@ has contacted the player", @"Orange Fish");
                                   }
            
                              withOrangePlantContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the orange fish", @"Orange Fish");
                              }
            
                              withPurplePlantContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the purple plant", @"Orange Fish");
                                  
                              }
            
                               withGreenPlantContactHandler:^(SKPhysicsBody*playerBody){
                                   NSLog(@"The physics body %@ has contacted the green fish", @"Orange Fish");
                               }
            
                                      withEelContactHandler:^(SKPhysicsBody*playerBody){
                                          NSLog(@"The physics body %@ has contacted the eel", @"Red Fish");
                                      }
            
                                 withBlowfishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the blowfish", @"Orange Fish");
                                 }
            
                                  withBarrierContactHandler:^(SKPhysicsBody*playerBody){
                                      NSLog(@"The physics body %@ has contacted the barrier fish", @"Orange Fish");
                                  }
            
                              withCollectibleContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the collectible", @"Orange Fish");
                                  
                              }
            ];
    
    
}


+ (ContactHandler) getGreenFishContactHandlerForContactObject:(SKPhysicsContact*)contact{
    return [self contactHandlerWithReferenceCategoryBitmask:GREEN_FISH_CATEGORY_BITMASK forContact:contact
            
                                  withRedFishContactHandler:^(SKPhysicsBody*playerBody){
                                      NSLog(@"The physics body %@ has contacted the red fish", @"Green Fish");
                                  }
            
                                 withBlueFishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the blue fish", @"Green Fish");
                                 }
            
                                withGreenFishContactHandler:^(SKPhysicsBody*playerBody){
                                    NSLog(@"The physics body %@ has contacted the green fish", @"Green Fish");
                                }
            
                                 withPinkFishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the pink fish", @"Green Fish");
                                 }
            
                               withOrangeFishContactHandler:^(SKPhysicsBody*playerBody){
                                   NSLog(@"The physics body %@ has contacted the orange fish", @"Green Fish");
                               }
            
                                   withPlayerContactHandler:^(SKPhysicsBody*playerBody){
                                       NSLog(@"The physics body %@ has contacted the player", @"Green Fish");
                                   }
            
                              withOrangePlantContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the orange fish", @"Green Fish");
                              }
            
                              withPurplePlantContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the purple plant", @"Green Fish");
                                  
                              }
            
                               withGreenPlantContactHandler:^(SKPhysicsBody*playerBody){
                                   NSLog(@"The physics body %@ has contacted the green fish", @"Green Fish");
                               }
            
                                      withEelContactHandler:^(SKPhysicsBody*playerBody){
                                          NSLog(@"The physics body %@ has contacted the eel", @"Green Fish");
                                      }
            
                                 withBlowfishContactHandler:^(SKPhysicsBody*playerBody){
                                     NSLog(@"The physics body %@ has contacted the blowfish", @"Green Fish");
                                 }
            
                                  withBarrierContactHandler:^(SKPhysicsBody*playerBody){
                                      NSLog(@"The physics body %@ has contacted the barrier fish", @"Green Fish");
                                  }
            
                              withCollectibleContactHandler:^(SKPhysicsBody*playerBody){
                                  NSLog(@"The physics body %@ has contacted the collectible", @"Green Fish");
                                  
                              }
            ];
    
    
}





+ (ContactHandler) getPlayerContactHandlerForContactObject:(SKPhysicsContact*)contact{
    return [SKPhysicsContact contactHandlerWithReferenceCategoryBitmask:PLAYER_CATEGORY_BITMASK forContact:contact
                                                                                     
        withRedFishContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the red fish", @"player");
            }
                                                                                     
        withBlueFishContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the blue fish", @"player");
            }
                                                                                     
        withGreenFishContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the green fish", @"player");
            }
            
        withPinkFishContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the pink fish", @"player");
            }
        
        withOrangeFishContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the orange fish", @"player");
            }
        
        withPlayerContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the player", @"player");
            }
        
        withOrangePlantContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the orange fish", @"player");
            }
        
        withPurplePlantContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the purple plant", @"player");
                                                                                                              
            }
       
        withGreenPlantContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the green fish", @"player");
            }
    
        withEelContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the eel", @"player");
            }
            
        withBlowfishContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the blowfish", @"player");
        }
        
        withBarrierContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the barrier fish", @"player");
        }
                                                                                     
        withCollectibleContactHandler:^(SKPhysicsBody*playerBody){
            NSLog(@"The physics body %@ has contacted the collectible", @"player");
                                                                                                              
        }
    ];
            
    
}

+ (ContactHandler) contactHandlerWithReferenceCategoryBitmask:(int32_t)referenceCategoryBitmask forContact:(SKPhysicsContact*)contact withRedFishContactHandler:(OtherBodyContactHandler)redFishContactHandler withBlueFishContactHandler:(OtherBodyContactHandler)blueFishContactHandler withGreenFishContactHandler:(OtherBodyContactHandler)greenFishContactHandler withPinkFishContactHandler:(OtherBodyContactHandler)pinkFishContactHandler withOrangeFishContactHandler:(OtherBodyContactHandler)orangeFishContactHandler withPlayerContactHandler:(OtherBodyContactHandler)playerContactHandler withOrangePlantContactHandler:(OtherBodyContactHandler)orangePlantContactHandler withPurplePlantContactHandler:(OtherBodyContactHandler)purplePlantContactHandler withGreenPlantContactHandler:(OtherBodyContactHandler)greenPlantContactHandler withEelContactHandler:(OtherBodyContactHandler)eelContactHandler withBlowfishContactHandler:(OtherBodyContactHandler)blowFishContactHandler withBarrierContactHandler:(OtherBodyContactHandler)barrierContactHandler withCollectibleContactHandler:(OtherBodyContactHandler)collectibleContactHandler{
    
    
    
    //Player Collision Logic
    
    return ^{
        
        int32_t bodyACategoryBitmask = [[contact bodyA] categoryBitMask];
        int32_t bodyBCategoryBitmask = [[contact bodyB] categoryBitMask];
        
        //If neither physics body has a category bitmask that matches that of the reference category bitmask, then exit the function
        
        if(!((bodyACategoryBitmask & referenceCategoryBitmask) > 0) && !((bodyBCategoryBitmask & referenceCategoryBitmask) > 0)){
            return;
        }
        
        SKPhysicsBody* referenceBody = ((bodyACategoryBitmask & referenceCategoryBitmask) > 0) ? [contact bodyA] : [contact bodyB];
        
        SKPhysicsBody* otherBodyRelativeToReferenceBody = ((bodyACategoryBitmask & referenceCategoryBitmask) > 0) ? [contact bodyB] : [contact bodyA];
        
        switch ([otherBodyRelativeToReferenceBody categoryBitMask]) {
            case RED_FISH_CATEGORY_BITMASK:
                redFishContactHandler(referenceBody);
                break;
            case BLUE_FISH_CATEGORY_BITMASK:
                blueFishContactHandler(referenceBody);
                break;
            case PINK_FISH_CATEGORY_BITMASK:
                pinkFishContactHandler(referenceBody);
                break;
            case ORANGE_FISH_CATEGORY_BITMASK:
                orangeFishContactHandler(referenceBody);
                break;
            case GREEN_FISH_CATEGORY_BITMASK:
                greenFishContactHandler(referenceBody);
                break;
            case PLAYER_CATEGORY_BITMASK:
                playerContactHandler(referenceBody);
                break;
            case COLLECTIBLE_CATEGORY_BITMASK:
                collectibleContactHandler(referenceBody);
                break;
            case BARRIER_CATEGORY_BITMASK:
                barrierContactHandler(referenceBody);
                break;
            case BLOWFISH_CATEGORY_BITMASK:
                blowFishContactHandler(referenceBody);
                break;
            case GREEN_PLANT_CATEGORY_BITMASK:
                greenPlantContactHandler(referenceBody);
                break;
            case ORANGE_PLANT_CATEGORY_BITMASK:
                orangeFishContactHandler(referenceBody);
                break;
            case PURPLE_PLANT_CATEGORY_BITMASK:
                purplePlantContactHandler(referenceBody);
                break;
            case EEL_CATEGORY_BITMASK:
                eelContactHandler(referenceBody);
                break;
            default:
                break;
        }
        
    };
    
}


@end

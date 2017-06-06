//
//  InputControlType.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/5/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#ifndef InputControlType_h
#define InputControlType_h

typedef enum : NSUInteger {
    ShadedLightRoundSmallArrow,
    ShadedLightRoundBigArrow,
    ShadedLightSquareLargeDot,
    ShadedLightSquareSmallDot,
    ShadedLightCrossLargeDot,
    ShadedLightCrossSmallDot
} InputControlType;


#define INPUT_CONTROL_TYPES @[@"Lightly Shaded Round (Small Arrow)",@"Lightly Shaded Round (Big Arrow)",@"Lightly Shaded Square (Large Dot)",@"Lightly Shaded Square (Small Dot)",@"Lightly Shaded Cross (Large Dot)",@"Lightly Shaded Cross (Small Dot)"]

#define INPUT_CONTROL_FILENAMES @[@0:@"shadedLight07",@1:@"shadedLight01",@2:@"shadedLight02",@3:@"shadedLight02",@4:@"shadedLight08",@5:@"shadedLight04",@6:@"shadedLight09"]


#endif /* InputControlType_h */

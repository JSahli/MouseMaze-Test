//
//  Mouse.h
//  MouseMazeTest
//
//  Created by Jesse Sahli on 7/28/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PathPoint.h"

@interface Mouse : NSObject

@property PathPoint *currentPoint;
@property PathPoint *previousPoint;


- (void)makeNextMove;



@end

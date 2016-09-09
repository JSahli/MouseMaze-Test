//
//  PathPoint.h
//  MouseMazeTest
//
//  Created by Jesse Sahli on 7/28/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PathPoint : NSObject

@property NSMutableArray<PathPoint *> *connectedPoints;
@property BOOL isEndPoint;
@property NSString *name; //for debugging

- (instancetype)initWithName: (NSString*) name;

@end

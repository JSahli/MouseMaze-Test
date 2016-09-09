//
//  PathPoint.m
//  MouseMazeTest
//
//  Created by Jesse Sahli on 7/28/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import "PathPoint.h"

@implementation PathPoint

- (instancetype)initWithName: (NSString*) name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}


@end

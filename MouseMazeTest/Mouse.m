//
//  Mouse.m
//  MouseMazeTest
//
//  Created by Jesse Sahli on 7/28/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import "Mouse.h"

@implementation Mouse

-(void)makeNextMove {

    int randomChoice = arc4random_uniform(24) % 2;
    PathPoint *currentPoint = self.currentPoint;

    NSMutableArray *choiceArray = [[NSMutableArray alloc]initWithArray:currentPoint.connectedPoints];
    
    if (choiceArray.count == 1) {
        //do nothing
    } else {
        [choiceArray removeObject:self.previousPoint];
        self.previousPoint = self.currentPoint;
        self.currentPoint = choiceArray[randomChoice];
    }
    
}


@end

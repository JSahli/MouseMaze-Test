//
//  main.m
//  MouseMazeTest
//
//  Created by Jesse Sahli on 7/28/16.
//  Copyright © 2016 sahlitude. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PathPoint.h"
#import "Mouse.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        PathPoint *a = [[PathPoint alloc]initWithName:@"a"];
        PathPoint *b = [[PathPoint alloc]initWithName:@"b"];
        PathPoint *one = [[PathPoint alloc]initWithName:@"one"];
        PathPoint *two = [[PathPoint alloc]initWithName:@"two"];
        PathPoint *three = [[PathPoint alloc]initWithName:@"three"];
        PathPoint *four = [[PathPoint alloc]initWithName:@"four"];
        
        a.connectedPoints = [[NSMutableArray alloc] initWithObjects:one, nil];
        one.connectedPoints = [[NSMutableArray alloc] initWithObjects:a, two, four, nil];
        two.connectedPoints = [[NSMutableArray alloc] initWithObjects:one, three, four, nil];
        three.connectedPoints = [[NSMutableArray alloc] initWithObjects:two, b, four, nil];
        four.connectedPoints = [[NSMutableArray alloc] initWithObjects:three, two, one, nil];
        b.connectedPoints = [[NSMutableArray alloc] initWithObjects:three, nil];
        
        a.isEndPoint = YES;
        b.isEndPoint = YES;
        
        int aFinish = 0;
        int bFinish = 0;
        
        for (int i = 0; i < 100000; i++) {
            
            Mouse *theMouse = [[Mouse alloc]init];
            theMouse.currentPoint = one;
            theMouse.previousPoint = a;
            
            while (theMouse.currentPoint.isEndPoint == NO) {
                [theMouse makeNextMove];
            }
            
            if(theMouse.currentPoint == a){
                aFinish++;
            } else {
                bFinish++;
            }
        }
        
        NSLog(@"There were %d point A exits and %d point B exits", aFinish, bFinish);
        NSLog(@"The mouse exits at point B %f percent of the time and exits at point A %f percent of the time", ((double)bFinish / (aFinish + bFinish) * 100), ((double)aFinish / (aFinish + bFinish)) * 100);
        
    }
    return 0;
}

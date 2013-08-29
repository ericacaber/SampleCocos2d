//
//  MTPlayfieldScene.m
//  Memory Game
//
//  Created by Erica Caber on 8/27/13.
//  Copyright 2013 Erica Caber. All rights reserved.
//

#import "MTPlayfieldScene.h"
#import "MTPlayfieldLayer.h"

@implementation MTPlayfieldScene

+(id)sceneWithRows:(NSInteger)numRows andColumns:(NSInteger)numCols {
    
    return [[[self alloc] sceneWithRows:numRows
                             andColumns:numCols]autorelease];
}

-(id)sceneWithRows: (NSInteger)numRows andColumns: (NSInteger)numCols {
    
    if ((self=[super init])) {
        MTPlayfieldLayer *layer = [MTPlayfieldLayer layerWithRows:numRows
                                                       andColumns:numCols];
        
        [self addChild:layer];
    }
    return self;
}

@end

//
//  MTMenuScene.m
//  Memory Game
//
//  Created by Erica Caber on 8/27/13.
//  Copyright 2013 Erica Caber. All rights reserved.
//

#import "MTMenuScene.h"


@implementation MTMenuScene

+(id)scene {
    return ( [[[self alloc] init] autorelease] );
}

-(id)init{
    if ( (self=[super init])) {
        MTMenuLayer *layer = [MTMenuLayer node];
        [self addChild:layer];
    }
    return self;
}

@end

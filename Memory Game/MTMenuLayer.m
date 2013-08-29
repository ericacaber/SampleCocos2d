//
//  MTMenuLayer.m
//  Memory Game
//
//  Created by Erica Caber on 8/27/13.
//  Copyright 2013 Erica Caber. All rights reserved.
//

#import "MTMenuLayer.h"
#import "MTPlayfieldScene.h"

@implementation MTMenuLayer

-(void)startGameEasy{
    [[CCDirector sharedDirector]replaceScene:[MTPlayfieldScene sceneWithRows:2 andColumns:2]];
}

-(void)startGameMedium{
    [[CCDirector sharedDirector]replaceScene:[MTPlayfieldScene sceneWithRows:3 andColumns:4]];
}

-(void)startGameHard{
    [[CCDirector sharedDirector]replaceScene:[MTPlayfieldScene sceneWithRows:4 andColumns:5]];
}
@end

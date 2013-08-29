//
//  MTPlayfieldLayer.h
//  Memory Game
//
//  Created by Erica Caber on 8/29/13.
//  Copyright 2013 Erica Caber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "SimpleAudioEngine.h"
#import "MTMenuScene.h"

@interface MTPlayfieldLayer : CCLayer {
    
    CGSize size;
    
    CCSpriteBatchNode *memorysheet;
    
    CGSize tileSize;
    
    NSMutableArray *tilesAvailable;
    NSMutableArray *tilesInPlay;
    NSMutableArray *tilesSelected;
    
    CCSprite *backButton;
    
    NSInteger maxTiles;
    
    float boardWidth;
    float boardHeight;
    
    NSInteger boardRows;
    NSInteger boardColumns;
    
    NSInteger boardOffsetX;
    NSInteger boardOffsetY;
    
    NSInteger padWidth;
    NSInteger padHeight;
    
    NSInteger playerScore;
    CCLabelTTF *playerScoreDisplay;
    
    NSInteger livesRemaining;
    CCLabelTTF *livesRemainingDisplay;
    BOOL isGameOver;
}

+(id)layerWithRows:(NSInteger)numRows andColumns:(NSInteger)numCols;

@end

//
//  MTPlayfieldLayer.m
//  Memory Game
//
//  Created by Erica Caber on 8/29/13.
//  Copyright 2013 Erica Caber. All rights reserved.
//

#import "MTPlayfieldLayer.h"
#import "MTMemoryTile.h"

@implementation MTPlayfieldLayer

+(id)layerWithRows:(NSInteger)numRows andColumns:(NSInteger)numCols{
    
    return [[[self alloc] initWithRows:numRows andColumns: numCols] autorelease];
}
-(id) initWithRows:(NSInteger)numRows
        andColumns:(NSInteger)numCols {
    
    if (self == [super init]) {
        
        //self.isTouchEnabled = YES;
        
        size = [[CCDirector sharedDirector] winSize];
        
        [self preloadEffects];
        
        [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"memorysheet.plist"];
        
        memorysheet = [CCSpriteBatchNode batchNodeWithFile:@"memorysheet.png"];
        
        [self addChild:memorysheet];
        
        backButton = [CCSprite spriteWithSpriteFrameName:@"backbutton.png"];
        [backButton setAnchorPoint:ccp(1, 0)];
        [backButton setPosition:ccp(size.width - 10, 10)];
        [memorysheet addChild:backButton];
        
        boardWidth = 400;
        boardHeight = 320;
        
        if ((boardRows * boardColumns) % 2) {
            boardRows--;
        }
        
        maxTiles = (boardRows * boardColumns) / 2;
        
        padWidth = 10;
        padWidth = 10;
        
        float tileWidth = ((boardWidth - (boardColumns * padWidth))/ boardColumns) - padWidth;
        
        float tileHeight = ((boardHeight - (boardRows * padHeight))/ boardRows) - padHeight;
        
        if (tileWidth > tileHeight) {
            tileWidth = tileHeight;
        } else {
            tileHeight = tileWidth;
        }
        
        tileSize = CGSizeMake(tileWidth, tileHeight);
        
        boardOffsetX = (boardWidth - ((tileSize.width + padWidth) * boardColumns))/2;
        boardOffsetY = (boardHeight - (tileSize.height + padHeight) * boardRows)/2;
        
        playerScore = 0;
        
        tilesAvailable = [[NSMutableArray alloc] initWithCapacity:maxTiles];
        tilesInPlay = [[NSMutableArray alloc]initWithCapacity:maxTiles];
        tilesSelected = [[NSMutableArray alloc] initWithCapacity:2];
        
        [self acquireMemoryTiles];
        
        [self generateTileGrid];
        
        [self calculateLivesRemaining];
        
        [self generateScoreAndLivesDisplay];
    }
    
    return self;

}

-(void)acquireMemoryTiles {
    
    for (int cnt = 1; cnt <= maxTiles; cnt++) {
        for (NSInteger tileNo = 1; tileNo <= 2; tileNo++) {
            NSString *imageName = [NSString stringWithFormat:@"tile%i.png", cnt];
            
            MTMemoryTile *newTile = [MTMemoryTile spriteWithSpriteFrameName:imageName];
            
            [newTile setFaceSpriteName:imageName];
            
            [newTile showBack];
            
            [tilesAvailable addObject:newTile];
        }
    }
}
-(void)dealloc{
    [tilesAvailable release];
    [tilesInPlay release];
    [tilesSelected release];
    [super dealloc];
}
@end

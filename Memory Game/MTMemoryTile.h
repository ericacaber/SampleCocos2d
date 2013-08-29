//
//  MTMemoryTile.h
//  Memory Game
//
//  Created by Erica Caber on 8/29/13.
//  Copyright 2013 Erica Caber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "SimpleAudioEngine.h"

@interface MTMemoryTile : CCSprite {
    NSInteger _tileRow;
    NSInteger _tileColumn;
    
    NSString *_faceSpriteName;
    
}

@property (nonatomic, assign) NSInteger tileRow;
@property (nonatomic, assign) NSInteger tileColumn;
@property (nonatomic, assign) BOOL isFaceUp;
@property (nonatomic, retain) NSString *faceSpriteName;

-(void)showFace;
-(void)showBack;
-(void)flipTile;
-(BOOL)containsTouchLocation:(CGPoint)pos;

@end

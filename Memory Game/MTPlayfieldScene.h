//
//  MTPlayfieldScene.h
//  Memory Game
//
//  Created by Erica Caber on 8/27/13.
//  Copyright 2013 Erica Caber. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface MTPlayfieldScene : CCScene {
    
}
+(id)sceneWithRows:(NSInteger)numRows andColumns:(NSInteger)numCols;
@end

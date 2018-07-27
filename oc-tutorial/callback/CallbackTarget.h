//
//  BNRLogger.h Target-action
//  oc-tutorial
//
//  Created by Li Meng on 2018/7/27.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CallbackTarget : NSObject
@property (nonatomic) NSDate *lastTime;
-(NSString *)lastTimeString;
-(void)updateLastTime:(NSTimer *)t;
@end

//
//  BNRLogger.m
//  oc-tutorial
//
//  Created by Li Meng on 2018/7/27.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import "CallbackTarget.h"

@implementation CallbackTarget
-(NSString *)lastTimeString{
    static NSDateFormatter *dateFormatter = nil;
    if(!dateFormatter){
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    return [dateFormatter stringFromDate:self.lastTime];
}

-(void)updateLastTime:(NSTimer *)t{
    NSDate *now = [NSDate date];
    [self setLastTime:now];
    NSLog(@"Just set time to %@", self.lastTimeString);
}
@end

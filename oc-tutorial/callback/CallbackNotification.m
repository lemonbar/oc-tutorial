//
//  CallbackNotification.m
//  oc-tutorial
//
//  Created by Li Meng on 2018/7/27.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import "CallbackNotification.h"

@implementation CallbackNotification
-(void)zoneChange:(NSNotification *)note{
    NSLog(@"The system time zone has changed");
}
@end

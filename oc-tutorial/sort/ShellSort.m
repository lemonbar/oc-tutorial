//
//  ShellSort.m
//  oc-tutorial
//
//  Created by Li Meng on 2018/7/27.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import "ShellSort.h"

@interface ShellSort()
-(void)print;
@end

@implementation ShellSort
-(void)print{
   NSLog(@"%@",list);
}

-(void)sort{
    [self print];
    
    NSUInteger count = list.count;
    int h = 0;
    while (h<count/3) {
        h=h*3+1;
    }
    
    int exchangeTime = 0;
    while (h>0) {
        for (int i=h; i<count; i++) {
            for (int j=i; j>=h; j=j-h) {
                if([list[j-h] compare:list[j]] == NSOrderedDescending){
                    [list exchangeObjectAtIndex:j withObjectAtIndex:j-h];
                    exchangeTime++;
                }
            }
            [self print];
        }
        h=h/3;
    }
    NSLog(@"exchange %d times",exchangeTime);
}
@end

//
//  InsertionSort.m
//  oc-tutorial
//
//  Created by Li Meng on 2018/7/24.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import "InsertionSort.h"

@interface InsertionSort()
-(void)print;
@end

@implementation InsertionSort

-(id)initWithArray:(NSArray *)array
{
    if(self = [super init]){
        list = [NSMutableArray arrayWithArray:array];
    }
    return self;
}

-(void)print{
    NSLog(@"%@",list);
}

/**
 * 20,5,3,13
 * 20,5,3,13
 * 5,20,3,13
 * 3,5,20,13
 * 3,5,13,20
 **/
-(void)sort{
    [self print];
    if(list != nil && list.count>0){
        for (int i=0; i<list.count; i++) {
            int j=i;
            while (j>0 && [list[j-1] compare:list[j]] == NSOrderedDescending) {
                [list exchangeObjectAtIndex:j-1 withObjectAtIndex:j];
                j--;
            }
            [self print];
        }
    }
}

@end

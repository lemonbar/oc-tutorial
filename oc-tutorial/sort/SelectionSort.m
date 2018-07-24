//
//  SelectionSort.m
//  oc-tutorial
//
//  Created by Li Meng on 2018/7/24.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import "SelectionSort.h"

@interface SelectionSort()
-(void)print;
@end

@implementation SelectionSort

-(id)init
{
    if(self=[super init])
    {
        list = [NSMutableArray arrayWithCapacity:5];
    }
    return self;
}

-(void)print{
    NSLog(@"%@",list);
}

-(id)initWithArray:(NSArray *)array{
    if(self=[super init]){
        list = [NSMutableArray arrayWithArray:array];
    }
    return self;
}

/**
 * 20,5,3,13
 * 3,5,20,13
 * 3,5,20,13
 * 3,5,13,20
 * 3,5,13,20
 **/
-(void)sort{
    [self print];
    
    for (int i=0; i<list.count; i++) {
        int min = i;
        for (int j=i+1; j<list.count; j++) {
            if(list[j] < list[min]){
                min = j;
            }
        }
        [list exchangeObjectAtIndex:i withObjectAtIndex:min];
        
        [self print];
    }
}

@end

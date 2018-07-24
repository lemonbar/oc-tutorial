//
//  BubbleSort.m
//  oc-tutorial
//
//  Created by Li Meng on 2018/7/24.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import "BubbleSort.h"

@interface BubbleSort()
-(void)print;
@end

@implementation BubbleSort
-(id)initWithArray:(NSArray *)array
{
    if(self=[super init]){
        mArray=[NSMutableArray arrayWithArray:array];
    }
    return self;
}

/**
 * 20,5,3,13
 * 5,3,13,20
 * 3,5,13,20
 * 3,5,13,20
 * 3,5,13,20
 **/
-(void)sort{
    [self print];
    
    if(mArray.count>0){
        for (int i=0; i<mArray.count; i++) {
            for (int j=1; j<mArray.count-i; j++) {
                if([mArray[j-1] compare:mArray[j]] == NSOrderedDescending){
                    [mArray exchangeObjectAtIndex:j-1 withObjectAtIndex:j];
                }
            }
            [self print];
        }
    }
}

-(void)print{
    NSLog(@"%@",mArray);
}
@end

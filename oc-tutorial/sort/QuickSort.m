//
//  QuickSort.m
//  oc-tutorial
//
//  Created by Li Meng on 2018/8/7.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort

-(id)initWithArray:(NSArray *)array{
    if(self = [super init]){
        mArray = [NSMutableArray arrayWithArray:array];
    }
    return self;
}

-(void)sort{
    NSLog(@"%@",mArray);
    [self sort:0 :mArray.count-1];
    NSLog(@"%@",mArray);
}

-(void)sort:(int)left:(int)right{
    NSLog(@"left: %d, right: %d",left,right);
    if(left >= right)return;
    int i=left,j=right;
    int c=i;
    NSNumber *cn = mArray[c];
    i += 1;
    while (i<=j) {
        while (mArray[i] < cn && i<=j) {
            i++;
        }
        while (mArray[j] > cn && i<=j) {
            j--;
        }
        if(i<j){
            [mArray exchangeObjectAtIndex:i++ withObjectAtIndex:j--];
            NSLog(@"%@",mArray);
        }
    }
    [mArray exchangeObjectAtIndex:c withObjectAtIndex:j];
    NSLog(@"cursor: %d, border: %d",c,i);
    NSLog(@"%@",mArray);
    [self sort:left :j-1];
    [self sort:j+1 :right];
}

@end

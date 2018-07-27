//
//  MergeSort.m
//  oc-tutorial
//
//  Created by Li Meng on 2018/7/27.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import "MergeSort.h"

@interface MergeSort()
-(void)print;
@end

@implementation MergeSort
-(void)sort{
    [self print];
    mArray = [NSMutableArray arrayWithArray:[self arrayMergeSort:mArray]];
    [self print];
}

-(NSArray *)arrayMergeSort:(NSArray *)targetArray{
    if(targetArray.count<2)
        return [NSMutableArray arrayWithArray:targetArray];
    long midIndex = targetArray.count/2;
    
    NSArray *arrayLeft = [targetArray subarrayWithRange:NSMakeRange(0,midIndex)];
    NSArray *arrayRight = [targetArray subarrayWithRange:NSMakeRange(midIndex, targetArray.count-midIndex)];
    
    return [self arrayMerge:[self arrayMergeSort:arrayLeft] :[self arrayMergeSort:arrayRight]];
}

-(NSArray *)arrayMerge:(NSArray *)arrayLeft :(NSArray *)arrayRight{
    NSMutableArray *resultArray = [[NSMutableArray alloc] init];
    
    int i=0,j=0;
    
    while (i < arrayLeft.count && j < arrayRight.count) {
        [resultArray addObject:([arrayLeft[i] intValue] < [arrayRight[j] intValue]) ? arrayLeft[i++] : arrayRight[j++]];
    }
    while(i<arrayLeft.count){
        [resultArray addObject:arrayLeft[i++]];
    }
    while (j<arrayRight.count) {
        [resultArray addObject:arrayRight[j++]];
    }
    return resultArray;
}
-(id)initWithArray:(NSArray *)array{
    if(self = [super init]){
        mArray = [NSMutableArray arrayWithArray:array];
    }
    return self;
}
-(void)print{
    NSLog(@"%@",mArray);
}
@end

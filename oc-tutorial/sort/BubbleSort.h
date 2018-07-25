//
//  BubbleSort.h
//  oc-tutorial
//
//  Created by Li Meng on 2018/7/24.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sort.h"

@interface BubbleSort : NSObject <Sort>
{
    NSMutableArray *mArray;
}

-(id)initWithArray:(NSArray *)array;

@end

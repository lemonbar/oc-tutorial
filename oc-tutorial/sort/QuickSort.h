//
//  QuickSort.h
//  oc-tutorial
//
//  Created by Li Meng on 2018/8/7.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sort.h"

@interface QuickSort : NSObject<Sort>
{
    NSMutableArray *mArray;
}
-(id)initWithArray:(NSArray *)array;

@end

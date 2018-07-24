//
//  SelectionSort.h
//  oc-tutorial
//
//  Created by Li Meng on 2018/7/24.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SelectionSort : NSObject
{
    NSMutableArray *list;
}

-(id)initWithArray:(NSArray *)array;
-(void)sort;

@end

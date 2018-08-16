//
//  BST.m
//  oc-tutorial
//
//  Created by Li Meng on 2018/8/16.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import "BST.h"

@interface BST()

@end

@implementation BST

-(instancetype)initWithArray:(NSArray *)array
{
    self = [super init];
    if (self) {
        for (int i=0; i<array.count; i++) {
            int value = [array[i] intValue];
            root = [self insert:value inNode:root];
        }
    }
    return self;
}

-(Node *)insert:(int) key inNode:(Node *)node
{
    if (node == nil) {
        node = [[Node alloc] init];
        node.key = key;
    }else{
        if (node.key > key) {
            node.left = [self insert:key inNode:node.left];
        }else{
            node.right = [self insert:key inNode:node.right];
        }
    }
    return node;
}

-(Node *)getRoot{
    return root;
}

@end

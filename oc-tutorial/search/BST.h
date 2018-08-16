//
//  BST.h
//  oc-tutorial
//
//  Created by Li Meng on 2018/8/16.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface BST : NSObject
{
    Node *root;
}
-(instancetype)initWithArray:(NSArray *)array;
-(Node *)getRoot;

@end

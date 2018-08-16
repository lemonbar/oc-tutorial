//
//  Node.h
//  oc-tutorial
//
//  Created by Li Meng on 2018/8/16.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (nonatomic, assign) int key;
@property (nonatomic, copy) NSString *value;
@property (nonatomic, strong) Node *left;
@property (nonatomic, strong) Node *right;

@end

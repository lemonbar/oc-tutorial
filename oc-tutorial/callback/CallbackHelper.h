//
//  CallbackHelper.h
//  oc-tutorial
//
//  Created by Li Meng on 2018/7/27.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CallbackHelper : NSObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate>
{
    NSMutableData *_incomingData;
}

@end

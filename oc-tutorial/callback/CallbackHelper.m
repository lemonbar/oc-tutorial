//
//  CallbackHelper.m
//  oc-tutorial
//
//  Created by Li Meng on 2018/7/27.
//  Copyright © 2018年 Li Meng. All rights reserved.
//

#import "CallbackHelper.h"

@implementation CallbackHelper

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    NSLog(@"received %lu bytes", [data length]);
    
    if(!_incomingData){
        _incomingData = [[NSMutableData alloc] init];
    }
    
    [_incomingData appendData:data];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSLog(@"Got it all");
    NSString *string = [[NSString alloc] initWithData:_incomingData encoding:NSUTF8StringEncoding];
    _incomingData = nil;
    NSLog(@"string has %lu characters",[string length]);
    
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

@end

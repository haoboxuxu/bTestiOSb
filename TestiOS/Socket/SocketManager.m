//
//  SocketManager.m
//  TestiOS
//
//  Created by haoboxx on 2023/4/17.
//

#import "SocketManager.h"

@implementation SocketManager

+ (SocketManager *)sharedSocketManager {
    static SocketManager *socket = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        socket = [[SocketManager alloc] init];
    });
    return socket;
}

@end

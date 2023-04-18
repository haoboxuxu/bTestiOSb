//
//  SocketManager.h
//  TestiOS
//
//  Created by haoboxx on 2023/4/17.
//

#import <Foundation/Foundation.h>
#import <GCDAsyncSocket.h>

NS_ASSUME_NONNULL_BEGIN

@interface SocketManager : NSObject

+ (SocketManager *)sharedSocketManager;

@property (strong, nonatomic) GCDAsyncSocket * mySocket;

@end

NS_ASSUME_NONNULL_END

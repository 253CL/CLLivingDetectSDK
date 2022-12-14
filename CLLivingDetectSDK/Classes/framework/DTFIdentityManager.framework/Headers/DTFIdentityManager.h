//
//  DTFIdentityManager.h
//  DTFIdentityManager
//
//  Created by mengbingchuan on 2022/11/23.
//  Copyright © 2022 Alipay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZimRpcManager.h"

//version 2.2.0

@class ZIMResponse;

NS_ASSUME_NONNULL_BEGIN

typedef void (^ZIMCallback)(ZIMResponse *response);

@interface DTFIdentityManager : NSObject

+ (DTFIdentityManager *)sharedInstance;

+ (NSDictionary *)getMetaInfo;

- (void)setRpcProxy:(id<DTFRPCProxyProtocol>)proxy;

- (void)verifyWith:(NSString *)zimId extParams:(NSDictionary *)params onCompletion:(ZIMCallback)callback;

@end

NS_ASSUME_NONNULL_END

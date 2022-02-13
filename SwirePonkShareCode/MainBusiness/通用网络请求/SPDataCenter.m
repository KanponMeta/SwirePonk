//
//  SPDataCenter.m
//  SwirePonk
//
//  Created by  xupengfei on 2022/2/12.
//

#import "SPDataCenter.h"
#import <AFNetWorking/AFNetworking.h>


@interface SPDataCenter ()
@property (nonatomic, strong) AFHTTPSessionManager *manager;
@end

@implementation SPDataCenter

+ (instancetype)shareCenter {
    static SPDataCenter *_shareCenter;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shareCenter = [[SPDataCenter alloc] init];
        _shareCenter.manager = [AFHTTPSessionManager manager];
    });
    
    return _shareCenter;
}

- (void)sendGetUrl:(NSString *)url success:(successBlock)successBlock fail:(failBlock)failBlock {
    [self.manager GET:url parameters:nil headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            if ([responseObject isKindOfClass:NSDictionary.class]) {
                successBlock(responseObject, YES);
            } else {
                successBlock(nil, NO);
            }
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            failBlock(error);
        }];
}

- (void)sendPostUrl:(NSString *)url params:(NSDictionary *)params success:(successBlock)successBlock fail:(failBlock)failBlock {
    
    [self.manager POST:url parameters:params headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            if ([responseObject isKindOfClass:NSDictionary.class]) {
                successBlock(responseObject, YES);
            } else {
                successBlock(nil, NO);
            }
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            failBlock(error);
        }];
}

@end

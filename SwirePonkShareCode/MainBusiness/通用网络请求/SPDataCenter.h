//
//  SPDataCenter.h
//  SwirePonk
//  对AFNetworking的封装，可以更加简单的处理请求
//  Created by  xupengfei on 2022/2/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^successBlock)( NSDictionary * _Nullable data, BOOL isDictionary);
typedef void(^failBlock)(NSError *error);

@interface SPDataCenter : NSObject

+ (instancetype)shareCenter;

- (void)sendGetUrl:(NSString *)url success:(successBlock)successBlock fail:(failBlock)failBlock;

- (void)sendPostUrl:(NSString *)url params:(NSDictionary *)params success:(successBlock)successBlock fail:(failBlock)failBlock;
@end

NS_ASSUME_NONNULL_END

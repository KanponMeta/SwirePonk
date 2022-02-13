//
//  SPLaunchScreenManager.h
//  SwirePonk
//
//  Created by  xupengfei on 2022/2/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SPLaunchScreenManager : NSObject

@property(nonatomic, strong)NSArray *resultArray;
@property(nonatomic, strong) NSString *documentPath;
@property(nonatomic, strong) UIImageView *splashImageVeiw;
@property(nonatomic, copy)NSString *imageURL;
+(void)downloadAdImageWithUrl:(NSString *)imageUrl imageName:(NSString *)imageName imgLinkUrl:(NSString *)imgLinkUrl imgDeadline:(NSString *)imgDeadline;
+ (BOOL)isFileExistWithFilePath:(NSString *)filePath;
+(void)getAdvertisingImageData;
+ (NSString *)getFilePathWithImageName:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END

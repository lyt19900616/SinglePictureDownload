//
//  LYTDownloadWebImageOperation.h
//  04----网络图片加载的工具
//
//  Created by lyt on 16/5/27.
//  Copyright © 2016年 com.wangyi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^ShowImgBlock)(UIImage *image);
@interface LYTDownloadWebImageOperation : NSOperation

@property (nonatomic, copy) NSString *urlStr;

@property (nonatomic, copy) ShowImgBlock block;

//@property (nonatomic, strong) UIImage *img;

+ (instancetype)downloadWebImgWithStr:(NSString *)str showImg:(ShowImgBlock)showImg;
@end

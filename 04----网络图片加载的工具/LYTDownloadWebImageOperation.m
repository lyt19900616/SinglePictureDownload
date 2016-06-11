//
//  LYTDownloadWebImageOperation.m
//  04----网络图片加载的工具
//
//  Created by lyt on 16/5/27.
//  Copyright © 2016年 com.wangyi. All rights reserved.
//

#import "LYTDownloadWebImageOperation.h"



@implementation LYTDownloadWebImageOperation

+ (instancetype)downloadWebImgWithStr:(NSString *)str showImg:(ShowImgBlock)showImg{
    
    LYTDownloadWebImageOperation *op = [[LYTDownloadWebImageOperation alloc] init];
    // 给地址赋值
    op.urlStr = str;
    
    // 给block赋值
    op.block = showImg;
   
    
    return op;
    
}



- (void)main{
    
    @autoreleasepool {
        
    
    NSURL *url = [NSURL URLWithString:self.urlStr];
    
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    UIImage *webImg = [UIImage imageWithData:data];


    // 回到主线程显示图片
    dispatch_async(dispatch_get_main_queue(), ^{
        
        if (self.block) {
            self.block(webImg);
        }
        
    });
    
    }
}




@end

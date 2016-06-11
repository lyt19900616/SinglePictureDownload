//
//  UIImageView+WebImage.m
//  04----网络图片加载的工具
//
//  Created by lyt on 16/5/27.
//  Copyright © 2016年 com.wangyi. All rights reserved.
//

#import "UIImageView+WebImage.h"
#import "LYTWebImageManager.h"


@implementation UIImageView (WebImage)

- (void)lyt_setImageWithString:(NSString *)str placeholderImage:(UIImage *)phImage{
    
    // 没有下载好图片时 显示站位图片
    
    self.image = phImage;
    
    // 去网络获取图片
    
    LYTWebImageManager *manager = [[LYTWebImageManager alloc] init];
    
    [manager deliverWebImgWithStr:str deliverWebImage:^(UIImage *webImg) {
        
        self.image = webImg;
    }];
    
}
@end

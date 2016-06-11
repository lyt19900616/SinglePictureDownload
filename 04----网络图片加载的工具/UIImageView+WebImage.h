//
//  UIImageView+WebImage.h
//  04----网络图片加载的工具
//
//  Created by lyt on 16/5/27.
//  Copyright © 2016年 com.wangyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (WebImage)


- (void)lyt_setImageWithString:(NSString *)str placeholderImage:(UIImage *)phImage;
@end

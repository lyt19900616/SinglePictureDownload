//
//  LYTWebImageManager.h
//  04----网络图片加载的工具
//
//  Created by lyt on 16/5/27.
//  Copyright © 2016年 com.wangyi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


typedef void(^DeliverBlock)(UIImage *webImg);

@interface LYTWebImageManager : NSObject

//@property (nonatomic, copy) DeliverBlock DBlock;


// 给外界一个接口
- (void)deliverWebImgWithStr:(NSString *)str deliverWebImage:(DeliverBlock)deliverWebImg;
@end

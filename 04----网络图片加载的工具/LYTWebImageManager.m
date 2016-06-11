//
//  LYTWebImageManager.m
//  04----网络图片加载的工具
//
//  Created by lyt on 16/5/27.
//  Copyright © 2016年 com.wangyi. All rights reserved.
//

#import "LYTWebImageManager.h"
#import "LYTDownloadWebImageOperation.h"


@interface LYTWebImageManager ()
// 沙盒缓存
@property (nonatomic, strong) NSCache *boxcache;
//图片缓存
@property (nonatomic, strong) NSMutableDictionary *images;
// 操作缓存
@property (nonatomic, strong) NSMutableDictionary *operations;

@property (nonatomic, strong)NSOperationQueue *queue;
@end

@implementation LYTWebImageManager

- (NSOperationQueue *)queue{
    
    if (!_queue) {
        _queue = [[NSOperationQueue alloc] init];
        
        [_queue setMaxConcurrentOperationCount:6];
    }
    
    return _queue;
}

- (NSMutableDictionary *)images{
    
    if (!_images) {
        _images = [[NSMutableDictionary alloc] init];
    }
    return _images;
    
}

- (NSCache *)boxcache{
    
    if (!_boxcache) {
        _boxcache = [[NSCache alloc] init];
    }
    return _boxcache;
}

- (NSMutableDictionary *)operations{
    
    if (!_operations) {
        _operations = [[NSMutableDictionary alloc] init];
    }
    return _operations;
}

- (void)deliverWebImgWithStr:(NSString *)str deliverWebImage:(DeliverBlock)deliverWebImg{
    
    
    // 在子线程下载图片 (创建操作添加到非主线程)
   LYTDownloadWebImageOperation *op = [LYTDownloadWebImageOperation downloadWebImgWithStr:str showImg:^(UIImage *image) {
        
        if (deliverWebImg) {
            deliverWebImg(image);
          
        }

    }];
    
    
    
    
    [self.queue addOperation:op];
    
    
}






@end

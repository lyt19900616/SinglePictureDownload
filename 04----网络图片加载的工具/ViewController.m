//
//  ViewController.m
//  04----网络图片加载的工具
//
//  Created by lyt on 16/5/27.
//  Copyright © 2016年 com.wangyi. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebImage.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    
    // 一句代码实现网络图片的加载
    
    // 提供一个获取图片的地址
NSString *str = @"http://pic8.nipic.com/20100709/4752803_210430061441_2.jpg";
    
    [self.imageView lyt_setImageWithString:str placeholderImage:[UIImage imageNamed:@"placeholder"]];
}


@end

//
//  ViewController.m
//  TestTools
//
//  Created by TangYanQiong on 2019/4/3.
//  Copyright © 2019年 TYQ. All rights reserved.
//

#import "ViewController.h"
#import "ToolsImport.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)showAlertPopBy:(NSString *)popStr
{
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:popStr message:nil preferredStyle:UIAlertControllerStyleAlert];
    [controller addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }]];
    [self presentViewController:controller animated:YES completion:nil];
}

- (IBAction)clickBtn:(UIButton *)sender
{
    switch (sender.tag) {
        case 0:
        {
            NSString *tmpStr = [[NSString alloc] initWithFormat:@"获取到当前时区:%@，系统语言为:%@", _getSystemGMT(), _getCurrentLanguage()];
            [self showAlertPopBy:tmpStr];
        }
            break;
        case 1:
            [ToastTool showToastBy:@"我是一个Toast弹框" inView:self.view];
            break;
        case 2:
        {
            NSString *testStr = @"\"我是一个短短那份那时的测试长度的字符串，这个是个字符串是的发生的发生的阿的发生的发的说法爱上的发生的发大水的爱上的发的发生\"";
            CGFloat wordHeight = [StringTool measureStringRect:testStr width:300 fontSize:[UIFont systemFontOfSize:10]].height;
            [self showAlertPopBy:[testStr stringByAppendingFormat:@"\n\n这段文字当为10字体、300宽度时，计算出高度是：%f", wordHeight]];
        }
            break;
        case 3:
        {
            UIImage *getImg = [ImageTool createImageWithColor:[UIColor redColor] size:CGSizeMake(300, 200)];
            UIImageView *tmpImageView = [[UIImageView alloc] initWithImage:getImg];
            tmpImageView.center = self.view.center;
            tmpImageView.userInteractionEnabled = YES;
            tmpImageView.tag = 2019;
            [self.view addSubview:tmpImageView];
            
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(removeImageView)];
            [tmpImageView addGestureRecognizer:tap];
            
            [self showAlertPopBy:@"根据颜色设置CGSize生成图片，点击图片消失"];
        }
            break;
        case 4:
        {
            NSString *tmpStr = @"dssddd@.com";
            [self showAlertPopBy:[tmpStr stringByAppendingFormat:@"%@正确的邮箱地址", [ValidateTool validateEmail:tmpStr] ? @"是":@"不是"]];
        }
            break;
        case 5:
        {
            UIImage *getImg = [ImageTool createImageWithColor:[ColorTool colorFromHexRGB:@"e6e6e6"] size:CGSizeMake(300, 200)];
            UIImageView *tmpImageView = [[UIImageView alloc] initWithImage:getImg];
            tmpImageView.center = self.view.center;
            tmpImageView.userInteractionEnabled = YES;
            tmpImageView.tag = 2019;
            [self.view addSubview:tmpImageView];
            
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(removeImageView)];
            [tmpImageView addGestureRecognizer:tap];
            
            [self showAlertPopBy:@"根据RGB颜色设置CGSize生成图片，点击图片消失"];
        }
            break;
        default:
            break;
    }
}

- (void)removeImageView
{
    UIView *view = [self.view viewWithTag:2019];
    [view removeFromSuperview];
}

@end

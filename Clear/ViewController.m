//
//  ViewController.m
//  Clear
//
//  Created by MAEDA HAJIME on 2014/05/10.
//  Copyright (c) 2014年 HAJIME MAEDA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // 背景に画像をセットする
    UIImage *image  = [UIImage imageNamed:@"img02"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    {
        
        // 背景色を透明にしたいUIViewのインスタンスを作成する
        UIView *aView = [[UIView alloc] initWithFrame:self.view.frame];
        
        // opaque属性にNOを設定する事で、背景透過を許可する
        aView.opaque = NO;
        
        // backgroundColorにalpha=0.0fの背景色を設定することで、背景色を透明にしている
        aView.backgroundColor = [UIColor colorWithRed:0.5
                                                green:0.5
                                                 blue:0.5
                                                alpha:0.8]; // transparent
        
        // 作成した背景色透明のViewを現在のViewの上に追加する
        [self.view addSubview:aView];
        
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

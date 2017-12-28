//
//  ViewController.m
//  HWPDFTest
//
//  Created by sxmaps_w on 2017/12/27.
//  Copyright © 2017年 wqb. All rights reserved.
//

#import "ViewController.h"
#import "HWPDFBrowseVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"ViewController";

    //创建控件
    [self creatControl];
}

- (void)creatControl
{
    //跳转PDF按钮
    UIButton *pdfBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 150, 100, 44)];
    pdfBtn.backgroundColor = [UIColor orangeColor];
    [pdfBtn setTitle:@"跳转PDF" forState:UIControlStateNormal];
    [pdfBtn addTarget:self action:@selector(pdfBtnOnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pdfBtn];
}

- (void)pdfBtnOnClick
{
    HWPDFBrowseVC *vc = [[HWPDFBrowseVC alloc] init];
    vc.filePath = [[NSBundle mainBundle] pathForResource:@"HWTest.pdf" ofType:nil];
    vc.fileName = @"HWTestPDF";
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

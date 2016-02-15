//
//  StockViewController.m
//  iOS-MVVM
//
//  Created by Emiliano Barbosa on 2/15/16.
//  Copyright © 2016 Bocamuchas. All rights reserved.
//

#import "StockViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "StockViewModel.h"

@interface StockViewController ()

@property (weak, nonatomic) IBOutlet UILabel *stockName;
@property (weak, nonatomic) IBOutlet UIImageView *stockGraph;

@property (nonatomic, strong) Stock *model;
@property (nonatomic, strong) StockViewModel *viewModel;

@end

@implementation StockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.model = [[Stock alloc]initWithCode:@"petr4" name:@"Petrobras ON"];
    self.viewModel = [[StockViewModel alloc]initWithStock:self.model];
    
    self.stockName.text = self.viewModel.nameText;
    [self.stockGraph sd_setImageWithURL:self.viewModel.graphUrl];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

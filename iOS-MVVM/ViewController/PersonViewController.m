//
//  PersonViewController.m
//  iOS-MVVM
//
//  Created by Emiliano Barbosa on 2/12/16.
//  Copyright © 2016 Bocamuchas. All rights reserved.
//

#import "PersonViewController.h"
#import "PersonViewModel.h"

@interface PersonViewController ()

@property (nonatomic, strong) PersonViewModel *viewModel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *birthDateLabel;

@end

@implementation PersonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameLabel.text = self.viewModel.nameText;
    self.birthDateLabel.text = self.viewModel.birthDateText;
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

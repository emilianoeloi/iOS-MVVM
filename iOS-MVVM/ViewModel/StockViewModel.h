//
//  StockViewModel.h
//  iOS-MVVM
//
//  Created by Emiliano Barbosa on 2/15/16.
//  Copyright © 2016 Bocamuchas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stock.h"

@interface StockViewModel : NSObject

@property (nonatomic, strong) NSString *nameText;
@property (nonatomic, strong) NSURL *graphUrl;

-(instancetype)initWithStock:(Stock *)stock;

@end

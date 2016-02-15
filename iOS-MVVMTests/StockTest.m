//
//  StockTest.m
//  iOS-MVVM
//
//  Created by Emiliano Barbosa on 2/15/16.
//  Copyright © 2016 Bocamuchas. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import "Stock.h"
#import "StockViewModel.h"

SpecBegin(Stock)
NSString *code = @"petr4";
NSString *name = @"Petrobras ON";

it (@"should show a curretly complete name", ^{
    Stock *stock = [[Stock alloc]initWithCode:code name:name];
    StockViewModel *viewModel = [[StockViewModel alloc] initWithStock:stock];
    expect(viewModel.nameText).to.equal(@"PETR4 - Petrobras ON");
});

it (@"should not show a curretly complete name", ^{
    Stock *stock = [[Stock alloc]initWithCode:code name:name];
    StockViewModel *viewModel = [[StockViewModel alloc] initWithStock:stock];
    expect(viewModel.nameText).notTo.equal(@"petr4 - Petrobras ON");
});

SpecEnd

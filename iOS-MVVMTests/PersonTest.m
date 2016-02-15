//
//  PersonTest.m
//  iOS-MVVM
//
//  Created by Emiliano Barbosa on 2/15/16.
//  Copyright © 2016 Bocamuchas. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import "Person.h"
#import "PersonViewModel.h"

SpecBegin(Person)
NSString *salutation = @"Dr.";
NSString *firstName = @"first";
NSString *lastName = @"last";
NSDate *birthdate = [NSDate dateWithTimeIntervalSince1970:0];

it (@"should use the salutation available. ", ^{
    Person *person = [[Person alloc]initWithSalutation:salutation firstName:firstName lastName:lastName birthDate:birthdate];
    PersonViewModel *viewModel = [[PersonViewModel alloc] initWithPerson:person];
    expect(viewModel.nameText).to.equal(@"Dr. first last");
});

it (@"should not use an unavailable salutation. ", ^{
    Person *person = [[Person alloc]initWithSalutation:salutation firstName:firstName lastName:lastName birthDate:birthdate];
    PersonViewModel *viewModel = [[PersonViewModel alloc] initWithPerson:person];
    expect(viewModel.nameText).to.equal(@"Dr. first last");
});

it (@"should use the correct date format. ", ^{
    Person *person = [[Person alloc]initWithSalutation:salutation firstName:firstName lastName:lastName birthDate:birthdate];
    PersonViewModel *viewModel = [[PersonViewModel alloc] initWithPerson:person];
    expect(viewModel.birthDateText).to.equal(@"Wednesday December 31, 1969");
});
SpecEnd
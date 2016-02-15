//
//  Person.h
//  iOS-MVVM
//
//  Created by Emiliano Barbosa on 2/12/16.
//  Copyright © 2016 Bocamuchas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

-(instancetype)initWithSalutation:(NSString *)salutation firstName:(NSString *)firstName lastName:(NSString *)lastName birthDate:(NSDate *)birthDate;

@property (nonatomic, strong) NSString *salutation;
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSDate *birthDate;

@end

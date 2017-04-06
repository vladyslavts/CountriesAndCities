//
//  Country.h
//  CityInfo
//
//  Created by Vlad on 06.04.17.
//  Copyright © 2017 Vlad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Country : NSObject

@property (strong, nonatomic) NSDictionary *countriesAndCities;
@property (strong, nonatomic) NSArray *countries;


- (void)loadData;

@end

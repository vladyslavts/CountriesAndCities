//
//  Country.m
//  CityInfo
//
//  Created by Vlad on 06.04.17.
//  Copyright © 2017 Vlad. All rights reserved.
//

#import "Country.h"

@implementation Country

- (void)loadData {
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"countriesToCities" ofType:@"json"];
    NSString *jsonStr = [[NSString alloc] initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:NULL];
    
    self.countriesAndCities = [NSJSONSerialization JSONObjectWithData:
                                   [jsonStr dataUsingEncoding:NSUTF8StringEncoding]
                                                                  options:kNilOptions
                                                                    error:nil];
    NSArray *countries = self.countriesAndCities.allKeys;
   // NSLog(@"%@", self.countriesAndCities);
    self.countries = [countries sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        
        return [obj1 compare:obj2];
    }];

}

@end

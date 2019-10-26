//
//  Device.m
//  EmpatKali
//
//  Created by Macbook Tamasia 1 on 26/10/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "Device.h"
#import <UIKit/UIKit.h>

@implementation Device

//export the name of the native module as 'Device' since no explicit name is mentioned
RCT_EXPORT_MODULE();

//exports a method getUUID to javascript
RCT_EXPORT_METHOD(getUUID:(RCTResponseSenderBlock)callback)
{
  NSUUID *deviceId =  [UIDevice currentDevice].identifierForVendor;
  
  callback(@[[NSNull null], [NSArray arrayWithObjects: [deviceId UUIDString], nil]]);
}

@end

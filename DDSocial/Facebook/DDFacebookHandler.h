//
//  DDFacebookHandler.h
//  DDSocialDemo
//
//  Created by lilingang on 16/1/4.
//  Copyright © 2016年 LiLingang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDSocialEventDefs.h"

@protocol DDSocialShareContentProtocol;
@protocol DDSocialHandlerProtocol;
@class UIViewController;
@class UIApplication;

@interface DDFacebookHandler : NSObject

@end

@interface DDFacebookHandler (DDSocialHandlerProtocol) <DDSocialHandlerProtocol>

@end

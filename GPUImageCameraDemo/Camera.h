//
//  Camera.h
//  GPUImageCameraDemo
//
//  Created by fujikoli(李鑫) on 2017/9/8.
//  Copyright © 2017年 fujikoli(李鑫). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GPUImage.h"
#import "GPUImageView.h"

@interface Camera : NSObject

@property (nonatomic , strong) GPUImageVideoCamera *camera;
@property (nonatomic , strong) GPUImageView *cameraScreen;
@property (nonatomic , strong) GPUImageFilter *filter;

- (void)startCamera;
- (void)stopCamera;

@end

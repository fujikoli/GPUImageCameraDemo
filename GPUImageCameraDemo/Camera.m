//
//  Camera.m
//  GPUImageCameraDemo
//
//  Created by fujikoli(李鑫) on 2017/9/8.
//  Copyright © 2017年 fujikoli(李鑫). All rights reserved.
//

#import "Camera.h"

@implementation Camera

- (void)startCamera{
    
    if (!_camera) {
        GPUImageVideoCamera *camera = [[GPUImageVideoCamera alloc] initWithSessionPreset:AVCaptureSessionPresetPhoto cameraPosition:AVCaptureDevicePositionBack];
        camera.outputImageOrientation = UIInterfaceOrientationPortrait;
        camera.horizontallyMirrorFrontFacingCamera = YES;
        _camera = camera;
    }
    _filter = [[GPUImageFilter alloc] init];
    [self.camera addTarget:_filter];
    [_filter addTarget:self.cameraScreen];
    [self.camera startCameraCapture];
}

- (void)stopCamera{
    [self.camera stopCameraCapture];
}

@end

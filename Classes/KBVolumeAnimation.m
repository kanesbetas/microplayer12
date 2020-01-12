//
//  KBVolumeAnimation.m
//  KBVolumeAnimation
//
//  Created by Kane Buckthorpe on 09/04/2019.
//  Copyright © 2019 Kane. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//

#import "KBVolumeAnimation.h"


@implementation KBVolumeAnimation

#pragma mark Initialization

+ (void)initialize
{
}

#pragma mark Drawing Methods

+ (void)drawVolumeSliderWithValue:(CGFloat)value color:(UIColor*)color
{
    [KBVolumeAnimation drawVolumeSliderWithFrame:CGRectMake(0, 0, 104, 104) resizing: KBVolumeAnimationResizingBehaviorStretch value:value color:color];
}

+ (void)drawVolumeSliderWithFrame: (CGRect)targetFrame resizing:(KBVolumeAnimationResizingBehavior)resizing value: (CGFloat)value color:(UIColor*)color
{
UIColor*imageColor=color?color:UIColor.grayColor;
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();


    //// Variable Declarations
    CGFloat muteValue = value >= 0.1 ? 1 : value * 20;
    CGFloat muteValueForSlice = 100 - muteValue * 100;
    CGFloat volume1 = value * 10;
    CGFloat volume2 = (value - 0.33) * 3;
    CGFloat volume3 = (value - 0.66) * 3;

    //// volumeBase
    {
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 66.97, 64.76);
        CGContextRotateCTM(context, -0.18 * M_PI/180);



        //// Bezier 2 Drawing
        UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
        [bezier2Path moveToPoint: CGPointMake(-41.89, -25.89)];
        [bezier2Path addCurveToPoint: CGPointMake(-45.89, -25.9) controlPoint1: CGPointMake(-41.89, -25.89) controlPoint2: CGPointMake(-41.89, -25.89)];
        [bezier2Path addCurveToPoint: CGPointMake(-52.91, -19.93) controlPoint1: CGPointMake(-49.89, -25.92) controlPoint2: CGPointMake(-52.9, -22.93)];
        [bezier2Path addCurveToPoint: CGPointMake(-52.93, -12.93) controlPoint1: CGPointMake(-52.92, -16.93) controlPoint2: CGPointMake(-52.93, -12.93)];
        [bezier2Path addLineToPoint: CGPointMake(-52.93, -6.14)];
        [bezier2Path addCurveToPoint: CGPointMake(-52.93, -6.14) controlPoint1: CGPointMake(-52.93, -6.14) controlPoint2: CGPointMake(-52.93, -12.93)];
        [bezier2Path addCurveToPoint: CGPointMake(-46.17, 0.65) controlPoint1: CGPointMake(-52.93, 0.65) controlPoint2: CGPointMake(-46.17, 0.65)];
        [bezier2Path addLineToPoint: CGPointMake(-29.28, 0.65)];
        [bezier2Path addLineToPoint: CGPointMake(-15.76, 14.22)];
        [bezier2Path addCurveToPoint: CGPointMake(-12.38, 17.61) controlPoint1: CGPointMake(-15.76, 14.22) controlPoint2: CGPointMake(-15.76, 14.22)];
        [bezier2Path addCurveToPoint: CGPointMake(-9, 14.22) controlPoint1: CGPointMake(-9, 21) controlPoint2: CGPointMake(-9, 14.22)];
        [bezier2Path addLineToPoint: CGPointMake(-8.96, -2.78)];
        [bezier2Path addLineToPoint: CGPointMake(-41.89, -25.89)];
        [bezier2Path closePath];
        [imageColor setFill];
        [bezier2Path fill];


        //// Bezier 5 Drawing
        CGContextSaveGState(context);
        CGContextSetAlpha(context, muteValue);

        UIBezierPath* bezier5Path = [UIBezierPath bezierPath];
        [bezier5Path moveToPoint: CGPointMake(-8.96, -1.79)];
        [bezier5Path addLineToPoint: CGPointMake(-42.89, -25.89)];
        [bezier5Path addLineToPoint: CGPointMake(-29.89, -25.85)];
        [bezier5Path addLineToPoint: CGPointMake(-8.93, -11.78)];
        [imageColor setFill];
        [bezier5Path fill];

        CGContextRestoreGState(context);


        //// Bezier Drawing
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(-8.94, -9.78)];
        [bezierPath addLineToPoint: CGPointMake(-31.89, -25.86)];
        [bezierPath addLineToPoint: CGPointMake(-29.91, -25.85)];
        [bezierPath addLineToPoint: CGPointMake(-15.72, -39.9)];
        [bezierPath addCurveToPoint: CGPointMake(-12.36, -43.29) controlPoint1: CGPointMake(-15.72, -39.9) controlPoint2: CGPointMake(-15.72, -39.9)];
        [bezierPath addCurveToPoint: CGPointMake(-8.99, -39.9) controlPoint1: CGPointMake(-8.99, -46.69) controlPoint2: CGPointMake(-8.99, -39.9)];
        [bezierPath addLineToPoint: CGPointMake(-8.95, -19.9)];
        [bezierPath addLineToPoint: CGPointMake(-8.94, -9.78)];
        [bezierPath closePath];
        [imageColor setFill];
        [bezierPath fill];



        CGContextRestoreGState(context);
    }


    //// slice Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, 46.83, 49.91);
    CGContextRotateCTM(context, -0.93 * M_PI/180);

    CGContextSaveGState(context);
    CGContextSetAlpha(context, muteValueForSlice);

    UIBezierPath* slicePath = [UIBezierPath bezierPath];
    [slicePath moveToPoint: CGPointMake(34.74, 26.66)];
    [slicePath addCurveToPoint: CGPointMake(-35.43, -25.49) controlPoint1: CGPointMake(33.4, 25.54) controlPoint2: CGPointMake(-35.43, -25.49)];
    [imageColor setStroke];
    slicePath.lineWidth = 2.5;
    slicePath.lineCapStyle = kCGLineCapRound;
    slicePath.lineJoinStyle = kCGLineJoinRound;
    [slicePath setLineDash: (CGFloat[]){muteValueForSlice, 100} count: 2 phase: 1];
    [slicePath stroke];

    CGContextRestoreGState(context);

    CGContextRestoreGState(context);


    //// volumeStages
    {
        //// volumeStage1 Drawing
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 67.41, 42.22);
        CGContextRotateCTM(context, -0.18 * M_PI/180);

        CGContextSaveGState(context);
        CGContextSetAlpha(context, volume1);

        UIBezierPath* volumeStage1Path = [UIBezierPath bezierPath];
        [volumeStage1Path moveToPoint: CGPointMake(0, 19.98)];
        [volumeStage1Path addCurveToPoint: CGPointMake(0, 0) controlPoint1: CGPointMake(4.99, 9.99) controlPoint2: CGPointMake(0, 0)];
        [imageColor setStroke];
        volumeStage1Path.lineWidth = 2.5;
        volumeStage1Path.lineCapStyle = kCGLineCapRound;
        volumeStage1Path.lineJoinStyle = kCGLineJoinRound;
        [volumeStage1Path stroke];

        CGContextRestoreGState(context);

        CGContextRestoreGState(context);


        //// volumeStage2 Drawing
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 74.04, 35.54);
        CGContextRotateCTM(context, -0.18 * M_PI/180);

        CGContextSaveGState(context);
        CGContextSetAlpha(context, volume2);

        UIBezierPath* volumeStage2Path = [UIBezierPath bezierPath];
        [volumeStage2Path moveToPoint: CGPointMake(0, 33.3)];
        [volumeStage2Path addCurveToPoint: CGPointMake(0, 0) controlPoint1: CGPointMake(12.47, 16.65) controlPoint2: CGPointMake(0, 0)];
        [imageColor setStroke];
        volumeStage2Path.lineWidth = 2.5;
        volumeStage2Path.lineCapStyle = kCGLineCapRound;
        volumeStage2Path.lineJoinStyle = kCGLineJoinRound;
        [volumeStage2Path stroke];

        CGContextRestoreGState(context);

        CGContextRestoreGState(context);


        //// volumeStage3 Drawing
        CGContextSaveGState(context);
        CGContextTranslateCTM(context, 80.66, 25.53);
        CGContextRotateCTM(context, -0.18 * M_PI/180);

        CGContextSaveGState(context);
        CGContextSetAlpha(context, volume3);

        UIBezierPath* volumeStage3Path = [UIBezierPath bezierPath];
        [volumeStage3Path moveToPoint: CGPointMake(0, 53.27)];
        [volumeStage3Path addCurveToPoint: CGPointMake(0, 0) controlPoint1: CGPointMake(19.95, 26.64) controlPoint2: CGPointMake(0, 0)];
        [imageColor setStroke];
        volumeStage3Path.lineWidth = 2.5;
        volumeStage3Path.lineCapStyle = kCGLineCapRound;
        volumeStage3Path.lineJoinStyle = kCGLineJoinRound;
        [volumeStage3Path stroke];

        CGContextRestoreGState(context);

        CGContextRestoreGState(context);
    }
}

#pragma mark Generated Images

+ (UIImage*)imageOfVolumeSliderWithValue:(CGFloat)value color:(UIColor*)color
{
	UIGraphicsBeginImageContextWithOptions(CGSizeMake(104, 104), NO, 0);
	[KBVolumeAnimation drawVolumeSliderWithValue:value color:color];
	
	UIImage* imageOfVolumeSlider = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();

    return imageOfVolumeSlider;
}

@end



CGRect KBVolumeAnimationResizingBehaviorApply(KBVolumeAnimationResizingBehavior behavior, CGRect rect, CGRect target)
{
    if (CGRectEqualToRect(rect, target) || CGRectEqualToRect(target, CGRectZero))
        return rect;

    CGSize scales = CGSizeZero;
    scales.width = ABS(target.size.width / rect.size.width);
    scales.height = ABS(target.size.height / rect.size.height);

    switch (behavior)
    {
        case KBVolumeAnimationResizingBehaviorAspectFit:
        {
            scales.width = MIN(scales.width, scales.height);
            scales.height = scales.width;
            break;
        }
        case KBVolumeAnimationResizingBehaviorAspectFill:
        {
            scales.width = MAX(scales.width, scales.height);
            scales.height = scales.width;
            break;
        }
        case KBVolumeAnimationResizingBehaviorStretch:
            break;
        case KBVolumeAnimationResizingBehaviorCenter:
        {
            scales.width = 1;
            scales.height = 1;
            break;
        }
    }

    CGRect result = CGRectStandardize(rect);
    result.size.width *= scales.width;
    result.size.height *= scales.height;
    result.origin.x = target.origin.x + (target.size.width - result.size.width) / 2;
    result.origin.y = target.origin.y + (target.size.height - result.size.height) / 2;
    return result;
}


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (BL_UIImageManager)

-(UIImage*)imageWithColor:(UIColor*)color;
    
+ (UIImage *)imageWithColor:(UIColor *)color;
    
- (UIImage *)rs_disable;
@end

NS_ASSUME_NONNULL_END

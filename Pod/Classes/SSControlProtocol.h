//
//  SSControlProtocol.h
//  Pods
//
//  Created by Shwet Solanki on 18/09/15.
//
//

#ifndef SSControlProtocol_h
#define SSControlProtocol_h

@protocol SSThemeProtocol <NSObject>

-(UIFont *)fontForKey:(NSString *)key;
-(UIColor *)colorForKey:(NSString *)key;

@end

#endif /* SSControlProtocol_h */

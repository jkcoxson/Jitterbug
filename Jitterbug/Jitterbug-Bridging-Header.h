//
// Copyright © 2021 osy. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#ifndef Jitterbug_Bridging_Header_h
#define Jitterbug_Bridging_Header_h

#import <TargetConditionals.h>
#import "JBHostDevice.h"
#if TARGET_OS_OSX
#import "JBHostFinder.h"
#import "JBHostFinderDelegate.h"
#endif

#endif /* Jitterbug_Bridging_Header_h */

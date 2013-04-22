# `UIButton` state, objectified
### Access `UIButton` state properties using `dot.syntax`

## State Properties
This small category on `UIButton` provides few properties to access instances of class `MTKButtonState`. They are associated with one `UIButton` and one `UIControlState` and have these properties:

 - `title`
 - `attributedTitle`
 - `titleColor`
 - `titleShadowColor`
 - `image`
 - `backgroundImage`
 
Getters of these properties call `-[UIButton <property>ForState:]` and setters call `-[UIButton set<Property>:forState:]`.

## State Accessors
There are 5 direct properties for most used control states:

 - `normalState` for `UIControlStateNormal`
 - `disabledState` for `UIControlStateDisabled`
 - `highlightedState` for `UIControlStateHighlighted`
 - `selectedState` for `UIControlStateSelected`
 - `selectedHightlightedState` for `UIControlStateSelected | UIControlStateHighlighted`

In case you really need some other `UIControlState` combination, use `-stateForControlState:`.

## Current State
Property `currentState` holds `MTKButtonState` object corresponding to current control state. For example, if `button.state` is `UIControlStateHighlighted`, then `button.currentState` and `button.highlightedState` are identical objects.

**Property `-[UIButton currentState]` is KVO compliant.**

## Usage Example
```
UIButton *button = [[UIButton alloc] init];
button.normalState.title = @"Normal";
button.highlightedState.title = @"Highlighted";
button.selectedState.title = @"Selected";
button.selectedHighlightedState.title = @"Selected Highlighted";
```

## 
### Few more things…
 - Uses runtime associations
 - Does **not** use method swizzling
 - Contains tests
 - Test are passing
 - Licensed under MIT License
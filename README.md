# Objective-C KVO Crash: Unremoved Observer

This repository demonstrates a common bug in Objective-C related to Key-Value Observing (KVO).  The bug occurs when an observer is not properly removed before the observed object is deallocated, leading to crashes.

## Bug Description
The `KVOObserverBug.m` file shows a scenario where an observer is added but not removed, leading to a crash when the observed object is deallocated.

## Solution
The `KVOObserverSolution.m` file demonstrates how to fix this bug by correctly removing the observer using `removeObserver:forKeyPath:` before the observed object is deallocated.

## How to Reproduce
1. Clone this repository.
2. Open the project in Xcode.
3. Run the application. The buggy version will crash; the fixed version will run successfully.

## Key Learning
Always remove KVO observers using `removeObserver:forKeyPath:` in `dealloc` or before the observed object is no longer needed.  This prevents crashes and ensures the stability of your application.
//
//  main.swift
//  SwiftTree
//
//  Created by Moonbeom KWON on 2017. 7. 17..
//  Copyright © 2017년 mbkyle. All rights reserved.
//

import Foundation

print("Hello, World!")

var tree = myTree<Int>.apply(value: 2)
tree = tree.insert(acc: tree, value: 3)
tree = tree.insert(acc: tree, value: 33)
tree = tree.insert(acc: tree, value: 1)
tree = tree.insert(acc: tree, value: 10)

print(tree.contains(acc: tree, value: 1))
print(tree.contains(acc: tree, value: 2))
print(tree.contains(acc: tree, value: 3))
print(tree.contains(acc: tree, value: 4))
print(tree.contains(acc: tree, value: 5))

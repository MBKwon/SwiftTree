//
//  myTree.swift
//  SwiftTree
//
//  Created by Moonbeom KWON on 2017. 7. 17..
//  Copyright © 2017년 mbkyle. All rights reserved.
//

import Foundation


indirect enum myTree <A> {
    case Nil
    case Cons(A, left: myTree<A>, right: myTree<A>)
}

extension myTree {
    
    static func insert<T: NumericType>(acc: myTree<T>, value: T) -> myTree<T> {
        
        switch acc {
        case let .Cons(element, leftTree, rightTree):
            if element < value {
                return .Cons(element, left: leftTree, right: insert(acc: rightTree, value: value))
                
            } else if element > value {
                return .Cons(element, left: insert(acc: rightTree, value: value), right: rightTree)
                
            } else {
                return .Cons(value, left: leftTree, right: rightTree)
            }
            
        default:
            return .Cons(value, left: .Nil, right: .Nil)
        }
    }
    
    static func contains<T: NumericType>(acc: myTree<T>, value: T) -> Bool {
        
        switch acc {
        case let .Cons(element, leftTree, rightTree):
            if element < value {
                return contains(acc: rightTree, value: value)
                
            } else if element > value {
                return contains(acc: leftTree, value: value)
                
            } else {
                return true
            }
            
        default:
            return false
        }
    }
}

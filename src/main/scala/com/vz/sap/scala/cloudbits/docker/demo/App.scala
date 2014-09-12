package com.vz.sap.scala.cloudbits.docker.demo

/**
 * @author ${user.name}
 */
object App {
  
  def foo(x : Array[String]) = x.foldLeft("")((a,b) => a + b)
  
  def main(args : Array[String]) {
    println( "Hello John!!" )
    println("concat arguments = " + foo(args))
  }

}

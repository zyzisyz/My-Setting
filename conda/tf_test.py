# coding=utf-8

# *************************************************************************
#	> File Name: test.py
#	> Author: Yang Zhang
#	> Mail: zyziszy@foxmail.com
#	> Created Time: Wed 10 Oct 2018 05:20:08 PM CST
# ************************************************************************/

import tensorflow as tf
x = tf.nn.conv2d(tf.ones([1,1,10,1]), tf.ones([1,5,1,1]), strides=[1, 1, 1, 1], padding='SAME')
with tf.Session() as sess:
    sess.run(x)

print("\ndone!")

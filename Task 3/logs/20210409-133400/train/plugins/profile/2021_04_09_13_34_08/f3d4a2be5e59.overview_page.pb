?	????/)@????/)@!????/)@	/?h???@/?h???@!/?h???@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6????/)@O???*P@1+P???t??Af?y??̫?Iu><K??@YC˺,???*	/?$??@2t
=Iterator::Model::MaxIntraOpParallelism::FlatMap[0]::Generator??_????!?#?Y?tX@)??_????1?#?Y?tX@:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelism\sG?K??!zL@?X@)??{???s?1Vނ?˺??:Preprocessing2F
Iterator::Model$~?.r??!      Y@)??is?1???????:Preprocessing2f
/Iterator::Model::MaxIntraOpParallelism::FlatMap^d~?$??!]tm?ʖX@)?aۢ?i?1?]?d????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 32.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?48.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9/?h???@I?k<M?]T@Q?/?D?,@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	O???*P@O???*P@!O???*P@      ??!       "	+P???t??+P???t??!+P???t??*      ??!       2	f?y??̫?f?y??̫?!f?y??̫?:	u><K??@u><K??@!u><K??@B      ??!       J	C˺,???C˺,???!C˺,???R      ??!       Z	C˺,???C˺,???!C˺,???b      ??!       JGPUY/?h???@b q?k<M?]T@y?/?D?,@?"k
?gradient_tape/sequential_1/conv2d_1/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter,?(a??!,?(a??0"<
sequential_1/conv2d_1/Relu_FusedConv2DD??X????!+m?@x+??"i
>gradient_tape/sequential_1/conv2d_1/Conv2D/Conv2DBackpropInputConv2DBackpropInputk??s?\??!0_G??,??0"i
=gradient_tape/sequential_1/conv2d/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter/@?kX??!<?9X????0"8
sequential_1/conv2d/Conv2DConv2D"?g??m??!????Y???0"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?c?ʻz??!_7?Y????"]
<gradient_tape/sequential_1/max_pooling2d/MaxPool/MaxPoolGradMaxPoolGrad??T?{??!|???b???"_
>gradient_tape/sequential_1/max_pooling2d_1/MaxPool/MaxPoolGradMaxPoolGrad?5??????!)u??G??"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam?RU?{??!?ș????"7
sequential_1/dense/MatMulMatMullf?^????!????????0Q      Y@Y      )@a     ?U@q??S?k?0@y!???????"?
both?Your program is POTENTIALLY input-bound because 32.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?48.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?16.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 
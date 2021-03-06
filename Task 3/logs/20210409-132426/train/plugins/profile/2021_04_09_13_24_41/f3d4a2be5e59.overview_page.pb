?	ZH???n?@ZH???n?@!ZH???n?@	<??)??X@<??)??X@!<??)??X@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6ZH???n?@??$??@1߉Y/????Ag???ْ??I???K
@Y~?$A(d?@*	??Ƌ??TA2g
0Iterator::Model::MaxIntraOpParallelism::Prefetchv??X?c?@!z??Z??X@)v??X?c?@1z??Z??X@:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelism? ˂?c?@!??3???X@)??V*???1???-x?<?:Preprocessing2F
Iterator::Model7?^??c?@!      Y@)?&?????1????a?#?:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
host?Your program is HIGHLY input-bound because 99.8% of the total step time sampled is waiting for input. Therefore, you should first focus on reducing the input time.no*no9<??)??X@I???????Q4PN?L??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??$??@??$??@!??$??@      ??!       "	߉Y/????߉Y/????!߉Y/????*      ??!       2	g???ْ??g???ْ??!g???ْ??:	???K
@???K
@!???K
@B      ??!       J	~?$A(d?@~?$A(d?@!~?$A(d?@R      ??!       Z	~?$A(d?@~?$A(d?@!~?$A(d?@b      ??!       JGPUY<??)??X@b q???????y4PN?L???"k
?gradient_tape/sequential_1/conv2d_1/Conv2D/Conv2DBackpropFilterConv2DBackpropFilterV??4d??!V??4d??0"<
sequential_1/conv2d_1/Relu_FusedConv2DH*1?dY??!0@	??^??"i
>gradient_tape/sequential_1/conv2d_1/Conv2D/Conv2DBackpropInputConv2DBackpropInput?S??w??!????[M??0"i
=gradient_tape/sequential_1/conv2d/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?1O(????!P?U????0"8
sequential_1/conv2d/Conv2DConv2D?'????!???0"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsw?1?
??!8=???h??"]
<gradient_tape/sequential_1/max_pooling2d/MaxPool/MaxPoolGradMaxPoolGradHNvϜ?!??h?<O??"_
>gradient_tape/sequential_1/max_pooling2d_1/MaxPool/MaxPoolGradMaxPoolGrad???F???!)?շ???"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam^?n??	??!LV?m???"7
sequential_1/dense/MatMulMatMulҺO?⟓?!#?k?a??0Q      Y@Y?E]t?%@aF]t?EV@q{vZ????y$urK??"?	
host?Your program is HIGHLY input-bound because 99.8% of the total step time sampled is waiting for input. Therefore, you should first focus on reducing the input time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
nono*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"GPU(: B 
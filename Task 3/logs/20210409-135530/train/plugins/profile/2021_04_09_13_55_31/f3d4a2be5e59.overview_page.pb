?	~6rݔj"@~6rݔj"@!~6rݔj"@	?
??K$@?
??K$@!?
??K$@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6~6rݔj"@q:?V?
@1?J?????A~U.T????IQ?B?y_@YlZ)r???*	???(\Y?@2t
=Iterator::Model::MaxIntraOpParallelism::FlatMap[0]::Generator?w*??g??!~PJg?|X@)?w*??g??1~PJg?|X@:Preprocessing2F
Iterator::Model|'f????!      Y@)QN????s?1??q)v???:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelism???3???!???X@)???M??p?1??Ԅ??:Preprocessing2f
/Iterator::Model::MaxIntraOpParallelism::FlatMap??r-Z???!??pk??X@)/?HM?h?1??Gt??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 10.0% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.high"?33.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*high2t36.6 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9?
??K$@Ic??B?Q@Qn???3@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	q:?V?
@q:?V?
@!q:?V?
@      ??!       "	?J??????J?????!?J?????*      ??!       2	~U.T????~U.T????!~U.T????:	Q?B?y_@Q?B?y_@!Q?B?y_@B      ??!       J	lZ)r???lZ)r???!lZ)r???R      ??!       Z	lZ)r???lZ)r???!lZ)r???b      ??!       JGPUY?
??K$@b qc??B?Q@yn???3@?"k
?gradient_tape/sequential_1/conv2d_1/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter??T6?!??T6?0"<
sequential_1/conv2d_1/Relu_FusedConv2DEF4H?:??!?hD??_??"i
>gradient_tape/sequential_1/conv2d_1/Conv2D/Conv2DBackpropInputConv2DBackpropInput&o?eh???!9?j??0"i
=gradient_tape/sequential_1/conv2d/Conv2D/Conv2DBackpropFilterConv2DBackpropFiltere?S???!1??M????0"8
sequential_1/conv2d/Conv2DConv2D0"?K?R??!???m???0"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsvFS?^???!?jOТ???"]
<gradient_tape/sequential_1/max_pooling2d/MaxPool/MaxPoolGradMaxPoolGrad?].?K???!???,?g??"_
>gradient_tape/sequential_1/max_pooling2d_1/MaxPool/MaxPoolGradMaxPoolGrad?V`6????!R??>C/??"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam9îS???!lV?????"7
sequential_1/dense/MatMulMatMul?????!??7F???0Q      Y@Y      )@a     ?U@q??jU?R@y?'aִa??"?
both?Your program is MODERATELY input-bound because 10.0% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?33.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.high"t36.6 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?74.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 
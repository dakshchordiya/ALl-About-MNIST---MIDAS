?	)#. ?DF@)#. ?DF@!)#. ?DF@	yv?"?7%@yv?"?7%@!yv?"?7%@"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6)#. ?DF@??2????@1?W?2?1??AhwH1@??I???B?.@Y[[x^*?@*	u???@2t
=Iterator::Model::MaxIntraOpParallelism::FlatMap[0]::Generatorm??]?@!kNt?x?X@)m??]?@1kNt?x?X@:Preprocessing2F
Iterator::Model??"?@!      Y@)?a??m?r?1	[6????:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelism{m??@!i2????X@)?\?&?r?1O??5???:Preprocessing2f
/Iterator::Model::MaxIntraOpParallelism::FlatMap?g#?M	@!|?-Q@?X@)?uʣk?1C????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 10.6% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.moderate"?13.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*high2t71.8 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9yv?"?7%@I?? Z?[U@Q?0?0`?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??2????@??2????@!??2????@      ??!       "	?W?2?1???W?2?1??!?W?2?1??*      ??!       2	hwH1@??hwH1@??!hwH1@??:	???B?.@???B?.@!???B?.@B      ??!       J	[[x^*?@[[x^*?@![[x^*?@R      ??!       Z	[[x^*?@[[x^*?@![[x^*?@b      ??!       JGPUYyv?"?7%@b q?? Z?[U@y?0?0`?@?":
sequential/conv2d_1/Relu_FusedConv2DXO?g????!XO?g????"i
=gradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter??ڝ???!3g?!???0"g
<gradient_tape/sequential/conv2d_1/Conv2D/Conv2DBackpropInputConv2DBackpropInput)?`?/???!?????|??0"g
;gradient_tape/sequential/conv2d/Conv2D/Conv2DBackpropFilterConv2DBackpropFilterP???f??!????`??0"6
sequential/conv2d/Conv2DConv2DK?Z?rM??!???;????0"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits򖮉??!>4??o???"[
:gradient_tape/sequential/max_pooling2d/MaxPool/MaxPoolGradMaxPoolGrad??3F???!eV?{??"]
<gradient_tape/sequential/max_pooling2d_1/MaxPool/MaxPoolGradMaxPoolGradq???]o??!????D???"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam^?`#????!??????"5
sequential/dense/MatMulMatMul??G??
??! %??????0Q      Y@Y      )@a     ?U@qm?
z??8@ymz~?????"?
both?Your program is MODERATELY input-bound because 10.6% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?13.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.high"t71.8 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?24.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 
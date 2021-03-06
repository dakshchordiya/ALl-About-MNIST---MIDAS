??4
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??,
?
conv2d_136/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_136/kernel

%conv2d_136/kernel/Read/ReadVariableOpReadVariableOpconv2d_136/kernel*&
_output_shapes
: *
dtype0
v
conv2d_136/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_136/bias
o
#conv2d_136/bias/Read/ReadVariableOpReadVariableOpconv2d_136/bias*
_output_shapes
: *
dtype0
?
batch_normalization_133/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namebatch_normalization_133/gamma
?
1batch_normalization_133/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_133/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_133/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_133/beta
?
0batch_normalization_133/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_133/beta*
_output_shapes
: *
dtype0
?
#batch_normalization_133/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#batch_normalization_133/moving_mean
?
7batch_normalization_133/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_133/moving_mean*
_output_shapes
: *
dtype0
?
'batch_normalization_133/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'batch_normalization_133/moving_variance
?
;batch_normalization_133/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_133/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_137/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv2d_137/kernel

%conv2d_137/kernel/Read/ReadVariableOpReadVariableOpconv2d_137/kernel*&
_output_shapes
:  *
dtype0
v
conv2d_137/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_137/bias
o
#conv2d_137/bias/Read/ReadVariableOpReadVariableOpconv2d_137/bias*
_output_shapes
: *
dtype0
?
batch_normalization_134/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namebatch_normalization_134/gamma
?
1batch_normalization_134/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_134/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_134/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_134/beta
?
0batch_normalization_134/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_134/beta*
_output_shapes
: *
dtype0
?
#batch_normalization_134/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#batch_normalization_134/moving_mean
?
7batch_normalization_134/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_134/moving_mean*
_output_shapes
: *
dtype0
?
'batch_normalization_134/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'batch_normalization_134/moving_variance
?
;batch_normalization_134/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_134/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_138/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameconv2d_138/kernel

%conv2d_138/kernel/Read/ReadVariableOpReadVariableOpconv2d_138/kernel*&
_output_shapes
:  *
dtype0
v
conv2d_138/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_138/bias
o
#conv2d_138/bias/Read/ReadVariableOpReadVariableOpconv2d_138/bias*
_output_shapes
: *
dtype0
?
batch_normalization_135/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_namebatch_normalization_135/gamma
?
1batch_normalization_135/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_135/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_135/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_135/beta
?
0batch_normalization_135/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_135/beta*
_output_shapes
: *
dtype0
?
#batch_normalization_135/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#batch_normalization_135/moving_mean
?
7batch_normalization_135/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_135/moving_mean*
_output_shapes
: *
dtype0
?
'batch_normalization_135/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'batch_normalization_135/moving_variance
?
;batch_normalization_135/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_135/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_139/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameconv2d_139/kernel

%conv2d_139/kernel/Read/ReadVariableOpReadVariableOpconv2d_139/kernel*&
_output_shapes
: @*
dtype0
v
conv2d_139/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_139/bias
o
#conv2d_139/bias/Read/ReadVariableOpReadVariableOpconv2d_139/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_136/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namebatch_normalization_136/gamma
?
1batch_normalization_136/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_136/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_136/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_136/beta
?
0batch_normalization_136/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_136/beta*
_output_shapes
:@*
dtype0
?
#batch_normalization_136/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_136/moving_mean
?
7batch_normalization_136/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_136/moving_mean*
_output_shapes
:@*
dtype0
?
'batch_normalization_136/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'batch_normalization_136/moving_variance
?
;batch_normalization_136/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_136/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_140/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv2d_140/kernel

%conv2d_140/kernel/Read/ReadVariableOpReadVariableOpconv2d_140/kernel*&
_output_shapes
:@@*
dtype0
v
conv2d_140/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_140/bias
o
#conv2d_140/bias/Read/ReadVariableOpReadVariableOpconv2d_140/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_137/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namebatch_normalization_137/gamma
?
1batch_normalization_137/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_137/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_137/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_137/beta
?
0batch_normalization_137/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_137/beta*
_output_shapes
:@*
dtype0
?
#batch_normalization_137/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_137/moving_mean
?
7batch_normalization_137/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_137/moving_mean*
_output_shapes
:@*
dtype0
?
'batch_normalization_137/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'batch_normalization_137/moving_variance
?
;batch_normalization_137/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_137/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_141/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameconv2d_141/kernel

%conv2d_141/kernel/Read/ReadVariableOpReadVariableOpconv2d_141/kernel*&
_output_shapes
:@@*
dtype0
v
conv2d_141/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_141/bias
o
#conv2d_141/bias/Read/ReadVariableOpReadVariableOpconv2d_141/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_138/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_namebatch_normalization_138/gamma
?
1batch_normalization_138/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_138/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_138/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_138/beta
?
0batch_normalization_138/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_138/beta*
_output_shapes
:@*
dtype0
?
#batch_normalization_138/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_138/moving_mean
?
7batch_normalization_138/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_138/moving_mean*
_output_shapes
:@*
dtype0
?
'batch_normalization_138/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'batch_normalization_138/moving_variance
?
;batch_normalization_138/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_138/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_142/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*"
shared_nameconv2d_142/kernel
?
%conv2d_142/kernel/Read/ReadVariableOpReadVariableOpconv2d_142/kernel*'
_output_shapes
:@?*
dtype0
w
conv2d_142/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_142/bias
p
#conv2d_142/bias/Read/ReadVariableOpReadVariableOpconv2d_142/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_139/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_139/gamma
?
1batch_normalization_139/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_139/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_139/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_139/beta
?
0batch_normalization_139/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_139/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_139/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_139/moving_mean
?
7batch_normalization_139/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_139/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_139/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_139/moving_variance
?
;batch_normalization_139/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_139/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_143/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_143/kernel
?
%conv2d_143/kernel/Read/ReadVariableOpReadVariableOpconv2d_143/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_143/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_143/bias
p
#conv2d_143/bias/Read/ReadVariableOpReadVariableOpconv2d_143/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_140/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_140/gamma
?
1batch_normalization_140/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_140/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_140/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_140/beta
?
0batch_normalization_140/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_140/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_140/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_140/moving_mean
?
7batch_normalization_140/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_140/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_140/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_140/moving_variance
?
;batch_normalization_140/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_140/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_144/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*"
shared_nameconv2d_144/kernel
?
%conv2d_144/kernel/Read/ReadVariableOpReadVariableOpconv2d_144/kernel*(
_output_shapes
:??*
dtype0
w
conv2d_144/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv2d_144/bias
p
#conv2d_144/bias/Read/ReadVariableOpReadVariableOpconv2d_144/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_141/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_namebatch_normalization_141/gamma
?
1batch_normalization_141/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_141/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_141/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_141/beta
?
0batch_normalization_141/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_141/beta*
_output_shapes	
:?*
dtype0
?
#batch_normalization_141/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#batch_normalization_141/moving_mean
?
7batch_normalization_141/moving_mean/Read/ReadVariableOpReadVariableOp#batch_normalization_141/moving_mean*
_output_shapes	
:?*
dtype0
?
'batch_normalization_141/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*8
shared_name)'batch_normalization_141/moving_variance
?
;batch_normalization_141/moving_variance/Read/ReadVariableOpReadVariableOp'batch_normalization_141/moving_variance*
_output_shapes	
:?*
dtype0
|
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_26/kernel
u
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel* 
_output_shapes
:
??*
dtype0
s
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_26/bias
l
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes	
:?*
dtype0
|
dense_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_27/kernel
u
#dense_27/kernel/Read/ReadVariableOpReadVariableOpdense_27/kernel* 
_output_shapes
:
??*
dtype0
s
dense_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_27/bias
l
!dense_27/bias/Read/ReadVariableOpReadVariableOpdense_27/bias*
_output_shapes	
:?*
dtype0
{
dense_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?>* 
shared_namedense_28/kernel
t
#dense_28/kernel/Read/ReadVariableOpReadVariableOpdense_28/kernel*
_output_shapes
:	?>*
dtype0
r
dense_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:>*
shared_namedense_28/bias
k
!dense_28/bias/Read/ReadVariableOpReadVariableOpdense_28/bias*
_output_shapes
:>*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv2d_136/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_136/kernel/m
?
,Adam/conv2d_136/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_136/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_136/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_136/bias/m
}
*Adam/conv2d_136/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_136/bias/m*
_output_shapes
: *
dtype0
?
$Adam/batch_normalization_133/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_133/gamma/m
?
8Adam/batch_normalization_133/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_133/gamma/m*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_133/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_133/beta/m
?
7Adam/batch_normalization_133/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_133/beta/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_137/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv2d_137/kernel/m
?
,Adam/conv2d_137/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_137/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_137/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_137/bias/m
}
*Adam/conv2d_137/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_137/bias/m*
_output_shapes
: *
dtype0
?
$Adam/batch_normalization_134/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_134/gamma/m
?
8Adam/batch_normalization_134/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_134/gamma/m*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_134/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_134/beta/m
?
7Adam/batch_normalization_134/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_134/beta/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_138/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv2d_138/kernel/m
?
,Adam/conv2d_138/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_138/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_138/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_138/bias/m
}
*Adam/conv2d_138/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_138/bias/m*
_output_shapes
: *
dtype0
?
$Adam/batch_normalization_135/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_135/gamma/m
?
8Adam/batch_normalization_135/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_135/gamma/m*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_135/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_135/beta/m
?
7Adam/batch_normalization_135/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_135/beta/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_139/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_139/kernel/m
?
,Adam/conv2d_139/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_139/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_139/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_139/bias/m
}
*Adam/conv2d_139/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_139/bias/m*
_output_shapes
:@*
dtype0
?
$Adam/batch_normalization_136/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_136/gamma/m
?
8Adam/batch_normalization_136/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_136/gamma/m*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_136/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_136/beta/m
?
7Adam/batch_normalization_136/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_136/beta/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_140/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv2d_140/kernel/m
?
,Adam/conv2d_140/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_140/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_140/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_140/bias/m
}
*Adam/conv2d_140/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_140/bias/m*
_output_shapes
:@*
dtype0
?
$Adam/batch_normalization_137/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_137/gamma/m
?
8Adam/batch_normalization_137/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_137/gamma/m*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_137/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_137/beta/m
?
7Adam/batch_normalization_137/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_137/beta/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_141/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv2d_141/kernel/m
?
,Adam/conv2d_141/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_141/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_141/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_141/bias/m
}
*Adam/conv2d_141/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_141/bias/m*
_output_shapes
:@*
dtype0
?
$Adam/batch_normalization_138/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_138/gamma/m
?
8Adam/batch_normalization_138/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_138/gamma/m*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_138/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_138/beta/m
?
7Adam/batch_normalization_138/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_138/beta/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_142/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*)
shared_nameAdam/conv2d_142/kernel/m
?
,Adam/conv2d_142/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_142/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_142/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/conv2d_142/bias/m
~
*Adam/conv2d_142/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_142/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/batch_normalization_139/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/batch_normalization_139/gamma/m
?
8Adam/batch_normalization_139/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_139/gamma/m*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_139/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_139/beta/m
?
7Adam/batch_normalization_139/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_139/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_143/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*)
shared_nameAdam/conv2d_143/kernel/m
?
,Adam/conv2d_143/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_143/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_143/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/conv2d_143/bias/m
~
*Adam/conv2d_143/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_143/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/batch_normalization_140/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/batch_normalization_140/gamma/m
?
8Adam/batch_normalization_140/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_140/gamma/m*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_140/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_140/beta/m
?
7Adam/batch_normalization_140/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_140/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_144/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*)
shared_nameAdam/conv2d_144/kernel/m
?
,Adam/conv2d_144/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_144/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_144/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/conv2d_144/bias/m
~
*Adam/conv2d_144/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_144/bias/m*
_output_shapes	
:?*
dtype0
?
$Adam/batch_normalization_141/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/batch_normalization_141/gamma/m
?
8Adam/batch_normalization_141/gamma/m/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_141/gamma/m*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_141/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_141/beta/m
?
7Adam/batch_normalization_141/beta/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_141/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_26/kernel/m
?
*Adam/dense_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_26/bias/m
z
(Adam/dense_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_27/kernel/m
?
*Adam/dense_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_27/bias/m
z
(Adam/dense_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?>*'
shared_nameAdam/dense_28/kernel/m
?
*Adam/dense_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_28/kernel/m*
_output_shapes
:	?>*
dtype0
?
Adam/dense_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:>*%
shared_nameAdam/dense_28/bias/m
y
(Adam/dense_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_28/bias/m*
_output_shapes
:>*
dtype0
?
Adam/conv2d_136/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_136/kernel/v
?
,Adam/conv2d_136/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_136/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_136/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_136/bias/v
}
*Adam/conv2d_136/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_136/bias/v*
_output_shapes
: *
dtype0
?
$Adam/batch_normalization_133/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_133/gamma/v
?
8Adam/batch_normalization_133/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_133/gamma/v*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_133/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_133/beta/v
?
7Adam/batch_normalization_133/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_133/beta/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_137/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv2d_137/kernel/v
?
,Adam/conv2d_137/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_137/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_137/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_137/bias/v
}
*Adam/conv2d_137/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_137/bias/v*
_output_shapes
: *
dtype0
?
$Adam/batch_normalization_134/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_134/gamma/v
?
8Adam/batch_normalization_134/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_134/gamma/v*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_134/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_134/beta/v
?
7Adam/batch_normalization_134/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_134/beta/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_138/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/conv2d_138/kernel/v
?
,Adam/conv2d_138/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_138/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_138/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_138/bias/v
}
*Adam/conv2d_138/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_138/bias/v*
_output_shapes
: *
dtype0
?
$Adam/batch_normalization_135/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/batch_normalization_135/gamma/v
?
8Adam/batch_normalization_135/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_135/gamma/v*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_135/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_135/beta/v
?
7Adam/batch_normalization_135/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_135/beta/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_139/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/conv2d_139/kernel/v
?
,Adam/conv2d_139/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_139/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_139/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_139/bias/v
}
*Adam/conv2d_139/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_139/bias/v*
_output_shapes
:@*
dtype0
?
$Adam/batch_normalization_136/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_136/gamma/v
?
8Adam/batch_normalization_136/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_136/gamma/v*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_136/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_136/beta/v
?
7Adam/batch_normalization_136/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_136/beta/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_140/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv2d_140/kernel/v
?
,Adam/conv2d_140/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_140/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_140/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_140/bias/v
}
*Adam/conv2d_140/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_140/bias/v*
_output_shapes
:@*
dtype0
?
$Adam/batch_normalization_137/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_137/gamma/v
?
8Adam/batch_normalization_137/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_137/gamma/v*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_137/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_137/beta/v
?
7Adam/batch_normalization_137/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_137/beta/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_141/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/conv2d_141/kernel/v
?
,Adam/conv2d_141/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_141/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_141/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_141/bias/v
}
*Adam/conv2d_141/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_141/bias/v*
_output_shapes
:@*
dtype0
?
$Adam/batch_normalization_138/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/batch_normalization_138/gamma/v
?
8Adam/batch_normalization_138/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_138/gamma/v*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_138/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_138/beta/v
?
7Adam/batch_normalization_138/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_138/beta/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_142/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*)
shared_nameAdam/conv2d_142/kernel/v
?
,Adam/conv2d_142/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_142/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_142/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/conv2d_142/bias/v
~
*Adam/conv2d_142/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_142/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/batch_normalization_139/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/batch_normalization_139/gamma/v
?
8Adam/batch_normalization_139/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_139/gamma/v*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_139/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_139/beta/v
?
7Adam/batch_normalization_139/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_139/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_143/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*)
shared_nameAdam/conv2d_143/kernel/v
?
,Adam/conv2d_143/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_143/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_143/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/conv2d_143/bias/v
~
*Adam/conv2d_143/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_143/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/batch_normalization_140/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/batch_normalization_140/gamma/v
?
8Adam/batch_normalization_140/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_140/gamma/v*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_140/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_140/beta/v
?
7Adam/batch_normalization_140/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_140/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_144/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*)
shared_nameAdam/conv2d_144/kernel/v
?
,Adam/conv2d_144/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_144/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_144/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameAdam/conv2d_144/bias/v
~
*Adam/conv2d_144/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_144/bias/v*
_output_shapes	
:?*
dtype0
?
$Adam/batch_normalization_141/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*5
shared_name&$Adam/batch_normalization_141/gamma/v
?
8Adam/batch_normalization_141/gamma/v/Read/ReadVariableOpReadVariableOp$Adam/batch_normalization_141/gamma/v*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_141/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_141/beta/v
?
7Adam/batch_normalization_141/beta/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_141/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_26/kernel/v
?
*Adam/dense_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_26/bias/v
z
(Adam/dense_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*'
shared_nameAdam/dense_27/kernel/v
?
*Adam/dense_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_27/bias/v
z
(Adam/dense_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_27/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?>*'
shared_nameAdam/dense_28/kernel/v
?
*Adam/dense_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_28/kernel/v*
_output_shapes
:	?>*
dtype0
?
Adam/dense_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:>*%
shared_nameAdam/dense_28/bias/v
y
(Adam/dense_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_28/bias/v*
_output_shapes
:>*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer_with_weights-8

layer-9
layer_with_weights-9
layer-10
layer_with_weights-10
layer-11
layer_with_weights-11
layer-12
layer-13
layer-14
layer_with_weights-12
layer-15
layer_with_weights-13
layer-16
layer_with_weights-14
layer-17
layer_with_weights-15
layer-18
layer_with_weights-16
layer-19
layer_with_weights-17
layer-20
layer-21
layer-22
layer-23
layer-24
layer_with_weights-18
layer-25
layer_with_weights-19
layer-26
layer_with_weights-20
layer-27
	optimizer
	variables
regularization_losses
 trainable_variables
!	keras_api
"
signatures
h

#kernel
$bias
%	variables
&regularization_losses
'trainable_variables
(	keras_api
?
)axis
	*gamma
+beta
,moving_mean
-moving_variance
.	variables
/regularization_losses
0trainable_variables
1	keras_api
h

2kernel
3bias
4	variables
5regularization_losses
6trainable_variables
7	keras_api
?
8axis
	9gamma
:beta
;moving_mean
<moving_variance
=	variables
>regularization_losses
?trainable_variables
@	keras_api
h

Akernel
Bbias
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
?
Gaxis
	Hgamma
Ibeta
Jmoving_mean
Kmoving_variance
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
R
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
h

Tkernel
Ubias
V	variables
Wregularization_losses
Xtrainable_variables
Y	keras_api
?
Zaxis
	[gamma
\beta
]moving_mean
^moving_variance
_	variables
`regularization_losses
atrainable_variables
b	keras_api
h

ckernel
dbias
e	variables
fregularization_losses
gtrainable_variables
h	keras_api
?
iaxis
	jgamma
kbeta
lmoving_mean
mmoving_variance
n	variables
oregularization_losses
ptrainable_variables
q	keras_api
h

rkernel
sbias
t	variables
uregularization_losses
vtrainable_variables
w	keras_api
?
xaxis
	ygamma
zbeta
{moving_mean
|moving_variance
}	variables
~regularization_losses
trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
n
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate#m?$m?*m?+m?2m?3m?9m?:m?Am?Bm?Hm?Im?Tm?Um?[m?\m?cm?dm?jm?km?rm?sm?ym?zm?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?#v?$v?*v?+v?2v?3v?9v?:v?Av?Bv?Hv?Iv?Tv?Uv?[v?\v?cv?dv?jv?kv?rv?sv?yv?zv?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?
?
#0
$1
*2
+3
,4
-5
26
37
98
:9
;10
<11
A12
B13
H14
I15
J16
K17
T18
U19
[20
\21
]22
^23
c24
d25
j26
k27
l28
m29
r30
s31
y32
z33
{34
|35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47
?48
?49
?50
?51
?52
?53
?54
?55
?56
?57
?58
?59
 
?
#0
$1
*2
+3
24
35
96
:7
A8
B9
H10
I11
T12
U13
[14
\15
c16
d17
j18
k19
r20
s21
y22
z23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?
	variables
regularization_losses
?layer_metrics
 trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
 
][
VARIABLE_VALUEconv2d_136/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_136/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

#0
$1
 

#0
$1
?
%	variables
&regularization_losses
?layer_metrics
'trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
 
hf
VARIABLE_VALUEbatch_normalization_133/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_133/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_133/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_133/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

*0
+1
,2
-3
 

*0
+1
?
.	variables
/regularization_losses
?layer_metrics
0trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
][
VARIABLE_VALUEconv2d_137/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_137/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

20
31
 

20
31
?
4	variables
5regularization_losses
?layer_metrics
6trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
 
hf
VARIABLE_VALUEbatch_normalization_134/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_134/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_134/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_134/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

90
:1
;2
<3
 

90
:1
?
=	variables
>regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
][
VARIABLE_VALUEconv2d_138/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_138/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

A0
B1
 

A0
B1
?
C	variables
Dregularization_losses
?layer_metrics
Etrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
 
hf
VARIABLE_VALUEbatch_normalization_135/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_135/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_135/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_135/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

H0
I1
J2
K3
 

H0
I1
?
L	variables
Mregularization_losses
?layer_metrics
Ntrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
 
 
 
?
P	variables
Qregularization_losses
?layer_metrics
Rtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
][
VARIABLE_VALUEconv2d_139/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_139/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

T0
U1
 

T0
U1
?
V	variables
Wregularization_losses
?layer_metrics
Xtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
 
hf
VARIABLE_VALUEbatch_normalization_136/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_136/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_136/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_136/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

[0
\1
]2
^3
 

[0
\1
?
_	variables
`regularization_losses
?layer_metrics
atrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
][
VARIABLE_VALUEconv2d_140/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_140/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

c0
d1
 

c0
d1
?
e	variables
fregularization_losses
?layer_metrics
gtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
 
hf
VARIABLE_VALUEbatch_normalization_137/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_137/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE#batch_normalization_137/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE'batch_normalization_137/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

j0
k1
l2
m3
 

j0
k1
?
n	variables
oregularization_losses
?layer_metrics
ptrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
^\
VARIABLE_VALUEconv2d_141/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_141/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

r0
s1
 

r0
s1
?
t	variables
uregularization_losses
?layer_metrics
vtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
 
ig
VARIABLE_VALUEbatch_normalization_138/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEbatch_normalization_138/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE#batch_normalization_138/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE'batch_normalization_138/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

y0
z1
{2
|3
 

y0
z1
?
}	variables
~regularization_losses
?layer_metrics
trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
 
 
 
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
 
 
 
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
^\
VARIABLE_VALUEconv2d_142/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_142/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
 
ig
VARIABLE_VALUEbatch_normalization_139/gamma6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEbatch_normalization_139/beta5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE#batch_normalization_139/moving_mean<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE'batch_normalization_139/moving_variance@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3
 

?0
?1
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
^\
VARIABLE_VALUEconv2d_143/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_143/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
 
ig
VARIABLE_VALUEbatch_normalization_140/gamma6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEbatch_normalization_140/beta5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE#batch_normalization_140/moving_mean<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE'batch_normalization_140/moving_variance@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3
 

?0
?1
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
^\
VARIABLE_VALUEconv2d_144/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv2d_144/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
 
ig
VARIABLE_VALUEbatch_normalization_141/gamma6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUEbatch_normalization_141/beta5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE#batch_normalization_141/moving_mean<layer_with_weights-17/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE'batch_normalization_141/moving_variance@layer_with_weights-17/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3
 

?0
?1
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
 
 
 
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
 
 
 
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
 
 
 
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
 
 
 
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
\Z
VARIABLE_VALUEdense_26/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_26/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
\Z
VARIABLE_VALUEdense_27/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_27/bias5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
\Z
VARIABLE_VALUEdense_28/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_28/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 
?
,0
-1
;2
<3
J4
K5
]6
^7
l8
m9
{10
|11
?12
?13
?14
?15
?16
?17

?0
?1
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
 
 
 
 
 
 
 

,0
-1
 
 
 
 
 
 
 
 
 

;0
<1
 
 
 
 
 
 
 
 
 

J0
K1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

]0
^1
 
 
 
 
 
 
 
 
 

l0
m1
 
 
 
 
 
 
 
 
 

{0
|1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 

?0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
?~
VARIABLE_VALUEAdam/conv2d_136/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_136/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_133/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_133/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_137/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_137/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_134/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_134/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_138/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_138/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_135/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_135/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_139/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_139/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_136/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_136/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_140/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_140/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_137/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_137/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_141/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_141/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_138/gamma/mRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_138/beta/mQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_142/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_142/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_139/gamma/mRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_139/beta/mQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_143/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_143/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_140/gamma/mRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_140/beta/mQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_144/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_144/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_141/gamma/mRlayer_with_weights-17/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_141/beta/mQlayer_with_weights-17/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_26/kernel/mSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_26/bias/mQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_27/kernel/mSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_27/bias/mQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_28/kernel/mSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_28/bias/mQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_136/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_136/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_133/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_133/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_137/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_137/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_134/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_134/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_138/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_138/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_135/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_135/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_139/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_139/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_136/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_136/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/conv2d_140/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_140/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_137/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_137/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_141/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_141/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_138/gamma/vRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_138/beta/vQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_142/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_142/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_139/gamma/vRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_139/beta/vQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_143/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_143/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_140/gamma/vRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_140/beta/vQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/conv2d_144/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/conv2d_144/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$Adam/batch_normalization_141/gamma/vRlayer_with_weights-17/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#Adam/batch_normalization_141/beta/vQlayer_with_weights-17/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_26/kernel/vSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_26/bias/vQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_27/kernel/vSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_27/bias/vQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_28/kernel/vSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_28/bias/vQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_conv2d_136_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_136_inputconv2d_136/kernelconv2d_136/biasbatch_normalization_133/gammabatch_normalization_133/beta#batch_normalization_133/moving_mean'batch_normalization_133/moving_varianceconv2d_137/kernelconv2d_137/biasbatch_normalization_134/gammabatch_normalization_134/beta#batch_normalization_134/moving_mean'batch_normalization_134/moving_varianceconv2d_138/kernelconv2d_138/biasbatch_normalization_135/gammabatch_normalization_135/beta#batch_normalization_135/moving_mean'batch_normalization_135/moving_varianceconv2d_139/kernelconv2d_139/biasbatch_normalization_136/gammabatch_normalization_136/beta#batch_normalization_136/moving_mean'batch_normalization_136/moving_varianceconv2d_140/kernelconv2d_140/biasbatch_normalization_137/gammabatch_normalization_137/beta#batch_normalization_137/moving_mean'batch_normalization_137/moving_varianceconv2d_141/kernelconv2d_141/biasbatch_normalization_138/gammabatch_normalization_138/beta#batch_normalization_138/moving_mean'batch_normalization_138/moving_varianceconv2d_142/kernelconv2d_142/biasbatch_normalization_139/gammabatch_normalization_139/beta#batch_normalization_139/moving_mean'batch_normalization_139/moving_varianceconv2d_143/kernelconv2d_143/biasbatch_normalization_140/gammabatch_normalization_140/beta#batch_normalization_140/moving_mean'batch_normalization_140/moving_varianceconv2d_144/kernelconv2d_144/biasbatch_normalization_141/gammabatch_normalization_141/beta#batch_normalization_141/moving_mean'batch_normalization_141/moving_variancedense_26/kerneldense_26/biasdense_27/kerneldense_27/biasdense_28/kerneldense_28/bias*H
TinA
?2=*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*^
_read_only_resource_inputs@
><	
 !"#$%&'()*+,-./0123456789:;<*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_293056
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?<
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_136/kernel/Read/ReadVariableOp#conv2d_136/bias/Read/ReadVariableOp1batch_normalization_133/gamma/Read/ReadVariableOp0batch_normalization_133/beta/Read/ReadVariableOp7batch_normalization_133/moving_mean/Read/ReadVariableOp;batch_normalization_133/moving_variance/Read/ReadVariableOp%conv2d_137/kernel/Read/ReadVariableOp#conv2d_137/bias/Read/ReadVariableOp1batch_normalization_134/gamma/Read/ReadVariableOp0batch_normalization_134/beta/Read/ReadVariableOp7batch_normalization_134/moving_mean/Read/ReadVariableOp;batch_normalization_134/moving_variance/Read/ReadVariableOp%conv2d_138/kernel/Read/ReadVariableOp#conv2d_138/bias/Read/ReadVariableOp1batch_normalization_135/gamma/Read/ReadVariableOp0batch_normalization_135/beta/Read/ReadVariableOp7batch_normalization_135/moving_mean/Read/ReadVariableOp;batch_normalization_135/moving_variance/Read/ReadVariableOp%conv2d_139/kernel/Read/ReadVariableOp#conv2d_139/bias/Read/ReadVariableOp1batch_normalization_136/gamma/Read/ReadVariableOp0batch_normalization_136/beta/Read/ReadVariableOp7batch_normalization_136/moving_mean/Read/ReadVariableOp;batch_normalization_136/moving_variance/Read/ReadVariableOp%conv2d_140/kernel/Read/ReadVariableOp#conv2d_140/bias/Read/ReadVariableOp1batch_normalization_137/gamma/Read/ReadVariableOp0batch_normalization_137/beta/Read/ReadVariableOp7batch_normalization_137/moving_mean/Read/ReadVariableOp;batch_normalization_137/moving_variance/Read/ReadVariableOp%conv2d_141/kernel/Read/ReadVariableOp#conv2d_141/bias/Read/ReadVariableOp1batch_normalization_138/gamma/Read/ReadVariableOp0batch_normalization_138/beta/Read/ReadVariableOp7batch_normalization_138/moving_mean/Read/ReadVariableOp;batch_normalization_138/moving_variance/Read/ReadVariableOp%conv2d_142/kernel/Read/ReadVariableOp#conv2d_142/bias/Read/ReadVariableOp1batch_normalization_139/gamma/Read/ReadVariableOp0batch_normalization_139/beta/Read/ReadVariableOp7batch_normalization_139/moving_mean/Read/ReadVariableOp;batch_normalization_139/moving_variance/Read/ReadVariableOp%conv2d_143/kernel/Read/ReadVariableOp#conv2d_143/bias/Read/ReadVariableOp1batch_normalization_140/gamma/Read/ReadVariableOp0batch_normalization_140/beta/Read/ReadVariableOp7batch_normalization_140/moving_mean/Read/ReadVariableOp;batch_normalization_140/moving_variance/Read/ReadVariableOp%conv2d_144/kernel/Read/ReadVariableOp#conv2d_144/bias/Read/ReadVariableOp1batch_normalization_141/gamma/Read/ReadVariableOp0batch_normalization_141/beta/Read/ReadVariableOp7batch_normalization_141/moving_mean/Read/ReadVariableOp;batch_normalization_141/moving_variance/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOp#dense_27/kernel/Read/ReadVariableOp!dense_27/bias/Read/ReadVariableOp#dense_28/kernel/Read/ReadVariableOp!dense_28/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv2d_136/kernel/m/Read/ReadVariableOp*Adam/conv2d_136/bias/m/Read/ReadVariableOp8Adam/batch_normalization_133/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_133/beta/m/Read/ReadVariableOp,Adam/conv2d_137/kernel/m/Read/ReadVariableOp*Adam/conv2d_137/bias/m/Read/ReadVariableOp8Adam/batch_normalization_134/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_134/beta/m/Read/ReadVariableOp,Adam/conv2d_138/kernel/m/Read/ReadVariableOp*Adam/conv2d_138/bias/m/Read/ReadVariableOp8Adam/batch_normalization_135/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_135/beta/m/Read/ReadVariableOp,Adam/conv2d_139/kernel/m/Read/ReadVariableOp*Adam/conv2d_139/bias/m/Read/ReadVariableOp8Adam/batch_normalization_136/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_136/beta/m/Read/ReadVariableOp,Adam/conv2d_140/kernel/m/Read/ReadVariableOp*Adam/conv2d_140/bias/m/Read/ReadVariableOp8Adam/batch_normalization_137/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_137/beta/m/Read/ReadVariableOp,Adam/conv2d_141/kernel/m/Read/ReadVariableOp*Adam/conv2d_141/bias/m/Read/ReadVariableOp8Adam/batch_normalization_138/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_138/beta/m/Read/ReadVariableOp,Adam/conv2d_142/kernel/m/Read/ReadVariableOp*Adam/conv2d_142/bias/m/Read/ReadVariableOp8Adam/batch_normalization_139/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_139/beta/m/Read/ReadVariableOp,Adam/conv2d_143/kernel/m/Read/ReadVariableOp*Adam/conv2d_143/bias/m/Read/ReadVariableOp8Adam/batch_normalization_140/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_140/beta/m/Read/ReadVariableOp,Adam/conv2d_144/kernel/m/Read/ReadVariableOp*Adam/conv2d_144/bias/m/Read/ReadVariableOp8Adam/batch_normalization_141/gamma/m/Read/ReadVariableOp7Adam/batch_normalization_141/beta/m/Read/ReadVariableOp*Adam/dense_26/kernel/m/Read/ReadVariableOp(Adam/dense_26/bias/m/Read/ReadVariableOp*Adam/dense_27/kernel/m/Read/ReadVariableOp(Adam/dense_27/bias/m/Read/ReadVariableOp*Adam/dense_28/kernel/m/Read/ReadVariableOp(Adam/dense_28/bias/m/Read/ReadVariableOp,Adam/conv2d_136/kernel/v/Read/ReadVariableOp*Adam/conv2d_136/bias/v/Read/ReadVariableOp8Adam/batch_normalization_133/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_133/beta/v/Read/ReadVariableOp,Adam/conv2d_137/kernel/v/Read/ReadVariableOp*Adam/conv2d_137/bias/v/Read/ReadVariableOp8Adam/batch_normalization_134/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_134/beta/v/Read/ReadVariableOp,Adam/conv2d_138/kernel/v/Read/ReadVariableOp*Adam/conv2d_138/bias/v/Read/ReadVariableOp8Adam/batch_normalization_135/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_135/beta/v/Read/ReadVariableOp,Adam/conv2d_139/kernel/v/Read/ReadVariableOp*Adam/conv2d_139/bias/v/Read/ReadVariableOp8Adam/batch_normalization_136/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_136/beta/v/Read/ReadVariableOp,Adam/conv2d_140/kernel/v/Read/ReadVariableOp*Adam/conv2d_140/bias/v/Read/ReadVariableOp8Adam/batch_normalization_137/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_137/beta/v/Read/ReadVariableOp,Adam/conv2d_141/kernel/v/Read/ReadVariableOp*Adam/conv2d_141/bias/v/Read/ReadVariableOp8Adam/batch_normalization_138/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_138/beta/v/Read/ReadVariableOp,Adam/conv2d_142/kernel/v/Read/ReadVariableOp*Adam/conv2d_142/bias/v/Read/ReadVariableOp8Adam/batch_normalization_139/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_139/beta/v/Read/ReadVariableOp,Adam/conv2d_143/kernel/v/Read/ReadVariableOp*Adam/conv2d_143/bias/v/Read/ReadVariableOp8Adam/batch_normalization_140/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_140/beta/v/Read/ReadVariableOp,Adam/conv2d_144/kernel/v/Read/ReadVariableOp*Adam/conv2d_144/bias/v/Read/ReadVariableOp8Adam/batch_normalization_141/gamma/v/Read/ReadVariableOp7Adam/batch_normalization_141/beta/v/Read/ReadVariableOp*Adam/dense_26/kernel/v/Read/ReadVariableOp(Adam/dense_26/bias/v/Read/ReadVariableOp*Adam/dense_27/kernel/v/Read/ReadVariableOp(Adam/dense_27/bias/v/Read/ReadVariableOp*Adam/dense_28/kernel/v/Read/ReadVariableOp(Adam/dense_28/bias/v/Read/ReadVariableOpConst*?
Tin?
?2?	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_295755
?%
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_136/kernelconv2d_136/biasbatch_normalization_133/gammabatch_normalization_133/beta#batch_normalization_133/moving_mean'batch_normalization_133/moving_varianceconv2d_137/kernelconv2d_137/biasbatch_normalization_134/gammabatch_normalization_134/beta#batch_normalization_134/moving_mean'batch_normalization_134/moving_varianceconv2d_138/kernelconv2d_138/biasbatch_normalization_135/gammabatch_normalization_135/beta#batch_normalization_135/moving_mean'batch_normalization_135/moving_varianceconv2d_139/kernelconv2d_139/biasbatch_normalization_136/gammabatch_normalization_136/beta#batch_normalization_136/moving_mean'batch_normalization_136/moving_varianceconv2d_140/kernelconv2d_140/biasbatch_normalization_137/gammabatch_normalization_137/beta#batch_normalization_137/moving_mean'batch_normalization_137/moving_varianceconv2d_141/kernelconv2d_141/biasbatch_normalization_138/gammabatch_normalization_138/beta#batch_normalization_138/moving_mean'batch_normalization_138/moving_varianceconv2d_142/kernelconv2d_142/biasbatch_normalization_139/gammabatch_normalization_139/beta#batch_normalization_139/moving_mean'batch_normalization_139/moving_varianceconv2d_143/kernelconv2d_143/biasbatch_normalization_140/gammabatch_normalization_140/beta#batch_normalization_140/moving_mean'batch_normalization_140/moving_varianceconv2d_144/kernelconv2d_144/biasbatch_normalization_141/gammabatch_normalization_141/beta#batch_normalization_141/moving_mean'batch_normalization_141/moving_variancedense_26/kerneldense_26/biasdense_27/kerneldense_27/biasdense_28/kerneldense_28/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_136/kernel/mAdam/conv2d_136/bias/m$Adam/batch_normalization_133/gamma/m#Adam/batch_normalization_133/beta/mAdam/conv2d_137/kernel/mAdam/conv2d_137/bias/m$Adam/batch_normalization_134/gamma/m#Adam/batch_normalization_134/beta/mAdam/conv2d_138/kernel/mAdam/conv2d_138/bias/m$Adam/batch_normalization_135/gamma/m#Adam/batch_normalization_135/beta/mAdam/conv2d_139/kernel/mAdam/conv2d_139/bias/m$Adam/batch_normalization_136/gamma/m#Adam/batch_normalization_136/beta/mAdam/conv2d_140/kernel/mAdam/conv2d_140/bias/m$Adam/batch_normalization_137/gamma/m#Adam/batch_normalization_137/beta/mAdam/conv2d_141/kernel/mAdam/conv2d_141/bias/m$Adam/batch_normalization_138/gamma/m#Adam/batch_normalization_138/beta/mAdam/conv2d_142/kernel/mAdam/conv2d_142/bias/m$Adam/batch_normalization_139/gamma/m#Adam/batch_normalization_139/beta/mAdam/conv2d_143/kernel/mAdam/conv2d_143/bias/m$Adam/batch_normalization_140/gamma/m#Adam/batch_normalization_140/beta/mAdam/conv2d_144/kernel/mAdam/conv2d_144/bias/m$Adam/batch_normalization_141/gamma/m#Adam/batch_normalization_141/beta/mAdam/dense_26/kernel/mAdam/dense_26/bias/mAdam/dense_27/kernel/mAdam/dense_27/bias/mAdam/dense_28/kernel/mAdam/dense_28/bias/mAdam/conv2d_136/kernel/vAdam/conv2d_136/bias/v$Adam/batch_normalization_133/gamma/v#Adam/batch_normalization_133/beta/vAdam/conv2d_137/kernel/vAdam/conv2d_137/bias/v$Adam/batch_normalization_134/gamma/v#Adam/batch_normalization_134/beta/vAdam/conv2d_138/kernel/vAdam/conv2d_138/bias/v$Adam/batch_normalization_135/gamma/v#Adam/batch_normalization_135/beta/vAdam/conv2d_139/kernel/vAdam/conv2d_139/bias/v$Adam/batch_normalization_136/gamma/v#Adam/batch_normalization_136/beta/vAdam/conv2d_140/kernel/vAdam/conv2d_140/bias/v$Adam/batch_normalization_137/gamma/v#Adam/batch_normalization_137/beta/vAdam/conv2d_141/kernel/vAdam/conv2d_141/bias/v$Adam/batch_normalization_138/gamma/v#Adam/batch_normalization_138/beta/vAdam/conv2d_142/kernel/vAdam/conv2d_142/bias/v$Adam/batch_normalization_139/gamma/v#Adam/batch_normalization_139/beta/vAdam/conv2d_143/kernel/vAdam/conv2d_143/bias/v$Adam/batch_normalization_140/gamma/v#Adam/batch_normalization_140/beta/vAdam/conv2d_144/kernel/vAdam/conv2d_144/bias/v$Adam/batch_normalization_141/gamma/v#Adam/batch_normalization_141/beta/vAdam/dense_26/kernel/vAdam/dense_26/bias/vAdam/dense_27/kernel/vAdam/dense_27/bias/vAdam/dense_28/kernel/vAdam/dense_28/bias/v*?
Tin?
?2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_296224??&
?
?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_295104

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?<
!__inference__wrapped_model_290149
conv2d_136_input;
7sequential_15_conv2d_136_conv2d_readvariableop_resource<
8sequential_15_conv2d_136_biasadd_readvariableop_resourceA
=sequential_15_batch_normalization_133_readvariableop_resourceC
?sequential_15_batch_normalization_133_readvariableop_1_resourceR
Nsequential_15_batch_normalization_133_fusedbatchnormv3_readvariableop_resourceT
Psequential_15_batch_normalization_133_fusedbatchnormv3_readvariableop_1_resource;
7sequential_15_conv2d_137_conv2d_readvariableop_resource<
8sequential_15_conv2d_137_biasadd_readvariableop_resourceA
=sequential_15_batch_normalization_134_readvariableop_resourceC
?sequential_15_batch_normalization_134_readvariableop_1_resourceR
Nsequential_15_batch_normalization_134_fusedbatchnormv3_readvariableop_resourceT
Psequential_15_batch_normalization_134_fusedbatchnormv3_readvariableop_1_resource;
7sequential_15_conv2d_138_conv2d_readvariableop_resource<
8sequential_15_conv2d_138_biasadd_readvariableop_resourceA
=sequential_15_batch_normalization_135_readvariableop_resourceC
?sequential_15_batch_normalization_135_readvariableop_1_resourceR
Nsequential_15_batch_normalization_135_fusedbatchnormv3_readvariableop_resourceT
Psequential_15_batch_normalization_135_fusedbatchnormv3_readvariableop_1_resource;
7sequential_15_conv2d_139_conv2d_readvariableop_resource<
8sequential_15_conv2d_139_biasadd_readvariableop_resourceA
=sequential_15_batch_normalization_136_readvariableop_resourceC
?sequential_15_batch_normalization_136_readvariableop_1_resourceR
Nsequential_15_batch_normalization_136_fusedbatchnormv3_readvariableop_resourceT
Psequential_15_batch_normalization_136_fusedbatchnormv3_readvariableop_1_resource;
7sequential_15_conv2d_140_conv2d_readvariableop_resource<
8sequential_15_conv2d_140_biasadd_readvariableop_resourceA
=sequential_15_batch_normalization_137_readvariableop_resourceC
?sequential_15_batch_normalization_137_readvariableop_1_resourceR
Nsequential_15_batch_normalization_137_fusedbatchnormv3_readvariableop_resourceT
Psequential_15_batch_normalization_137_fusedbatchnormv3_readvariableop_1_resource;
7sequential_15_conv2d_141_conv2d_readvariableop_resource<
8sequential_15_conv2d_141_biasadd_readvariableop_resourceA
=sequential_15_batch_normalization_138_readvariableop_resourceC
?sequential_15_batch_normalization_138_readvariableop_1_resourceR
Nsequential_15_batch_normalization_138_fusedbatchnormv3_readvariableop_resourceT
Psequential_15_batch_normalization_138_fusedbatchnormv3_readvariableop_1_resource;
7sequential_15_conv2d_142_conv2d_readvariableop_resource<
8sequential_15_conv2d_142_biasadd_readvariableop_resourceA
=sequential_15_batch_normalization_139_readvariableop_resourceC
?sequential_15_batch_normalization_139_readvariableop_1_resourceR
Nsequential_15_batch_normalization_139_fusedbatchnormv3_readvariableop_resourceT
Psequential_15_batch_normalization_139_fusedbatchnormv3_readvariableop_1_resource;
7sequential_15_conv2d_143_conv2d_readvariableop_resource<
8sequential_15_conv2d_143_biasadd_readvariableop_resourceA
=sequential_15_batch_normalization_140_readvariableop_resourceC
?sequential_15_batch_normalization_140_readvariableop_1_resourceR
Nsequential_15_batch_normalization_140_fusedbatchnormv3_readvariableop_resourceT
Psequential_15_batch_normalization_140_fusedbatchnormv3_readvariableop_1_resource;
7sequential_15_conv2d_144_conv2d_readvariableop_resource<
8sequential_15_conv2d_144_biasadd_readvariableop_resourceA
=sequential_15_batch_normalization_141_readvariableop_resourceC
?sequential_15_batch_normalization_141_readvariableop_1_resourceR
Nsequential_15_batch_normalization_141_fusedbatchnormv3_readvariableop_resourceT
Psequential_15_batch_normalization_141_fusedbatchnormv3_readvariableop_1_resource9
5sequential_15_dense_26_matmul_readvariableop_resource:
6sequential_15_dense_26_biasadd_readvariableop_resource9
5sequential_15_dense_27_matmul_readvariableop_resource:
6sequential_15_dense_27_biasadd_readvariableop_resource9
5sequential_15_dense_28_matmul_readvariableop_resource:
6sequential_15_dense_28_biasadd_readvariableop_resource
identity??Esequential_15/batch_normalization_133/FusedBatchNormV3/ReadVariableOp?Gsequential_15/batch_normalization_133/FusedBatchNormV3/ReadVariableOp_1?4sequential_15/batch_normalization_133/ReadVariableOp?6sequential_15/batch_normalization_133/ReadVariableOp_1?Esequential_15/batch_normalization_134/FusedBatchNormV3/ReadVariableOp?Gsequential_15/batch_normalization_134/FusedBatchNormV3/ReadVariableOp_1?4sequential_15/batch_normalization_134/ReadVariableOp?6sequential_15/batch_normalization_134/ReadVariableOp_1?Esequential_15/batch_normalization_135/FusedBatchNormV3/ReadVariableOp?Gsequential_15/batch_normalization_135/FusedBatchNormV3/ReadVariableOp_1?4sequential_15/batch_normalization_135/ReadVariableOp?6sequential_15/batch_normalization_135/ReadVariableOp_1?Esequential_15/batch_normalization_136/FusedBatchNormV3/ReadVariableOp?Gsequential_15/batch_normalization_136/FusedBatchNormV3/ReadVariableOp_1?4sequential_15/batch_normalization_136/ReadVariableOp?6sequential_15/batch_normalization_136/ReadVariableOp_1?Esequential_15/batch_normalization_137/FusedBatchNormV3/ReadVariableOp?Gsequential_15/batch_normalization_137/FusedBatchNormV3/ReadVariableOp_1?4sequential_15/batch_normalization_137/ReadVariableOp?6sequential_15/batch_normalization_137/ReadVariableOp_1?Esequential_15/batch_normalization_138/FusedBatchNormV3/ReadVariableOp?Gsequential_15/batch_normalization_138/FusedBatchNormV3/ReadVariableOp_1?4sequential_15/batch_normalization_138/ReadVariableOp?6sequential_15/batch_normalization_138/ReadVariableOp_1?Esequential_15/batch_normalization_139/FusedBatchNormV3/ReadVariableOp?Gsequential_15/batch_normalization_139/FusedBatchNormV3/ReadVariableOp_1?4sequential_15/batch_normalization_139/ReadVariableOp?6sequential_15/batch_normalization_139/ReadVariableOp_1?Esequential_15/batch_normalization_140/FusedBatchNormV3/ReadVariableOp?Gsequential_15/batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1?4sequential_15/batch_normalization_140/ReadVariableOp?6sequential_15/batch_normalization_140/ReadVariableOp_1?Esequential_15/batch_normalization_141/FusedBatchNormV3/ReadVariableOp?Gsequential_15/batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1?4sequential_15/batch_normalization_141/ReadVariableOp?6sequential_15/batch_normalization_141/ReadVariableOp_1?/sequential_15/conv2d_136/BiasAdd/ReadVariableOp?.sequential_15/conv2d_136/Conv2D/ReadVariableOp?/sequential_15/conv2d_137/BiasAdd/ReadVariableOp?.sequential_15/conv2d_137/Conv2D/ReadVariableOp?/sequential_15/conv2d_138/BiasAdd/ReadVariableOp?.sequential_15/conv2d_138/Conv2D/ReadVariableOp?/sequential_15/conv2d_139/BiasAdd/ReadVariableOp?.sequential_15/conv2d_139/Conv2D/ReadVariableOp?/sequential_15/conv2d_140/BiasAdd/ReadVariableOp?.sequential_15/conv2d_140/Conv2D/ReadVariableOp?/sequential_15/conv2d_141/BiasAdd/ReadVariableOp?.sequential_15/conv2d_141/Conv2D/ReadVariableOp?/sequential_15/conv2d_142/BiasAdd/ReadVariableOp?.sequential_15/conv2d_142/Conv2D/ReadVariableOp?/sequential_15/conv2d_143/BiasAdd/ReadVariableOp?.sequential_15/conv2d_143/Conv2D/ReadVariableOp?/sequential_15/conv2d_144/BiasAdd/ReadVariableOp?.sequential_15/conv2d_144/Conv2D/ReadVariableOp?-sequential_15/dense_26/BiasAdd/ReadVariableOp?,sequential_15/dense_26/MatMul/ReadVariableOp?-sequential_15/dense_27/BiasAdd/ReadVariableOp?,sequential_15/dense_27/MatMul/ReadVariableOp?-sequential_15/dense_28/BiasAdd/ReadVariableOp?,sequential_15/dense_28/MatMul/ReadVariableOp?
.sequential_15/conv2d_136/Conv2D/ReadVariableOpReadVariableOp7sequential_15_conv2d_136_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype020
.sequential_15/conv2d_136/Conv2D/ReadVariableOp?
sequential_15/conv2d_136/Conv2DConv2Dconv2d_136_input6sequential_15/conv2d_136/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2!
sequential_15/conv2d_136/Conv2D?
/sequential_15/conv2d_136/BiasAdd/ReadVariableOpReadVariableOp8sequential_15_conv2d_136_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_15/conv2d_136/BiasAdd/ReadVariableOp?
 sequential_15/conv2d_136/BiasAddBiasAdd(sequential_15/conv2d_136/Conv2D:output:07sequential_15/conv2d_136/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2"
 sequential_15/conv2d_136/BiasAdd?
sequential_15/conv2d_136/ReluRelu)sequential_15/conv2d_136/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
sequential_15/conv2d_136/Relu?
4sequential_15/batch_normalization_133/ReadVariableOpReadVariableOp=sequential_15_batch_normalization_133_readvariableop_resource*
_output_shapes
: *
dtype026
4sequential_15/batch_normalization_133/ReadVariableOp?
6sequential_15/batch_normalization_133/ReadVariableOp_1ReadVariableOp?sequential_15_batch_normalization_133_readvariableop_1_resource*
_output_shapes
: *
dtype028
6sequential_15/batch_normalization_133/ReadVariableOp_1?
Esequential_15/batch_normalization_133/FusedBatchNormV3/ReadVariableOpReadVariableOpNsequential_15_batch_normalization_133_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02G
Esequential_15/batch_normalization_133/FusedBatchNormV3/ReadVariableOp?
Gsequential_15/batch_normalization_133/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPsequential_15_batch_normalization_133_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02I
Gsequential_15/batch_normalization_133/FusedBatchNormV3/ReadVariableOp_1?
6sequential_15/batch_normalization_133/FusedBatchNormV3FusedBatchNormV3+sequential_15/conv2d_136/Relu:activations:0<sequential_15/batch_normalization_133/ReadVariableOp:value:0>sequential_15/batch_normalization_133/ReadVariableOp_1:value:0Msequential_15/batch_normalization_133/FusedBatchNormV3/ReadVariableOp:value:0Osequential_15/batch_normalization_133/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:??????????? : : : : :*
epsilon%o?:*
is_training( 28
6sequential_15/batch_normalization_133/FusedBatchNormV3?
.sequential_15/conv2d_137/Conv2D/ReadVariableOpReadVariableOp7sequential_15_conv2d_137_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype020
.sequential_15/conv2d_137/Conv2D/ReadVariableOp?
sequential_15/conv2d_137/Conv2DConv2D:sequential_15/batch_normalization_133/FusedBatchNormV3:y:06sequential_15/conv2d_137/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2!
sequential_15/conv2d_137/Conv2D?
/sequential_15/conv2d_137/BiasAdd/ReadVariableOpReadVariableOp8sequential_15_conv2d_137_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_15/conv2d_137/BiasAdd/ReadVariableOp?
 sequential_15/conv2d_137/BiasAddBiasAdd(sequential_15/conv2d_137/Conv2D:output:07sequential_15/conv2d_137/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2"
 sequential_15/conv2d_137/BiasAdd?
sequential_15/conv2d_137/ReluRelu)sequential_15/conv2d_137/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
sequential_15/conv2d_137/Relu?
4sequential_15/batch_normalization_134/ReadVariableOpReadVariableOp=sequential_15_batch_normalization_134_readvariableop_resource*
_output_shapes
: *
dtype026
4sequential_15/batch_normalization_134/ReadVariableOp?
6sequential_15/batch_normalization_134/ReadVariableOp_1ReadVariableOp?sequential_15_batch_normalization_134_readvariableop_1_resource*
_output_shapes
: *
dtype028
6sequential_15/batch_normalization_134/ReadVariableOp_1?
Esequential_15/batch_normalization_134/FusedBatchNormV3/ReadVariableOpReadVariableOpNsequential_15_batch_normalization_134_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02G
Esequential_15/batch_normalization_134/FusedBatchNormV3/ReadVariableOp?
Gsequential_15/batch_normalization_134/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPsequential_15_batch_normalization_134_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02I
Gsequential_15/batch_normalization_134/FusedBatchNormV3/ReadVariableOp_1?
6sequential_15/batch_normalization_134/FusedBatchNormV3FusedBatchNormV3+sequential_15/conv2d_137/Relu:activations:0<sequential_15/batch_normalization_134/ReadVariableOp:value:0>sequential_15/batch_normalization_134/ReadVariableOp_1:value:0Msequential_15/batch_normalization_134/FusedBatchNormV3/ReadVariableOp:value:0Osequential_15/batch_normalization_134/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:??????????? : : : : :*
epsilon%o?:*
is_training( 28
6sequential_15/batch_normalization_134/FusedBatchNormV3?
.sequential_15/conv2d_138/Conv2D/ReadVariableOpReadVariableOp7sequential_15_conv2d_138_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype020
.sequential_15/conv2d_138/Conv2D/ReadVariableOp?
sequential_15/conv2d_138/Conv2DConv2D:sequential_15/batch_normalization_134/FusedBatchNormV3:y:06sequential_15/conv2d_138/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? *
paddingSAME*
strides
2!
sequential_15/conv2d_138/Conv2D?
/sequential_15/conv2d_138/BiasAdd/ReadVariableOpReadVariableOp8sequential_15_conv2d_138_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_15/conv2d_138/BiasAdd/ReadVariableOp?
 sequential_15/conv2d_138/BiasAddBiasAdd(sequential_15/conv2d_138/Conv2D:output:07sequential_15/conv2d_138/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? 2"
 sequential_15/conv2d_138/BiasAdd?
sequential_15/conv2d_138/ReluRelu)sequential_15/conv2d_138/BiasAdd:output:0*
T0*0
_output_shapes
:?????????o? 2
sequential_15/conv2d_138/Relu?
4sequential_15/batch_normalization_135/ReadVariableOpReadVariableOp=sequential_15_batch_normalization_135_readvariableop_resource*
_output_shapes
: *
dtype026
4sequential_15/batch_normalization_135/ReadVariableOp?
6sequential_15/batch_normalization_135/ReadVariableOp_1ReadVariableOp?sequential_15_batch_normalization_135_readvariableop_1_resource*
_output_shapes
: *
dtype028
6sequential_15/batch_normalization_135/ReadVariableOp_1?
Esequential_15/batch_normalization_135/FusedBatchNormV3/ReadVariableOpReadVariableOpNsequential_15_batch_normalization_135_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02G
Esequential_15/batch_normalization_135/FusedBatchNormV3/ReadVariableOp?
Gsequential_15/batch_normalization_135/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPsequential_15_batch_normalization_135_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02I
Gsequential_15/batch_normalization_135/FusedBatchNormV3/ReadVariableOp_1?
6sequential_15/batch_normalization_135/FusedBatchNormV3FusedBatchNormV3+sequential_15/conv2d_138/Relu:activations:0<sequential_15/batch_normalization_135/ReadVariableOp:value:0>sequential_15/batch_normalization_135/ReadVariableOp_1:value:0Msequential_15/batch_normalization_135/FusedBatchNormV3/ReadVariableOp:value:0Osequential_15/batch_normalization_135/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????o? : : : : :*
epsilon%o?:*
is_training( 28
6sequential_15/batch_normalization_135/FusedBatchNormV3?
&sequential_15/max_pooling2d_36/MaxPoolMaxPool:sequential_15/batch_normalization_135/FusedBatchNormV3:y:0*/
_output_shapes
:?????????7J *
ksize
*
paddingVALID*
strides
2(
&sequential_15/max_pooling2d_36/MaxPool?
.sequential_15/conv2d_139/Conv2D/ReadVariableOpReadVariableOp7sequential_15_conv2d_139_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype020
.sequential_15/conv2d_139/Conv2D/ReadVariableOp?
sequential_15/conv2d_139/Conv2DConv2D/sequential_15/max_pooling2d_36/MaxPool:output:06sequential_15/conv2d_139/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5H@*
paddingVALID*
strides
2!
sequential_15/conv2d_139/Conv2D?
/sequential_15/conv2d_139/BiasAdd/ReadVariableOpReadVariableOp8sequential_15_conv2d_139_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_15/conv2d_139/BiasAdd/ReadVariableOp?
 sequential_15/conv2d_139/BiasAddBiasAdd(sequential_15/conv2d_139/Conv2D:output:07sequential_15/conv2d_139/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5H@2"
 sequential_15/conv2d_139/BiasAdd?
sequential_15/conv2d_139/ReluRelu)sequential_15/conv2d_139/BiasAdd:output:0*
T0*/
_output_shapes
:?????????5H@2
sequential_15/conv2d_139/Relu?
4sequential_15/batch_normalization_136/ReadVariableOpReadVariableOp=sequential_15_batch_normalization_136_readvariableop_resource*
_output_shapes
:@*
dtype026
4sequential_15/batch_normalization_136/ReadVariableOp?
6sequential_15/batch_normalization_136/ReadVariableOp_1ReadVariableOp?sequential_15_batch_normalization_136_readvariableop_1_resource*
_output_shapes
:@*
dtype028
6sequential_15/batch_normalization_136/ReadVariableOp_1?
Esequential_15/batch_normalization_136/FusedBatchNormV3/ReadVariableOpReadVariableOpNsequential_15_batch_normalization_136_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02G
Esequential_15/batch_normalization_136/FusedBatchNormV3/ReadVariableOp?
Gsequential_15/batch_normalization_136/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPsequential_15_batch_normalization_136_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02I
Gsequential_15/batch_normalization_136/FusedBatchNormV3/ReadVariableOp_1?
6sequential_15/batch_normalization_136/FusedBatchNormV3FusedBatchNormV3+sequential_15/conv2d_139/Relu:activations:0<sequential_15/batch_normalization_136/ReadVariableOp:value:0>sequential_15/batch_normalization_136/ReadVariableOp_1:value:0Msequential_15/batch_normalization_136/FusedBatchNormV3/ReadVariableOp:value:0Osequential_15/batch_normalization_136/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????5H@:@:@:@:@:*
epsilon%o?:*
is_training( 28
6sequential_15/batch_normalization_136/FusedBatchNormV3?
.sequential_15/conv2d_140/Conv2D/ReadVariableOpReadVariableOp7sequential_15_conv2d_140_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype020
.sequential_15/conv2d_140/Conv2D/ReadVariableOp?
sequential_15/conv2d_140/Conv2DConv2D:sequential_15/batch_normalization_136/FusedBatchNormV3:y:06sequential_15/conv2d_140/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????3F@*
paddingVALID*
strides
2!
sequential_15/conv2d_140/Conv2D?
/sequential_15/conv2d_140/BiasAdd/ReadVariableOpReadVariableOp8sequential_15_conv2d_140_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_15/conv2d_140/BiasAdd/ReadVariableOp?
 sequential_15/conv2d_140/BiasAddBiasAdd(sequential_15/conv2d_140/Conv2D:output:07sequential_15/conv2d_140/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????3F@2"
 sequential_15/conv2d_140/BiasAdd?
sequential_15/conv2d_140/ReluRelu)sequential_15/conv2d_140/BiasAdd:output:0*
T0*/
_output_shapes
:?????????3F@2
sequential_15/conv2d_140/Relu?
4sequential_15/batch_normalization_137/ReadVariableOpReadVariableOp=sequential_15_batch_normalization_137_readvariableop_resource*
_output_shapes
:@*
dtype026
4sequential_15/batch_normalization_137/ReadVariableOp?
6sequential_15/batch_normalization_137/ReadVariableOp_1ReadVariableOp?sequential_15_batch_normalization_137_readvariableop_1_resource*
_output_shapes
:@*
dtype028
6sequential_15/batch_normalization_137/ReadVariableOp_1?
Esequential_15/batch_normalization_137/FusedBatchNormV3/ReadVariableOpReadVariableOpNsequential_15_batch_normalization_137_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02G
Esequential_15/batch_normalization_137/FusedBatchNormV3/ReadVariableOp?
Gsequential_15/batch_normalization_137/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPsequential_15_batch_normalization_137_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02I
Gsequential_15/batch_normalization_137/FusedBatchNormV3/ReadVariableOp_1?
6sequential_15/batch_normalization_137/FusedBatchNormV3FusedBatchNormV3+sequential_15/conv2d_140/Relu:activations:0<sequential_15/batch_normalization_137/ReadVariableOp:value:0>sequential_15/batch_normalization_137/ReadVariableOp_1:value:0Msequential_15/batch_normalization_137/FusedBatchNormV3/ReadVariableOp:value:0Osequential_15/batch_normalization_137/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????3F@:@:@:@:@:*
epsilon%o?:*
is_training( 28
6sequential_15/batch_normalization_137/FusedBatchNormV3?
.sequential_15/conv2d_141/Conv2D/ReadVariableOpReadVariableOp7sequential_15_conv2d_141_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype020
.sequential_15/conv2d_141/Conv2D/ReadVariableOp?
sequential_15/conv2d_141/Conv2DConv2D:sequential_15/batch_normalization_137/FusedBatchNormV3:y:06sequential_15/conv2d_141/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@*
paddingSAME*
strides
2!
sequential_15/conv2d_141/Conv2D?
/sequential_15/conv2d_141/BiasAdd/ReadVariableOpReadVariableOp8sequential_15_conv2d_141_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/sequential_15/conv2d_141/BiasAdd/ReadVariableOp?
 sequential_15/conv2d_141/BiasAddBiasAdd(sequential_15/conv2d_141/Conv2D:output:07sequential_15/conv2d_141/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@2"
 sequential_15/conv2d_141/BiasAdd?
sequential_15/conv2d_141/ReluRelu)sequential_15/conv2d_141/BiasAdd:output:0*
T0*/
_output_shapes
:?????????#@2
sequential_15/conv2d_141/Relu?
4sequential_15/batch_normalization_138/ReadVariableOpReadVariableOp=sequential_15_batch_normalization_138_readvariableop_resource*
_output_shapes
:@*
dtype026
4sequential_15/batch_normalization_138/ReadVariableOp?
6sequential_15/batch_normalization_138/ReadVariableOp_1ReadVariableOp?sequential_15_batch_normalization_138_readvariableop_1_resource*
_output_shapes
:@*
dtype028
6sequential_15/batch_normalization_138/ReadVariableOp_1?
Esequential_15/batch_normalization_138/FusedBatchNormV3/ReadVariableOpReadVariableOpNsequential_15_batch_normalization_138_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02G
Esequential_15/batch_normalization_138/FusedBatchNormV3/ReadVariableOp?
Gsequential_15/batch_normalization_138/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPsequential_15_batch_normalization_138_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02I
Gsequential_15/batch_normalization_138/FusedBatchNormV3/ReadVariableOp_1?
6sequential_15/batch_normalization_138/FusedBatchNormV3FusedBatchNormV3+sequential_15/conv2d_141/Relu:activations:0<sequential_15/batch_normalization_138/ReadVariableOp:value:0>sequential_15/batch_normalization_138/ReadVariableOp_1:value:0Msequential_15/batch_normalization_138/FusedBatchNormV3/ReadVariableOp:value:0Osequential_15/batch_normalization_138/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????#@:@:@:@:@:*
epsilon%o?:*
is_training( 28
6sequential_15/batch_normalization_138/FusedBatchNormV3?
&sequential_15/max_pooling2d_37/MaxPoolMaxPool:sequential_15/batch_normalization_138/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2(
&sequential_15/max_pooling2d_37/MaxPool?
 sequential_15/dropout_1/IdentityIdentity/sequential_15/max_pooling2d_37/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2"
 sequential_15/dropout_1/Identity?
.sequential_15/conv2d_142/Conv2D/ReadVariableOpReadVariableOp7sequential_15_conv2d_142_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype020
.sequential_15/conv2d_142/Conv2D/ReadVariableOp?
sequential_15/conv2d_142/Conv2DConv2D)sequential_15/dropout_1/Identity:output:06sequential_15/conv2d_142/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2!
sequential_15/conv2d_142/Conv2D?
/sequential_15/conv2d_142/BiasAdd/ReadVariableOpReadVariableOp8sequential_15_conv2d_142_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/sequential_15/conv2d_142/BiasAdd/ReadVariableOp?
 sequential_15/conv2d_142/BiasAddBiasAdd(sequential_15/conv2d_142/Conv2D:output:07sequential_15/conv2d_142/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2"
 sequential_15/conv2d_142/BiasAdd?
sequential_15/conv2d_142/ReluRelu)sequential_15/conv2d_142/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_15/conv2d_142/Relu?
4sequential_15/batch_normalization_139/ReadVariableOpReadVariableOp=sequential_15_batch_normalization_139_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential_15/batch_normalization_139/ReadVariableOp?
6sequential_15/batch_normalization_139/ReadVariableOp_1ReadVariableOp?sequential_15_batch_normalization_139_readvariableop_1_resource*
_output_shapes	
:?*
dtype028
6sequential_15/batch_normalization_139/ReadVariableOp_1?
Esequential_15/batch_normalization_139/FusedBatchNormV3/ReadVariableOpReadVariableOpNsequential_15_batch_normalization_139_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02G
Esequential_15/batch_normalization_139/FusedBatchNormV3/ReadVariableOp?
Gsequential_15/batch_normalization_139/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPsequential_15_batch_normalization_139_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02I
Gsequential_15/batch_normalization_139/FusedBatchNormV3/ReadVariableOp_1?
6sequential_15/batch_normalization_139/FusedBatchNormV3FusedBatchNormV3+sequential_15/conv2d_142/Relu:activations:0<sequential_15/batch_normalization_139/ReadVariableOp:value:0>sequential_15/batch_normalization_139/ReadVariableOp_1:value:0Msequential_15/batch_normalization_139/FusedBatchNormV3/ReadVariableOp:value:0Osequential_15/batch_normalization_139/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 28
6sequential_15/batch_normalization_139/FusedBatchNormV3?
.sequential_15/conv2d_143/Conv2D/ReadVariableOpReadVariableOp7sequential_15_conv2d_143_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype020
.sequential_15/conv2d_143/Conv2D/ReadVariableOp?
sequential_15/conv2d_143/Conv2DConv2D:sequential_15/batch_normalization_139/FusedBatchNormV3:y:06sequential_15/conv2d_143/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????	?*
paddingVALID*
strides
2!
sequential_15/conv2d_143/Conv2D?
/sequential_15/conv2d_143/BiasAdd/ReadVariableOpReadVariableOp8sequential_15_conv2d_143_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/sequential_15/conv2d_143/BiasAdd/ReadVariableOp?
 sequential_15/conv2d_143/BiasAddBiasAdd(sequential_15/conv2d_143/Conv2D:output:07sequential_15/conv2d_143/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????	?2"
 sequential_15/conv2d_143/BiasAdd?
sequential_15/conv2d_143/ReluRelu)sequential_15/conv2d_143/BiasAdd:output:0*
T0*0
_output_shapes
:?????????	?2
sequential_15/conv2d_143/Relu?
4sequential_15/batch_normalization_140/ReadVariableOpReadVariableOp=sequential_15_batch_normalization_140_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential_15/batch_normalization_140/ReadVariableOp?
6sequential_15/batch_normalization_140/ReadVariableOp_1ReadVariableOp?sequential_15_batch_normalization_140_readvariableop_1_resource*
_output_shapes	
:?*
dtype028
6sequential_15/batch_normalization_140/ReadVariableOp_1?
Esequential_15/batch_normalization_140/FusedBatchNormV3/ReadVariableOpReadVariableOpNsequential_15_batch_normalization_140_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02G
Esequential_15/batch_normalization_140/FusedBatchNormV3/ReadVariableOp?
Gsequential_15/batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPsequential_15_batch_normalization_140_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02I
Gsequential_15/batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1?
6sequential_15/batch_normalization_140/FusedBatchNormV3FusedBatchNormV3+sequential_15/conv2d_143/Relu:activations:0<sequential_15/batch_normalization_140/ReadVariableOp:value:0>sequential_15/batch_normalization_140/ReadVariableOp_1:value:0Msequential_15/batch_normalization_140/FusedBatchNormV3/ReadVariableOp:value:0Osequential_15/batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????	?:?:?:?:?:*
epsilon%o?:*
is_training( 28
6sequential_15/batch_normalization_140/FusedBatchNormV3?
.sequential_15/conv2d_144/Conv2D/ReadVariableOpReadVariableOp7sequential_15_conv2d_144_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype020
.sequential_15/conv2d_144/Conv2D/ReadVariableOp?
sequential_15/conv2d_144/Conv2DConv2D:sequential_15/batch_normalization_140/FusedBatchNormV3:y:06sequential_15/conv2d_144/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2!
sequential_15/conv2d_144/Conv2D?
/sequential_15/conv2d_144/BiasAdd/ReadVariableOpReadVariableOp8sequential_15_conv2d_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/sequential_15/conv2d_144/BiasAdd/ReadVariableOp?
 sequential_15/conv2d_144/BiasAddBiasAdd(sequential_15/conv2d_144/Conv2D:output:07sequential_15/conv2d_144/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2"
 sequential_15/conv2d_144/BiasAdd?
sequential_15/conv2d_144/ReluRelu)sequential_15/conv2d_144/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_15/conv2d_144/Relu?
4sequential_15/batch_normalization_141/ReadVariableOpReadVariableOp=sequential_15_batch_normalization_141_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential_15/batch_normalization_141/ReadVariableOp?
6sequential_15/batch_normalization_141/ReadVariableOp_1ReadVariableOp?sequential_15_batch_normalization_141_readvariableop_1_resource*
_output_shapes	
:?*
dtype028
6sequential_15/batch_normalization_141/ReadVariableOp_1?
Esequential_15/batch_normalization_141/FusedBatchNormV3/ReadVariableOpReadVariableOpNsequential_15_batch_normalization_141_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02G
Esequential_15/batch_normalization_141/FusedBatchNormV3/ReadVariableOp?
Gsequential_15/batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpPsequential_15_batch_normalization_141_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02I
Gsequential_15/batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1?
6sequential_15/batch_normalization_141/FusedBatchNormV3FusedBatchNormV3+sequential_15/conv2d_144/Relu:activations:0<sequential_15/batch_normalization_141/ReadVariableOp:value:0>sequential_15/batch_normalization_141/ReadVariableOp_1:value:0Msequential_15/batch_normalization_141/FusedBatchNormV3/ReadVariableOp:value:0Osequential_15/batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 28
6sequential_15/batch_normalization_141/FusedBatchNormV3?
&sequential_15/max_pooling2d_38/MaxPoolMaxPool:sequential_15/batch_normalization_141/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2(
&sequential_15/max_pooling2d_38/MaxPool?
 sequential_15/dropout_2/IdentityIdentity/sequential_15/max_pooling2d_38/MaxPool:output:0*
T0*0
_output_shapes
:??????????2"
 sequential_15/dropout_2/Identity?
sequential_15/flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2 
sequential_15/flatten_10/Const?
 sequential_15/flatten_10/ReshapeReshape)sequential_15/dropout_2/Identity:output:0'sequential_15/flatten_10/Const:output:0*
T0*(
_output_shapes
:??????????2"
 sequential_15/flatten_10/Reshape?
 sequential_15/dropout_3/IdentityIdentity)sequential_15/flatten_10/Reshape:output:0*
T0*(
_output_shapes
:??????????2"
 sequential_15/dropout_3/Identity?
,sequential_15/dense_26/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_26_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_15/dense_26/MatMul/ReadVariableOp?
sequential_15/dense_26/MatMulMatMul)sequential_15/dropout_3/Identity:output:04sequential_15/dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_15/dense_26/MatMul?
-sequential_15/dense_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_15/dense_26/BiasAdd/ReadVariableOp?
sequential_15/dense_26/BiasAddBiasAdd'sequential_15/dense_26/MatMul:product:05sequential_15/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_15/dense_26/BiasAdd?
sequential_15/dense_26/ReluRelu'sequential_15/dense_26/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_15/dense_26/Relu?
,sequential_15/dense_27/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_27_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_15/dense_27/MatMul/ReadVariableOp?
sequential_15/dense_27/MatMulMatMul)sequential_15/dense_26/Relu:activations:04sequential_15/dense_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_15/dense_27/MatMul?
-sequential_15/dense_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_15/dense_27/BiasAdd/ReadVariableOp?
sequential_15/dense_27/BiasAddBiasAdd'sequential_15/dense_27/MatMul:product:05sequential_15/dense_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_15/dense_27/BiasAdd?
sequential_15/dense_27/ReluRelu'sequential_15/dense_27/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_15/dense_27/Relu?
,sequential_15/dense_28/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_28_matmul_readvariableop_resource*
_output_shapes
:	?>*
dtype02.
,sequential_15/dense_28/MatMul/ReadVariableOp?
sequential_15/dense_28/MatMulMatMul)sequential_15/dense_27/Relu:activations:04sequential_15/dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2
sequential_15/dense_28/MatMul?
-sequential_15/dense_28/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_28_biasadd_readvariableop_resource*
_output_shapes
:>*
dtype02/
-sequential_15/dense_28/BiasAdd/ReadVariableOp?
sequential_15/dense_28/BiasAddBiasAdd'sequential_15/dense_28/MatMul:product:05sequential_15/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2 
sequential_15/dense_28/BiasAdd?
sequential_15/dense_28/SoftmaxSoftmax'sequential_15/dense_28/BiasAdd:output:0*
T0*'
_output_shapes
:?????????>2 
sequential_15/dense_28/Softmax?
IdentityIdentity(sequential_15/dense_28/Softmax:softmax:0F^sequential_15/batch_normalization_133/FusedBatchNormV3/ReadVariableOpH^sequential_15/batch_normalization_133/FusedBatchNormV3/ReadVariableOp_15^sequential_15/batch_normalization_133/ReadVariableOp7^sequential_15/batch_normalization_133/ReadVariableOp_1F^sequential_15/batch_normalization_134/FusedBatchNormV3/ReadVariableOpH^sequential_15/batch_normalization_134/FusedBatchNormV3/ReadVariableOp_15^sequential_15/batch_normalization_134/ReadVariableOp7^sequential_15/batch_normalization_134/ReadVariableOp_1F^sequential_15/batch_normalization_135/FusedBatchNormV3/ReadVariableOpH^sequential_15/batch_normalization_135/FusedBatchNormV3/ReadVariableOp_15^sequential_15/batch_normalization_135/ReadVariableOp7^sequential_15/batch_normalization_135/ReadVariableOp_1F^sequential_15/batch_normalization_136/FusedBatchNormV3/ReadVariableOpH^sequential_15/batch_normalization_136/FusedBatchNormV3/ReadVariableOp_15^sequential_15/batch_normalization_136/ReadVariableOp7^sequential_15/batch_normalization_136/ReadVariableOp_1F^sequential_15/batch_normalization_137/FusedBatchNormV3/ReadVariableOpH^sequential_15/batch_normalization_137/FusedBatchNormV3/ReadVariableOp_15^sequential_15/batch_normalization_137/ReadVariableOp7^sequential_15/batch_normalization_137/ReadVariableOp_1F^sequential_15/batch_normalization_138/FusedBatchNormV3/ReadVariableOpH^sequential_15/batch_normalization_138/FusedBatchNormV3/ReadVariableOp_15^sequential_15/batch_normalization_138/ReadVariableOp7^sequential_15/batch_normalization_138/ReadVariableOp_1F^sequential_15/batch_normalization_139/FusedBatchNormV3/ReadVariableOpH^sequential_15/batch_normalization_139/FusedBatchNormV3/ReadVariableOp_15^sequential_15/batch_normalization_139/ReadVariableOp7^sequential_15/batch_normalization_139/ReadVariableOp_1F^sequential_15/batch_normalization_140/FusedBatchNormV3/ReadVariableOpH^sequential_15/batch_normalization_140/FusedBatchNormV3/ReadVariableOp_15^sequential_15/batch_normalization_140/ReadVariableOp7^sequential_15/batch_normalization_140/ReadVariableOp_1F^sequential_15/batch_normalization_141/FusedBatchNormV3/ReadVariableOpH^sequential_15/batch_normalization_141/FusedBatchNormV3/ReadVariableOp_15^sequential_15/batch_normalization_141/ReadVariableOp7^sequential_15/batch_normalization_141/ReadVariableOp_10^sequential_15/conv2d_136/BiasAdd/ReadVariableOp/^sequential_15/conv2d_136/Conv2D/ReadVariableOp0^sequential_15/conv2d_137/BiasAdd/ReadVariableOp/^sequential_15/conv2d_137/Conv2D/ReadVariableOp0^sequential_15/conv2d_138/BiasAdd/ReadVariableOp/^sequential_15/conv2d_138/Conv2D/ReadVariableOp0^sequential_15/conv2d_139/BiasAdd/ReadVariableOp/^sequential_15/conv2d_139/Conv2D/ReadVariableOp0^sequential_15/conv2d_140/BiasAdd/ReadVariableOp/^sequential_15/conv2d_140/Conv2D/ReadVariableOp0^sequential_15/conv2d_141/BiasAdd/ReadVariableOp/^sequential_15/conv2d_141/Conv2D/ReadVariableOp0^sequential_15/conv2d_142/BiasAdd/ReadVariableOp/^sequential_15/conv2d_142/Conv2D/ReadVariableOp0^sequential_15/conv2d_143/BiasAdd/ReadVariableOp/^sequential_15/conv2d_143/Conv2D/ReadVariableOp0^sequential_15/conv2d_144/BiasAdd/ReadVariableOp/^sequential_15/conv2d_144/Conv2D/ReadVariableOp.^sequential_15/dense_26/BiasAdd/ReadVariableOp-^sequential_15/dense_26/MatMul/ReadVariableOp.^sequential_15/dense_27/BiasAdd/ReadVariableOp-^sequential_15/dense_27/MatMul/ReadVariableOp.^sequential_15/dense_28/BiasAdd/ReadVariableOp-^sequential_15/dense_28/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2?
Esequential_15/batch_normalization_133/FusedBatchNormV3/ReadVariableOpEsequential_15/batch_normalization_133/FusedBatchNormV3/ReadVariableOp2?
Gsequential_15/batch_normalization_133/FusedBatchNormV3/ReadVariableOp_1Gsequential_15/batch_normalization_133/FusedBatchNormV3/ReadVariableOp_12l
4sequential_15/batch_normalization_133/ReadVariableOp4sequential_15/batch_normalization_133/ReadVariableOp2p
6sequential_15/batch_normalization_133/ReadVariableOp_16sequential_15/batch_normalization_133/ReadVariableOp_12?
Esequential_15/batch_normalization_134/FusedBatchNormV3/ReadVariableOpEsequential_15/batch_normalization_134/FusedBatchNormV3/ReadVariableOp2?
Gsequential_15/batch_normalization_134/FusedBatchNormV3/ReadVariableOp_1Gsequential_15/batch_normalization_134/FusedBatchNormV3/ReadVariableOp_12l
4sequential_15/batch_normalization_134/ReadVariableOp4sequential_15/batch_normalization_134/ReadVariableOp2p
6sequential_15/batch_normalization_134/ReadVariableOp_16sequential_15/batch_normalization_134/ReadVariableOp_12?
Esequential_15/batch_normalization_135/FusedBatchNormV3/ReadVariableOpEsequential_15/batch_normalization_135/FusedBatchNormV3/ReadVariableOp2?
Gsequential_15/batch_normalization_135/FusedBatchNormV3/ReadVariableOp_1Gsequential_15/batch_normalization_135/FusedBatchNormV3/ReadVariableOp_12l
4sequential_15/batch_normalization_135/ReadVariableOp4sequential_15/batch_normalization_135/ReadVariableOp2p
6sequential_15/batch_normalization_135/ReadVariableOp_16sequential_15/batch_normalization_135/ReadVariableOp_12?
Esequential_15/batch_normalization_136/FusedBatchNormV3/ReadVariableOpEsequential_15/batch_normalization_136/FusedBatchNormV3/ReadVariableOp2?
Gsequential_15/batch_normalization_136/FusedBatchNormV3/ReadVariableOp_1Gsequential_15/batch_normalization_136/FusedBatchNormV3/ReadVariableOp_12l
4sequential_15/batch_normalization_136/ReadVariableOp4sequential_15/batch_normalization_136/ReadVariableOp2p
6sequential_15/batch_normalization_136/ReadVariableOp_16sequential_15/batch_normalization_136/ReadVariableOp_12?
Esequential_15/batch_normalization_137/FusedBatchNormV3/ReadVariableOpEsequential_15/batch_normalization_137/FusedBatchNormV3/ReadVariableOp2?
Gsequential_15/batch_normalization_137/FusedBatchNormV3/ReadVariableOp_1Gsequential_15/batch_normalization_137/FusedBatchNormV3/ReadVariableOp_12l
4sequential_15/batch_normalization_137/ReadVariableOp4sequential_15/batch_normalization_137/ReadVariableOp2p
6sequential_15/batch_normalization_137/ReadVariableOp_16sequential_15/batch_normalization_137/ReadVariableOp_12?
Esequential_15/batch_normalization_138/FusedBatchNormV3/ReadVariableOpEsequential_15/batch_normalization_138/FusedBatchNormV3/ReadVariableOp2?
Gsequential_15/batch_normalization_138/FusedBatchNormV3/ReadVariableOp_1Gsequential_15/batch_normalization_138/FusedBatchNormV3/ReadVariableOp_12l
4sequential_15/batch_normalization_138/ReadVariableOp4sequential_15/batch_normalization_138/ReadVariableOp2p
6sequential_15/batch_normalization_138/ReadVariableOp_16sequential_15/batch_normalization_138/ReadVariableOp_12?
Esequential_15/batch_normalization_139/FusedBatchNormV3/ReadVariableOpEsequential_15/batch_normalization_139/FusedBatchNormV3/ReadVariableOp2?
Gsequential_15/batch_normalization_139/FusedBatchNormV3/ReadVariableOp_1Gsequential_15/batch_normalization_139/FusedBatchNormV3/ReadVariableOp_12l
4sequential_15/batch_normalization_139/ReadVariableOp4sequential_15/batch_normalization_139/ReadVariableOp2p
6sequential_15/batch_normalization_139/ReadVariableOp_16sequential_15/batch_normalization_139/ReadVariableOp_12?
Esequential_15/batch_normalization_140/FusedBatchNormV3/ReadVariableOpEsequential_15/batch_normalization_140/FusedBatchNormV3/ReadVariableOp2?
Gsequential_15/batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1Gsequential_15/batch_normalization_140/FusedBatchNormV3/ReadVariableOp_12l
4sequential_15/batch_normalization_140/ReadVariableOp4sequential_15/batch_normalization_140/ReadVariableOp2p
6sequential_15/batch_normalization_140/ReadVariableOp_16sequential_15/batch_normalization_140/ReadVariableOp_12?
Esequential_15/batch_normalization_141/FusedBatchNormV3/ReadVariableOpEsequential_15/batch_normalization_141/FusedBatchNormV3/ReadVariableOp2?
Gsequential_15/batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1Gsequential_15/batch_normalization_141/FusedBatchNormV3/ReadVariableOp_12l
4sequential_15/batch_normalization_141/ReadVariableOp4sequential_15/batch_normalization_141/ReadVariableOp2p
6sequential_15/batch_normalization_141/ReadVariableOp_16sequential_15/batch_normalization_141/ReadVariableOp_12b
/sequential_15/conv2d_136/BiasAdd/ReadVariableOp/sequential_15/conv2d_136/BiasAdd/ReadVariableOp2`
.sequential_15/conv2d_136/Conv2D/ReadVariableOp.sequential_15/conv2d_136/Conv2D/ReadVariableOp2b
/sequential_15/conv2d_137/BiasAdd/ReadVariableOp/sequential_15/conv2d_137/BiasAdd/ReadVariableOp2`
.sequential_15/conv2d_137/Conv2D/ReadVariableOp.sequential_15/conv2d_137/Conv2D/ReadVariableOp2b
/sequential_15/conv2d_138/BiasAdd/ReadVariableOp/sequential_15/conv2d_138/BiasAdd/ReadVariableOp2`
.sequential_15/conv2d_138/Conv2D/ReadVariableOp.sequential_15/conv2d_138/Conv2D/ReadVariableOp2b
/sequential_15/conv2d_139/BiasAdd/ReadVariableOp/sequential_15/conv2d_139/BiasAdd/ReadVariableOp2`
.sequential_15/conv2d_139/Conv2D/ReadVariableOp.sequential_15/conv2d_139/Conv2D/ReadVariableOp2b
/sequential_15/conv2d_140/BiasAdd/ReadVariableOp/sequential_15/conv2d_140/BiasAdd/ReadVariableOp2`
.sequential_15/conv2d_140/Conv2D/ReadVariableOp.sequential_15/conv2d_140/Conv2D/ReadVariableOp2b
/sequential_15/conv2d_141/BiasAdd/ReadVariableOp/sequential_15/conv2d_141/BiasAdd/ReadVariableOp2`
.sequential_15/conv2d_141/Conv2D/ReadVariableOp.sequential_15/conv2d_141/Conv2D/ReadVariableOp2b
/sequential_15/conv2d_142/BiasAdd/ReadVariableOp/sequential_15/conv2d_142/BiasAdd/ReadVariableOp2`
.sequential_15/conv2d_142/Conv2D/ReadVariableOp.sequential_15/conv2d_142/Conv2D/ReadVariableOp2b
/sequential_15/conv2d_143/BiasAdd/ReadVariableOp/sequential_15/conv2d_143/BiasAdd/ReadVariableOp2`
.sequential_15/conv2d_143/Conv2D/ReadVariableOp.sequential_15/conv2d_143/Conv2D/ReadVariableOp2b
/sequential_15/conv2d_144/BiasAdd/ReadVariableOp/sequential_15/conv2d_144/BiasAdd/ReadVariableOp2`
.sequential_15/conv2d_144/Conv2D/ReadVariableOp.sequential_15/conv2d_144/Conv2D/ReadVariableOp2^
-sequential_15/dense_26/BiasAdd/ReadVariableOp-sequential_15/dense_26/BiasAdd/ReadVariableOp2\
,sequential_15/dense_26/MatMul/ReadVariableOp,sequential_15/dense_26/MatMul/ReadVariableOp2^
-sequential_15/dense_27/BiasAdd/ReadVariableOp-sequential_15/dense_27/BiasAdd/ReadVariableOp2\
,sequential_15/dense_27/MatMul/ReadVariableOp,sequential_15/dense_27/MatMul/ReadVariableOp2^
-sequential_15/dense_28/BiasAdd/ReadVariableOp-sequential_15/dense_28/BiasAdd/ReadVariableOp2\
,sequential_15/dense_28/MatMul/ReadVariableOp,sequential_15/dense_28/MatMul/ReadVariableOp:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_136_input
?
?
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_290450

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_294143

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_294892

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????	?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????	?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????	?::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????	?
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_141_layer_call_fn_295135

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_2920032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_139_layer_call_fn_294788

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_2918212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?5
I__inference_sequential_15_layer_call_and_return_conditional_losses_293317

inputs-
)conv2d_136_conv2d_readvariableop_resource.
*conv2d_136_biasadd_readvariableop_resource3
/batch_normalization_133_readvariableop_resource5
1batch_normalization_133_readvariableop_1_resourceD
@batch_normalization_133_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_133_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_137_conv2d_readvariableop_resource.
*conv2d_137_biasadd_readvariableop_resource3
/batch_normalization_134_readvariableop_resource5
1batch_normalization_134_readvariableop_1_resourceD
@batch_normalization_134_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_134_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_138_conv2d_readvariableop_resource.
*conv2d_138_biasadd_readvariableop_resource3
/batch_normalization_135_readvariableop_resource5
1batch_normalization_135_readvariableop_1_resourceD
@batch_normalization_135_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_135_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_139_conv2d_readvariableop_resource.
*conv2d_139_biasadd_readvariableop_resource3
/batch_normalization_136_readvariableop_resource5
1batch_normalization_136_readvariableop_1_resourceD
@batch_normalization_136_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_136_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_140_conv2d_readvariableop_resource.
*conv2d_140_biasadd_readvariableop_resource3
/batch_normalization_137_readvariableop_resource5
1batch_normalization_137_readvariableop_1_resourceD
@batch_normalization_137_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_137_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_141_conv2d_readvariableop_resource.
*conv2d_141_biasadd_readvariableop_resource3
/batch_normalization_138_readvariableop_resource5
1batch_normalization_138_readvariableop_1_resourceD
@batch_normalization_138_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_138_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_142_conv2d_readvariableop_resource.
*conv2d_142_biasadd_readvariableop_resource3
/batch_normalization_139_readvariableop_resource5
1batch_normalization_139_readvariableop_1_resourceD
@batch_normalization_139_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_139_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_143_conv2d_readvariableop_resource.
*conv2d_143_biasadd_readvariableop_resource3
/batch_normalization_140_readvariableop_resource5
1batch_normalization_140_readvariableop_1_resourceD
@batch_normalization_140_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_140_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_144_conv2d_readvariableop_resource.
*conv2d_144_biasadd_readvariableop_resource3
/batch_normalization_141_readvariableop_resource5
1batch_normalization_141_readvariableop_1_resourceD
@batch_normalization_141_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_141_fusedbatchnormv3_readvariableop_1_resource+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource+
'dense_27_matmul_readvariableop_resource,
(dense_27_biasadd_readvariableop_resource+
'dense_28_matmul_readvariableop_resource,
(dense_28_biasadd_readvariableop_resource
identity??&batch_normalization_133/AssignNewValue?(batch_normalization_133/AssignNewValue_1?7batch_normalization_133/FusedBatchNormV3/ReadVariableOp?9batch_normalization_133/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_133/ReadVariableOp?(batch_normalization_133/ReadVariableOp_1?&batch_normalization_134/AssignNewValue?(batch_normalization_134/AssignNewValue_1?7batch_normalization_134/FusedBatchNormV3/ReadVariableOp?9batch_normalization_134/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_134/ReadVariableOp?(batch_normalization_134/ReadVariableOp_1?&batch_normalization_135/AssignNewValue?(batch_normalization_135/AssignNewValue_1?7batch_normalization_135/FusedBatchNormV3/ReadVariableOp?9batch_normalization_135/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_135/ReadVariableOp?(batch_normalization_135/ReadVariableOp_1?&batch_normalization_136/AssignNewValue?(batch_normalization_136/AssignNewValue_1?7batch_normalization_136/FusedBatchNormV3/ReadVariableOp?9batch_normalization_136/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_136/ReadVariableOp?(batch_normalization_136/ReadVariableOp_1?&batch_normalization_137/AssignNewValue?(batch_normalization_137/AssignNewValue_1?7batch_normalization_137/FusedBatchNormV3/ReadVariableOp?9batch_normalization_137/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_137/ReadVariableOp?(batch_normalization_137/ReadVariableOp_1?&batch_normalization_138/AssignNewValue?(batch_normalization_138/AssignNewValue_1?7batch_normalization_138/FusedBatchNormV3/ReadVariableOp?9batch_normalization_138/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_138/ReadVariableOp?(batch_normalization_138/ReadVariableOp_1?&batch_normalization_139/AssignNewValue?(batch_normalization_139/AssignNewValue_1?7batch_normalization_139/FusedBatchNormV3/ReadVariableOp?9batch_normalization_139/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_139/ReadVariableOp?(batch_normalization_139/ReadVariableOp_1?&batch_normalization_140/AssignNewValue?(batch_normalization_140/AssignNewValue_1?7batch_normalization_140/FusedBatchNormV3/ReadVariableOp?9batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_140/ReadVariableOp?(batch_normalization_140/ReadVariableOp_1?&batch_normalization_141/AssignNewValue?(batch_normalization_141/AssignNewValue_1?7batch_normalization_141/FusedBatchNormV3/ReadVariableOp?9batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_141/ReadVariableOp?(batch_normalization_141/ReadVariableOp_1?!conv2d_136/BiasAdd/ReadVariableOp? conv2d_136/Conv2D/ReadVariableOp?!conv2d_137/BiasAdd/ReadVariableOp? conv2d_137/Conv2D/ReadVariableOp?!conv2d_138/BiasAdd/ReadVariableOp? conv2d_138/Conv2D/ReadVariableOp?!conv2d_139/BiasAdd/ReadVariableOp? conv2d_139/Conv2D/ReadVariableOp?!conv2d_140/BiasAdd/ReadVariableOp? conv2d_140/Conv2D/ReadVariableOp?!conv2d_141/BiasAdd/ReadVariableOp? conv2d_141/Conv2D/ReadVariableOp?!conv2d_142/BiasAdd/ReadVariableOp? conv2d_142/Conv2D/ReadVariableOp?!conv2d_143/BiasAdd/ReadVariableOp? conv2d_143/Conv2D/ReadVariableOp?!conv2d_144/BiasAdd/ReadVariableOp? conv2d_144/Conv2D/ReadVariableOp?dense_26/BiasAdd/ReadVariableOp?dense_26/MatMul/ReadVariableOp?dense_27/BiasAdd/ReadVariableOp?dense_27/MatMul/ReadVariableOp?dense_28/BiasAdd/ReadVariableOp?dense_28/MatMul/ReadVariableOp?
 conv2d_136/Conv2D/ReadVariableOpReadVariableOp)conv2d_136_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_136/Conv2D/ReadVariableOp?
conv2d_136/Conv2DConv2Dinputs(conv2d_136/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
conv2d_136/Conv2D?
!conv2d_136/BiasAdd/ReadVariableOpReadVariableOp*conv2d_136_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_136/BiasAdd/ReadVariableOp?
conv2d_136/BiasAddBiasAddconv2d_136/Conv2D:output:0)conv2d_136/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_136/BiasAdd?
conv2d_136/ReluReluconv2d_136/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_136/Relu?
&batch_normalization_133/ReadVariableOpReadVariableOp/batch_normalization_133_readvariableop_resource*
_output_shapes
: *
dtype02(
&batch_normalization_133/ReadVariableOp?
(batch_normalization_133/ReadVariableOp_1ReadVariableOp1batch_normalization_133_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(batch_normalization_133/ReadVariableOp_1?
7batch_normalization_133/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_133_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7batch_normalization_133/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_133/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_133_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9batch_normalization_133/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_133/FusedBatchNormV3FusedBatchNormV3conv2d_136/Relu:activations:0.batch_normalization_133/ReadVariableOp:value:00batch_normalization_133/ReadVariableOp_1:value:0?batch_normalization_133/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_133/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:??????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_133/FusedBatchNormV3?
&batch_normalization_133/AssignNewValueAssignVariableOp@batch_normalization_133_fusedbatchnormv3_readvariableop_resource5batch_normalization_133/FusedBatchNormV3:batch_mean:08^batch_normalization_133/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_133/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_133/AssignNewValue?
(batch_normalization_133/AssignNewValue_1AssignVariableOpBbatch_normalization_133_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_133/FusedBatchNormV3:batch_variance:0:^batch_normalization_133/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*U
_classK
IGloc:@batch_normalization_133/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_133/AssignNewValue_1?
 conv2d_137/Conv2D/ReadVariableOpReadVariableOp)conv2d_137_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_137/Conv2D/ReadVariableOp?
conv2d_137/Conv2DConv2D,batch_normalization_133/FusedBatchNormV3:y:0(conv2d_137/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
conv2d_137/Conv2D?
!conv2d_137/BiasAdd/ReadVariableOpReadVariableOp*conv2d_137_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_137/BiasAdd/ReadVariableOp?
conv2d_137/BiasAddBiasAddconv2d_137/Conv2D:output:0)conv2d_137/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_137/BiasAdd?
conv2d_137/ReluReluconv2d_137/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_137/Relu?
&batch_normalization_134/ReadVariableOpReadVariableOp/batch_normalization_134_readvariableop_resource*
_output_shapes
: *
dtype02(
&batch_normalization_134/ReadVariableOp?
(batch_normalization_134/ReadVariableOp_1ReadVariableOp1batch_normalization_134_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(batch_normalization_134/ReadVariableOp_1?
7batch_normalization_134/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_134_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7batch_normalization_134/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_134/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_134_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9batch_normalization_134/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_134/FusedBatchNormV3FusedBatchNormV3conv2d_137/Relu:activations:0.batch_normalization_134/ReadVariableOp:value:00batch_normalization_134/ReadVariableOp_1:value:0?batch_normalization_134/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_134/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:??????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_134/FusedBatchNormV3?
&batch_normalization_134/AssignNewValueAssignVariableOp@batch_normalization_134_fusedbatchnormv3_readvariableop_resource5batch_normalization_134/FusedBatchNormV3:batch_mean:08^batch_normalization_134/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_134/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_134/AssignNewValue?
(batch_normalization_134/AssignNewValue_1AssignVariableOpBbatch_normalization_134_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_134/FusedBatchNormV3:batch_variance:0:^batch_normalization_134/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*U
_classK
IGloc:@batch_normalization_134/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_134/AssignNewValue_1?
 conv2d_138/Conv2D/ReadVariableOpReadVariableOp)conv2d_138_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_138/Conv2D/ReadVariableOp?
conv2d_138/Conv2DConv2D,batch_normalization_134/FusedBatchNormV3:y:0(conv2d_138/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? *
paddingSAME*
strides
2
conv2d_138/Conv2D?
!conv2d_138/BiasAdd/ReadVariableOpReadVariableOp*conv2d_138_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_138/BiasAdd/ReadVariableOp?
conv2d_138/BiasAddBiasAddconv2d_138/Conv2D:output:0)conv2d_138/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? 2
conv2d_138/BiasAdd?
conv2d_138/ReluReluconv2d_138/BiasAdd:output:0*
T0*0
_output_shapes
:?????????o? 2
conv2d_138/Relu?
&batch_normalization_135/ReadVariableOpReadVariableOp/batch_normalization_135_readvariableop_resource*
_output_shapes
: *
dtype02(
&batch_normalization_135/ReadVariableOp?
(batch_normalization_135/ReadVariableOp_1ReadVariableOp1batch_normalization_135_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(batch_normalization_135/ReadVariableOp_1?
7batch_normalization_135/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_135_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7batch_normalization_135/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_135/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_135_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9batch_normalization_135/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_135/FusedBatchNormV3FusedBatchNormV3conv2d_138/Relu:activations:0.batch_normalization_135/ReadVariableOp:value:00batch_normalization_135/ReadVariableOp_1:value:0?batch_normalization_135/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_135/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????o? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_135/FusedBatchNormV3?
&batch_normalization_135/AssignNewValueAssignVariableOp@batch_normalization_135_fusedbatchnormv3_readvariableop_resource5batch_normalization_135/FusedBatchNormV3:batch_mean:08^batch_normalization_135/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_135/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_135/AssignNewValue?
(batch_normalization_135/AssignNewValue_1AssignVariableOpBbatch_normalization_135_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_135/FusedBatchNormV3:batch_variance:0:^batch_normalization_135/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*U
_classK
IGloc:@batch_normalization_135/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_135/AssignNewValue_1?
max_pooling2d_36/MaxPoolMaxPool,batch_normalization_135/FusedBatchNormV3:y:0*/
_output_shapes
:?????????7J *
ksize
*
paddingVALID*
strides
2
max_pooling2d_36/MaxPool?
 conv2d_139/Conv2D/ReadVariableOpReadVariableOp)conv2d_139_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_139/Conv2D/ReadVariableOp?
conv2d_139/Conv2DConv2D!max_pooling2d_36/MaxPool:output:0(conv2d_139/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5H@*
paddingVALID*
strides
2
conv2d_139/Conv2D?
!conv2d_139/BiasAdd/ReadVariableOpReadVariableOp*conv2d_139_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_139/BiasAdd/ReadVariableOp?
conv2d_139/BiasAddBiasAddconv2d_139/Conv2D:output:0)conv2d_139/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5H@2
conv2d_139/BiasAdd?
conv2d_139/ReluReluconv2d_139/BiasAdd:output:0*
T0*/
_output_shapes
:?????????5H@2
conv2d_139/Relu?
&batch_normalization_136/ReadVariableOpReadVariableOp/batch_normalization_136_readvariableop_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_136/ReadVariableOp?
(batch_normalization_136/ReadVariableOp_1ReadVariableOp1batch_normalization_136_readvariableop_1_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_136/ReadVariableOp_1?
7batch_normalization_136/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_136_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype029
7batch_normalization_136/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_136/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_136_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9batch_normalization_136/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_136/FusedBatchNormV3FusedBatchNormV3conv2d_139/Relu:activations:0.batch_normalization_136/ReadVariableOp:value:00batch_normalization_136/ReadVariableOp_1:value:0?batch_normalization_136/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_136/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????5H@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_136/FusedBatchNormV3?
&batch_normalization_136/AssignNewValueAssignVariableOp@batch_normalization_136_fusedbatchnormv3_readvariableop_resource5batch_normalization_136/FusedBatchNormV3:batch_mean:08^batch_normalization_136/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_136/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_136/AssignNewValue?
(batch_normalization_136/AssignNewValue_1AssignVariableOpBbatch_normalization_136_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_136/FusedBatchNormV3:batch_variance:0:^batch_normalization_136/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*U
_classK
IGloc:@batch_normalization_136/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_136/AssignNewValue_1?
 conv2d_140/Conv2D/ReadVariableOpReadVariableOp)conv2d_140_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 conv2d_140/Conv2D/ReadVariableOp?
conv2d_140/Conv2DConv2D,batch_normalization_136/FusedBatchNormV3:y:0(conv2d_140/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????3F@*
paddingVALID*
strides
2
conv2d_140/Conv2D?
!conv2d_140/BiasAdd/ReadVariableOpReadVariableOp*conv2d_140_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_140/BiasAdd/ReadVariableOp?
conv2d_140/BiasAddBiasAddconv2d_140/Conv2D:output:0)conv2d_140/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????3F@2
conv2d_140/BiasAdd?
conv2d_140/ReluReluconv2d_140/BiasAdd:output:0*
T0*/
_output_shapes
:?????????3F@2
conv2d_140/Relu?
&batch_normalization_137/ReadVariableOpReadVariableOp/batch_normalization_137_readvariableop_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_137/ReadVariableOp?
(batch_normalization_137/ReadVariableOp_1ReadVariableOp1batch_normalization_137_readvariableop_1_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_137/ReadVariableOp_1?
7batch_normalization_137/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_137_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype029
7batch_normalization_137/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_137/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_137_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9batch_normalization_137/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_137/FusedBatchNormV3FusedBatchNormV3conv2d_140/Relu:activations:0.batch_normalization_137/ReadVariableOp:value:00batch_normalization_137/ReadVariableOp_1:value:0?batch_normalization_137/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_137/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????3F@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_137/FusedBatchNormV3?
&batch_normalization_137/AssignNewValueAssignVariableOp@batch_normalization_137_fusedbatchnormv3_readvariableop_resource5batch_normalization_137/FusedBatchNormV3:batch_mean:08^batch_normalization_137/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_137/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_137/AssignNewValue?
(batch_normalization_137/AssignNewValue_1AssignVariableOpBbatch_normalization_137_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_137/FusedBatchNormV3:batch_variance:0:^batch_normalization_137/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*U
_classK
IGloc:@batch_normalization_137/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_137/AssignNewValue_1?
 conv2d_141/Conv2D/ReadVariableOpReadVariableOp)conv2d_141_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 conv2d_141/Conv2D/ReadVariableOp?
conv2d_141/Conv2DConv2D,batch_normalization_137/FusedBatchNormV3:y:0(conv2d_141/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@*
paddingSAME*
strides
2
conv2d_141/Conv2D?
!conv2d_141/BiasAdd/ReadVariableOpReadVariableOp*conv2d_141_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_141/BiasAdd/ReadVariableOp?
conv2d_141/BiasAddBiasAddconv2d_141/Conv2D:output:0)conv2d_141/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@2
conv2d_141/BiasAdd?
conv2d_141/ReluReluconv2d_141/BiasAdd:output:0*
T0*/
_output_shapes
:?????????#@2
conv2d_141/Relu?
&batch_normalization_138/ReadVariableOpReadVariableOp/batch_normalization_138_readvariableop_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_138/ReadVariableOp?
(batch_normalization_138/ReadVariableOp_1ReadVariableOp1batch_normalization_138_readvariableop_1_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_138/ReadVariableOp_1?
7batch_normalization_138/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_138_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype029
7batch_normalization_138/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_138/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_138_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9batch_normalization_138/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_138/FusedBatchNormV3FusedBatchNormV3conv2d_141/Relu:activations:0.batch_normalization_138/ReadVariableOp:value:00batch_normalization_138/ReadVariableOp_1:value:0?batch_normalization_138/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_138/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????#@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_138/FusedBatchNormV3?
&batch_normalization_138/AssignNewValueAssignVariableOp@batch_normalization_138_fusedbatchnormv3_readvariableop_resource5batch_normalization_138/FusedBatchNormV3:batch_mean:08^batch_normalization_138/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_138/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_138/AssignNewValue?
(batch_normalization_138/AssignNewValue_1AssignVariableOpBbatch_normalization_138_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_138/FusedBatchNormV3:batch_variance:0:^batch_normalization_138/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*U
_classK
IGloc:@batch_normalization_138/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_138/AssignNewValue_1?
max_pooling2d_37/MaxPoolMaxPool,batch_normalization_138/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_37/MaxPoolw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_1/dropout/Const?
dropout_1/dropout/MulMul!max_pooling2d_37/MaxPool:output:0 dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout_1/dropout/Mul?
dropout_1/dropout/ShapeShape!max_pooling2d_37/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout_1/dropout/Mul_1?
 conv2d_142/Conv2D/ReadVariableOpReadVariableOp)conv2d_142_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02"
 conv2d_142/Conv2D/ReadVariableOp?
conv2d_142/Conv2DConv2Ddropout_1/dropout/Mul_1:z:0(conv2d_142/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_142/Conv2D?
!conv2d_142/BiasAdd/ReadVariableOpReadVariableOp*conv2d_142_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_142/BiasAdd/ReadVariableOp?
conv2d_142/BiasAddBiasAddconv2d_142/Conv2D:output:0)conv2d_142/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_142/BiasAdd?
conv2d_142/ReluReluconv2d_142/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_142/Relu?
&batch_normalization_139/ReadVariableOpReadVariableOp/batch_normalization_139_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_139/ReadVariableOp?
(batch_normalization_139/ReadVariableOp_1ReadVariableOp1batch_normalization_139_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_139/ReadVariableOp_1?
7batch_normalization_139/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_139_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_139/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_139/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_139_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_139/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_139/FusedBatchNormV3FusedBatchNormV3conv2d_142/Relu:activations:0.batch_normalization_139/ReadVariableOp:value:00batch_normalization_139/ReadVariableOp_1:value:0?batch_normalization_139/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_139/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_139/FusedBatchNormV3?
&batch_normalization_139/AssignNewValueAssignVariableOp@batch_normalization_139_fusedbatchnormv3_readvariableop_resource5batch_normalization_139/FusedBatchNormV3:batch_mean:08^batch_normalization_139/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_139/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_139/AssignNewValue?
(batch_normalization_139/AssignNewValue_1AssignVariableOpBbatch_normalization_139_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_139/FusedBatchNormV3:batch_variance:0:^batch_normalization_139/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*U
_classK
IGloc:@batch_normalization_139/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_139/AssignNewValue_1?
 conv2d_143/Conv2D/ReadVariableOpReadVariableOp)conv2d_143_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_143/Conv2D/ReadVariableOp?
conv2d_143/Conv2DConv2D,batch_normalization_139/FusedBatchNormV3:y:0(conv2d_143/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????	?*
paddingVALID*
strides
2
conv2d_143/Conv2D?
!conv2d_143/BiasAdd/ReadVariableOpReadVariableOp*conv2d_143_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_143/BiasAdd/ReadVariableOp?
conv2d_143/BiasAddBiasAddconv2d_143/Conv2D:output:0)conv2d_143/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????	?2
conv2d_143/BiasAdd?
conv2d_143/ReluReluconv2d_143/BiasAdd:output:0*
T0*0
_output_shapes
:?????????	?2
conv2d_143/Relu?
&batch_normalization_140/ReadVariableOpReadVariableOp/batch_normalization_140_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_140/ReadVariableOp?
(batch_normalization_140/ReadVariableOp_1ReadVariableOp1batch_normalization_140_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_140/ReadVariableOp_1?
7batch_normalization_140/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_140_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_140/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_140_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_140/FusedBatchNormV3FusedBatchNormV3conv2d_143/Relu:activations:0.batch_normalization_140/ReadVariableOp:value:00batch_normalization_140/ReadVariableOp_1:value:0?batch_normalization_140/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_140/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????	?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_140/FusedBatchNormV3?
&batch_normalization_140/AssignNewValueAssignVariableOp@batch_normalization_140_fusedbatchnormv3_readvariableop_resource5batch_normalization_140/FusedBatchNormV3:batch_mean:08^batch_normalization_140/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_140/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_140/AssignNewValue?
(batch_normalization_140/AssignNewValue_1AssignVariableOpBbatch_normalization_140_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_140/FusedBatchNormV3:batch_variance:0:^batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*U
_classK
IGloc:@batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_140/AssignNewValue_1?
 conv2d_144/Conv2D/ReadVariableOpReadVariableOp)conv2d_144_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_144/Conv2D/ReadVariableOp?
conv2d_144/Conv2DConv2D,batch_normalization_140/FusedBatchNormV3:y:0(conv2d_144/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_144/Conv2D?
!conv2d_144/BiasAdd/ReadVariableOpReadVariableOp*conv2d_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_144/BiasAdd/ReadVariableOp?
conv2d_144/BiasAddBiasAddconv2d_144/Conv2D:output:0)conv2d_144/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_144/BiasAdd?
conv2d_144/ReluReluconv2d_144/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_144/Relu?
&batch_normalization_141/ReadVariableOpReadVariableOp/batch_normalization_141_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_141/ReadVariableOp?
(batch_normalization_141/ReadVariableOp_1ReadVariableOp1batch_normalization_141_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_141/ReadVariableOp_1?
7batch_normalization_141/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_141_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_141/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_141_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_141/FusedBatchNormV3FusedBatchNormV3conv2d_144/Relu:activations:0.batch_normalization_141/ReadVariableOp:value:00batch_normalization_141/ReadVariableOp_1:value:0?batch_normalization_141/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_141/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2*
(batch_normalization_141/FusedBatchNormV3?
&batch_normalization_141/AssignNewValueAssignVariableOp@batch_normalization_141_fusedbatchnormv3_readvariableop_resource5batch_normalization_141/FusedBatchNormV3:batch_mean:08^batch_normalization_141/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*S
_classI
GEloc:@batch_normalization_141/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02(
&batch_normalization_141/AssignNewValue?
(batch_normalization_141/AssignNewValue_1AssignVariableOpBbatch_normalization_141_fusedbatchnormv3_readvariableop_1_resource9batch_normalization_141/FusedBatchNormV3:batch_variance:0:^batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*U
_classK
IGloc:@batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02*
(batch_normalization_141/AssignNewValue_1?
max_pooling2d_38/MaxPoolMaxPool,batch_normalization_141/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_38/MaxPoolw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_2/dropout/Const?
dropout_2/dropout/MulMul!max_pooling2d_38/MaxPool:output:0 dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout_2/dropout/Mul?
dropout_2/dropout/ShapeShape!max_pooling2d_38/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform?
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_2/dropout/GreaterEqual/y?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2 
dropout_2/dropout/GreaterEqual?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout_2/dropout/Cast?
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout_2/dropout/Mul_1u
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_10/Const?
flatten_10/ReshapeReshapedropout_2/dropout/Mul_1:z:0flatten_10/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_10/Reshapew
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout_3/dropout/Const?
dropout_3/dropout/MulMulflatten_10/Reshape:output:0 dropout_3/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_3/dropout/Mul}
dropout_3/dropout/ShapeShapeflatten_10/Reshape:output:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype020
.dropout_3/dropout/random_uniform/RandomUniform?
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 dropout_3/dropout/GreaterEqual/y?
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
dropout_3/dropout/GreaterEqual?
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_3/dropout/Cast?
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_3/dropout/Mul_1?
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_26/MatMul/ReadVariableOp?
dense_26/MatMulMatMuldropout_3/dropout/Mul_1:z:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_26/MatMul?
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_26/BiasAdd/ReadVariableOp?
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_26/BiasAddt
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_26/Relu?
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_27/MatMul/ReadVariableOp?
dense_27/MatMulMatMuldense_26/Relu:activations:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_27/MatMul?
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_27/BiasAdd/ReadVariableOp?
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_27/BiasAddt
dense_27/ReluReludense_27/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_27/Relu?
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes
:	?>*
dtype02 
dense_28/MatMul/ReadVariableOp?
dense_28/MatMulMatMuldense_27/Relu:activations:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2
dense_28/MatMul?
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:>*
dtype02!
dense_28/BiasAdd/ReadVariableOp?
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2
dense_28/BiasAdd|
dense_28/SoftmaxSoftmaxdense_28/BiasAdd:output:0*
T0*'
_output_shapes
:?????????>2
dense_28/Softmax?
IdentityIdentitydense_28/Softmax:softmax:0'^batch_normalization_133/AssignNewValue)^batch_normalization_133/AssignNewValue_18^batch_normalization_133/FusedBatchNormV3/ReadVariableOp:^batch_normalization_133/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_133/ReadVariableOp)^batch_normalization_133/ReadVariableOp_1'^batch_normalization_134/AssignNewValue)^batch_normalization_134/AssignNewValue_18^batch_normalization_134/FusedBatchNormV3/ReadVariableOp:^batch_normalization_134/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_134/ReadVariableOp)^batch_normalization_134/ReadVariableOp_1'^batch_normalization_135/AssignNewValue)^batch_normalization_135/AssignNewValue_18^batch_normalization_135/FusedBatchNormV3/ReadVariableOp:^batch_normalization_135/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_135/ReadVariableOp)^batch_normalization_135/ReadVariableOp_1'^batch_normalization_136/AssignNewValue)^batch_normalization_136/AssignNewValue_18^batch_normalization_136/FusedBatchNormV3/ReadVariableOp:^batch_normalization_136/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_136/ReadVariableOp)^batch_normalization_136/ReadVariableOp_1'^batch_normalization_137/AssignNewValue)^batch_normalization_137/AssignNewValue_18^batch_normalization_137/FusedBatchNormV3/ReadVariableOp:^batch_normalization_137/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_137/ReadVariableOp)^batch_normalization_137/ReadVariableOp_1'^batch_normalization_138/AssignNewValue)^batch_normalization_138/AssignNewValue_18^batch_normalization_138/FusedBatchNormV3/ReadVariableOp:^batch_normalization_138/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_138/ReadVariableOp)^batch_normalization_138/ReadVariableOp_1'^batch_normalization_139/AssignNewValue)^batch_normalization_139/AssignNewValue_18^batch_normalization_139/FusedBatchNormV3/ReadVariableOp:^batch_normalization_139/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_139/ReadVariableOp)^batch_normalization_139/ReadVariableOp_1'^batch_normalization_140/AssignNewValue)^batch_normalization_140/AssignNewValue_18^batch_normalization_140/FusedBatchNormV3/ReadVariableOp:^batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_140/ReadVariableOp)^batch_normalization_140/ReadVariableOp_1'^batch_normalization_141/AssignNewValue)^batch_normalization_141/AssignNewValue_18^batch_normalization_141/FusedBatchNormV3/ReadVariableOp:^batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_141/ReadVariableOp)^batch_normalization_141/ReadVariableOp_1"^conv2d_136/BiasAdd/ReadVariableOp!^conv2d_136/Conv2D/ReadVariableOp"^conv2d_137/BiasAdd/ReadVariableOp!^conv2d_137/Conv2D/ReadVariableOp"^conv2d_138/BiasAdd/ReadVariableOp!^conv2d_138/Conv2D/ReadVariableOp"^conv2d_139/BiasAdd/ReadVariableOp!^conv2d_139/Conv2D/ReadVariableOp"^conv2d_140/BiasAdd/ReadVariableOp!^conv2d_140/Conv2D/ReadVariableOp"^conv2d_141/BiasAdd/ReadVariableOp!^conv2d_141/Conv2D/ReadVariableOp"^conv2d_142/BiasAdd/ReadVariableOp!^conv2d_142/Conv2D/ReadVariableOp"^conv2d_143/BiasAdd/ReadVariableOp!^conv2d_143/Conv2D/ReadVariableOp"^conv2d_144/BiasAdd/ReadVariableOp!^conv2d_144/Conv2D/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2P
&batch_normalization_133/AssignNewValue&batch_normalization_133/AssignNewValue2T
(batch_normalization_133/AssignNewValue_1(batch_normalization_133/AssignNewValue_12r
7batch_normalization_133/FusedBatchNormV3/ReadVariableOp7batch_normalization_133/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_133/FusedBatchNormV3/ReadVariableOp_19batch_normalization_133/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_133/ReadVariableOp&batch_normalization_133/ReadVariableOp2T
(batch_normalization_133/ReadVariableOp_1(batch_normalization_133/ReadVariableOp_12P
&batch_normalization_134/AssignNewValue&batch_normalization_134/AssignNewValue2T
(batch_normalization_134/AssignNewValue_1(batch_normalization_134/AssignNewValue_12r
7batch_normalization_134/FusedBatchNormV3/ReadVariableOp7batch_normalization_134/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_134/FusedBatchNormV3/ReadVariableOp_19batch_normalization_134/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_134/ReadVariableOp&batch_normalization_134/ReadVariableOp2T
(batch_normalization_134/ReadVariableOp_1(batch_normalization_134/ReadVariableOp_12P
&batch_normalization_135/AssignNewValue&batch_normalization_135/AssignNewValue2T
(batch_normalization_135/AssignNewValue_1(batch_normalization_135/AssignNewValue_12r
7batch_normalization_135/FusedBatchNormV3/ReadVariableOp7batch_normalization_135/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_135/FusedBatchNormV3/ReadVariableOp_19batch_normalization_135/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_135/ReadVariableOp&batch_normalization_135/ReadVariableOp2T
(batch_normalization_135/ReadVariableOp_1(batch_normalization_135/ReadVariableOp_12P
&batch_normalization_136/AssignNewValue&batch_normalization_136/AssignNewValue2T
(batch_normalization_136/AssignNewValue_1(batch_normalization_136/AssignNewValue_12r
7batch_normalization_136/FusedBatchNormV3/ReadVariableOp7batch_normalization_136/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_136/FusedBatchNormV3/ReadVariableOp_19batch_normalization_136/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_136/ReadVariableOp&batch_normalization_136/ReadVariableOp2T
(batch_normalization_136/ReadVariableOp_1(batch_normalization_136/ReadVariableOp_12P
&batch_normalization_137/AssignNewValue&batch_normalization_137/AssignNewValue2T
(batch_normalization_137/AssignNewValue_1(batch_normalization_137/AssignNewValue_12r
7batch_normalization_137/FusedBatchNormV3/ReadVariableOp7batch_normalization_137/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_137/FusedBatchNormV3/ReadVariableOp_19batch_normalization_137/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_137/ReadVariableOp&batch_normalization_137/ReadVariableOp2T
(batch_normalization_137/ReadVariableOp_1(batch_normalization_137/ReadVariableOp_12P
&batch_normalization_138/AssignNewValue&batch_normalization_138/AssignNewValue2T
(batch_normalization_138/AssignNewValue_1(batch_normalization_138/AssignNewValue_12r
7batch_normalization_138/FusedBatchNormV3/ReadVariableOp7batch_normalization_138/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_138/FusedBatchNormV3/ReadVariableOp_19batch_normalization_138/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_138/ReadVariableOp&batch_normalization_138/ReadVariableOp2T
(batch_normalization_138/ReadVariableOp_1(batch_normalization_138/ReadVariableOp_12P
&batch_normalization_139/AssignNewValue&batch_normalization_139/AssignNewValue2T
(batch_normalization_139/AssignNewValue_1(batch_normalization_139/AssignNewValue_12r
7batch_normalization_139/FusedBatchNormV3/ReadVariableOp7batch_normalization_139/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_139/FusedBatchNormV3/ReadVariableOp_19batch_normalization_139/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_139/ReadVariableOp&batch_normalization_139/ReadVariableOp2T
(batch_normalization_139/ReadVariableOp_1(batch_normalization_139/ReadVariableOp_12P
&batch_normalization_140/AssignNewValue&batch_normalization_140/AssignNewValue2T
(batch_normalization_140/AssignNewValue_1(batch_normalization_140/AssignNewValue_12r
7batch_normalization_140/FusedBatchNormV3/ReadVariableOp7batch_normalization_140/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_140/FusedBatchNormV3/ReadVariableOp_19batch_normalization_140/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_140/ReadVariableOp&batch_normalization_140/ReadVariableOp2T
(batch_normalization_140/ReadVariableOp_1(batch_normalization_140/ReadVariableOp_12P
&batch_normalization_141/AssignNewValue&batch_normalization_141/AssignNewValue2T
(batch_normalization_141/AssignNewValue_1(batch_normalization_141/AssignNewValue_12r
7batch_normalization_141/FusedBatchNormV3/ReadVariableOp7batch_normalization_141/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_141/FusedBatchNormV3/ReadVariableOp_19batch_normalization_141/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_141/ReadVariableOp&batch_normalization_141/ReadVariableOp2T
(batch_normalization_141/ReadVariableOp_1(batch_normalization_141/ReadVariableOp_12F
!conv2d_136/BiasAdd/ReadVariableOp!conv2d_136/BiasAdd/ReadVariableOp2D
 conv2d_136/Conv2D/ReadVariableOp conv2d_136/Conv2D/ReadVariableOp2F
!conv2d_137/BiasAdd/ReadVariableOp!conv2d_137/BiasAdd/ReadVariableOp2D
 conv2d_137/Conv2D/ReadVariableOp conv2d_137/Conv2D/ReadVariableOp2F
!conv2d_138/BiasAdd/ReadVariableOp!conv2d_138/BiasAdd/ReadVariableOp2D
 conv2d_138/Conv2D/ReadVariableOp conv2d_138/Conv2D/ReadVariableOp2F
!conv2d_139/BiasAdd/ReadVariableOp!conv2d_139/BiasAdd/ReadVariableOp2D
 conv2d_139/Conv2D/ReadVariableOp conv2d_139/Conv2D/ReadVariableOp2F
!conv2d_140/BiasAdd/ReadVariableOp!conv2d_140/BiasAdd/ReadVariableOp2D
 conv2d_140/Conv2D/ReadVariableOp conv2d_140/Conv2D/ReadVariableOp2F
!conv2d_141/BiasAdd/ReadVariableOp!conv2d_141/BiasAdd/ReadVariableOp2D
 conv2d_141/Conv2D/ReadVariableOp conv2d_141/Conv2D/ReadVariableOp2F
!conv2d_142/BiasAdd/ReadVariableOp!conv2d_142/BiasAdd/ReadVariableOp2D
 conv2d_142/Conv2D/ReadVariableOp conv2d_142/Conv2D/ReadVariableOp2F
!conv2d_143/BiasAdd/ReadVariableOp!conv2d_143/BiasAdd/ReadVariableOp2D
 conv2d_143/Conv2D/ReadVariableOp conv2d_143/Conv2D/ReadVariableOp2F
!conv2d_144/BiasAdd/ReadVariableOp!conv2d_144/BiasAdd/ReadVariableOp2D
 conv2d_144/Conv2D/ReadVariableOp conv2d_144/Conv2D/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_294189

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????o? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????o? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????o? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????o? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_294503

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_292798

inputs
conv2d_136_292649
conv2d_136_292651"
batch_normalization_133_292654"
batch_normalization_133_292656"
batch_normalization_133_292658"
batch_normalization_133_292660
conv2d_137_292663
conv2d_137_292665"
batch_normalization_134_292668"
batch_normalization_134_292670"
batch_normalization_134_292672"
batch_normalization_134_292674
conv2d_138_292677
conv2d_138_292679"
batch_normalization_135_292682"
batch_normalization_135_292684"
batch_normalization_135_292686"
batch_normalization_135_292688
conv2d_139_292692
conv2d_139_292694"
batch_normalization_136_292697"
batch_normalization_136_292699"
batch_normalization_136_292701"
batch_normalization_136_292703
conv2d_140_292706
conv2d_140_292708"
batch_normalization_137_292711"
batch_normalization_137_292713"
batch_normalization_137_292715"
batch_normalization_137_292717
conv2d_141_292720
conv2d_141_292722"
batch_normalization_138_292725"
batch_normalization_138_292727"
batch_normalization_138_292729"
batch_normalization_138_292731
conv2d_142_292736
conv2d_142_292738"
batch_normalization_139_292741"
batch_normalization_139_292743"
batch_normalization_139_292745"
batch_normalization_139_292747
conv2d_143_292750
conv2d_143_292752"
batch_normalization_140_292755"
batch_normalization_140_292757"
batch_normalization_140_292759"
batch_normalization_140_292761
conv2d_144_292764
conv2d_144_292766"
batch_normalization_141_292769"
batch_normalization_141_292771"
batch_normalization_141_292773"
batch_normalization_141_292775
dense_26_292782
dense_26_292784
dense_27_292787
dense_27_292789
dense_28_292792
dense_28_292794
identity??/batch_normalization_133/StatefulPartitionedCall?/batch_normalization_134/StatefulPartitionedCall?/batch_normalization_135/StatefulPartitionedCall?/batch_normalization_136/StatefulPartitionedCall?/batch_normalization_137/StatefulPartitionedCall?/batch_normalization_138/StatefulPartitionedCall?/batch_normalization_139/StatefulPartitionedCall?/batch_normalization_140/StatefulPartitionedCall?/batch_normalization_141/StatefulPartitionedCall?"conv2d_136/StatefulPartitionedCall?"conv2d_137/StatefulPartitionedCall?"conv2d_138/StatefulPartitionedCall?"conv2d_139/StatefulPartitionedCall?"conv2d_140/StatefulPartitionedCall?"conv2d_141/StatefulPartitionedCall?"conv2d_142/StatefulPartitionedCall?"conv2d_143/StatefulPartitionedCall?"conv2d_144/StatefulPartitionedCall? dense_26/StatefulPartitionedCall? dense_27/StatefulPartitionedCall? dense_28/StatefulPartitionedCall?
"conv2d_136/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_136_292649conv2d_136_292651*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_136_layer_call_and_return_conditional_losses_2911362$
"conv2d_136/StatefulPartitionedCall?
/batch_normalization_133/StatefulPartitionedCallStatefulPartitionedCall+conv2d_136/StatefulPartitionedCall:output:0batch_normalization_133_292654batch_normalization_133_292656batch_normalization_133_292658batch_normalization_133_292660*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_29118921
/batch_normalization_133/StatefulPartitionedCall?
"conv2d_137/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_133/StatefulPartitionedCall:output:0conv2d_137_292663conv2d_137_292665*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_137_layer_call_and_return_conditional_losses_2912362$
"conv2d_137/StatefulPartitionedCall?
/batch_normalization_134/StatefulPartitionedCallStatefulPartitionedCall+conv2d_137/StatefulPartitionedCall:output:0batch_normalization_134_292668batch_normalization_134_292670batch_normalization_134_292672batch_normalization_134_292674*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_29128921
/batch_normalization_134/StatefulPartitionedCall?
"conv2d_138/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_134/StatefulPartitionedCall:output:0conv2d_138_292677conv2d_138_292679*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????o? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_138_layer_call_and_return_conditional_losses_2913362$
"conv2d_138/StatefulPartitionedCall?
/batch_normalization_135/StatefulPartitionedCallStatefulPartitionedCall+conv2d_138/StatefulPartitionedCall:output:0batch_normalization_135_292682batch_normalization_135_292684batch_normalization_135_292686batch_normalization_135_292688*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????o? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_29138921
/batch_normalization_135/StatefulPartitionedCall?
 max_pooling2d_36/PartitionedCallPartitionedCall8batch_normalization_135/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????7J * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_2904672"
 max_pooling2d_36/PartitionedCall?
"conv2d_139/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_139_292692conv2d_139_292694*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????5H@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_139_layer_call_and_return_conditional_losses_2914372$
"conv2d_139/StatefulPartitionedCall?
/batch_normalization_136/StatefulPartitionedCallStatefulPartitionedCall+conv2d_139/StatefulPartitionedCall:output:0batch_normalization_136_292697batch_normalization_136_292699batch_normalization_136_292701batch_normalization_136_292703*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????5H@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_29149021
/batch_normalization_136/StatefulPartitionedCall?
"conv2d_140/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_136/StatefulPartitionedCall:output:0conv2d_140_292706conv2d_140_292708*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????3F@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_140_layer_call_and_return_conditional_losses_2915372$
"conv2d_140/StatefulPartitionedCall?
/batch_normalization_137/StatefulPartitionedCallStatefulPartitionedCall+conv2d_140/StatefulPartitionedCall:output:0batch_normalization_137_292711batch_normalization_137_292713batch_normalization_137_292715batch_normalization_137_292717*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????3F@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_29159021
/batch_normalization_137/StatefulPartitionedCall?
"conv2d_141/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_137/StatefulPartitionedCall:output:0conv2d_141_292720conv2d_141_292722*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_141_layer_call_and_return_conditional_losses_2916372$
"conv2d_141/StatefulPartitionedCall?
/batch_normalization_138/StatefulPartitionedCallStatefulPartitionedCall+conv2d_141/StatefulPartitionedCall:output:0batch_normalization_138_292725batch_normalization_138_292727batch_normalization_138_292729batch_normalization_138_292731*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_29169021
/batch_normalization_138/StatefulPartitionedCall?
 max_pooling2d_37/PartitionedCallPartitionedCall8batch_normalization_138/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_2907912"
 max_pooling2d_37/PartitionedCall?
dropout_1/PartitionedCallPartitionedCall)max_pooling2d_37/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_2917442
dropout_1/PartitionedCall?
"conv2d_142/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv2d_142_292736conv2d_142_292738*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_142_layer_call_and_return_conditional_losses_2917682$
"conv2d_142/StatefulPartitionedCall?
/batch_normalization_139/StatefulPartitionedCallStatefulPartitionedCall+conv2d_142/StatefulPartitionedCall:output:0batch_normalization_139_292741batch_normalization_139_292743batch_normalization_139_292745batch_normalization_139_292747*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_29182121
/batch_normalization_139/StatefulPartitionedCall?
"conv2d_143/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_139/StatefulPartitionedCall:output:0conv2d_143_292750conv2d_143_292752*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????	?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_143_layer_call_and_return_conditional_losses_2918682$
"conv2d_143/StatefulPartitionedCall?
/batch_normalization_140/StatefulPartitionedCallStatefulPartitionedCall+conv2d_143/StatefulPartitionedCall:output:0batch_normalization_140_292755batch_normalization_140_292757batch_normalization_140_292759batch_normalization_140_292761*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????	?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_29192121
/batch_normalization_140/StatefulPartitionedCall?
"conv2d_144/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_140/StatefulPartitionedCall:output:0conv2d_144_292764conv2d_144_292766*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_144_layer_call_and_return_conditional_losses_2919682$
"conv2d_144/StatefulPartitionedCall?
/batch_normalization_141/StatefulPartitionedCallStatefulPartitionedCall+conv2d_144/StatefulPartitionedCall:output:0batch_normalization_141_292769batch_normalization_141_292771batch_normalization_141_292773batch_normalization_141_292775*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_29202121
/batch_normalization_141/StatefulPartitionedCall?
 max_pooling2d_38/PartitionedCallPartitionedCall8batch_normalization_141/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_2911152"
 max_pooling2d_38/PartitionedCall?
dropout_2/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_2920752
dropout_2/PartitionedCall?
flatten_10/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_2920942
flatten_10/PartitionedCall?
dropout_3/PartitionedCallPartitionedCall#flatten_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_2921192
dropout_3/PartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_26_292782dense_26_292784*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_2921432"
 dense_26/StatefulPartitionedCall?
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_292787dense_27_292789*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_2921702"
 dense_27/StatefulPartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_292792dense_28_292794*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_2921972"
 dense_28/StatefulPartitionedCall?
IdentityIdentity)dense_28/StatefulPartitionedCall:output:00^batch_normalization_133/StatefulPartitionedCall0^batch_normalization_134/StatefulPartitionedCall0^batch_normalization_135/StatefulPartitionedCall0^batch_normalization_136/StatefulPartitionedCall0^batch_normalization_137/StatefulPartitionedCall0^batch_normalization_138/StatefulPartitionedCall0^batch_normalization_139/StatefulPartitionedCall0^batch_normalization_140/StatefulPartitionedCall0^batch_normalization_141/StatefulPartitionedCall#^conv2d_136/StatefulPartitionedCall#^conv2d_137/StatefulPartitionedCall#^conv2d_138/StatefulPartitionedCall#^conv2d_139/StatefulPartitionedCall#^conv2d_140/StatefulPartitionedCall#^conv2d_141/StatefulPartitionedCall#^conv2d_142/StatefulPartitionedCall#^conv2d_143/StatefulPartitionedCall#^conv2d_144/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2b
/batch_normalization_133/StatefulPartitionedCall/batch_normalization_133/StatefulPartitionedCall2b
/batch_normalization_134/StatefulPartitionedCall/batch_normalization_134/StatefulPartitionedCall2b
/batch_normalization_135/StatefulPartitionedCall/batch_normalization_135/StatefulPartitionedCall2b
/batch_normalization_136/StatefulPartitionedCall/batch_normalization_136/StatefulPartitionedCall2b
/batch_normalization_137/StatefulPartitionedCall/batch_normalization_137/StatefulPartitionedCall2b
/batch_normalization_138/StatefulPartitionedCall/batch_normalization_138/StatefulPartitionedCall2b
/batch_normalization_139/StatefulPartitionedCall/batch_normalization_139/StatefulPartitionedCall2b
/batch_normalization_140/StatefulPartitionedCall/batch_normalization_140/StatefulPartitionedCall2b
/batch_normalization_141/StatefulPartitionedCall/batch_normalization_141/StatefulPartitionedCall2H
"conv2d_136/StatefulPartitionedCall"conv2d_136/StatefulPartitionedCall2H
"conv2d_137/StatefulPartitionedCall"conv2d_137/StatefulPartitionedCall2H
"conv2d_138/StatefulPartitionedCall"conv2d_138/StatefulPartitionedCall2H
"conv2d_139/StatefulPartitionedCall"conv2d_139/StatefulPartitionedCall2H
"conv2d_140/StatefulPartitionedCall"conv2d_140/StatefulPartitionedCall2H
"conv2d_141/StatefulPartitionedCall"conv2d_141/StatefulPartitionedCall2H
"conv2d_142/StatefulPartitionedCall"conv2d_142/StatefulPartitionedCall2H
"conv2d_143/StatefulPartitionedCall"conv2d_143/StatefulPartitionedCall2H
"conv2d_144/StatefulPartitionedCall"conv2d_144/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_294337

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????5H@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????5H@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????5H@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????5H@
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_137_layer_call_fn_294452

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????3F@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_2915722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????3F@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????3F@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????3F@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_291821

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
*__inference_dropout_1_layer_call_fn_294699

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_2917392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_139_layer_call_fn_294839

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_2908592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_139_layer_call_fn_294775

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_2918032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_37_layer_call_fn_290797

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_2907912
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_291098

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_290963

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_143_layer_call_and_return_conditional_losses_294863

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????	?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????	?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????	?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????	?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_293893

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:??????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:??????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_135_layer_call_fn_294233

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????o? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_2913892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????o? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????o? ::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????o? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_291903

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????	?:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????	?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????	?::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????	?
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_291171

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:??????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:??????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_294059

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:??????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:??????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?

?
F__inference_conv2d_144_layer_call_and_return_conditional_losses_291968

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????	?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????	?
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_294587

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????#@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????#@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????#@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????#@
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_133_layer_call_fn_293924

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_2911712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:??????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_135_layer_call_fn_294156

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_2904192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?

?
F__inference_conv2d_140_layer_call_and_return_conditional_losses_291537

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????3F@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????3F@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????3F@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????3F@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????5H@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????5H@
 
_user_specified_nameinputs
?

?
F__inference_conv2d_142_layer_call_and_return_conditional_losses_291768

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_137_layer_call_fn_294529

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_2906702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_140_layer_call_fn_294987

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_2909632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_290890

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_137_layer_call_and_return_conditional_losses_293948

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:??????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?

?
F__inference_conv2d_142_layer_call_and_return_conditional_losses_294715

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
+__inference_conv2d_143_layer_call_fn_294872

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????	?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_143_layer_call_and_return_conditional_losses_2918682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????	?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_136_layer_call_and_return_conditional_losses_291136

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_141_layer_call_and_return_conditional_losses_291637

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????#@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????#@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????3F@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????3F@
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_291115

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_292114

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_15_layer_call_fn_293789

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58
identity??StatefulPartitionedCall?	
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58*H
TinA
?2=*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*^
_read_only_resource_inputs@
><	
 !"#$%&'()*+,-./0123456789:;<*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_15_layer_call_and_return_conditional_losses_2927982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_141_layer_call_fn_295148

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_2920212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_295058

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_134_layer_call_fn_294008

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_2903152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_133_layer_call_fn_293937

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_2911892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:??????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_38_layer_call_fn_291121

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_2911152
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_137_layer_call_and_return_conditional_losses_291236

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:??????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_291690

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????#@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????#@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????#@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????#@
 
_user_specified_nameinputs
?
F
*__inference_dropout_2_layer_call_fn_295175

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_2920752
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
~
)__inference_dense_27_layer_call_fn_295253

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_2921702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_295203

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_292070

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_295165

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_134_layer_call_fn_294072

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_2912712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:??????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
??
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_292521

inputs
conv2d_136_292372
conv2d_136_292374"
batch_normalization_133_292377"
batch_normalization_133_292379"
batch_normalization_133_292381"
batch_normalization_133_292383
conv2d_137_292386
conv2d_137_292388"
batch_normalization_134_292391"
batch_normalization_134_292393"
batch_normalization_134_292395"
batch_normalization_134_292397
conv2d_138_292400
conv2d_138_292402"
batch_normalization_135_292405"
batch_normalization_135_292407"
batch_normalization_135_292409"
batch_normalization_135_292411
conv2d_139_292415
conv2d_139_292417"
batch_normalization_136_292420"
batch_normalization_136_292422"
batch_normalization_136_292424"
batch_normalization_136_292426
conv2d_140_292429
conv2d_140_292431"
batch_normalization_137_292434"
batch_normalization_137_292436"
batch_normalization_137_292438"
batch_normalization_137_292440
conv2d_141_292443
conv2d_141_292445"
batch_normalization_138_292448"
batch_normalization_138_292450"
batch_normalization_138_292452"
batch_normalization_138_292454
conv2d_142_292459
conv2d_142_292461"
batch_normalization_139_292464"
batch_normalization_139_292466"
batch_normalization_139_292468"
batch_normalization_139_292470
conv2d_143_292473
conv2d_143_292475"
batch_normalization_140_292478"
batch_normalization_140_292480"
batch_normalization_140_292482"
batch_normalization_140_292484
conv2d_144_292487
conv2d_144_292489"
batch_normalization_141_292492"
batch_normalization_141_292494"
batch_normalization_141_292496"
batch_normalization_141_292498
dense_26_292505
dense_26_292507
dense_27_292510
dense_27_292512
dense_28_292515
dense_28_292517
identity??/batch_normalization_133/StatefulPartitionedCall?/batch_normalization_134/StatefulPartitionedCall?/batch_normalization_135/StatefulPartitionedCall?/batch_normalization_136/StatefulPartitionedCall?/batch_normalization_137/StatefulPartitionedCall?/batch_normalization_138/StatefulPartitionedCall?/batch_normalization_139/StatefulPartitionedCall?/batch_normalization_140/StatefulPartitionedCall?/batch_normalization_141/StatefulPartitionedCall?"conv2d_136/StatefulPartitionedCall?"conv2d_137/StatefulPartitionedCall?"conv2d_138/StatefulPartitionedCall?"conv2d_139/StatefulPartitionedCall?"conv2d_140/StatefulPartitionedCall?"conv2d_141/StatefulPartitionedCall?"conv2d_142/StatefulPartitionedCall?"conv2d_143/StatefulPartitionedCall?"conv2d_144/StatefulPartitionedCall? dense_26/StatefulPartitionedCall? dense_27/StatefulPartitionedCall? dense_28/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?
"conv2d_136/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_136_292372conv2d_136_292374*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_136_layer_call_and_return_conditional_losses_2911362$
"conv2d_136/StatefulPartitionedCall?
/batch_normalization_133/StatefulPartitionedCallStatefulPartitionedCall+conv2d_136/StatefulPartitionedCall:output:0batch_normalization_133_292377batch_normalization_133_292379batch_normalization_133_292381batch_normalization_133_292383*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_29117121
/batch_normalization_133/StatefulPartitionedCall?
"conv2d_137/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_133/StatefulPartitionedCall:output:0conv2d_137_292386conv2d_137_292388*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_137_layer_call_and_return_conditional_losses_2912362$
"conv2d_137/StatefulPartitionedCall?
/batch_normalization_134/StatefulPartitionedCallStatefulPartitionedCall+conv2d_137/StatefulPartitionedCall:output:0batch_normalization_134_292391batch_normalization_134_292393batch_normalization_134_292395batch_normalization_134_292397*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_29127121
/batch_normalization_134/StatefulPartitionedCall?
"conv2d_138/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_134/StatefulPartitionedCall:output:0conv2d_138_292400conv2d_138_292402*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????o? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_138_layer_call_and_return_conditional_losses_2913362$
"conv2d_138/StatefulPartitionedCall?
/batch_normalization_135/StatefulPartitionedCallStatefulPartitionedCall+conv2d_138/StatefulPartitionedCall:output:0batch_normalization_135_292405batch_normalization_135_292407batch_normalization_135_292409batch_normalization_135_292411*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????o? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_29137121
/batch_normalization_135/StatefulPartitionedCall?
 max_pooling2d_36/PartitionedCallPartitionedCall8batch_normalization_135/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????7J * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_2904672"
 max_pooling2d_36/PartitionedCall?
"conv2d_139/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_139_292415conv2d_139_292417*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????5H@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_139_layer_call_and_return_conditional_losses_2914372$
"conv2d_139/StatefulPartitionedCall?
/batch_normalization_136/StatefulPartitionedCallStatefulPartitionedCall+conv2d_139/StatefulPartitionedCall:output:0batch_normalization_136_292420batch_normalization_136_292422batch_normalization_136_292424batch_normalization_136_292426*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????5H@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_29147221
/batch_normalization_136/StatefulPartitionedCall?
"conv2d_140/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_136/StatefulPartitionedCall:output:0conv2d_140_292429conv2d_140_292431*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????3F@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_140_layer_call_and_return_conditional_losses_2915372$
"conv2d_140/StatefulPartitionedCall?
/batch_normalization_137/StatefulPartitionedCallStatefulPartitionedCall+conv2d_140/StatefulPartitionedCall:output:0batch_normalization_137_292434batch_normalization_137_292436batch_normalization_137_292438batch_normalization_137_292440*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????3F@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_29157221
/batch_normalization_137/StatefulPartitionedCall?
"conv2d_141/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_137/StatefulPartitionedCall:output:0conv2d_141_292443conv2d_141_292445*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_141_layer_call_and_return_conditional_losses_2916372$
"conv2d_141/StatefulPartitionedCall?
/batch_normalization_138/StatefulPartitionedCallStatefulPartitionedCall+conv2d_141/StatefulPartitionedCall:output:0batch_normalization_138_292448batch_normalization_138_292450batch_normalization_138_292452batch_normalization_138_292454*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_29167221
/batch_normalization_138/StatefulPartitionedCall?
 max_pooling2d_37/PartitionedCallPartitionedCall8batch_normalization_138/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_2907912"
 max_pooling2d_37/PartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_2917392#
!dropout_1/StatefulPartitionedCall?
"conv2d_142/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv2d_142_292459conv2d_142_292461*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_142_layer_call_and_return_conditional_losses_2917682$
"conv2d_142/StatefulPartitionedCall?
/batch_normalization_139/StatefulPartitionedCallStatefulPartitionedCall+conv2d_142/StatefulPartitionedCall:output:0batch_normalization_139_292464batch_normalization_139_292466batch_normalization_139_292468batch_normalization_139_292470*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_29180321
/batch_normalization_139/StatefulPartitionedCall?
"conv2d_143/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_139/StatefulPartitionedCall:output:0conv2d_143_292473conv2d_143_292475*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????	?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_143_layer_call_and_return_conditional_losses_2918682$
"conv2d_143/StatefulPartitionedCall?
/batch_normalization_140/StatefulPartitionedCallStatefulPartitionedCall+conv2d_143/StatefulPartitionedCall:output:0batch_normalization_140_292478batch_normalization_140_292480batch_normalization_140_292482batch_normalization_140_292484*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????	?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_29190321
/batch_normalization_140/StatefulPartitionedCall?
"conv2d_144/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_140/StatefulPartitionedCall:output:0conv2d_144_292487conv2d_144_292489*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_144_layer_call_and_return_conditional_losses_2919682$
"conv2d_144/StatefulPartitionedCall?
/batch_normalization_141/StatefulPartitionedCallStatefulPartitionedCall+conv2d_144/StatefulPartitionedCall:output:0batch_normalization_141_292492batch_normalization_141_292494batch_normalization_141_292496batch_normalization_141_292498*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_29200321
/batch_normalization_141/StatefulPartitionedCall?
 max_pooling2d_38/PartitionedCallPartitionedCall8batch_normalization_141/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_2911152"
 max_pooling2d_38/PartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_2920702#
!dropout_2/StatefulPartitionedCall?
flatten_10/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_2920942
flatten_10/PartitionedCall?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_2921142#
!dropout_3/StatefulPartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_26_292505dense_26_292507*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_2921432"
 dense_26/StatefulPartitionedCall?
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_292510dense_27_292512*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_2921702"
 dense_27/StatefulPartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_292515dense_28_292517*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_2921972"
 dense_28/StatefulPartitionedCall?
IdentityIdentity)dense_28/StatefulPartitionedCall:output:00^batch_normalization_133/StatefulPartitionedCall0^batch_normalization_134/StatefulPartitionedCall0^batch_normalization_135/StatefulPartitionedCall0^batch_normalization_136/StatefulPartitionedCall0^batch_normalization_137/StatefulPartitionedCall0^batch_normalization_138/StatefulPartitionedCall0^batch_normalization_139/StatefulPartitionedCall0^batch_normalization_140/StatefulPartitionedCall0^batch_normalization_141/StatefulPartitionedCall#^conv2d_136/StatefulPartitionedCall#^conv2d_137/StatefulPartitionedCall#^conv2d_138/StatefulPartitionedCall#^conv2d_139/StatefulPartitionedCall#^conv2d_140/StatefulPartitionedCall#^conv2d_141/StatefulPartitionedCall#^conv2d_142/StatefulPartitionedCall#^conv2d_143/StatefulPartitionedCall#^conv2d_144/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2b
/batch_normalization_133/StatefulPartitionedCall/batch_normalization_133/StatefulPartitionedCall2b
/batch_normalization_134/StatefulPartitionedCall/batch_normalization_134/StatefulPartitionedCall2b
/batch_normalization_135/StatefulPartitionedCall/batch_normalization_135/StatefulPartitionedCall2b
/batch_normalization_136/StatefulPartitionedCall/batch_normalization_136/StatefulPartitionedCall2b
/batch_normalization_137/StatefulPartitionedCall/batch_normalization_137/StatefulPartitionedCall2b
/batch_normalization_138/StatefulPartitionedCall/batch_normalization_138/StatefulPartitionedCall2b
/batch_normalization_139/StatefulPartitionedCall/batch_normalization_139/StatefulPartitionedCall2b
/batch_normalization_140/StatefulPartitionedCall/batch_normalization_140/StatefulPartitionedCall2b
/batch_normalization_141/StatefulPartitionedCall/batch_normalization_141/StatefulPartitionedCall2H
"conv2d_136/StatefulPartitionedCall"conv2d_136/StatefulPartitionedCall2H
"conv2d_137/StatefulPartitionedCall"conv2d_137/StatefulPartitionedCall2H
"conv2d_138/StatefulPartitionedCall"conv2d_138/StatefulPartitionedCall2H
"conv2d_139/StatefulPartitionedCall"conv2d_139/StatefulPartitionedCall2H
"conv2d_140/StatefulPartitionedCall"conv2d_140/StatefulPartitionedCall2H
"conv2d_141/StatefulPartitionedCall"conv2d_141/StatefulPartitionedCall2H
"conv2d_142/StatefulPartitionedCall"conv2d_142/StatefulPartitionedCall2H
"conv2d_143/StatefulPartitionedCall"conv2d_143/StatefulPartitionedCall2H
"conv2d_144/StatefulPartitionedCall"conv2d_144/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_137_layer_call_fn_294516

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_2906392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
+__inference_conv2d_137_layer_call_fn_293957

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_137_layer_call_and_return_conditional_losses_2912362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:??????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_293829

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_294421

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????3F@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????3F@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????3F@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????3F@
 
_user_specified_nameinputs
?
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_292075

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_291590

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????3F@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????3F@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????3F@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????3F@
 
_user_specified_nameinputs
?	
?
D__inference_dense_26_layer_call_and_return_conditional_losses_295224

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_26_layer_call_and_return_conditional_losses_292143

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_27_layer_call_and_return_conditional_losses_292170

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_292119

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_36_layer_call_fn_290473

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_2904672
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_294291

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_137_layer_call_fn_294465

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????3F@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_2915902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????3F@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????3F@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????3F@
 
_user_specified_nameinputs
?
c
*__inference_dropout_3_layer_call_fn_295208

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_2921142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_290774

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?/
I__inference_sequential_15_layer_call_and_return_conditional_losses_293539

inputs-
)conv2d_136_conv2d_readvariableop_resource.
*conv2d_136_biasadd_readvariableop_resource3
/batch_normalization_133_readvariableop_resource5
1batch_normalization_133_readvariableop_1_resourceD
@batch_normalization_133_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_133_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_137_conv2d_readvariableop_resource.
*conv2d_137_biasadd_readvariableop_resource3
/batch_normalization_134_readvariableop_resource5
1batch_normalization_134_readvariableop_1_resourceD
@batch_normalization_134_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_134_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_138_conv2d_readvariableop_resource.
*conv2d_138_biasadd_readvariableop_resource3
/batch_normalization_135_readvariableop_resource5
1batch_normalization_135_readvariableop_1_resourceD
@batch_normalization_135_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_135_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_139_conv2d_readvariableop_resource.
*conv2d_139_biasadd_readvariableop_resource3
/batch_normalization_136_readvariableop_resource5
1batch_normalization_136_readvariableop_1_resourceD
@batch_normalization_136_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_136_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_140_conv2d_readvariableop_resource.
*conv2d_140_biasadd_readvariableop_resource3
/batch_normalization_137_readvariableop_resource5
1batch_normalization_137_readvariableop_1_resourceD
@batch_normalization_137_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_137_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_141_conv2d_readvariableop_resource.
*conv2d_141_biasadd_readvariableop_resource3
/batch_normalization_138_readvariableop_resource5
1batch_normalization_138_readvariableop_1_resourceD
@batch_normalization_138_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_138_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_142_conv2d_readvariableop_resource.
*conv2d_142_biasadd_readvariableop_resource3
/batch_normalization_139_readvariableop_resource5
1batch_normalization_139_readvariableop_1_resourceD
@batch_normalization_139_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_139_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_143_conv2d_readvariableop_resource.
*conv2d_143_biasadd_readvariableop_resource3
/batch_normalization_140_readvariableop_resource5
1batch_normalization_140_readvariableop_1_resourceD
@batch_normalization_140_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_140_fusedbatchnormv3_readvariableop_1_resource-
)conv2d_144_conv2d_readvariableop_resource.
*conv2d_144_biasadd_readvariableop_resource3
/batch_normalization_141_readvariableop_resource5
1batch_normalization_141_readvariableop_1_resourceD
@batch_normalization_141_fusedbatchnormv3_readvariableop_resourceF
Bbatch_normalization_141_fusedbatchnormv3_readvariableop_1_resource+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource+
'dense_27_matmul_readvariableop_resource,
(dense_27_biasadd_readvariableop_resource+
'dense_28_matmul_readvariableop_resource,
(dense_28_biasadd_readvariableop_resource
identity??7batch_normalization_133/FusedBatchNormV3/ReadVariableOp?9batch_normalization_133/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_133/ReadVariableOp?(batch_normalization_133/ReadVariableOp_1?7batch_normalization_134/FusedBatchNormV3/ReadVariableOp?9batch_normalization_134/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_134/ReadVariableOp?(batch_normalization_134/ReadVariableOp_1?7batch_normalization_135/FusedBatchNormV3/ReadVariableOp?9batch_normalization_135/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_135/ReadVariableOp?(batch_normalization_135/ReadVariableOp_1?7batch_normalization_136/FusedBatchNormV3/ReadVariableOp?9batch_normalization_136/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_136/ReadVariableOp?(batch_normalization_136/ReadVariableOp_1?7batch_normalization_137/FusedBatchNormV3/ReadVariableOp?9batch_normalization_137/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_137/ReadVariableOp?(batch_normalization_137/ReadVariableOp_1?7batch_normalization_138/FusedBatchNormV3/ReadVariableOp?9batch_normalization_138/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_138/ReadVariableOp?(batch_normalization_138/ReadVariableOp_1?7batch_normalization_139/FusedBatchNormV3/ReadVariableOp?9batch_normalization_139/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_139/ReadVariableOp?(batch_normalization_139/ReadVariableOp_1?7batch_normalization_140/FusedBatchNormV3/ReadVariableOp?9batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_140/ReadVariableOp?(batch_normalization_140/ReadVariableOp_1?7batch_normalization_141/FusedBatchNormV3/ReadVariableOp?9batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1?&batch_normalization_141/ReadVariableOp?(batch_normalization_141/ReadVariableOp_1?!conv2d_136/BiasAdd/ReadVariableOp? conv2d_136/Conv2D/ReadVariableOp?!conv2d_137/BiasAdd/ReadVariableOp? conv2d_137/Conv2D/ReadVariableOp?!conv2d_138/BiasAdd/ReadVariableOp? conv2d_138/Conv2D/ReadVariableOp?!conv2d_139/BiasAdd/ReadVariableOp? conv2d_139/Conv2D/ReadVariableOp?!conv2d_140/BiasAdd/ReadVariableOp? conv2d_140/Conv2D/ReadVariableOp?!conv2d_141/BiasAdd/ReadVariableOp? conv2d_141/Conv2D/ReadVariableOp?!conv2d_142/BiasAdd/ReadVariableOp? conv2d_142/Conv2D/ReadVariableOp?!conv2d_143/BiasAdd/ReadVariableOp? conv2d_143/Conv2D/ReadVariableOp?!conv2d_144/BiasAdd/ReadVariableOp? conv2d_144/Conv2D/ReadVariableOp?dense_26/BiasAdd/ReadVariableOp?dense_26/MatMul/ReadVariableOp?dense_27/BiasAdd/ReadVariableOp?dense_27/MatMul/ReadVariableOp?dense_28/BiasAdd/ReadVariableOp?dense_28/MatMul/ReadVariableOp?
 conv2d_136/Conv2D/ReadVariableOpReadVariableOp)conv2d_136_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_136/Conv2D/ReadVariableOp?
conv2d_136/Conv2DConv2Dinputs(conv2d_136/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
conv2d_136/Conv2D?
!conv2d_136/BiasAdd/ReadVariableOpReadVariableOp*conv2d_136_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_136/BiasAdd/ReadVariableOp?
conv2d_136/BiasAddBiasAddconv2d_136/Conv2D:output:0)conv2d_136/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_136/BiasAdd?
conv2d_136/ReluReluconv2d_136/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_136/Relu?
&batch_normalization_133/ReadVariableOpReadVariableOp/batch_normalization_133_readvariableop_resource*
_output_shapes
: *
dtype02(
&batch_normalization_133/ReadVariableOp?
(batch_normalization_133/ReadVariableOp_1ReadVariableOp1batch_normalization_133_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(batch_normalization_133/ReadVariableOp_1?
7batch_normalization_133/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_133_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7batch_normalization_133/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_133/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_133_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9batch_normalization_133/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_133/FusedBatchNormV3FusedBatchNormV3conv2d_136/Relu:activations:0.batch_normalization_133/ReadVariableOp:value:00batch_normalization_133/ReadVariableOp_1:value:0?batch_normalization_133/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_133/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:??????????? : : : : :*
epsilon%o?:*
is_training( 2*
(batch_normalization_133/FusedBatchNormV3?
 conv2d_137/Conv2D/ReadVariableOpReadVariableOp)conv2d_137_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_137/Conv2D/ReadVariableOp?
conv2d_137/Conv2DConv2D,batch_normalization_133/FusedBatchNormV3:y:0(conv2d_137/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
conv2d_137/Conv2D?
!conv2d_137/BiasAdd/ReadVariableOpReadVariableOp*conv2d_137_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_137/BiasAdd/ReadVariableOp?
conv2d_137/BiasAddBiasAddconv2d_137/Conv2D:output:0)conv2d_137/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2
conv2d_137/BiasAdd?
conv2d_137/ReluReluconv2d_137/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
conv2d_137/Relu?
&batch_normalization_134/ReadVariableOpReadVariableOp/batch_normalization_134_readvariableop_resource*
_output_shapes
: *
dtype02(
&batch_normalization_134/ReadVariableOp?
(batch_normalization_134/ReadVariableOp_1ReadVariableOp1batch_normalization_134_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(batch_normalization_134/ReadVariableOp_1?
7batch_normalization_134/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_134_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7batch_normalization_134/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_134/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_134_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9batch_normalization_134/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_134/FusedBatchNormV3FusedBatchNormV3conv2d_137/Relu:activations:0.batch_normalization_134/ReadVariableOp:value:00batch_normalization_134/ReadVariableOp_1:value:0?batch_normalization_134/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_134/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:??????????? : : : : :*
epsilon%o?:*
is_training( 2*
(batch_normalization_134/FusedBatchNormV3?
 conv2d_138/Conv2D/ReadVariableOpReadVariableOp)conv2d_138_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 conv2d_138/Conv2D/ReadVariableOp?
conv2d_138/Conv2DConv2D,batch_normalization_134/FusedBatchNormV3:y:0(conv2d_138/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? *
paddingSAME*
strides
2
conv2d_138/Conv2D?
!conv2d_138/BiasAdd/ReadVariableOpReadVariableOp*conv2d_138_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_138/BiasAdd/ReadVariableOp?
conv2d_138/BiasAddBiasAddconv2d_138/Conv2D:output:0)conv2d_138/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? 2
conv2d_138/BiasAdd?
conv2d_138/ReluReluconv2d_138/BiasAdd:output:0*
T0*0
_output_shapes
:?????????o? 2
conv2d_138/Relu?
&batch_normalization_135/ReadVariableOpReadVariableOp/batch_normalization_135_readvariableop_resource*
_output_shapes
: *
dtype02(
&batch_normalization_135/ReadVariableOp?
(batch_normalization_135/ReadVariableOp_1ReadVariableOp1batch_normalization_135_readvariableop_1_resource*
_output_shapes
: *
dtype02*
(batch_normalization_135/ReadVariableOp_1?
7batch_normalization_135/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_135_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype029
7batch_normalization_135/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_135/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_135_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02;
9batch_normalization_135/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_135/FusedBatchNormV3FusedBatchNormV3conv2d_138/Relu:activations:0.batch_normalization_135/ReadVariableOp:value:00batch_normalization_135/ReadVariableOp_1:value:0?batch_normalization_135/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_135/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????o? : : : : :*
epsilon%o?:*
is_training( 2*
(batch_normalization_135/FusedBatchNormV3?
max_pooling2d_36/MaxPoolMaxPool,batch_normalization_135/FusedBatchNormV3:y:0*/
_output_shapes
:?????????7J *
ksize
*
paddingVALID*
strides
2
max_pooling2d_36/MaxPool?
 conv2d_139/Conv2D/ReadVariableOpReadVariableOp)conv2d_139_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 conv2d_139/Conv2D/ReadVariableOp?
conv2d_139/Conv2DConv2D!max_pooling2d_36/MaxPool:output:0(conv2d_139/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5H@*
paddingVALID*
strides
2
conv2d_139/Conv2D?
!conv2d_139/BiasAdd/ReadVariableOpReadVariableOp*conv2d_139_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_139/BiasAdd/ReadVariableOp?
conv2d_139/BiasAddBiasAddconv2d_139/Conv2D:output:0)conv2d_139/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5H@2
conv2d_139/BiasAdd?
conv2d_139/ReluReluconv2d_139/BiasAdd:output:0*
T0*/
_output_shapes
:?????????5H@2
conv2d_139/Relu?
&batch_normalization_136/ReadVariableOpReadVariableOp/batch_normalization_136_readvariableop_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_136/ReadVariableOp?
(batch_normalization_136/ReadVariableOp_1ReadVariableOp1batch_normalization_136_readvariableop_1_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_136/ReadVariableOp_1?
7batch_normalization_136/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_136_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype029
7batch_normalization_136/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_136/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_136_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9batch_normalization_136/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_136/FusedBatchNormV3FusedBatchNormV3conv2d_139/Relu:activations:0.batch_normalization_136/ReadVariableOp:value:00batch_normalization_136/ReadVariableOp_1:value:0?batch_normalization_136/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_136/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????5H@:@:@:@:@:*
epsilon%o?:*
is_training( 2*
(batch_normalization_136/FusedBatchNormV3?
 conv2d_140/Conv2D/ReadVariableOpReadVariableOp)conv2d_140_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 conv2d_140/Conv2D/ReadVariableOp?
conv2d_140/Conv2DConv2D,batch_normalization_136/FusedBatchNormV3:y:0(conv2d_140/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????3F@*
paddingVALID*
strides
2
conv2d_140/Conv2D?
!conv2d_140/BiasAdd/ReadVariableOpReadVariableOp*conv2d_140_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_140/BiasAdd/ReadVariableOp?
conv2d_140/BiasAddBiasAddconv2d_140/Conv2D:output:0)conv2d_140/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????3F@2
conv2d_140/BiasAdd?
conv2d_140/ReluReluconv2d_140/BiasAdd:output:0*
T0*/
_output_shapes
:?????????3F@2
conv2d_140/Relu?
&batch_normalization_137/ReadVariableOpReadVariableOp/batch_normalization_137_readvariableop_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_137/ReadVariableOp?
(batch_normalization_137/ReadVariableOp_1ReadVariableOp1batch_normalization_137_readvariableop_1_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_137/ReadVariableOp_1?
7batch_normalization_137/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_137_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype029
7batch_normalization_137/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_137/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_137_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9batch_normalization_137/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_137/FusedBatchNormV3FusedBatchNormV3conv2d_140/Relu:activations:0.batch_normalization_137/ReadVariableOp:value:00batch_normalization_137/ReadVariableOp_1:value:0?batch_normalization_137/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_137/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????3F@:@:@:@:@:*
epsilon%o?:*
is_training( 2*
(batch_normalization_137/FusedBatchNormV3?
 conv2d_141/Conv2D/ReadVariableOpReadVariableOp)conv2d_141_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 conv2d_141/Conv2D/ReadVariableOp?
conv2d_141/Conv2DConv2D,batch_normalization_137/FusedBatchNormV3:y:0(conv2d_141/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@*
paddingSAME*
strides
2
conv2d_141/Conv2D?
!conv2d_141/BiasAdd/ReadVariableOpReadVariableOp*conv2d_141_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!conv2d_141/BiasAdd/ReadVariableOp?
conv2d_141/BiasAddBiasAddconv2d_141/Conv2D:output:0)conv2d_141/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@2
conv2d_141/BiasAdd?
conv2d_141/ReluReluconv2d_141/BiasAdd:output:0*
T0*/
_output_shapes
:?????????#@2
conv2d_141/Relu?
&batch_normalization_138/ReadVariableOpReadVariableOp/batch_normalization_138_readvariableop_resource*
_output_shapes
:@*
dtype02(
&batch_normalization_138/ReadVariableOp?
(batch_normalization_138/ReadVariableOp_1ReadVariableOp1batch_normalization_138_readvariableop_1_resource*
_output_shapes
:@*
dtype02*
(batch_normalization_138/ReadVariableOp_1?
7batch_normalization_138/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_138_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype029
7batch_normalization_138/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_138/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_138_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02;
9batch_normalization_138/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_138/FusedBatchNormV3FusedBatchNormV3conv2d_141/Relu:activations:0.batch_normalization_138/ReadVariableOp:value:00batch_normalization_138/ReadVariableOp_1:value:0?batch_normalization_138/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_138/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????#@:@:@:@:@:*
epsilon%o?:*
is_training( 2*
(batch_normalization_138/FusedBatchNormV3?
max_pooling2d_37/MaxPoolMaxPool,batch_normalization_138/FusedBatchNormV3:y:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_37/MaxPool?
dropout_1/IdentityIdentity!max_pooling2d_37/MaxPool:output:0*
T0*/
_output_shapes
:?????????@2
dropout_1/Identity?
 conv2d_142/Conv2D/ReadVariableOpReadVariableOp)conv2d_142_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02"
 conv2d_142/Conv2D/ReadVariableOp?
conv2d_142/Conv2DConv2Ddropout_1/Identity:output:0(conv2d_142/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d_142/Conv2D?
!conv2d_142/BiasAdd/ReadVariableOpReadVariableOp*conv2d_142_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_142/BiasAdd/ReadVariableOp?
conv2d_142/BiasAddBiasAddconv2d_142/Conv2D:output:0)conv2d_142/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_142/BiasAdd?
conv2d_142/ReluReluconv2d_142/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_142/Relu?
&batch_normalization_139/ReadVariableOpReadVariableOp/batch_normalization_139_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_139/ReadVariableOp?
(batch_normalization_139/ReadVariableOp_1ReadVariableOp1batch_normalization_139_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_139/ReadVariableOp_1?
7batch_normalization_139/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_139_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_139/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_139/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_139_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_139/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_139/FusedBatchNormV3FusedBatchNormV3conv2d_142/Relu:activations:0.batch_normalization_139/ReadVariableOp:value:00batch_normalization_139/ReadVariableOp_1:value:0?batch_normalization_139/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_139/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_139/FusedBatchNormV3?
 conv2d_143/Conv2D/ReadVariableOpReadVariableOp)conv2d_143_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_143/Conv2D/ReadVariableOp?
conv2d_143/Conv2DConv2D,batch_normalization_139/FusedBatchNormV3:y:0(conv2d_143/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????	?*
paddingVALID*
strides
2
conv2d_143/Conv2D?
!conv2d_143/BiasAdd/ReadVariableOpReadVariableOp*conv2d_143_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_143/BiasAdd/ReadVariableOp?
conv2d_143/BiasAddBiasAddconv2d_143/Conv2D:output:0)conv2d_143/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????	?2
conv2d_143/BiasAdd?
conv2d_143/ReluReluconv2d_143/BiasAdd:output:0*
T0*0
_output_shapes
:?????????	?2
conv2d_143/Relu?
&batch_normalization_140/ReadVariableOpReadVariableOp/batch_normalization_140_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_140/ReadVariableOp?
(batch_normalization_140/ReadVariableOp_1ReadVariableOp1batch_normalization_140_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_140/ReadVariableOp_1?
7batch_normalization_140/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_140_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_140/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_140_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_140/FusedBatchNormV3FusedBatchNormV3conv2d_143/Relu:activations:0.batch_normalization_140/ReadVariableOp:value:00batch_normalization_140/ReadVariableOp_1:value:0?batch_normalization_140/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_140/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????	?:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_140/FusedBatchNormV3?
 conv2d_144/Conv2D/ReadVariableOpReadVariableOp)conv2d_144_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02"
 conv2d_144/Conv2D/ReadVariableOp?
conv2d_144/Conv2DConv2D,batch_normalization_140/FusedBatchNormV3:y:0(conv2d_144/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
conv2d_144/Conv2D?
!conv2d_144/BiasAdd/ReadVariableOpReadVariableOp*conv2d_144_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!conv2d_144/BiasAdd/ReadVariableOp?
conv2d_144/BiasAddBiasAddconv2d_144/Conv2D:output:0)conv2d_144/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d_144/BiasAdd?
conv2d_144/ReluReluconv2d_144/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d_144/Relu?
&batch_normalization_141/ReadVariableOpReadVariableOp/batch_normalization_141_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&batch_normalization_141/ReadVariableOp?
(batch_normalization_141/ReadVariableOp_1ReadVariableOp1batch_normalization_141_readvariableop_1_resource*
_output_shapes	
:?*
dtype02*
(batch_normalization_141/ReadVariableOp_1?
7batch_normalization_141/FusedBatchNormV3/ReadVariableOpReadVariableOp@batch_normalization_141_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype029
7batch_normalization_141/FusedBatchNormV3/ReadVariableOp?
9batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpBbatch_normalization_141_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02;
9batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1?
(batch_normalization_141/FusedBatchNormV3FusedBatchNormV3conv2d_144/Relu:activations:0.batch_normalization_141/ReadVariableOp:value:00batch_normalization_141/ReadVariableOp_1:value:0?batch_normalization_141/FusedBatchNormV3/ReadVariableOp:value:0Abatch_normalization_141/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2*
(batch_normalization_141/FusedBatchNormV3?
max_pooling2d_38/MaxPoolMaxPool,batch_normalization_141/FusedBatchNormV3:y:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_38/MaxPool?
dropout_2/IdentityIdentity!max_pooling2d_38/MaxPool:output:0*
T0*0
_output_shapes
:??????????2
dropout_2/Identityu
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_10/Const?
flatten_10/ReshapeReshapedropout_2/Identity:output:0flatten_10/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_10/Reshape?
dropout_3/IdentityIdentityflatten_10/Reshape:output:0*
T0*(
_output_shapes
:??????????2
dropout_3/Identity?
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_26/MatMul/ReadVariableOp?
dense_26/MatMulMatMuldropout_3/Identity:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_26/MatMul?
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_26/BiasAdd/ReadVariableOp?
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_26/BiasAddt
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_26/Relu?
dense_27/MatMul/ReadVariableOpReadVariableOp'dense_27_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_27/MatMul/ReadVariableOp?
dense_27/MatMulMatMuldense_26/Relu:activations:0&dense_27/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_27/MatMul?
dense_27/BiasAdd/ReadVariableOpReadVariableOp(dense_27_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_27/BiasAdd/ReadVariableOp?
dense_27/BiasAddBiasAdddense_27/MatMul:product:0'dense_27/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_27/BiasAddt
dense_27/ReluReludense_27/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_27/Relu?
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes
:	?>*
dtype02 
dense_28/MatMul/ReadVariableOp?
dense_28/MatMulMatMuldense_27/Relu:activations:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2
dense_28/MatMul?
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes
:>*
dtype02!
dense_28/BiasAdd/ReadVariableOp?
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2
dense_28/BiasAdd|
dense_28/SoftmaxSoftmaxdense_28/BiasAdd:output:0*
T0*'
_output_shapes
:?????????>2
dense_28/Softmax?
IdentityIdentitydense_28/Softmax:softmax:08^batch_normalization_133/FusedBatchNormV3/ReadVariableOp:^batch_normalization_133/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_133/ReadVariableOp)^batch_normalization_133/ReadVariableOp_18^batch_normalization_134/FusedBatchNormV3/ReadVariableOp:^batch_normalization_134/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_134/ReadVariableOp)^batch_normalization_134/ReadVariableOp_18^batch_normalization_135/FusedBatchNormV3/ReadVariableOp:^batch_normalization_135/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_135/ReadVariableOp)^batch_normalization_135/ReadVariableOp_18^batch_normalization_136/FusedBatchNormV3/ReadVariableOp:^batch_normalization_136/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_136/ReadVariableOp)^batch_normalization_136/ReadVariableOp_18^batch_normalization_137/FusedBatchNormV3/ReadVariableOp:^batch_normalization_137/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_137/ReadVariableOp)^batch_normalization_137/ReadVariableOp_18^batch_normalization_138/FusedBatchNormV3/ReadVariableOp:^batch_normalization_138/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_138/ReadVariableOp)^batch_normalization_138/ReadVariableOp_18^batch_normalization_139/FusedBatchNormV3/ReadVariableOp:^batch_normalization_139/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_139/ReadVariableOp)^batch_normalization_139/ReadVariableOp_18^batch_normalization_140/FusedBatchNormV3/ReadVariableOp:^batch_normalization_140/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_140/ReadVariableOp)^batch_normalization_140/ReadVariableOp_18^batch_normalization_141/FusedBatchNormV3/ReadVariableOp:^batch_normalization_141/FusedBatchNormV3/ReadVariableOp_1'^batch_normalization_141/ReadVariableOp)^batch_normalization_141/ReadVariableOp_1"^conv2d_136/BiasAdd/ReadVariableOp!^conv2d_136/Conv2D/ReadVariableOp"^conv2d_137/BiasAdd/ReadVariableOp!^conv2d_137/Conv2D/ReadVariableOp"^conv2d_138/BiasAdd/ReadVariableOp!^conv2d_138/Conv2D/ReadVariableOp"^conv2d_139/BiasAdd/ReadVariableOp!^conv2d_139/Conv2D/ReadVariableOp"^conv2d_140/BiasAdd/ReadVariableOp!^conv2d_140/Conv2D/ReadVariableOp"^conv2d_141/BiasAdd/ReadVariableOp!^conv2d_141/Conv2D/ReadVariableOp"^conv2d_142/BiasAdd/ReadVariableOp!^conv2d_142/Conv2D/ReadVariableOp"^conv2d_143/BiasAdd/ReadVariableOp!^conv2d_143/Conv2D/ReadVariableOp"^conv2d_144/BiasAdd/ReadVariableOp!^conv2d_144/Conv2D/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp ^dense_27/BiasAdd/ReadVariableOp^dense_27/MatMul/ReadVariableOp ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2r
7batch_normalization_133/FusedBatchNormV3/ReadVariableOp7batch_normalization_133/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_133/FusedBatchNormV3/ReadVariableOp_19batch_normalization_133/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_133/ReadVariableOp&batch_normalization_133/ReadVariableOp2T
(batch_normalization_133/ReadVariableOp_1(batch_normalization_133/ReadVariableOp_12r
7batch_normalization_134/FusedBatchNormV3/ReadVariableOp7batch_normalization_134/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_134/FusedBatchNormV3/ReadVariableOp_19batch_normalization_134/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_134/ReadVariableOp&batch_normalization_134/ReadVariableOp2T
(batch_normalization_134/ReadVariableOp_1(batch_normalization_134/ReadVariableOp_12r
7batch_normalization_135/FusedBatchNormV3/ReadVariableOp7batch_normalization_135/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_135/FusedBatchNormV3/ReadVariableOp_19batch_normalization_135/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_135/ReadVariableOp&batch_normalization_135/ReadVariableOp2T
(batch_normalization_135/ReadVariableOp_1(batch_normalization_135/ReadVariableOp_12r
7batch_normalization_136/FusedBatchNormV3/ReadVariableOp7batch_normalization_136/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_136/FusedBatchNormV3/ReadVariableOp_19batch_normalization_136/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_136/ReadVariableOp&batch_normalization_136/ReadVariableOp2T
(batch_normalization_136/ReadVariableOp_1(batch_normalization_136/ReadVariableOp_12r
7batch_normalization_137/FusedBatchNormV3/ReadVariableOp7batch_normalization_137/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_137/FusedBatchNormV3/ReadVariableOp_19batch_normalization_137/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_137/ReadVariableOp&batch_normalization_137/ReadVariableOp2T
(batch_normalization_137/ReadVariableOp_1(batch_normalization_137/ReadVariableOp_12r
7batch_normalization_138/FusedBatchNormV3/ReadVariableOp7batch_normalization_138/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_138/FusedBatchNormV3/ReadVariableOp_19batch_normalization_138/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_138/ReadVariableOp&batch_normalization_138/ReadVariableOp2T
(batch_normalization_138/ReadVariableOp_1(batch_normalization_138/ReadVariableOp_12r
7batch_normalization_139/FusedBatchNormV3/ReadVariableOp7batch_normalization_139/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_139/FusedBatchNormV3/ReadVariableOp_19batch_normalization_139/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_139/ReadVariableOp&batch_normalization_139/ReadVariableOp2T
(batch_normalization_139/ReadVariableOp_1(batch_normalization_139/ReadVariableOp_12r
7batch_normalization_140/FusedBatchNormV3/ReadVariableOp7batch_normalization_140/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_140/FusedBatchNormV3/ReadVariableOp_19batch_normalization_140/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_140/ReadVariableOp&batch_normalization_140/ReadVariableOp2T
(batch_normalization_140/ReadVariableOp_1(batch_normalization_140/ReadVariableOp_12r
7batch_normalization_141/FusedBatchNormV3/ReadVariableOp7batch_normalization_141/FusedBatchNormV3/ReadVariableOp2v
9batch_normalization_141/FusedBatchNormV3/ReadVariableOp_19batch_normalization_141/FusedBatchNormV3/ReadVariableOp_12P
&batch_normalization_141/ReadVariableOp&batch_normalization_141/ReadVariableOp2T
(batch_normalization_141/ReadVariableOp_1(batch_normalization_141/ReadVariableOp_12F
!conv2d_136/BiasAdd/ReadVariableOp!conv2d_136/BiasAdd/ReadVariableOp2D
 conv2d_136/Conv2D/ReadVariableOp conv2d_136/Conv2D/ReadVariableOp2F
!conv2d_137/BiasAdd/ReadVariableOp!conv2d_137/BiasAdd/ReadVariableOp2D
 conv2d_137/Conv2D/ReadVariableOp conv2d_137/Conv2D/ReadVariableOp2F
!conv2d_138/BiasAdd/ReadVariableOp!conv2d_138/BiasAdd/ReadVariableOp2D
 conv2d_138/Conv2D/ReadVariableOp conv2d_138/Conv2D/ReadVariableOp2F
!conv2d_139/BiasAdd/ReadVariableOp!conv2d_139/BiasAdd/ReadVariableOp2D
 conv2d_139/Conv2D/ReadVariableOp conv2d_139/Conv2D/ReadVariableOp2F
!conv2d_140/BiasAdd/ReadVariableOp!conv2d_140/BiasAdd/ReadVariableOp2D
 conv2d_140/Conv2D/ReadVariableOp conv2d_140/Conv2D/ReadVariableOp2F
!conv2d_141/BiasAdd/ReadVariableOp!conv2d_141/BiasAdd/ReadVariableOp2D
 conv2d_141/Conv2D/ReadVariableOp conv2d_141/Conv2D/ReadVariableOp2F
!conv2d_142/BiasAdd/ReadVariableOp!conv2d_142/BiasAdd/ReadVariableOp2D
 conv2d_142/Conv2D/ReadVariableOp conv2d_142/Conv2D/ReadVariableOp2F
!conv2d_143/BiasAdd/ReadVariableOp!conv2d_143/BiasAdd/ReadVariableOp2D
 conv2d_143/Conv2D/ReadVariableOp conv2d_143/Conv2D/ReadVariableOp2F
!conv2d_144/BiasAdd/ReadVariableOp!conv2d_144/BiasAdd/ReadVariableOp2D
 conv2d_144/Conv2D/ReadVariableOp conv2d_144/Conv2D/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2B
dense_27/BiasAdd/ReadVariableOpdense_27/BiasAdd/ReadVariableOp2@
dense_27/MatMul/ReadVariableOpdense_27/MatMul/ReadVariableOp2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_294651

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
F__inference_conv2d_139_layer_call_and_return_conditional_losses_294244

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5H@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5H@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????5H@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????5H@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????7J ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????7J 
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_140_layer_call_fn_294936

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????	?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_2919212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????	?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????	?::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????	?
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_291803

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_292366
conv2d_136_input
conv2d_136_292217
conv2d_136_292219"
batch_normalization_133_292222"
batch_normalization_133_292224"
batch_normalization_133_292226"
batch_normalization_133_292228
conv2d_137_292231
conv2d_137_292233"
batch_normalization_134_292236"
batch_normalization_134_292238"
batch_normalization_134_292240"
batch_normalization_134_292242
conv2d_138_292245
conv2d_138_292247"
batch_normalization_135_292250"
batch_normalization_135_292252"
batch_normalization_135_292254"
batch_normalization_135_292256
conv2d_139_292260
conv2d_139_292262"
batch_normalization_136_292265"
batch_normalization_136_292267"
batch_normalization_136_292269"
batch_normalization_136_292271
conv2d_140_292274
conv2d_140_292276"
batch_normalization_137_292279"
batch_normalization_137_292281"
batch_normalization_137_292283"
batch_normalization_137_292285
conv2d_141_292288
conv2d_141_292290"
batch_normalization_138_292293"
batch_normalization_138_292295"
batch_normalization_138_292297"
batch_normalization_138_292299
conv2d_142_292304
conv2d_142_292306"
batch_normalization_139_292309"
batch_normalization_139_292311"
batch_normalization_139_292313"
batch_normalization_139_292315
conv2d_143_292318
conv2d_143_292320"
batch_normalization_140_292323"
batch_normalization_140_292325"
batch_normalization_140_292327"
batch_normalization_140_292329
conv2d_144_292332
conv2d_144_292334"
batch_normalization_141_292337"
batch_normalization_141_292339"
batch_normalization_141_292341"
batch_normalization_141_292343
dense_26_292350
dense_26_292352
dense_27_292355
dense_27_292357
dense_28_292360
dense_28_292362
identity??/batch_normalization_133/StatefulPartitionedCall?/batch_normalization_134/StatefulPartitionedCall?/batch_normalization_135/StatefulPartitionedCall?/batch_normalization_136/StatefulPartitionedCall?/batch_normalization_137/StatefulPartitionedCall?/batch_normalization_138/StatefulPartitionedCall?/batch_normalization_139/StatefulPartitionedCall?/batch_normalization_140/StatefulPartitionedCall?/batch_normalization_141/StatefulPartitionedCall?"conv2d_136/StatefulPartitionedCall?"conv2d_137/StatefulPartitionedCall?"conv2d_138/StatefulPartitionedCall?"conv2d_139/StatefulPartitionedCall?"conv2d_140/StatefulPartitionedCall?"conv2d_141/StatefulPartitionedCall?"conv2d_142/StatefulPartitionedCall?"conv2d_143/StatefulPartitionedCall?"conv2d_144/StatefulPartitionedCall? dense_26/StatefulPartitionedCall? dense_27/StatefulPartitionedCall? dense_28/StatefulPartitionedCall?
"conv2d_136/StatefulPartitionedCallStatefulPartitionedCallconv2d_136_inputconv2d_136_292217conv2d_136_292219*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_136_layer_call_and_return_conditional_losses_2911362$
"conv2d_136/StatefulPartitionedCall?
/batch_normalization_133/StatefulPartitionedCallStatefulPartitionedCall+conv2d_136/StatefulPartitionedCall:output:0batch_normalization_133_292222batch_normalization_133_292224batch_normalization_133_292226batch_normalization_133_292228*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_29118921
/batch_normalization_133/StatefulPartitionedCall?
"conv2d_137/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_133/StatefulPartitionedCall:output:0conv2d_137_292231conv2d_137_292233*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_137_layer_call_and_return_conditional_losses_2912362$
"conv2d_137/StatefulPartitionedCall?
/batch_normalization_134/StatefulPartitionedCallStatefulPartitionedCall+conv2d_137/StatefulPartitionedCall:output:0batch_normalization_134_292236batch_normalization_134_292238batch_normalization_134_292240batch_normalization_134_292242*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_29128921
/batch_normalization_134/StatefulPartitionedCall?
"conv2d_138/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_134/StatefulPartitionedCall:output:0conv2d_138_292245conv2d_138_292247*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????o? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_138_layer_call_and_return_conditional_losses_2913362$
"conv2d_138/StatefulPartitionedCall?
/batch_normalization_135/StatefulPartitionedCallStatefulPartitionedCall+conv2d_138/StatefulPartitionedCall:output:0batch_normalization_135_292250batch_normalization_135_292252batch_normalization_135_292254batch_normalization_135_292256*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????o? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_29138921
/batch_normalization_135/StatefulPartitionedCall?
 max_pooling2d_36/PartitionedCallPartitionedCall8batch_normalization_135/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????7J * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_2904672"
 max_pooling2d_36/PartitionedCall?
"conv2d_139/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_139_292260conv2d_139_292262*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????5H@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_139_layer_call_and_return_conditional_losses_2914372$
"conv2d_139/StatefulPartitionedCall?
/batch_normalization_136/StatefulPartitionedCallStatefulPartitionedCall+conv2d_139/StatefulPartitionedCall:output:0batch_normalization_136_292265batch_normalization_136_292267batch_normalization_136_292269batch_normalization_136_292271*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????5H@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_29149021
/batch_normalization_136/StatefulPartitionedCall?
"conv2d_140/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_136/StatefulPartitionedCall:output:0conv2d_140_292274conv2d_140_292276*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????3F@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_140_layer_call_and_return_conditional_losses_2915372$
"conv2d_140/StatefulPartitionedCall?
/batch_normalization_137/StatefulPartitionedCallStatefulPartitionedCall+conv2d_140/StatefulPartitionedCall:output:0batch_normalization_137_292279batch_normalization_137_292281batch_normalization_137_292283batch_normalization_137_292285*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????3F@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_29159021
/batch_normalization_137/StatefulPartitionedCall?
"conv2d_141/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_137/StatefulPartitionedCall:output:0conv2d_141_292288conv2d_141_292290*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_141_layer_call_and_return_conditional_losses_2916372$
"conv2d_141/StatefulPartitionedCall?
/batch_normalization_138/StatefulPartitionedCallStatefulPartitionedCall+conv2d_141/StatefulPartitionedCall:output:0batch_normalization_138_292293batch_normalization_138_292295batch_normalization_138_292297batch_normalization_138_292299*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_29169021
/batch_normalization_138/StatefulPartitionedCall?
 max_pooling2d_37/PartitionedCallPartitionedCall8batch_normalization_138/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_2907912"
 max_pooling2d_37/PartitionedCall?
dropout_1/PartitionedCallPartitionedCall)max_pooling2d_37/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_2917442
dropout_1/PartitionedCall?
"conv2d_142/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv2d_142_292304conv2d_142_292306*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_142_layer_call_and_return_conditional_losses_2917682$
"conv2d_142/StatefulPartitionedCall?
/batch_normalization_139/StatefulPartitionedCallStatefulPartitionedCall+conv2d_142/StatefulPartitionedCall:output:0batch_normalization_139_292309batch_normalization_139_292311batch_normalization_139_292313batch_normalization_139_292315*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_29182121
/batch_normalization_139/StatefulPartitionedCall?
"conv2d_143/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_139/StatefulPartitionedCall:output:0conv2d_143_292318conv2d_143_292320*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????	?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_143_layer_call_and_return_conditional_losses_2918682$
"conv2d_143/StatefulPartitionedCall?
/batch_normalization_140/StatefulPartitionedCallStatefulPartitionedCall+conv2d_143/StatefulPartitionedCall:output:0batch_normalization_140_292323batch_normalization_140_292325batch_normalization_140_292327batch_normalization_140_292329*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????	?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_29192121
/batch_normalization_140/StatefulPartitionedCall?
"conv2d_144/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_140/StatefulPartitionedCall:output:0conv2d_144_292332conv2d_144_292334*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_144_layer_call_and_return_conditional_losses_2919682$
"conv2d_144/StatefulPartitionedCall?
/batch_normalization_141/StatefulPartitionedCallStatefulPartitionedCall+conv2d_144/StatefulPartitionedCall:output:0batch_normalization_141_292337batch_normalization_141_292339batch_normalization_141_292341batch_normalization_141_292343*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_29202121
/batch_normalization_141/StatefulPartitionedCall?
 max_pooling2d_38/PartitionedCallPartitionedCall8batch_normalization_141/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_2911152"
 max_pooling2d_38/PartitionedCall?
dropout_2/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_2920752
dropout_2/PartitionedCall?
flatten_10/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_2920942
flatten_10/PartitionedCall?
dropout_3/PartitionedCallPartitionedCall#flatten_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_2921192
dropout_3/PartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_26_292350dense_26_292352*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_2921432"
 dense_26/StatefulPartitionedCall?
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_292355dense_27_292357*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_2921702"
 dense_27/StatefulPartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_292360dense_28_292362*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_2921972"
 dense_28/StatefulPartitionedCall?
IdentityIdentity)dense_28/StatefulPartitionedCall:output:00^batch_normalization_133/StatefulPartitionedCall0^batch_normalization_134/StatefulPartitionedCall0^batch_normalization_135/StatefulPartitionedCall0^batch_normalization_136/StatefulPartitionedCall0^batch_normalization_137/StatefulPartitionedCall0^batch_normalization_138/StatefulPartitionedCall0^batch_normalization_139/StatefulPartitionedCall0^batch_normalization_140/StatefulPartitionedCall0^batch_normalization_141/StatefulPartitionedCall#^conv2d_136/StatefulPartitionedCall#^conv2d_137/StatefulPartitionedCall#^conv2d_138/StatefulPartitionedCall#^conv2d_139/StatefulPartitionedCall#^conv2d_140/StatefulPartitionedCall#^conv2d_141/StatefulPartitionedCall#^conv2d_142/StatefulPartitionedCall#^conv2d_143/StatefulPartitionedCall#^conv2d_144/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2b
/batch_normalization_133/StatefulPartitionedCall/batch_normalization_133/StatefulPartitionedCall2b
/batch_normalization_134/StatefulPartitionedCall/batch_normalization_134/StatefulPartitionedCall2b
/batch_normalization_135/StatefulPartitionedCall/batch_normalization_135/StatefulPartitionedCall2b
/batch_normalization_136/StatefulPartitionedCall/batch_normalization_136/StatefulPartitionedCall2b
/batch_normalization_137/StatefulPartitionedCall/batch_normalization_137/StatefulPartitionedCall2b
/batch_normalization_138/StatefulPartitionedCall/batch_normalization_138/StatefulPartitionedCall2b
/batch_normalization_139/StatefulPartitionedCall/batch_normalization_139/StatefulPartitionedCall2b
/batch_normalization_140/StatefulPartitionedCall/batch_normalization_140/StatefulPartitionedCall2b
/batch_normalization_141/StatefulPartitionedCall/batch_normalization_141/StatefulPartitionedCall2H
"conv2d_136/StatefulPartitionedCall"conv2d_136/StatefulPartitionedCall2H
"conv2d_137/StatefulPartitionedCall"conv2d_137/StatefulPartitionedCall2H
"conv2d_138/StatefulPartitionedCall"conv2d_138/StatefulPartitionedCall2H
"conv2d_139/StatefulPartitionedCall"conv2d_139/StatefulPartitionedCall2H
"conv2d_140/StatefulPartitionedCall"conv2d_140/StatefulPartitionedCall2H
"conv2d_141/StatefulPartitionedCall"conv2d_141/StatefulPartitionedCall2H
"conv2d_142/StatefulPartitionedCall"conv2d_142/StatefulPartitionedCall2H
"conv2d_143/StatefulPartitionedCall"conv2d_143/StatefulPartitionedCall2H
"conv2d_144/StatefulPartitionedCall"conv2d_144/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_136_input
?
G
+__inference_flatten_10_layer_call_fn_295186

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_2920942
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_139_layer_call_fn_294852

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_2908902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_290639

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
+__inference_conv2d_144_layer_call_fn_295020

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_144_layer_call_and_return_conditional_losses_2919682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????	?::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????	?
 
_user_specified_nameinputs
?	
?
D__inference_dense_27_layer_call_and_return_conditional_losses_295244

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
~
)__inference_dense_28_layer_call_fn_295273

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_2921972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_290566

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_133_layer_call_fn_293873

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_2902422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?

?
F__inference_conv2d_143_layer_call_and_return_conditional_losses_291868

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????	?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????	?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????	?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????	?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_293847

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_138_layer_call_fn_294677

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_2907742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_141_layer_call_fn_295071

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_2910672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
d
E__inference_dropout_2_layer_call_and_return_conditional_losses_295160

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_140_layer_call_and_return_conditional_losses_294392

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????3F@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????3F@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????3F@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????3F@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????5H@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????5H@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_291389

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????o? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????o? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????o? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????o? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_291490

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????5H@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????5H@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????5H@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????5H@
 
_user_specified_nameinputs
?
?
.__inference_sequential_15_layer_call_fn_292644
conv2d_136_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58
identity??StatefulPartitionedCall?	
StatefulPartitionedCallStatefulPartitionedCallconv2d_136_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58*H
TinA
?2=*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*L
_read_only_resource_inputs.
,*	
 !"%&'(+,-.1234789:;<*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_15_layer_call_and_return_conditional_losses_2925212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_136_input
?

?
F__inference_conv2d_141_layer_call_and_return_conditional_losses_294540

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????#@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????#@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????3F@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????3F@
 
_user_specified_nameinputs
?
?
+__inference_conv2d_138_layer_call_fn_294105

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????o? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_138_layer_call_and_return_conditional_losses_2913362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????o? 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:??????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_140_layer_call_fn_295000

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_2909942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
ǟ
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_292214
conv2d_136_input
conv2d_136_291147
conv2d_136_291149"
batch_normalization_133_291216"
batch_normalization_133_291218"
batch_normalization_133_291220"
batch_normalization_133_291222
conv2d_137_291247
conv2d_137_291249"
batch_normalization_134_291316"
batch_normalization_134_291318"
batch_normalization_134_291320"
batch_normalization_134_291322
conv2d_138_291347
conv2d_138_291349"
batch_normalization_135_291416"
batch_normalization_135_291418"
batch_normalization_135_291420"
batch_normalization_135_291422
conv2d_139_291448
conv2d_139_291450"
batch_normalization_136_291517"
batch_normalization_136_291519"
batch_normalization_136_291521"
batch_normalization_136_291523
conv2d_140_291548
conv2d_140_291550"
batch_normalization_137_291617"
batch_normalization_137_291619"
batch_normalization_137_291621"
batch_normalization_137_291623
conv2d_141_291648
conv2d_141_291650"
batch_normalization_138_291717"
batch_normalization_138_291719"
batch_normalization_138_291721"
batch_normalization_138_291723
conv2d_142_291779
conv2d_142_291781"
batch_normalization_139_291848"
batch_normalization_139_291850"
batch_normalization_139_291852"
batch_normalization_139_291854
conv2d_143_291879
conv2d_143_291881"
batch_normalization_140_291948"
batch_normalization_140_291950"
batch_normalization_140_291952"
batch_normalization_140_291954
conv2d_144_291979
conv2d_144_291981"
batch_normalization_141_292048"
batch_normalization_141_292050"
batch_normalization_141_292052"
batch_normalization_141_292054
dense_26_292154
dense_26_292156
dense_27_292181
dense_27_292183
dense_28_292208
dense_28_292210
identity??/batch_normalization_133/StatefulPartitionedCall?/batch_normalization_134/StatefulPartitionedCall?/batch_normalization_135/StatefulPartitionedCall?/batch_normalization_136/StatefulPartitionedCall?/batch_normalization_137/StatefulPartitionedCall?/batch_normalization_138/StatefulPartitionedCall?/batch_normalization_139/StatefulPartitionedCall?/batch_normalization_140/StatefulPartitionedCall?/batch_normalization_141/StatefulPartitionedCall?"conv2d_136/StatefulPartitionedCall?"conv2d_137/StatefulPartitionedCall?"conv2d_138/StatefulPartitionedCall?"conv2d_139/StatefulPartitionedCall?"conv2d_140/StatefulPartitionedCall?"conv2d_141/StatefulPartitionedCall?"conv2d_142/StatefulPartitionedCall?"conv2d_143/StatefulPartitionedCall?"conv2d_144/StatefulPartitionedCall? dense_26/StatefulPartitionedCall? dense_27/StatefulPartitionedCall? dense_28/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?
"conv2d_136/StatefulPartitionedCallStatefulPartitionedCallconv2d_136_inputconv2d_136_291147conv2d_136_291149*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_136_layer_call_and_return_conditional_losses_2911362$
"conv2d_136/StatefulPartitionedCall?
/batch_normalization_133/StatefulPartitionedCallStatefulPartitionedCall+conv2d_136/StatefulPartitionedCall:output:0batch_normalization_133_291216batch_normalization_133_291218batch_normalization_133_291220batch_normalization_133_291222*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_29117121
/batch_normalization_133/StatefulPartitionedCall?
"conv2d_137/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_133/StatefulPartitionedCall:output:0conv2d_137_291247conv2d_137_291249*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_137_layer_call_and_return_conditional_losses_2912362$
"conv2d_137/StatefulPartitionedCall?
/batch_normalization_134/StatefulPartitionedCallStatefulPartitionedCall+conv2d_137/StatefulPartitionedCall:output:0batch_normalization_134_291316batch_normalization_134_291318batch_normalization_134_291320batch_normalization_134_291322*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_29127121
/batch_normalization_134/StatefulPartitionedCall?
"conv2d_138/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_134/StatefulPartitionedCall:output:0conv2d_138_291347conv2d_138_291349*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????o? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_138_layer_call_and_return_conditional_losses_2913362$
"conv2d_138/StatefulPartitionedCall?
/batch_normalization_135/StatefulPartitionedCallStatefulPartitionedCall+conv2d_138/StatefulPartitionedCall:output:0batch_normalization_135_291416batch_normalization_135_291418batch_normalization_135_291420batch_normalization_135_291422*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????o? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_29137121
/batch_normalization_135/StatefulPartitionedCall?
 max_pooling2d_36/PartitionedCallPartitionedCall8batch_normalization_135/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????7J * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_2904672"
 max_pooling2d_36/PartitionedCall?
"conv2d_139/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_139_291448conv2d_139_291450*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????5H@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_139_layer_call_and_return_conditional_losses_2914372$
"conv2d_139/StatefulPartitionedCall?
/batch_normalization_136/StatefulPartitionedCallStatefulPartitionedCall+conv2d_139/StatefulPartitionedCall:output:0batch_normalization_136_291517batch_normalization_136_291519batch_normalization_136_291521batch_normalization_136_291523*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????5H@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_29147221
/batch_normalization_136/StatefulPartitionedCall?
"conv2d_140/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_136/StatefulPartitionedCall:output:0conv2d_140_291548conv2d_140_291550*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????3F@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_140_layer_call_and_return_conditional_losses_2915372$
"conv2d_140/StatefulPartitionedCall?
/batch_normalization_137/StatefulPartitionedCallStatefulPartitionedCall+conv2d_140/StatefulPartitionedCall:output:0batch_normalization_137_291617batch_normalization_137_291619batch_normalization_137_291621batch_normalization_137_291623*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????3F@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_29157221
/batch_normalization_137/StatefulPartitionedCall?
"conv2d_141/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_137/StatefulPartitionedCall:output:0conv2d_141_291648conv2d_141_291650*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_141_layer_call_and_return_conditional_losses_2916372$
"conv2d_141/StatefulPartitionedCall?
/batch_normalization_138/StatefulPartitionedCallStatefulPartitionedCall+conv2d_141/StatefulPartitionedCall:output:0batch_normalization_138_291717batch_normalization_138_291719batch_normalization_138_291721batch_normalization_138_291723*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_29167221
/batch_normalization_138/StatefulPartitionedCall?
 max_pooling2d_37/PartitionedCallPartitionedCall8batch_normalization_138/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_2907912"
 max_pooling2d_37/PartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_2917392#
!dropout_1/StatefulPartitionedCall?
"conv2d_142/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv2d_142_291779conv2d_142_291781*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_142_layer_call_and_return_conditional_losses_2917682$
"conv2d_142/StatefulPartitionedCall?
/batch_normalization_139/StatefulPartitionedCallStatefulPartitionedCall+conv2d_142/StatefulPartitionedCall:output:0batch_normalization_139_291848batch_normalization_139_291850batch_normalization_139_291852batch_normalization_139_291854*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_29180321
/batch_normalization_139/StatefulPartitionedCall?
"conv2d_143/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_139/StatefulPartitionedCall:output:0conv2d_143_291879conv2d_143_291881*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????	?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_143_layer_call_and_return_conditional_losses_2918682$
"conv2d_143/StatefulPartitionedCall?
/batch_normalization_140/StatefulPartitionedCallStatefulPartitionedCall+conv2d_143/StatefulPartitionedCall:output:0batch_normalization_140_291948batch_normalization_140_291950batch_normalization_140_291952batch_normalization_140_291954*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????	?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_29190321
/batch_normalization_140/StatefulPartitionedCall?
"conv2d_144/StatefulPartitionedCallStatefulPartitionedCall8batch_normalization_140/StatefulPartitionedCall:output:0conv2d_144_291979conv2d_144_291981*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_144_layer_call_and_return_conditional_losses_2919682$
"conv2d_144/StatefulPartitionedCall?
/batch_normalization_141/StatefulPartitionedCallStatefulPartitionedCall+conv2d_144/StatefulPartitionedCall:output:0batch_normalization_141_292048batch_normalization_141_292050batch_normalization_141_292052batch_normalization_141_292054*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_29200321
/batch_normalization_141/StatefulPartitionedCall?
 max_pooling2d_38/PartitionedCallPartitionedCall8batch_normalization_141/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_2911152"
 max_pooling2d_38/PartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_2920702#
!dropout_2/StatefulPartitionedCall?
flatten_10/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_2920942
flatten_10/PartitionedCall?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_2921142#
!dropout_3/StatefulPartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_26_292154dense_26_292156*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_2921432"
 dense_26/StatefulPartitionedCall?
 dense_27/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0dense_27_292181dense_27_292183*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_27_layer_call_and_return_conditional_losses_2921702"
 dense_27/StatefulPartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall)dense_27/StatefulPartitionedCall:output:0dense_28_292208dense_28_292210*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_28_layer_call_and_return_conditional_losses_2921972"
 dense_28/StatefulPartitionedCall?
IdentityIdentity)dense_28/StatefulPartitionedCall:output:00^batch_normalization_133/StatefulPartitionedCall0^batch_normalization_134/StatefulPartitionedCall0^batch_normalization_135/StatefulPartitionedCall0^batch_normalization_136/StatefulPartitionedCall0^batch_normalization_137/StatefulPartitionedCall0^batch_normalization_138/StatefulPartitionedCall0^batch_normalization_139/StatefulPartitionedCall0^batch_normalization_140/StatefulPartitionedCall0^batch_normalization_141/StatefulPartitionedCall#^conv2d_136/StatefulPartitionedCall#^conv2d_137/StatefulPartitionedCall#^conv2d_138/StatefulPartitionedCall#^conv2d_139/StatefulPartitionedCall#^conv2d_140/StatefulPartitionedCall#^conv2d_141/StatefulPartitionedCall#^conv2d_142/StatefulPartitionedCall#^conv2d_143/StatefulPartitionedCall#^conv2d_144/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall!^dense_27/StatefulPartitionedCall!^dense_28/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2b
/batch_normalization_133/StatefulPartitionedCall/batch_normalization_133/StatefulPartitionedCall2b
/batch_normalization_134/StatefulPartitionedCall/batch_normalization_134/StatefulPartitionedCall2b
/batch_normalization_135/StatefulPartitionedCall/batch_normalization_135/StatefulPartitionedCall2b
/batch_normalization_136/StatefulPartitionedCall/batch_normalization_136/StatefulPartitionedCall2b
/batch_normalization_137/StatefulPartitionedCall/batch_normalization_137/StatefulPartitionedCall2b
/batch_normalization_138/StatefulPartitionedCall/batch_normalization_138/StatefulPartitionedCall2b
/batch_normalization_139/StatefulPartitionedCall/batch_normalization_139/StatefulPartitionedCall2b
/batch_normalization_140/StatefulPartitionedCall/batch_normalization_140/StatefulPartitionedCall2b
/batch_normalization_141/StatefulPartitionedCall/batch_normalization_141/StatefulPartitionedCall2H
"conv2d_136/StatefulPartitionedCall"conv2d_136/StatefulPartitionedCall2H
"conv2d_137/StatefulPartitionedCall"conv2d_137/StatefulPartitionedCall2H
"conv2d_138/StatefulPartitionedCall"conv2d_138/StatefulPartitionedCall2H
"conv2d_139/StatefulPartitionedCall"conv2d_139/StatefulPartitionedCall2H
"conv2d_140/StatefulPartitionedCall"conv2d_140/StatefulPartitionedCall2H
"conv2d_141/StatefulPartitionedCall"conv2d_141/StatefulPartitionedCall2H
"conv2d_142/StatefulPartitionedCall"conv2d_142/StatefulPartitionedCall2H
"conv2d_143/StatefulPartitionedCall"conv2d_143/StatefulPartitionedCall2H
"conv2d_144/StatefulPartitionedCall"conv2d_144/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2D
 dense_27/StatefulPartitionedCall dense_27/StatefulPartitionedCall2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_136_input
?
?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_292021

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_138_layer_call_fn_294600

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_2916722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????#@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????#@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????#@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_291189

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:??????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:??????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_290346

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_290994

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_139_layer_call_fn_294253

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????5H@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_139_layer_call_and_return_conditional_losses_2914372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????5H@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????7J ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????7J 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_291672

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????#@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????#@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????#@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????#@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_294485

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_294808

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_290211

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_135_layer_call_fn_294169

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_2904502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
??
?G
__inference__traced_save_295755
file_prefix0
,savev2_conv2d_136_kernel_read_readvariableop.
*savev2_conv2d_136_bias_read_readvariableop<
8savev2_batch_normalization_133_gamma_read_readvariableop;
7savev2_batch_normalization_133_beta_read_readvariableopB
>savev2_batch_normalization_133_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_133_moving_variance_read_readvariableop0
,savev2_conv2d_137_kernel_read_readvariableop.
*savev2_conv2d_137_bias_read_readvariableop<
8savev2_batch_normalization_134_gamma_read_readvariableop;
7savev2_batch_normalization_134_beta_read_readvariableopB
>savev2_batch_normalization_134_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_134_moving_variance_read_readvariableop0
,savev2_conv2d_138_kernel_read_readvariableop.
*savev2_conv2d_138_bias_read_readvariableop<
8savev2_batch_normalization_135_gamma_read_readvariableop;
7savev2_batch_normalization_135_beta_read_readvariableopB
>savev2_batch_normalization_135_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_135_moving_variance_read_readvariableop0
,savev2_conv2d_139_kernel_read_readvariableop.
*savev2_conv2d_139_bias_read_readvariableop<
8savev2_batch_normalization_136_gamma_read_readvariableop;
7savev2_batch_normalization_136_beta_read_readvariableopB
>savev2_batch_normalization_136_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_136_moving_variance_read_readvariableop0
,savev2_conv2d_140_kernel_read_readvariableop.
*savev2_conv2d_140_bias_read_readvariableop<
8savev2_batch_normalization_137_gamma_read_readvariableop;
7savev2_batch_normalization_137_beta_read_readvariableopB
>savev2_batch_normalization_137_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_137_moving_variance_read_readvariableop0
,savev2_conv2d_141_kernel_read_readvariableop.
*savev2_conv2d_141_bias_read_readvariableop<
8savev2_batch_normalization_138_gamma_read_readvariableop;
7savev2_batch_normalization_138_beta_read_readvariableopB
>savev2_batch_normalization_138_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_138_moving_variance_read_readvariableop0
,savev2_conv2d_142_kernel_read_readvariableop.
*savev2_conv2d_142_bias_read_readvariableop<
8savev2_batch_normalization_139_gamma_read_readvariableop;
7savev2_batch_normalization_139_beta_read_readvariableopB
>savev2_batch_normalization_139_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_139_moving_variance_read_readvariableop0
,savev2_conv2d_143_kernel_read_readvariableop.
*savev2_conv2d_143_bias_read_readvariableop<
8savev2_batch_normalization_140_gamma_read_readvariableop;
7savev2_batch_normalization_140_beta_read_readvariableopB
>savev2_batch_normalization_140_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_140_moving_variance_read_readvariableop0
,savev2_conv2d_144_kernel_read_readvariableop.
*savev2_conv2d_144_bias_read_readvariableop<
8savev2_batch_normalization_141_gamma_read_readvariableop;
7savev2_batch_normalization_141_beta_read_readvariableopB
>savev2_batch_normalization_141_moving_mean_read_readvariableopF
Bsavev2_batch_normalization_141_moving_variance_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop.
*savev2_dense_27_kernel_read_readvariableop,
(savev2_dense_27_bias_read_readvariableop.
*savev2_dense_28_kernel_read_readvariableop,
(savev2_dense_28_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv2d_136_kernel_m_read_readvariableop5
1savev2_adam_conv2d_136_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_133_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_133_beta_m_read_readvariableop7
3savev2_adam_conv2d_137_kernel_m_read_readvariableop5
1savev2_adam_conv2d_137_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_134_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_134_beta_m_read_readvariableop7
3savev2_adam_conv2d_138_kernel_m_read_readvariableop5
1savev2_adam_conv2d_138_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_135_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_135_beta_m_read_readvariableop7
3savev2_adam_conv2d_139_kernel_m_read_readvariableop5
1savev2_adam_conv2d_139_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_136_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_136_beta_m_read_readvariableop7
3savev2_adam_conv2d_140_kernel_m_read_readvariableop5
1savev2_adam_conv2d_140_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_137_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_137_beta_m_read_readvariableop7
3savev2_adam_conv2d_141_kernel_m_read_readvariableop5
1savev2_adam_conv2d_141_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_138_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_138_beta_m_read_readvariableop7
3savev2_adam_conv2d_142_kernel_m_read_readvariableop5
1savev2_adam_conv2d_142_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_139_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_139_beta_m_read_readvariableop7
3savev2_adam_conv2d_143_kernel_m_read_readvariableop5
1savev2_adam_conv2d_143_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_140_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_140_beta_m_read_readvariableop7
3savev2_adam_conv2d_144_kernel_m_read_readvariableop5
1savev2_adam_conv2d_144_bias_m_read_readvariableopC
?savev2_adam_batch_normalization_141_gamma_m_read_readvariableopB
>savev2_adam_batch_normalization_141_beta_m_read_readvariableop5
1savev2_adam_dense_26_kernel_m_read_readvariableop3
/savev2_adam_dense_26_bias_m_read_readvariableop5
1savev2_adam_dense_27_kernel_m_read_readvariableop3
/savev2_adam_dense_27_bias_m_read_readvariableop5
1savev2_adam_dense_28_kernel_m_read_readvariableop3
/savev2_adam_dense_28_bias_m_read_readvariableop7
3savev2_adam_conv2d_136_kernel_v_read_readvariableop5
1savev2_adam_conv2d_136_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_133_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_133_beta_v_read_readvariableop7
3savev2_adam_conv2d_137_kernel_v_read_readvariableop5
1savev2_adam_conv2d_137_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_134_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_134_beta_v_read_readvariableop7
3savev2_adam_conv2d_138_kernel_v_read_readvariableop5
1savev2_adam_conv2d_138_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_135_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_135_beta_v_read_readvariableop7
3savev2_adam_conv2d_139_kernel_v_read_readvariableop5
1savev2_adam_conv2d_139_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_136_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_136_beta_v_read_readvariableop7
3savev2_adam_conv2d_140_kernel_v_read_readvariableop5
1savev2_adam_conv2d_140_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_137_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_137_beta_v_read_readvariableop7
3savev2_adam_conv2d_141_kernel_v_read_readvariableop5
1savev2_adam_conv2d_141_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_138_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_138_beta_v_read_readvariableop7
3savev2_adam_conv2d_142_kernel_v_read_readvariableop5
1savev2_adam_conv2d_142_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_139_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_139_beta_v_read_readvariableop7
3savev2_adam_conv2d_143_kernel_v_read_readvariableop5
1savev2_adam_conv2d_143_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_140_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_140_beta_v_read_readvariableop7
3savev2_adam_conv2d_144_kernel_v_read_readvariableop5
1savev2_adam_conv2d_144_bias_v_read_readvariableopC
?savev2_adam_batch_normalization_141_gamma_v_read_readvariableopB
>savev2_adam_batch_normalization_141_beta_v_read_readvariableop5
1savev2_adam_dense_26_kernel_v_read_readvariableop3
/savev2_adam_dense_26_bias_v_read_readvariableop5
1savev2_adam_dense_27_kernel_v_read_readvariableop3
/savev2_adam_dense_27_bias_v_read_readvariableop5
1savev2_adam_dense_28_kernel_v_read_readvariableop3
/savev2_adam_dense_28_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?V
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?U
value?UB?U?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-17/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-17/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-17/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-17/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?D
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_136_kernel_read_readvariableop*savev2_conv2d_136_bias_read_readvariableop8savev2_batch_normalization_133_gamma_read_readvariableop7savev2_batch_normalization_133_beta_read_readvariableop>savev2_batch_normalization_133_moving_mean_read_readvariableopBsavev2_batch_normalization_133_moving_variance_read_readvariableop,savev2_conv2d_137_kernel_read_readvariableop*savev2_conv2d_137_bias_read_readvariableop8savev2_batch_normalization_134_gamma_read_readvariableop7savev2_batch_normalization_134_beta_read_readvariableop>savev2_batch_normalization_134_moving_mean_read_readvariableopBsavev2_batch_normalization_134_moving_variance_read_readvariableop,savev2_conv2d_138_kernel_read_readvariableop*savev2_conv2d_138_bias_read_readvariableop8savev2_batch_normalization_135_gamma_read_readvariableop7savev2_batch_normalization_135_beta_read_readvariableop>savev2_batch_normalization_135_moving_mean_read_readvariableopBsavev2_batch_normalization_135_moving_variance_read_readvariableop,savev2_conv2d_139_kernel_read_readvariableop*savev2_conv2d_139_bias_read_readvariableop8savev2_batch_normalization_136_gamma_read_readvariableop7savev2_batch_normalization_136_beta_read_readvariableop>savev2_batch_normalization_136_moving_mean_read_readvariableopBsavev2_batch_normalization_136_moving_variance_read_readvariableop,savev2_conv2d_140_kernel_read_readvariableop*savev2_conv2d_140_bias_read_readvariableop8savev2_batch_normalization_137_gamma_read_readvariableop7savev2_batch_normalization_137_beta_read_readvariableop>savev2_batch_normalization_137_moving_mean_read_readvariableopBsavev2_batch_normalization_137_moving_variance_read_readvariableop,savev2_conv2d_141_kernel_read_readvariableop*savev2_conv2d_141_bias_read_readvariableop8savev2_batch_normalization_138_gamma_read_readvariableop7savev2_batch_normalization_138_beta_read_readvariableop>savev2_batch_normalization_138_moving_mean_read_readvariableopBsavev2_batch_normalization_138_moving_variance_read_readvariableop,savev2_conv2d_142_kernel_read_readvariableop*savev2_conv2d_142_bias_read_readvariableop8savev2_batch_normalization_139_gamma_read_readvariableop7savev2_batch_normalization_139_beta_read_readvariableop>savev2_batch_normalization_139_moving_mean_read_readvariableopBsavev2_batch_normalization_139_moving_variance_read_readvariableop,savev2_conv2d_143_kernel_read_readvariableop*savev2_conv2d_143_bias_read_readvariableop8savev2_batch_normalization_140_gamma_read_readvariableop7savev2_batch_normalization_140_beta_read_readvariableop>savev2_batch_normalization_140_moving_mean_read_readvariableopBsavev2_batch_normalization_140_moving_variance_read_readvariableop,savev2_conv2d_144_kernel_read_readvariableop*savev2_conv2d_144_bias_read_readvariableop8savev2_batch_normalization_141_gamma_read_readvariableop7savev2_batch_normalization_141_beta_read_readvariableop>savev2_batch_normalization_141_moving_mean_read_readvariableopBsavev2_batch_normalization_141_moving_variance_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop*savev2_dense_27_kernel_read_readvariableop(savev2_dense_27_bias_read_readvariableop*savev2_dense_28_kernel_read_readvariableop(savev2_dense_28_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv2d_136_kernel_m_read_readvariableop1savev2_adam_conv2d_136_bias_m_read_readvariableop?savev2_adam_batch_normalization_133_gamma_m_read_readvariableop>savev2_adam_batch_normalization_133_beta_m_read_readvariableop3savev2_adam_conv2d_137_kernel_m_read_readvariableop1savev2_adam_conv2d_137_bias_m_read_readvariableop?savev2_adam_batch_normalization_134_gamma_m_read_readvariableop>savev2_adam_batch_normalization_134_beta_m_read_readvariableop3savev2_adam_conv2d_138_kernel_m_read_readvariableop1savev2_adam_conv2d_138_bias_m_read_readvariableop?savev2_adam_batch_normalization_135_gamma_m_read_readvariableop>savev2_adam_batch_normalization_135_beta_m_read_readvariableop3savev2_adam_conv2d_139_kernel_m_read_readvariableop1savev2_adam_conv2d_139_bias_m_read_readvariableop?savev2_adam_batch_normalization_136_gamma_m_read_readvariableop>savev2_adam_batch_normalization_136_beta_m_read_readvariableop3savev2_adam_conv2d_140_kernel_m_read_readvariableop1savev2_adam_conv2d_140_bias_m_read_readvariableop?savev2_adam_batch_normalization_137_gamma_m_read_readvariableop>savev2_adam_batch_normalization_137_beta_m_read_readvariableop3savev2_adam_conv2d_141_kernel_m_read_readvariableop1savev2_adam_conv2d_141_bias_m_read_readvariableop?savev2_adam_batch_normalization_138_gamma_m_read_readvariableop>savev2_adam_batch_normalization_138_beta_m_read_readvariableop3savev2_adam_conv2d_142_kernel_m_read_readvariableop1savev2_adam_conv2d_142_bias_m_read_readvariableop?savev2_adam_batch_normalization_139_gamma_m_read_readvariableop>savev2_adam_batch_normalization_139_beta_m_read_readvariableop3savev2_adam_conv2d_143_kernel_m_read_readvariableop1savev2_adam_conv2d_143_bias_m_read_readvariableop?savev2_adam_batch_normalization_140_gamma_m_read_readvariableop>savev2_adam_batch_normalization_140_beta_m_read_readvariableop3savev2_adam_conv2d_144_kernel_m_read_readvariableop1savev2_adam_conv2d_144_bias_m_read_readvariableop?savev2_adam_batch_normalization_141_gamma_m_read_readvariableop>savev2_adam_batch_normalization_141_beta_m_read_readvariableop1savev2_adam_dense_26_kernel_m_read_readvariableop/savev2_adam_dense_26_bias_m_read_readvariableop1savev2_adam_dense_27_kernel_m_read_readvariableop/savev2_adam_dense_27_bias_m_read_readvariableop1savev2_adam_dense_28_kernel_m_read_readvariableop/savev2_adam_dense_28_bias_m_read_readvariableop3savev2_adam_conv2d_136_kernel_v_read_readvariableop1savev2_adam_conv2d_136_bias_v_read_readvariableop?savev2_adam_batch_normalization_133_gamma_v_read_readvariableop>savev2_adam_batch_normalization_133_beta_v_read_readvariableop3savev2_adam_conv2d_137_kernel_v_read_readvariableop1savev2_adam_conv2d_137_bias_v_read_readvariableop?savev2_adam_batch_normalization_134_gamma_v_read_readvariableop>savev2_adam_batch_normalization_134_beta_v_read_readvariableop3savev2_adam_conv2d_138_kernel_v_read_readvariableop1savev2_adam_conv2d_138_bias_v_read_readvariableop?savev2_adam_batch_normalization_135_gamma_v_read_readvariableop>savev2_adam_batch_normalization_135_beta_v_read_readvariableop3savev2_adam_conv2d_139_kernel_v_read_readvariableop1savev2_adam_conv2d_139_bias_v_read_readvariableop?savev2_adam_batch_normalization_136_gamma_v_read_readvariableop>savev2_adam_batch_normalization_136_beta_v_read_readvariableop3savev2_adam_conv2d_140_kernel_v_read_readvariableop1savev2_adam_conv2d_140_bias_v_read_readvariableop?savev2_adam_batch_normalization_137_gamma_v_read_readvariableop>savev2_adam_batch_normalization_137_beta_v_read_readvariableop3savev2_adam_conv2d_141_kernel_v_read_readvariableop1savev2_adam_conv2d_141_bias_v_read_readvariableop?savev2_adam_batch_normalization_138_gamma_v_read_readvariableop>savev2_adam_batch_normalization_138_beta_v_read_readvariableop3savev2_adam_conv2d_142_kernel_v_read_readvariableop1savev2_adam_conv2d_142_bias_v_read_readvariableop?savev2_adam_batch_normalization_139_gamma_v_read_readvariableop>savev2_adam_batch_normalization_139_beta_v_read_readvariableop3savev2_adam_conv2d_143_kernel_v_read_readvariableop1savev2_adam_conv2d_143_bias_v_read_readvariableop?savev2_adam_batch_normalization_140_gamma_v_read_readvariableop>savev2_adam_batch_normalization_140_beta_v_read_readvariableop3savev2_adam_conv2d_144_kernel_v_read_readvariableop1savev2_adam_conv2d_144_bias_v_read_readvariableop?savev2_adam_batch_normalization_141_gamma_v_read_readvariableop>savev2_adam_batch_normalization_141_beta_v_read_readvariableop1savev2_adam_dense_26_kernel_v_read_readvariableop/savev2_adam_dense_26_bias_v_read_readvariableop1savev2_adam_dense_27_kernel_v_read_readvariableop/savev2_adam_dense_27_bias_v_read_readvariableop1savev2_adam_dense_28_kernel_v_read_readvariableop/savev2_adam_dense_28_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypes?
?2?	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?

_input_shapes?

?
: : : : : : : :  : : : : : :  : : : : : : @:@:@:@:@:@:@@:@:@:@:@:@:@@:@:@:@:@:@:@?:?:?:?:?:?:??:?:?:?:?:?:??:?:?:?:?:?:
??:?:
??:?:	?>:>: : : : : : : : : : : : : :  : : : :  : : : : @:@:@:@:@@:@:@:@:@@:@:@:@:@?:?:?:?:??:?:?:?:??:?:?:?:
??:?:
??:?:	?>:>: : : : :  : : : :  : : : : @:@:@:@:@@:@:@:@:@@:@:@:@:@?:?:?:?:??:?:?:?:??:?:?:?:
??:?:
??:?:	?>:>: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@:  

_output_shapes
:@: !

_output_shapes
:@: "

_output_shapes
:@: #

_output_shapes
:@: $

_output_shapes
:@:-%)
'
_output_shapes
:@?:!&

_output_shapes	
:?:!'

_output_shapes	
:?:!(

_output_shapes	
:?:!)

_output_shapes	
:?:!*

_output_shapes	
:?:.+*
(
_output_shapes
:??:!,

_output_shapes	
:?:!-

_output_shapes	
:?:!.

_output_shapes	
:?:!/

_output_shapes	
:?:!0

_output_shapes	
:?:.1*
(
_output_shapes
:??:!2

_output_shapes	
:?:!3

_output_shapes	
:?:!4

_output_shapes	
:?:!5

_output_shapes	
:?:!6

_output_shapes	
:?:&7"
 
_output_shapes
:
??:!8

_output_shapes	
:?:&9"
 
_output_shapes
:
??:!:

_output_shapes	
:?:%;!

_output_shapes
:	?>: <

_output_shapes
:>:=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: :B

_output_shapes
: :C

_output_shapes
: :D

_output_shapes
: :E

_output_shapes
: :,F(
&
_output_shapes
: : G

_output_shapes
: : H

_output_shapes
: : I

_output_shapes
: :,J(
&
_output_shapes
:  : K

_output_shapes
: : L

_output_shapes
: : M

_output_shapes
: :,N(
&
_output_shapes
:  : O

_output_shapes
: : P

_output_shapes
: : Q

_output_shapes
: :,R(
&
_output_shapes
: @: S

_output_shapes
:@: T

_output_shapes
:@: U

_output_shapes
:@:,V(
&
_output_shapes
:@@: W

_output_shapes
:@: X

_output_shapes
:@: Y

_output_shapes
:@:,Z(
&
_output_shapes
:@@: [

_output_shapes
:@: \

_output_shapes
:@: ]

_output_shapes
:@:-^)
'
_output_shapes
:@?:!_

_output_shapes	
:?:!`

_output_shapes	
:?:!a

_output_shapes	
:?:.b*
(
_output_shapes
:??:!c

_output_shapes	
:?:!d

_output_shapes	
:?:!e

_output_shapes	
:?:.f*
(
_output_shapes
:??:!g

_output_shapes	
:?:!h

_output_shapes	
:?:!i

_output_shapes	
:?:&j"
 
_output_shapes
:
??:!k

_output_shapes	
:?:&l"
 
_output_shapes
:
??:!m

_output_shapes	
:?:%n!

_output_shapes
:	?>: o

_output_shapes
:>:,p(
&
_output_shapes
: : q

_output_shapes
: : r

_output_shapes
: : s

_output_shapes
: :,t(
&
_output_shapes
:  : u

_output_shapes
: : v

_output_shapes
: : w

_output_shapes
: :,x(
&
_output_shapes
:  : y

_output_shapes
: : z

_output_shapes
: : {

_output_shapes
: :,|(
&
_output_shapes
: @: }

_output_shapes
:@: ~

_output_shapes
:@: 

_output_shapes
:@:-?(
&
_output_shapes
:@@:!?

_output_shapes
:@:!?

_output_shapes
:@:!?

_output_shapes
:@:-?(
&
_output_shapes
:@@:!?

_output_shapes
:@:!?

_output_shapes
:@:!?

_output_shapes
:@:.?)
'
_output_shapes
:@?:"?

_output_shapes	
:?:"?

_output_shapes	
:?:"?

_output_shapes	
:?:/?*
(
_output_shapes
:??:"?

_output_shapes	
:?:"?

_output_shapes	
:?:"?

_output_shapes	
:?:/?*
(
_output_shapes
:??:"?

_output_shapes	
:?:"?

_output_shapes	
:?:"?

_output_shapes	
:?:'?"
 
_output_shapes
:
??:"?

_output_shapes	
:?:'?"
 
_output_shapes
:
??:"?

_output_shapes	
:?:&?!

_output_shapes
:	?>:!?

_output_shapes
:>:?

_output_shapes
: 
?
?
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_294762

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_294910

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????	?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????	?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????	?::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????	?
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_294744

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_138_layer_call_fn_294613

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_2916902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????#@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????#@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????#@
 
_user_specified_nameinputs
?	
?
D__inference_dense_28_layer_call_and_return_conditional_losses_295264

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?>*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:>*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????>2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_136_layer_call_fn_294368

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????5H@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_2914722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????5H@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????5H@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????5H@
 
_user_specified_nameinputs
?

?
F__inference_conv2d_139_layer_call_and_return_conditional_losses_291437

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5H@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????5H@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????5H@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????5H@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????7J ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????7J 
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_136_layer_call_fn_294317

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_2905662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_291921

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????	?:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????	?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????	?::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????	?
 
_user_specified_nameinputs
?
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_291739

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
b
F__inference_flatten_10_layer_call_and_return_conditional_losses_292094

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_140_layer_call_fn_294923

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????	?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_2919032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????	?2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????	?::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????	?
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_290242

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_134_layer_call_fn_294021

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_2903462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_136_layer_call_fn_294381

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????5H@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_2914902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????5H@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????5H@::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????5H@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_291271

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:??????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:??????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_295122

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_294439

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????3F@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????3F@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????3F@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????3F@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_291289

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:??????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:??????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_290419

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_291744

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_293977

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
+__inference_conv2d_140_layer_call_fn_294401

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????3F@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_140_layer_call_and_return_conditional_losses_2915372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????3F@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????5H@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????5H@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_294633

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_135_layer_call_fn_294220

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????o? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_2913712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????o? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????o? ::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????o? 
 
_user_specified_nameinputs
?

?
F__inference_conv2d_138_layer_call_and_return_conditional_losses_291336

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????o? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????o? 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:??????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_290791

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_293995

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_291572

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????3F@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????3F@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????3F@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????3F@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_290315

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_294694

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_293056
conv2d_136_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58
identity??StatefulPartitionedCall?	
StatefulPartitionedCallStatefulPartitionedCallconv2d_136_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58*H
TinA
?2=*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*^
_read_only_resource_inputs@
><	
 !"#$%&'()*+,-./0123456789:;<*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_2901492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_136_input
?

?
F__inference_conv2d_138_layer_call_and_return_conditional_losses_294096

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????o? 2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????o? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????o? 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:??????????? ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_290670

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_291067

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
F
*__inference_dropout_1_layer_call_fn_294704

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_2917442
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_294826

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

?
F__inference_conv2d_136_layer_call_and_return_conditional_losses_293800

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_15_layer_call_fn_292921
conv2d_136_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58
identity??StatefulPartitionedCall?	
StatefulPartitionedCallStatefulPartitionedCallconv2d_136_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58*H
TinA
?2=*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*^
_read_only_resource_inputs@
><	
 !"#$%&'()*+,-./0123456789:;<*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_15_layer_call_and_return_conditional_losses_2927982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:???????????
*
_user_specified_nameconv2d_136_input
?
?
+__inference_conv2d_141_layer_call_fn_294549

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_141_layer_call_and_return_conditional_losses_2916372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????#@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????3F@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????3F@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_295040

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_15_layer_call_fn_293664

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58
identity??StatefulPartitionedCall?	
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58*H
TinA
?2=*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>*L
_read_only_resource_inputs.
,*	
 !"%&'(+,-.1234789:;<*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_15_layer_call_and_return_conditional_losses_2925212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_290535

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
c
*__inference_dropout_2_layer_call_fn_295170

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_2920702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_290743

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
d
E__inference_dropout_3_layer_call_and_return_conditional_losses_295198

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_conv2d_142_layer_call_fn_294724

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_142_layer_call_and_return_conditional_losses_2917682
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_138_layer_call_fn_294664

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_2907432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
F__inference_conv2d_144_layer_call_and_return_conditional_losses_295011

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????	?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????	?
 
_user_specified_nameinputs
?
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_294689

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????@2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????@2
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_294207

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????o? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????o? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????o? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????o? 
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_136_layer_call_fn_294304

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_2905352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_294355

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????5H@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????5H@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????5H@::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????5H@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_294041

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:??????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:??????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_291371

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:?????????o? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:?????????o? 2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????o? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:?????????o? 
 
_user_specified_nameinputs
?
?
+__inference_conv2d_136_layer_call_fn_293809

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_conv2d_136_layer_call_and_return_conditional_losses_2911362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_10_layer_call_and_return_conditional_losses_295181

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_292003

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:??????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_134_layer_call_fn_294085

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_2912892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:??????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?	
?
D__inference_dense_28_layer_call_and_return_conditional_losses_292197

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?>*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:>*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????>2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????>2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????>2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_290859

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
~
)__inference_dense_26_layer_call_fn_295233

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_2921432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_294956

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_294125

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_293911

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:??????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:??????????? 2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:??????????? ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_294273

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_294974

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_141_layer_call_fn_295084

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_2910982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,????????????????????????????2

Identity"
identityIdentity:output:0*Q
_input_shapes@
>:,????????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
F
*__inference_dropout_3_layer_call_fn_295213

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_2921192
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
8__inference_batch_normalization_133_layer_call_fn_293860

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *\
fWRU
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_2902112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+??????????????????????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_290467

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_294569

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????#@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????#@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????#@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????#@
 
_user_specified_nameinputs
?
?
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_291472

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????5H@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????5H@2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????5H@::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????5H@
 
_user_specified_nameinputs
??
?Y
"__inference__traced_restore_296224
file_prefix&
"assignvariableop_conv2d_136_kernel&
"assignvariableop_1_conv2d_136_bias4
0assignvariableop_2_batch_normalization_133_gamma3
/assignvariableop_3_batch_normalization_133_beta:
6assignvariableop_4_batch_normalization_133_moving_mean>
:assignvariableop_5_batch_normalization_133_moving_variance(
$assignvariableop_6_conv2d_137_kernel&
"assignvariableop_7_conv2d_137_bias4
0assignvariableop_8_batch_normalization_134_gamma3
/assignvariableop_9_batch_normalization_134_beta;
7assignvariableop_10_batch_normalization_134_moving_mean?
;assignvariableop_11_batch_normalization_134_moving_variance)
%assignvariableop_12_conv2d_138_kernel'
#assignvariableop_13_conv2d_138_bias5
1assignvariableop_14_batch_normalization_135_gamma4
0assignvariableop_15_batch_normalization_135_beta;
7assignvariableop_16_batch_normalization_135_moving_mean?
;assignvariableop_17_batch_normalization_135_moving_variance)
%assignvariableop_18_conv2d_139_kernel'
#assignvariableop_19_conv2d_139_bias5
1assignvariableop_20_batch_normalization_136_gamma4
0assignvariableop_21_batch_normalization_136_beta;
7assignvariableop_22_batch_normalization_136_moving_mean?
;assignvariableop_23_batch_normalization_136_moving_variance)
%assignvariableop_24_conv2d_140_kernel'
#assignvariableop_25_conv2d_140_bias5
1assignvariableop_26_batch_normalization_137_gamma4
0assignvariableop_27_batch_normalization_137_beta;
7assignvariableop_28_batch_normalization_137_moving_mean?
;assignvariableop_29_batch_normalization_137_moving_variance)
%assignvariableop_30_conv2d_141_kernel'
#assignvariableop_31_conv2d_141_bias5
1assignvariableop_32_batch_normalization_138_gamma4
0assignvariableop_33_batch_normalization_138_beta;
7assignvariableop_34_batch_normalization_138_moving_mean?
;assignvariableop_35_batch_normalization_138_moving_variance)
%assignvariableop_36_conv2d_142_kernel'
#assignvariableop_37_conv2d_142_bias5
1assignvariableop_38_batch_normalization_139_gamma4
0assignvariableop_39_batch_normalization_139_beta;
7assignvariableop_40_batch_normalization_139_moving_mean?
;assignvariableop_41_batch_normalization_139_moving_variance)
%assignvariableop_42_conv2d_143_kernel'
#assignvariableop_43_conv2d_143_bias5
1assignvariableop_44_batch_normalization_140_gamma4
0assignvariableop_45_batch_normalization_140_beta;
7assignvariableop_46_batch_normalization_140_moving_mean?
;assignvariableop_47_batch_normalization_140_moving_variance)
%assignvariableop_48_conv2d_144_kernel'
#assignvariableop_49_conv2d_144_bias5
1assignvariableop_50_batch_normalization_141_gamma4
0assignvariableop_51_batch_normalization_141_beta;
7assignvariableop_52_batch_normalization_141_moving_mean?
;assignvariableop_53_batch_normalization_141_moving_variance'
#assignvariableop_54_dense_26_kernel%
!assignvariableop_55_dense_26_bias'
#assignvariableop_56_dense_27_kernel%
!assignvariableop_57_dense_27_bias'
#assignvariableop_58_dense_28_kernel%
!assignvariableop_59_dense_28_bias!
assignvariableop_60_adam_iter#
assignvariableop_61_adam_beta_1#
assignvariableop_62_adam_beta_2"
assignvariableop_63_adam_decay*
&assignvariableop_64_adam_learning_rate
assignvariableop_65_total
assignvariableop_66_count
assignvariableop_67_total_1
assignvariableop_68_count_10
,assignvariableop_69_adam_conv2d_136_kernel_m.
*assignvariableop_70_adam_conv2d_136_bias_m<
8assignvariableop_71_adam_batch_normalization_133_gamma_m;
7assignvariableop_72_adam_batch_normalization_133_beta_m0
,assignvariableop_73_adam_conv2d_137_kernel_m.
*assignvariableop_74_adam_conv2d_137_bias_m<
8assignvariableop_75_adam_batch_normalization_134_gamma_m;
7assignvariableop_76_adam_batch_normalization_134_beta_m0
,assignvariableop_77_adam_conv2d_138_kernel_m.
*assignvariableop_78_adam_conv2d_138_bias_m<
8assignvariableop_79_adam_batch_normalization_135_gamma_m;
7assignvariableop_80_adam_batch_normalization_135_beta_m0
,assignvariableop_81_adam_conv2d_139_kernel_m.
*assignvariableop_82_adam_conv2d_139_bias_m<
8assignvariableop_83_adam_batch_normalization_136_gamma_m;
7assignvariableop_84_adam_batch_normalization_136_beta_m0
,assignvariableop_85_adam_conv2d_140_kernel_m.
*assignvariableop_86_adam_conv2d_140_bias_m<
8assignvariableop_87_adam_batch_normalization_137_gamma_m;
7assignvariableop_88_adam_batch_normalization_137_beta_m0
,assignvariableop_89_adam_conv2d_141_kernel_m.
*assignvariableop_90_adam_conv2d_141_bias_m<
8assignvariableop_91_adam_batch_normalization_138_gamma_m;
7assignvariableop_92_adam_batch_normalization_138_beta_m0
,assignvariableop_93_adam_conv2d_142_kernel_m.
*assignvariableop_94_adam_conv2d_142_bias_m<
8assignvariableop_95_adam_batch_normalization_139_gamma_m;
7assignvariableop_96_adam_batch_normalization_139_beta_m0
,assignvariableop_97_adam_conv2d_143_kernel_m.
*assignvariableop_98_adam_conv2d_143_bias_m<
8assignvariableop_99_adam_batch_normalization_140_gamma_m<
8assignvariableop_100_adam_batch_normalization_140_beta_m1
-assignvariableop_101_adam_conv2d_144_kernel_m/
+assignvariableop_102_adam_conv2d_144_bias_m=
9assignvariableop_103_adam_batch_normalization_141_gamma_m<
8assignvariableop_104_adam_batch_normalization_141_beta_m/
+assignvariableop_105_adam_dense_26_kernel_m-
)assignvariableop_106_adam_dense_26_bias_m/
+assignvariableop_107_adam_dense_27_kernel_m-
)assignvariableop_108_adam_dense_27_bias_m/
+assignvariableop_109_adam_dense_28_kernel_m-
)assignvariableop_110_adam_dense_28_bias_m1
-assignvariableop_111_adam_conv2d_136_kernel_v/
+assignvariableop_112_adam_conv2d_136_bias_v=
9assignvariableop_113_adam_batch_normalization_133_gamma_v<
8assignvariableop_114_adam_batch_normalization_133_beta_v1
-assignvariableop_115_adam_conv2d_137_kernel_v/
+assignvariableop_116_adam_conv2d_137_bias_v=
9assignvariableop_117_adam_batch_normalization_134_gamma_v<
8assignvariableop_118_adam_batch_normalization_134_beta_v1
-assignvariableop_119_adam_conv2d_138_kernel_v/
+assignvariableop_120_adam_conv2d_138_bias_v=
9assignvariableop_121_adam_batch_normalization_135_gamma_v<
8assignvariableop_122_adam_batch_normalization_135_beta_v1
-assignvariableop_123_adam_conv2d_139_kernel_v/
+assignvariableop_124_adam_conv2d_139_bias_v=
9assignvariableop_125_adam_batch_normalization_136_gamma_v<
8assignvariableop_126_adam_batch_normalization_136_beta_v1
-assignvariableop_127_adam_conv2d_140_kernel_v/
+assignvariableop_128_adam_conv2d_140_bias_v=
9assignvariableop_129_adam_batch_normalization_137_gamma_v<
8assignvariableop_130_adam_batch_normalization_137_beta_v1
-assignvariableop_131_adam_conv2d_141_kernel_v/
+assignvariableop_132_adam_conv2d_141_bias_v=
9assignvariableop_133_adam_batch_normalization_138_gamma_v<
8assignvariableop_134_adam_batch_normalization_138_beta_v1
-assignvariableop_135_adam_conv2d_142_kernel_v/
+assignvariableop_136_adam_conv2d_142_bias_v=
9assignvariableop_137_adam_batch_normalization_139_gamma_v<
8assignvariableop_138_adam_batch_normalization_139_beta_v1
-assignvariableop_139_adam_conv2d_143_kernel_v/
+assignvariableop_140_adam_conv2d_143_bias_v=
9assignvariableop_141_adam_batch_normalization_140_gamma_v<
8assignvariableop_142_adam_batch_normalization_140_beta_v1
-assignvariableop_143_adam_conv2d_144_kernel_v/
+assignvariableop_144_adam_conv2d_144_bias_v=
9assignvariableop_145_adam_batch_normalization_141_gamma_v<
8assignvariableop_146_adam_batch_normalization_141_beta_v/
+assignvariableop_147_adam_dense_26_kernel_v-
)assignvariableop_148_adam_dense_26_bias_v/
+assignvariableop_149_adam_dense_27_kernel_v-
)assignvariableop_150_adam_dense_27_bias_v/
+assignvariableop_151_adam_dense_28_kernel_v-
)assignvariableop_152_adam_dense_28_bias_v
identity_154??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_105?AssignVariableOp_106?AssignVariableOp_107?AssignVariableOp_108?AssignVariableOp_109?AssignVariableOp_11?AssignVariableOp_110?AssignVariableOp_111?AssignVariableOp_112?AssignVariableOp_113?AssignVariableOp_114?AssignVariableOp_115?AssignVariableOp_116?AssignVariableOp_117?AssignVariableOp_118?AssignVariableOp_119?AssignVariableOp_12?AssignVariableOp_120?AssignVariableOp_121?AssignVariableOp_122?AssignVariableOp_123?AssignVariableOp_124?AssignVariableOp_125?AssignVariableOp_126?AssignVariableOp_127?AssignVariableOp_128?AssignVariableOp_129?AssignVariableOp_13?AssignVariableOp_130?AssignVariableOp_131?AssignVariableOp_132?AssignVariableOp_133?AssignVariableOp_134?AssignVariableOp_135?AssignVariableOp_136?AssignVariableOp_137?AssignVariableOp_138?AssignVariableOp_139?AssignVariableOp_14?AssignVariableOp_140?AssignVariableOp_141?AssignVariableOp_142?AssignVariableOp_143?AssignVariableOp_144?AssignVariableOp_145?AssignVariableOp_146?AssignVariableOp_147?AssignVariableOp_148?AssignVariableOp_149?AssignVariableOp_15?AssignVariableOp_150?AssignVariableOp_151?AssignVariableOp_152?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?V
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?U
value?UB?U?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-15/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-15/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-15/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-17/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-17/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-17/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-17/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-15/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-17/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes?
?2?	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_136_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_136_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_batch_normalization_133_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp/assignvariableop_3_batch_normalization_133_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_133_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp:assignvariableop_5_batch_normalization_133_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_conv2d_137_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_137_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_batch_normalization_134_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp/assignvariableop_9_batch_normalization_134_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_batch_normalization_134_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp;assignvariableop_11_batch_normalization_134_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv2d_138_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_138_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp1assignvariableop_14_batch_normalization_135_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp0assignvariableop_15_batch_normalization_135_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp7assignvariableop_16_batch_normalization_135_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp;assignvariableop_17_batch_normalization_135_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_conv2d_139_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv2d_139_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp1assignvariableop_20_batch_normalization_136_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_batch_normalization_136_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_136_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp;assignvariableop_23_batch_normalization_136_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp%assignvariableop_24_conv2d_140_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_140_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp1assignvariableop_26_batch_normalization_137_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_batch_normalization_137_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_137_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp;assignvariableop_29_batch_normalization_137_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp%assignvariableop_30_conv2d_141_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp#assignvariableop_31_conv2d_141_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp1assignvariableop_32_batch_normalization_138_gammaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp0assignvariableop_33_batch_normalization_138_betaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp7assignvariableop_34_batch_normalization_138_moving_meanIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp;assignvariableop_35_batch_normalization_138_moving_varianceIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp%assignvariableop_36_conv2d_142_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp#assignvariableop_37_conv2d_142_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp1assignvariableop_38_batch_normalization_139_gammaIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp0assignvariableop_39_batch_normalization_139_betaIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp7assignvariableop_40_batch_normalization_139_moving_meanIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp;assignvariableop_41_batch_normalization_139_moving_varianceIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp%assignvariableop_42_conv2d_143_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp#assignvariableop_43_conv2d_143_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp1assignvariableop_44_batch_normalization_140_gammaIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp0assignvariableop_45_batch_normalization_140_betaIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp7assignvariableop_46_batch_normalization_140_moving_meanIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp;assignvariableop_47_batch_normalization_140_moving_varianceIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp%assignvariableop_48_conv2d_144_kernelIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp#assignvariableop_49_conv2d_144_biasIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp1assignvariableop_50_batch_normalization_141_gammaIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp0assignvariableop_51_batch_normalization_141_betaIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp7assignvariableop_52_batch_normalization_141_moving_meanIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp;assignvariableop_53_batch_normalization_141_moving_varianceIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp#assignvariableop_54_dense_26_kernelIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp!assignvariableop_55_dense_26_biasIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp#assignvariableop_56_dense_27_kernelIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp!assignvariableop_57_dense_27_biasIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp#assignvariableop_58_dense_28_kernelIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp!assignvariableop_59_dense_28_biasIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOpassignvariableop_60_adam_iterIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOpassignvariableop_61_adam_beta_1Identity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOpassignvariableop_62_adam_beta_2Identity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOpassignvariableop_63_adam_decayIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp&assignvariableop_64_adam_learning_rateIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOpassignvariableop_65_totalIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOpassignvariableop_66_countIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOpassignvariableop_67_total_1Identity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOpassignvariableop_68_count_1Identity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp,assignvariableop_69_adam_conv2d_136_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp*assignvariableop_70_adam_conv2d_136_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp8assignvariableop_71_adam_batch_normalization_133_gamma_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp7assignvariableop_72_adam_batch_normalization_133_beta_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp,assignvariableop_73_adam_conv2d_137_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp*assignvariableop_74_adam_conv2d_137_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp8assignvariableop_75_adam_batch_normalization_134_gamma_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp7assignvariableop_76_adam_batch_normalization_134_beta_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp,assignvariableop_77_adam_conv2d_138_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp*assignvariableop_78_adam_conv2d_138_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp8assignvariableop_79_adam_batch_normalization_135_gamma_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp7assignvariableop_80_adam_batch_normalization_135_beta_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOp,assignvariableop_81_adam_conv2d_139_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOp*assignvariableop_82_adam_conv2d_139_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83?
AssignVariableOp_83AssignVariableOp8assignvariableop_83_adam_batch_normalization_136_gamma_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84?
AssignVariableOp_84AssignVariableOp7assignvariableop_84_adam_batch_normalization_136_beta_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85?
AssignVariableOp_85AssignVariableOp,assignvariableop_85_adam_conv2d_140_kernel_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86?
AssignVariableOp_86AssignVariableOp*assignvariableop_86_adam_conv2d_140_bias_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87?
AssignVariableOp_87AssignVariableOp8assignvariableop_87_adam_batch_normalization_137_gamma_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88?
AssignVariableOp_88AssignVariableOp7assignvariableop_88_adam_batch_normalization_137_beta_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89?
AssignVariableOp_89AssignVariableOp,assignvariableop_89_adam_conv2d_141_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90?
AssignVariableOp_90AssignVariableOp*assignvariableop_90_adam_conv2d_141_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91?
AssignVariableOp_91AssignVariableOp8assignvariableop_91_adam_batch_normalization_138_gamma_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92?
AssignVariableOp_92AssignVariableOp7assignvariableop_92_adam_batch_normalization_138_beta_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93?
AssignVariableOp_93AssignVariableOp,assignvariableop_93_adam_conv2d_142_kernel_mIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94?
AssignVariableOp_94AssignVariableOp*assignvariableop_94_adam_conv2d_142_bias_mIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95?
AssignVariableOp_95AssignVariableOp8assignvariableop_95_adam_batch_normalization_139_gamma_mIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96?
AssignVariableOp_96AssignVariableOp7assignvariableop_96_adam_batch_normalization_139_beta_mIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97?
AssignVariableOp_97AssignVariableOp,assignvariableop_97_adam_conv2d_143_kernel_mIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98?
AssignVariableOp_98AssignVariableOp*assignvariableop_98_adam_conv2d_143_bias_mIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99?
AssignVariableOp_99AssignVariableOp8assignvariableop_99_adam_batch_normalization_140_gamma_mIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100?
AssignVariableOp_100AssignVariableOp8assignvariableop_100_adam_batch_normalization_140_beta_mIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101?
AssignVariableOp_101AssignVariableOp-assignvariableop_101_adam_conv2d_144_kernel_mIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102?
AssignVariableOp_102AssignVariableOp+assignvariableop_102_adam_conv2d_144_bias_mIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103?
AssignVariableOp_103AssignVariableOp9assignvariableop_103_adam_batch_normalization_141_gamma_mIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104?
AssignVariableOp_104AssignVariableOp8assignvariableop_104_adam_batch_normalization_141_beta_mIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105?
AssignVariableOp_105AssignVariableOp+assignvariableop_105_adam_dense_26_kernel_mIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106?
AssignVariableOp_106AssignVariableOp)assignvariableop_106_adam_dense_26_bias_mIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107?
AssignVariableOp_107AssignVariableOp+assignvariableop_107_adam_dense_27_kernel_mIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108?
AssignVariableOp_108AssignVariableOp)assignvariableop_108_adam_dense_27_bias_mIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109?
AssignVariableOp_109AssignVariableOp+assignvariableop_109_adam_dense_28_kernel_mIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110?
AssignVariableOp_110AssignVariableOp)assignvariableop_110_adam_dense_28_bias_mIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111?
AssignVariableOp_111AssignVariableOp-assignvariableop_111_adam_conv2d_136_kernel_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112?
AssignVariableOp_112AssignVariableOp+assignvariableop_112_adam_conv2d_136_bias_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_112q
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:2
Identity_113?
AssignVariableOp_113AssignVariableOp9assignvariableop_113_adam_batch_normalization_133_gamma_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_113q
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:2
Identity_114?
AssignVariableOp_114AssignVariableOp8assignvariableop_114_adam_batch_normalization_133_beta_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_114q
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:2
Identity_115?
AssignVariableOp_115AssignVariableOp-assignvariableop_115_adam_conv2d_137_kernel_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_115q
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:2
Identity_116?
AssignVariableOp_116AssignVariableOp+assignvariableop_116_adam_conv2d_137_bias_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_116q
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:2
Identity_117?
AssignVariableOp_117AssignVariableOp9assignvariableop_117_adam_batch_normalization_134_gamma_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_117q
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:2
Identity_118?
AssignVariableOp_118AssignVariableOp8assignvariableop_118_adam_batch_normalization_134_beta_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_118q
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:2
Identity_119?
AssignVariableOp_119AssignVariableOp-assignvariableop_119_adam_conv2d_138_kernel_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119q
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:2
Identity_120?
AssignVariableOp_120AssignVariableOp+assignvariableop_120_adam_conv2d_138_bias_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_120q
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:2
Identity_121?
AssignVariableOp_121AssignVariableOp9assignvariableop_121_adam_batch_normalization_135_gamma_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_121q
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:2
Identity_122?
AssignVariableOp_122AssignVariableOp8assignvariableop_122_adam_batch_normalization_135_beta_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_122q
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:2
Identity_123?
AssignVariableOp_123AssignVariableOp-assignvariableop_123_adam_conv2d_139_kernel_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_123q
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:2
Identity_124?
AssignVariableOp_124AssignVariableOp+assignvariableop_124_adam_conv2d_139_bias_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_124q
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:2
Identity_125?
AssignVariableOp_125AssignVariableOp9assignvariableop_125_adam_batch_normalization_136_gamma_vIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_125q
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:2
Identity_126?
AssignVariableOp_126AssignVariableOp8assignvariableop_126_adam_batch_normalization_136_beta_vIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_126q
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:2
Identity_127?
AssignVariableOp_127AssignVariableOp-assignvariableop_127_adam_conv2d_140_kernel_vIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_127q
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:2
Identity_128?
AssignVariableOp_128AssignVariableOp+assignvariableop_128_adam_conv2d_140_bias_vIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_128q
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:2
Identity_129?
AssignVariableOp_129AssignVariableOp9assignvariableop_129_adam_batch_normalization_137_gamma_vIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_129q
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:2
Identity_130?
AssignVariableOp_130AssignVariableOp8assignvariableop_130_adam_batch_normalization_137_beta_vIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_130q
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:2
Identity_131?
AssignVariableOp_131AssignVariableOp-assignvariableop_131_adam_conv2d_141_kernel_vIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_131q
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:2
Identity_132?
AssignVariableOp_132AssignVariableOp+assignvariableop_132_adam_conv2d_141_bias_vIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_132q
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:2
Identity_133?
AssignVariableOp_133AssignVariableOp9assignvariableop_133_adam_batch_normalization_138_gamma_vIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_133q
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:2
Identity_134?
AssignVariableOp_134AssignVariableOp8assignvariableop_134_adam_batch_normalization_138_beta_vIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_134q
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
:2
Identity_135?
AssignVariableOp_135AssignVariableOp-assignvariableop_135_adam_conv2d_142_kernel_vIdentity_135:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_135q
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:2
Identity_136?
AssignVariableOp_136AssignVariableOp+assignvariableop_136_adam_conv2d_142_bias_vIdentity_136:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_136q
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
:2
Identity_137?
AssignVariableOp_137AssignVariableOp9assignvariableop_137_adam_batch_normalization_139_gamma_vIdentity_137:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_137q
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:2
Identity_138?
AssignVariableOp_138AssignVariableOp8assignvariableop_138_adam_batch_normalization_139_beta_vIdentity_138:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_138q
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
:2
Identity_139?
AssignVariableOp_139AssignVariableOp-assignvariableop_139_adam_conv2d_143_kernel_vIdentity_139:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_139q
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:2
Identity_140?
AssignVariableOp_140AssignVariableOp+assignvariableop_140_adam_conv2d_143_bias_vIdentity_140:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_140q
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
:2
Identity_141?
AssignVariableOp_141AssignVariableOp9assignvariableop_141_adam_batch_normalization_140_gamma_vIdentity_141:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_141q
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:2
Identity_142?
AssignVariableOp_142AssignVariableOp8assignvariableop_142_adam_batch_normalization_140_beta_vIdentity_142:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_142q
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
:2
Identity_143?
AssignVariableOp_143AssignVariableOp-assignvariableop_143_adam_conv2d_144_kernel_vIdentity_143:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_143q
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:2
Identity_144?
AssignVariableOp_144AssignVariableOp+assignvariableop_144_adam_conv2d_144_bias_vIdentity_144:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_144q
Identity_145IdentityRestoreV2:tensors:145"/device:CPU:0*
T0*
_output_shapes
:2
Identity_145?
AssignVariableOp_145AssignVariableOp9assignvariableop_145_adam_batch_normalization_141_gamma_vIdentity_145:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_145q
Identity_146IdentityRestoreV2:tensors:146"/device:CPU:0*
T0*
_output_shapes
:2
Identity_146?
AssignVariableOp_146AssignVariableOp8assignvariableop_146_adam_batch_normalization_141_beta_vIdentity_146:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_146q
Identity_147IdentityRestoreV2:tensors:147"/device:CPU:0*
T0*
_output_shapes
:2
Identity_147?
AssignVariableOp_147AssignVariableOp+assignvariableop_147_adam_dense_26_kernel_vIdentity_147:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_147q
Identity_148IdentityRestoreV2:tensors:148"/device:CPU:0*
T0*
_output_shapes
:2
Identity_148?
AssignVariableOp_148AssignVariableOp)assignvariableop_148_adam_dense_26_bias_vIdentity_148:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_148q
Identity_149IdentityRestoreV2:tensors:149"/device:CPU:0*
T0*
_output_shapes
:2
Identity_149?
AssignVariableOp_149AssignVariableOp+assignvariableop_149_adam_dense_27_kernel_vIdentity_149:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_149q
Identity_150IdentityRestoreV2:tensors:150"/device:CPU:0*
T0*
_output_shapes
:2
Identity_150?
AssignVariableOp_150AssignVariableOp)assignvariableop_150_adam_dense_27_bias_vIdentity_150:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_150q
Identity_151IdentityRestoreV2:tensors:151"/device:CPU:0*
T0*
_output_shapes
:2
Identity_151?
AssignVariableOp_151AssignVariableOp+assignvariableop_151_adam_dense_28_kernel_vIdentity_151:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_151q
Identity_152IdentityRestoreV2:tensors:152"/device:CPU:0*
T0*
_output_shapes
:2
Identity_152?
AssignVariableOp_152AssignVariableOp)assignvariableop_152_adam_dense_28_bias_vIdentity_152:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1529
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_153Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_153?
Identity_154IdentityIdentity_153:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_154"%
identity_154Identity_154:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262,
AssignVariableOp_127AssignVariableOp_1272,
AssignVariableOp_128AssignVariableOp_1282,
AssignVariableOp_129AssignVariableOp_1292*
AssignVariableOp_13AssignVariableOp_132,
AssignVariableOp_130AssignVariableOp_1302,
AssignVariableOp_131AssignVariableOp_1312,
AssignVariableOp_132AssignVariableOp_1322,
AssignVariableOp_133AssignVariableOp_1332,
AssignVariableOp_134AssignVariableOp_1342,
AssignVariableOp_135AssignVariableOp_1352,
AssignVariableOp_136AssignVariableOp_1362,
AssignVariableOp_137AssignVariableOp_1372,
AssignVariableOp_138AssignVariableOp_1382,
AssignVariableOp_139AssignVariableOp_1392*
AssignVariableOp_14AssignVariableOp_142,
AssignVariableOp_140AssignVariableOp_1402,
AssignVariableOp_141AssignVariableOp_1412,
AssignVariableOp_142AssignVariableOp_1422,
AssignVariableOp_143AssignVariableOp_1432,
AssignVariableOp_144AssignVariableOp_1442,
AssignVariableOp_145AssignVariableOp_1452,
AssignVariableOp_146AssignVariableOp_1462,
AssignVariableOp_147AssignVariableOp_1472,
AssignVariableOp_148AssignVariableOp_1482,
AssignVariableOp_149AssignVariableOp_1492*
AssignVariableOp_15AssignVariableOp_152,
AssignVariableOp_150AssignVariableOp_1502,
AssignVariableOp_151AssignVariableOp_1512,
AssignVariableOp_152AssignVariableOp_1522*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
W
conv2d_136_inputC
"serving_default_conv2d_136_input:0???????????<
dense_280
StatefulPartitionedCall:0?????????>tensorflow/serving/predict:??
??
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer_with_weights-8

layer-9
layer_with_weights-9
layer-10
layer_with_weights-10
layer-11
layer_with_weights-11
layer-12
layer-13
layer-14
layer_with_weights-12
layer-15
layer_with_weights-13
layer-16
layer_with_weights-14
layer-17
layer_with_weights-15
layer-18
layer_with_weights-16
layer-19
layer_with_weights-17
layer-20
layer-21
layer-22
layer-23
layer-24
layer_with_weights-18
layer-25
layer_with_weights-19
layer-26
layer_with_weights-20
layer-27
	optimizer
	variables
regularization_losses
 trainable_variables
!	keras_api
"
signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"??
_tf_keras_sequential??{"class_name": "Sequential", "name": "sequential_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_15", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 225, 300, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_136_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_136", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 225, 300, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_133", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_137", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_134", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_138", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_135", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_36", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_139", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_136", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_140", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_137", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_141", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_138", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_37", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_142", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_139", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_143", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_140", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_144", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_141", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_38", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_10", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 62, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 225, 300, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_15", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 225, 300, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_136_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_136", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 225, 300, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_133", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_137", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_134", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_138", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_135", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_36", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_139", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_136", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_140", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_137", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_141", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_138", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_37", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_142", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_139", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_143", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_140", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_144", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_141", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_38", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_10", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 62, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?


#kernel
$bias
%	variables
&regularization_losses
'trainable_variables
(	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"class_name": "Conv2D", "name": "conv2d_136", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 225, 300, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_136", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 225, 300, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 225, 300, 1]}}
?	
)axis
	*gamma
+beta
,moving_mean
-moving_variance
.	variables
/regularization_losses
0trainable_variables
1	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_133", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_133", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 223, 298, 32]}}
?	

2kernel
3bias
4	variables
5regularization_losses
6trainable_variables
7	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_137", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_137", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 223, 298, 32]}}
?	
8axis
	9gamma
:beta
;moving_mean
<moving_variance
=	variables
>regularization_losses
?trainable_variables
@	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_134", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_134", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 221, 296, 32]}}
?	

Akernel
Bbias
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_138", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_138", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 221, 296, 32]}}
?	
Gaxis
	Hgamma
Ibeta
Jmoving_mean
Kmoving_variance
L	variables
Mregularization_losses
Ntrainable_variables
O	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_135", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_135", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 111, 148, 32]}}
?
P	variables
Qregularization_losses
Rtrainable_variables
S	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_36", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

Tkernel
Ubias
V	variables
Wregularization_losses
Xtrainable_variables
Y	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_139", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_139", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 55, 74, 32]}}
?	
Zaxis
	[gamma
\beta
]moving_mean
^moving_variance
_	variables
`regularization_losses
atrainable_variables
b	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_136", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_136", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 53, 72, 64]}}
?	

ckernel
dbias
e	variables
fregularization_losses
gtrainable_variables
h	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_140", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_140", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 53, 72, 64]}}
?	
iaxis
	jgamma
kbeta
lmoving_mean
mmoving_variance
n	variables
oregularization_losses
ptrainable_variables
q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_137", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_137", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 51, 70, 64]}}
?	

rkernel
sbias
t	variables
uregularization_losses
vtrainable_variables
w	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_141", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_141", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 51, 70, 64]}}
?	
xaxis
	ygamma
zbeta
{moving_mean
|moving_variance
}	variables
~regularization_losses
trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_138", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_138", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 26, 35, 64]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_37", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?

?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_142", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_142", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 13, 17, 64]}}
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_139", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_139", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11, 15, 128]}}
?

?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_143", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_143", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11, 15, 128]}}
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_140", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_140", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 9, 13, 128]}}
?

?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_144", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_144", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 9, 13, 128]}}
?	
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "batch_normalization_141", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_141", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 7, 128]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_38", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_10", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
?
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 768}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 768]}}
?
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_27", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
?
?kernel
	?bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 62, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
?
	?iter
?beta_1
?beta_2

?decay
?learning_rate#m?$m?*m?+m?2m?3m?9m?:m?Am?Bm?Hm?Im?Tm?Um?[m?\m?cm?dm?jm?km?rm?sm?ym?zm?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?#v?$v?*v?+v?2v?3v?9v?:v?Av?Bv?Hv?Iv?Tv?Uv?[v?\v?cv?dv?jv?kv?rv?sv?yv?zv?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?"
	optimizer
?
#0
$1
*2
+3
,4
-5
26
37
98
:9
;10
<11
A12
B13
H14
I15
J16
K17
T18
U19
[20
\21
]22
^23
c24
d25
j26
k27
l28
m29
r30
s31
y32
z33
{34
|35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47
?48
?49
?50
?51
?52
?53
?54
?55
?56
?57
?58
?59"
trackable_list_wrapper
 "
trackable_list_wrapper
?
#0
$1
*2
+3
24
35
96
:7
A8
B9
H10
I11
T12
U13
[14
\15
c16
d17
j18
k19
r20
s21
y22
z23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41"
trackable_list_wrapper
?
	variables
regularization_losses
?layer_metrics
 trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
+:) 2conv2d_136/kernel
: 2conv2d_136/bias
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
?
%	variables
&regularization_losses
?layer_metrics
'trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:) 2batch_normalization_133/gamma
*:( 2batch_normalization_133/beta
3:1  (2#batch_normalization_133/moving_mean
7:5  (2'batch_normalization_133/moving_variance
<
*0
+1
,2
-3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
?
.	variables
/regularization_losses
?layer_metrics
0trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)  2conv2d_137/kernel
: 2conv2d_137/bias
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
?
4	variables
5regularization_losses
?layer_metrics
6trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:) 2batch_normalization_134/gamma
*:( 2batch_normalization_134/beta
3:1  (2#batch_normalization_134/moving_mean
7:5  (2'batch_normalization_134/moving_variance
<
90
:1
;2
<3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
?
=	variables
>regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)  2conv2d_138/kernel
: 2conv2d_138/bias
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
?
C	variables
Dregularization_losses
?layer_metrics
Etrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:) 2batch_normalization_135/gamma
*:( 2batch_normalization_135/beta
3:1  (2#batch_normalization_135/moving_mean
7:5  (2'batch_normalization_135/moving_variance
<
H0
I1
J2
K3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
?
L	variables
Mregularization_losses
?layer_metrics
Ntrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
P	variables
Qregularization_losses
?layer_metrics
Rtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) @2conv2d_139/kernel
:@2conv2d_139/bias
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
?
V	variables
Wregularization_losses
?layer_metrics
Xtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)@2batch_normalization_136/gamma
*:(@2batch_normalization_136/beta
3:1@ (2#batch_normalization_136/moving_mean
7:5@ (2'batch_normalization_136/moving_variance
<
[0
\1
]2
^3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
?
_	variables
`regularization_losses
?layer_metrics
atrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)@@2conv2d_140/kernel
:@2conv2d_140/bias
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
?
e	variables
fregularization_losses
?layer_metrics
gtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)@2batch_normalization_137/gamma
*:(@2batch_normalization_137/beta
3:1@ (2#batch_normalization_137/moving_mean
7:5@ (2'batch_normalization_137/moving_variance
<
j0
k1
l2
m3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
?
n	variables
oregularization_losses
?layer_metrics
ptrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)@@2conv2d_141/kernel
:@2conv2d_141/bias
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
?
t	variables
uregularization_losses
?layer_metrics
vtrainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)@2batch_normalization_138/gamma
*:(@2batch_normalization_138/beta
3:1@ (2#batch_normalization_138/moving_mean
7:5@ (2'batch_normalization_138/moving_variance
<
y0
z1
{2
|3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
?
}	variables
~regularization_losses
?layer_metrics
trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*@?2conv2d_142/kernel
:?2conv2d_142/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*?2batch_normalization_139/gamma
+:)?2batch_normalization_139/beta
4:2? (2#batch_normalization_139/moving_mean
8:6? (2'batch_normalization_139/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+??2conv2d_143/kernel
:?2conv2d_143/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*?2batch_normalization_140/gamma
+:)?2batch_normalization_140/beta
4:2? (2#batch_normalization_140/moving_mean
8:6? (2'batch_normalization_140/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+??2conv2d_144/kernel
:?2conv2d_144/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
,:*?2batch_normalization_141/gamma
+:)?2batch_normalization_141/beta
4:2? (2#batch_normalization_141/moving_mean
8:6? (2'batch_normalization_141/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_26/kernel
:?2dense_26/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_27/kernel
:?2dense_27/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 	?>2dense_28/kernel
:>2dense_28/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?	variables
?regularization_losses
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?non_trainable_variables
?metrics
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?
,0
-1
;2
<3
J4
K5
]6
^7
l8
m9
{10
|11
?12
?13
?14
?15
?16
?17"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
0:. 2Adam/conv2d_136/kernel/m
":  2Adam/conv2d_136/bias/m
0:. 2$Adam/batch_normalization_133/gamma/m
/:- 2#Adam/batch_normalization_133/beta/m
0:.  2Adam/conv2d_137/kernel/m
":  2Adam/conv2d_137/bias/m
0:. 2$Adam/batch_normalization_134/gamma/m
/:- 2#Adam/batch_normalization_134/beta/m
0:.  2Adam/conv2d_138/kernel/m
":  2Adam/conv2d_138/bias/m
0:. 2$Adam/batch_normalization_135/gamma/m
/:- 2#Adam/batch_normalization_135/beta/m
0:. @2Adam/conv2d_139/kernel/m
": @2Adam/conv2d_139/bias/m
0:.@2$Adam/batch_normalization_136/gamma/m
/:-@2#Adam/batch_normalization_136/beta/m
0:.@@2Adam/conv2d_140/kernel/m
": @2Adam/conv2d_140/bias/m
0:.@2$Adam/batch_normalization_137/gamma/m
/:-@2#Adam/batch_normalization_137/beta/m
0:.@@2Adam/conv2d_141/kernel/m
": @2Adam/conv2d_141/bias/m
0:.@2$Adam/batch_normalization_138/gamma/m
/:-@2#Adam/batch_normalization_138/beta/m
1:/@?2Adam/conv2d_142/kernel/m
#:!?2Adam/conv2d_142/bias/m
1:/?2$Adam/batch_normalization_139/gamma/m
0:.?2#Adam/batch_normalization_139/beta/m
2:0??2Adam/conv2d_143/kernel/m
#:!?2Adam/conv2d_143/bias/m
1:/?2$Adam/batch_normalization_140/gamma/m
0:.?2#Adam/batch_normalization_140/beta/m
2:0??2Adam/conv2d_144/kernel/m
#:!?2Adam/conv2d_144/bias/m
1:/?2$Adam/batch_normalization_141/gamma/m
0:.?2#Adam/batch_normalization_141/beta/m
(:&
??2Adam/dense_26/kernel/m
!:?2Adam/dense_26/bias/m
(:&
??2Adam/dense_27/kernel/m
!:?2Adam/dense_27/bias/m
':%	?>2Adam/dense_28/kernel/m
 :>2Adam/dense_28/bias/m
0:. 2Adam/conv2d_136/kernel/v
":  2Adam/conv2d_136/bias/v
0:. 2$Adam/batch_normalization_133/gamma/v
/:- 2#Adam/batch_normalization_133/beta/v
0:.  2Adam/conv2d_137/kernel/v
":  2Adam/conv2d_137/bias/v
0:. 2$Adam/batch_normalization_134/gamma/v
/:- 2#Adam/batch_normalization_134/beta/v
0:.  2Adam/conv2d_138/kernel/v
":  2Adam/conv2d_138/bias/v
0:. 2$Adam/batch_normalization_135/gamma/v
/:- 2#Adam/batch_normalization_135/beta/v
0:. @2Adam/conv2d_139/kernel/v
": @2Adam/conv2d_139/bias/v
0:.@2$Adam/batch_normalization_136/gamma/v
/:-@2#Adam/batch_normalization_136/beta/v
0:.@@2Adam/conv2d_140/kernel/v
": @2Adam/conv2d_140/bias/v
0:.@2$Adam/batch_normalization_137/gamma/v
/:-@2#Adam/batch_normalization_137/beta/v
0:.@@2Adam/conv2d_141/kernel/v
": @2Adam/conv2d_141/bias/v
0:.@2$Adam/batch_normalization_138/gamma/v
/:-@2#Adam/batch_normalization_138/beta/v
1:/@?2Adam/conv2d_142/kernel/v
#:!?2Adam/conv2d_142/bias/v
1:/?2$Adam/batch_normalization_139/gamma/v
0:.?2#Adam/batch_normalization_139/beta/v
2:0??2Adam/conv2d_143/kernel/v
#:!?2Adam/conv2d_143/bias/v
1:/?2$Adam/batch_normalization_140/gamma/v
0:.?2#Adam/batch_normalization_140/beta/v
2:0??2Adam/conv2d_144/kernel/v
#:!?2Adam/conv2d_144/bias/v
1:/?2$Adam/batch_normalization_141/gamma/v
0:.?2#Adam/batch_normalization_141/beta/v
(:&
??2Adam/dense_26/kernel/v
!:?2Adam/dense_26/bias/v
(:&
??2Adam/dense_27/kernel/v
!:?2Adam/dense_27/bias/v
':%	?>2Adam/dense_28/kernel/v
 :>2Adam/dense_28/bias/v
?2?
I__inference_sequential_15_layer_call_and_return_conditional_losses_293317
I__inference_sequential_15_layer_call_and_return_conditional_losses_293539
I__inference_sequential_15_layer_call_and_return_conditional_losses_292214
I__inference_sequential_15_layer_call_and_return_conditional_losses_292366?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_290149?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *9?6
4?1
conv2d_136_input???????????
?2?
.__inference_sequential_15_layer_call_fn_293664
.__inference_sequential_15_layer_call_fn_292644
.__inference_sequential_15_layer_call_fn_293789
.__inference_sequential_15_layer_call_fn_292921?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_conv2d_136_layer_call_and_return_conditional_losses_293800?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_136_layer_call_fn_293809?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_293847
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_293911
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_293829
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_293893?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
8__inference_batch_normalization_133_layer_call_fn_293937
8__inference_batch_normalization_133_layer_call_fn_293860
8__inference_batch_normalization_133_layer_call_fn_293924
8__inference_batch_normalization_133_layer_call_fn_293873?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_conv2d_137_layer_call_and_return_conditional_losses_293948?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_137_layer_call_fn_293957?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_293995
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_294059
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_294041
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_293977?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
8__inference_batch_normalization_134_layer_call_fn_294085
8__inference_batch_normalization_134_layer_call_fn_294008
8__inference_batch_normalization_134_layer_call_fn_294072
8__inference_batch_normalization_134_layer_call_fn_294021?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_conv2d_138_layer_call_and_return_conditional_losses_294096?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_138_layer_call_fn_294105?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_294125
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_294207
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_294143
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_294189?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
8__inference_batch_normalization_135_layer_call_fn_294220
8__inference_batch_normalization_135_layer_call_fn_294169
8__inference_batch_normalization_135_layer_call_fn_294233
8__inference_batch_normalization_135_layer_call_fn_294156?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_290467?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
1__inference_max_pooling2d_36_layer_call_fn_290473?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
F__inference_conv2d_139_layer_call_and_return_conditional_losses_294244?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_139_layer_call_fn_294253?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_294273
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_294291
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_294337
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_294355?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
8__inference_batch_normalization_136_layer_call_fn_294368
8__inference_batch_normalization_136_layer_call_fn_294381
8__inference_batch_normalization_136_layer_call_fn_294304
8__inference_batch_normalization_136_layer_call_fn_294317?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_conv2d_140_layer_call_and_return_conditional_losses_294392?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_140_layer_call_fn_294401?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_294503
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_294485
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_294421
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_294439?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
8__inference_batch_normalization_137_layer_call_fn_294465
8__inference_batch_normalization_137_layer_call_fn_294452
8__inference_batch_normalization_137_layer_call_fn_294529
8__inference_batch_normalization_137_layer_call_fn_294516?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_conv2d_141_layer_call_and_return_conditional_losses_294540?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_141_layer_call_fn_294549?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_294569
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_294633
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_294651
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_294587?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
8__inference_batch_normalization_138_layer_call_fn_294664
8__inference_batch_normalization_138_layer_call_fn_294600
8__inference_batch_normalization_138_layer_call_fn_294677
8__inference_batch_normalization_138_layer_call_fn_294613?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_290791?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
1__inference_max_pooling2d_37_layer_call_fn_290797?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
E__inference_dropout_1_layer_call_and_return_conditional_losses_294694
E__inference_dropout_1_layer_call_and_return_conditional_losses_294689?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dropout_1_layer_call_fn_294704
*__inference_dropout_1_layer_call_fn_294699?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_conv2d_142_layer_call_and_return_conditional_losses_294715?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_142_layer_call_fn_294724?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_294762
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_294744
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_294826
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_294808?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
8__inference_batch_normalization_139_layer_call_fn_294788
8__inference_batch_normalization_139_layer_call_fn_294852
8__inference_batch_normalization_139_layer_call_fn_294775
8__inference_batch_normalization_139_layer_call_fn_294839?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_conv2d_143_layer_call_and_return_conditional_losses_294863?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_143_layer_call_fn_294872?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_294892
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_294910
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_294974
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_294956?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
8__inference_batch_normalization_140_layer_call_fn_294936
8__inference_batch_normalization_140_layer_call_fn_294987
8__inference_batch_normalization_140_layer_call_fn_294923
8__inference_batch_normalization_140_layer_call_fn_295000?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_conv2d_144_layer_call_and_return_conditional_losses_295011?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_conv2d_144_layer_call_fn_295020?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_295058
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_295104
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_295040
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_295122?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
8__inference_batch_normalization_141_layer_call_fn_295148
8__inference_batch_normalization_141_layer_call_fn_295071
8__inference_batch_normalization_141_layer_call_fn_295084
8__inference_batch_normalization_141_layer_call_fn_295135?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_291115?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
1__inference_max_pooling2d_38_layer_call_fn_291121?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
E__inference_dropout_2_layer_call_and_return_conditional_losses_295165
E__inference_dropout_2_layer_call_and_return_conditional_losses_295160?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dropout_2_layer_call_fn_295175
*__inference_dropout_2_layer_call_fn_295170?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_flatten_10_layer_call_and_return_conditional_losses_295181?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_flatten_10_layer_call_fn_295186?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dropout_3_layer_call_and_return_conditional_losses_295203
E__inference_dropout_3_layer_call_and_return_conditional_losses_295198?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dropout_3_layer_call_fn_295213
*__inference_dropout_3_layer_call_fn_295208?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dense_26_layer_call_and_return_conditional_losses_295224?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_26_layer_call_fn_295233?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_27_layer_call_and_return_conditional_losses_295244?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_27_layer_call_fn_295253?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_28_layer_call_and_return_conditional_losses_295264?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_28_layer_call_fn_295273?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_293056conv2d_136_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_290149?T#$*+,-239:;<ABHIJKTU[\]^cdjklmrsyz{|????????????????????????C?@
9?6
4?1
conv2d_136_input???????????
? "3?0
.
dense_28"?
dense_28?????????>?
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_293829?*+,-M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_293847?*+,-M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_293893v*+,-=?:
3?0
*?'
inputs??????????? 
p
? "/?,
%?"
0??????????? 
? ?
S__inference_batch_normalization_133_layer_call_and_return_conditional_losses_293911v*+,-=?:
3?0
*?'
inputs??????????? 
p 
? "/?,
%?"
0??????????? 
? ?
8__inference_batch_normalization_133_layer_call_fn_293860?*+,-M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_133_layer_call_fn_293873?*+,-M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_133_layer_call_fn_293924i*+,-=?:
3?0
*?'
inputs??????????? 
p
? ""???????????? ?
8__inference_batch_normalization_133_layer_call_fn_293937i*+,-=?:
3?0
*?'
inputs??????????? 
p 
? ""???????????? ?
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_293977?9:;<M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_293995?9:;<M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_294041v9:;<=?:
3?0
*?'
inputs??????????? 
p
? "/?,
%?"
0??????????? 
? ?
S__inference_batch_normalization_134_layer_call_and_return_conditional_losses_294059v9:;<=?:
3?0
*?'
inputs??????????? 
p 
? "/?,
%?"
0??????????? 
? ?
8__inference_batch_normalization_134_layer_call_fn_294008?9:;<M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_134_layer_call_fn_294021?9:;<M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_134_layer_call_fn_294072i9:;<=?:
3?0
*?'
inputs??????????? 
p
? ""???????????? ?
8__inference_batch_normalization_134_layer_call_fn_294085i9:;<=?:
3?0
*?'
inputs??????????? 
p 
? ""???????????? ?
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_294125?HIJKM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_294143?HIJKM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_294189tHIJK<?9
2?/
)?&
inputs?????????o? 
p
? ".?+
$?!
0?????????o? 
? ?
S__inference_batch_normalization_135_layer_call_and_return_conditional_losses_294207tHIJK<?9
2?/
)?&
inputs?????????o? 
p 
? ".?+
$?!
0?????????o? 
? ?
8__inference_batch_normalization_135_layer_call_fn_294156?HIJKM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_135_layer_call_fn_294169?HIJKM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
8__inference_batch_normalization_135_layer_call_fn_294220gHIJK<?9
2?/
)?&
inputs?????????o? 
p
? "!??????????o? ?
8__inference_batch_normalization_135_layer_call_fn_294233gHIJK<?9
2?/
)?&
inputs?????????o? 
p 
? "!??????????o? ?
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_294273?[\]^M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_294291?[\]^M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_294337r[\]^;?8
1?.
(?%
inputs?????????5H@
p
? "-?*
#? 
0?????????5H@
? ?
S__inference_batch_normalization_136_layer_call_and_return_conditional_losses_294355r[\]^;?8
1?.
(?%
inputs?????????5H@
p 
? "-?*
#? 
0?????????5H@
? ?
8__inference_batch_normalization_136_layer_call_fn_294304?[\]^M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
8__inference_batch_normalization_136_layer_call_fn_294317?[\]^M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
8__inference_batch_normalization_136_layer_call_fn_294368e[\]^;?8
1?.
(?%
inputs?????????5H@
p
? " ??????????5H@?
8__inference_batch_normalization_136_layer_call_fn_294381e[\]^;?8
1?.
(?%
inputs?????????5H@
p 
? " ??????????5H@?
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_294421rjklm;?8
1?.
(?%
inputs?????????3F@
p
? "-?*
#? 
0?????????3F@
? ?
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_294439rjklm;?8
1?.
(?%
inputs?????????3F@
p 
? "-?*
#? 
0?????????3F@
? ?
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_294485?jklmM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_137_layer_call_and_return_conditional_losses_294503?jklmM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
8__inference_batch_normalization_137_layer_call_fn_294452ejklm;?8
1?.
(?%
inputs?????????3F@
p
? " ??????????3F@?
8__inference_batch_normalization_137_layer_call_fn_294465ejklm;?8
1?.
(?%
inputs?????????3F@
p 
? " ??????????3F@?
8__inference_batch_normalization_137_layer_call_fn_294516?jklmM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
8__inference_batch_normalization_137_layer_call_fn_294529?jklmM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_294569ryz{|;?8
1?.
(?%
inputs?????????#@
p
? "-?*
#? 
0?????????#@
? ?
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_294587ryz{|;?8
1?.
(?%
inputs?????????#@
p 
? "-?*
#? 
0?????????#@
? ?
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_294633?yz{|M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
S__inference_batch_normalization_138_layer_call_and_return_conditional_losses_294651?yz{|M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
8__inference_batch_normalization_138_layer_call_fn_294600eyz{|;?8
1?.
(?%
inputs?????????#@
p
? " ??????????#@?
8__inference_batch_normalization_138_layer_call_fn_294613eyz{|;?8
1?.
(?%
inputs?????????#@
p 
? " ??????????#@?
8__inference_batch_normalization_138_layer_call_fn_294664?yz{|M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
8__inference_batch_normalization_138_layer_call_fn_294677?yz{|M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_294744x????<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_294762x????<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_294808?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
S__inference_batch_normalization_139_layer_call_and_return_conditional_losses_294826?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
8__inference_batch_normalization_139_layer_call_fn_294775k????<?9
2?/
)?&
inputs??????????
p
? "!????????????
8__inference_batch_normalization_139_layer_call_fn_294788k????<?9
2?/
)?&
inputs??????????
p 
? "!????????????
8__inference_batch_normalization_139_layer_call_fn_294839?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
8__inference_batch_normalization_139_layer_call_fn_294852?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_294892x????<?9
2?/
)?&
inputs?????????	?
p
? ".?+
$?!
0?????????	?
? ?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_294910x????<?9
2?/
)?&
inputs?????????	?
p 
? ".?+
$?!
0?????????	?
? ?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_294956?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
S__inference_batch_normalization_140_layer_call_and_return_conditional_losses_294974?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
8__inference_batch_normalization_140_layer_call_fn_294923k????<?9
2?/
)?&
inputs?????????	?
p
? "!??????????	??
8__inference_batch_normalization_140_layer_call_fn_294936k????<?9
2?/
)?&
inputs?????????	?
p 
? "!??????????	??
8__inference_batch_normalization_140_layer_call_fn_294987?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
8__inference_batch_normalization_140_layer_call_fn_295000?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_295040?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_295058?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_295104x????<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
S__inference_batch_normalization_141_layer_call_and_return_conditional_losses_295122x????<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
8__inference_batch_normalization_141_layer_call_fn_295071?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
8__inference_batch_normalization_141_layer_call_fn_295084?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
8__inference_batch_normalization_141_layer_call_fn_295135k????<?9
2?/
)?&
inputs??????????
p
? "!????????????
8__inference_batch_normalization_141_layer_call_fn_295148k????<?9
2?/
)?&
inputs??????????
p 
? "!????????????
F__inference_conv2d_136_layer_call_and_return_conditional_losses_293800p#$9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0??????????? 
? ?
+__inference_conv2d_136_layer_call_fn_293809c#$9?6
/?,
*?'
inputs???????????
? ""???????????? ?
F__inference_conv2d_137_layer_call_and_return_conditional_losses_293948p239?6
/?,
*?'
inputs??????????? 
? "/?,
%?"
0??????????? 
? ?
+__inference_conv2d_137_layer_call_fn_293957c239?6
/?,
*?'
inputs??????????? 
? ""???????????? ?
F__inference_conv2d_138_layer_call_and_return_conditional_losses_294096oAB9?6
/?,
*?'
inputs??????????? 
? ".?+
$?!
0?????????o? 
? ?
+__inference_conv2d_138_layer_call_fn_294105bAB9?6
/?,
*?'
inputs??????????? 
? "!??????????o? ?
F__inference_conv2d_139_layer_call_and_return_conditional_losses_294244lTU7?4
-?*
(?%
inputs?????????7J 
? "-?*
#? 
0?????????5H@
? ?
+__inference_conv2d_139_layer_call_fn_294253_TU7?4
-?*
(?%
inputs?????????7J 
? " ??????????5H@?
F__inference_conv2d_140_layer_call_and_return_conditional_losses_294392lcd7?4
-?*
(?%
inputs?????????5H@
? "-?*
#? 
0?????????3F@
? ?
+__inference_conv2d_140_layer_call_fn_294401_cd7?4
-?*
(?%
inputs?????????5H@
? " ??????????3F@?
F__inference_conv2d_141_layer_call_and_return_conditional_losses_294540lrs7?4
-?*
(?%
inputs?????????3F@
? "-?*
#? 
0?????????#@
? ?
+__inference_conv2d_141_layer_call_fn_294549_rs7?4
-?*
(?%
inputs?????????3F@
? " ??????????#@?
F__inference_conv2d_142_layer_call_and_return_conditional_losses_294715o??7?4
-?*
(?%
inputs?????????@
? ".?+
$?!
0??????????
? ?
+__inference_conv2d_142_layer_call_fn_294724b??7?4
-?*
(?%
inputs?????????@
? "!????????????
F__inference_conv2d_143_layer_call_and_return_conditional_losses_294863p??8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0?????????	?
? ?
+__inference_conv2d_143_layer_call_fn_294872c??8?5
.?+
)?&
inputs??????????
? "!??????????	??
F__inference_conv2d_144_layer_call_and_return_conditional_losses_295011p??8?5
.?+
)?&
inputs?????????	?
? ".?+
$?!
0??????????
? ?
+__inference_conv2d_144_layer_call_fn_295020c??8?5
.?+
)?&
inputs?????????	?
? "!????????????
D__inference_dense_26_layer_call_and_return_conditional_losses_295224`??0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
)__inference_dense_26_layer_call_fn_295233S??0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_27_layer_call_and_return_conditional_losses_295244`??0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
)__inference_dense_27_layer_call_fn_295253S??0?-
&?#
!?
inputs??????????
? "????????????
D__inference_dense_28_layer_call_and_return_conditional_losses_295264_??0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????>
? 
)__inference_dense_28_layer_call_fn_295273R??0?-
&?#
!?
inputs??????????
? "??????????>?
E__inference_dropout_1_layer_call_and_return_conditional_losses_294689l;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
E__inference_dropout_1_layer_call_and_return_conditional_losses_294694l;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
*__inference_dropout_1_layer_call_fn_294699_;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
*__inference_dropout_1_layer_call_fn_294704_;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
E__inference_dropout_2_layer_call_and_return_conditional_losses_295160n<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
E__inference_dropout_2_layer_call_and_return_conditional_losses_295165n<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
*__inference_dropout_2_layer_call_fn_295170a<?9
2?/
)?&
inputs??????????
p
? "!????????????
*__inference_dropout_2_layer_call_fn_295175a<?9
2?/
)?&
inputs??????????
p 
? "!????????????
E__inference_dropout_3_layer_call_and_return_conditional_losses_295198^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
E__inference_dropout_3_layer_call_and_return_conditional_losses_295203^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? 
*__inference_dropout_3_layer_call_fn_295208Q4?1
*?'
!?
inputs??????????
p
? "???????????
*__inference_dropout_3_layer_call_fn_295213Q4?1
*?'
!?
inputs??????????
p 
? "????????????
F__inference_flatten_10_layer_call_and_return_conditional_losses_295181b8?5
.?+
)?&
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_flatten_10_layer_call_fn_295186U8?5
.?+
)?&
inputs??????????
? "????????????
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_290467?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_36_layer_call_fn_290473?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_290791?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_37_layer_call_fn_290797?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_291115?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_38_layer_call_fn_291121?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_15_layer_call_and_return_conditional_losses_292214?T#$*+,-239:;<ABHIJKTU[\]^cdjklmrsyz{|????????????????????????K?H
A?>
4?1
conv2d_136_input???????????
p

 
? "%?"
?
0?????????>
? ?
I__inference_sequential_15_layer_call_and_return_conditional_losses_292366?T#$*+,-239:;<ABHIJKTU[\]^cdjklmrsyz{|????????????????????????K?H
A?>
4?1
conv2d_136_input???????????
p 

 
? "%?"
?
0?????????>
? ?
I__inference_sequential_15_layer_call_and_return_conditional_losses_293317?T#$*+,-239:;<ABHIJKTU[\]^cdjklmrsyz{|????????????????????????A?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????>
? ?
I__inference_sequential_15_layer_call_and_return_conditional_losses_293539?T#$*+,-239:;<ABHIJKTU[\]^cdjklmrsyz{|????????????????????????A?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????>
? ?
.__inference_sequential_15_layer_call_fn_292644?T#$*+,-239:;<ABHIJKTU[\]^cdjklmrsyz{|????????????????????????K?H
A?>
4?1
conv2d_136_input???????????
p

 
? "??????????>?
.__inference_sequential_15_layer_call_fn_292921?T#$*+,-239:;<ABHIJKTU[\]^cdjklmrsyz{|????????????????????????K?H
A?>
4?1
conv2d_136_input???????????
p 

 
? "??????????>?
.__inference_sequential_15_layer_call_fn_293664?T#$*+,-239:;<ABHIJKTU[\]^cdjklmrsyz{|????????????????????????A?>
7?4
*?'
inputs???????????
p

 
? "??????????>?
.__inference_sequential_15_layer_call_fn_293789?T#$*+,-239:;<ABHIJKTU[\]^cdjklmrsyz{|????????????????????????A?>
7?4
*?'
inputs???????????
p 

 
? "??????????>?
$__inference_signature_wrapper_293056?T#$*+,-239:;<ABHIJKTU[\]^cdjklmrsyz{|????????????????????????W?T
? 
M?J
H
conv2d_136_input4?1
conv2d_136_input???????????"3?0
.
dense_28"?
dense_28?????????>
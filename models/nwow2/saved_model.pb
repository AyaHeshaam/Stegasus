��+
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
�
DepthwiseConv2dNative

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
;
Elu
features"T
activations"T"
Ttype:
2
�
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
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48��$
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
&batch_normalization_64/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_64/moving_variance/*
dtype0*
shape:*7
shared_name(&batch_normalization_64/moving_variance
�
:batch_normalization_64/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_64/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_64/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_64/moving_mean/*
dtype0*
shape:*3
shared_name$"batch_normalization_64/moving_mean
�
6batch_normalization_64/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_64/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_64/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_64/beta/*
dtype0*
shape:*,
shared_namebatch_normalization_64/beta
�
/batch_normalization_64/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_64/beta*
_output_shapes
:*
dtype0
�
conv2d_44/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_44/bias/*
dtype0*
shape:*
shared_nameconv2d_44/bias
m
"conv2d_44/bias/Read/ReadVariableOpReadVariableOpconv2d_44/bias*
_output_shapes
:*
dtype0
�
conv2d_44/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_44/kernel/*
dtype0*
shape:*!
shared_nameconv2d_44/kernel
}
$conv2d_44/kernel/Read/ReadVariableOpReadVariableOpconv2d_44/kernel*&
_output_shapes
:*
dtype0
�
&batch_normalization_63/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_63/moving_variance/*
dtype0*
shape:*7
shared_name(&batch_normalization_63/moving_variance
�
:batch_normalization_63/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_63/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_63/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_63/moving_mean/*
dtype0*
shape:*3
shared_name$"batch_normalization_63/moving_mean
�
6batch_normalization_63/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_63/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_63/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_63/beta/*
dtype0*
shape:*,
shared_namebatch_normalization_63/beta
�
/batch_normalization_63/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_63/beta*
_output_shapes
:*
dtype0
�
conv2d_43/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_43/bias/*
dtype0*
shape:*
shared_nameconv2d_43/bias
m
"conv2d_43/bias/Read/ReadVariableOpReadVariableOpconv2d_43/bias*
_output_shapes
:*
dtype0
�
conv2d_43/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_43/kernel/*
dtype0*
shape:<*!
shared_nameconv2d_43/kernel
}
$conv2d_43/kernel/Read/ReadVariableOpReadVariableOpconv2d_43/kernel*&
_output_shapes
:<*
dtype0
�
&batch_normalization_62/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_62/moving_variance/*
dtype0*
shape:<*7
shared_name(&batch_normalization_62/moving_variance
�
:batch_normalization_62/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_62/moving_variance*
_output_shapes
:<*
dtype0
�
"batch_normalization_62/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_62/moving_mean/*
dtype0*
shape:<*3
shared_name$"batch_normalization_62/moving_mean
�
6batch_normalization_62/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_62/moving_mean*
_output_shapes
:<*
dtype0
�
batch_normalization_62/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_62/beta/*
dtype0*
shape:<*,
shared_namebatch_normalization_62/beta
�
/batch_normalization_62/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_62/beta*
_output_shapes
:<*
dtype0
�
conv2d_42/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_42/bias/*
dtype0*
shape:<*
shared_nameconv2d_42/bias
m
"conv2d_42/bias/Read/ReadVariableOpReadVariableOpconv2d_42/bias*
_output_shapes
:<*
dtype0
�
conv2d_42/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_42/kernel/*
dtype0*
shape:<<*!
shared_nameconv2d_42/kernel
}
$conv2d_42/kernel/Read/ReadVariableOpReadVariableOpconv2d_42/kernel*&
_output_shapes
:<<*
dtype0
�
&batch_normalization_61/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_61/moving_variance/*
dtype0*
shape:<*7
shared_name(&batch_normalization_61/moving_variance
�
:batch_normalization_61/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_61/moving_variance*
_output_shapes
:<*
dtype0
�
"batch_normalization_61/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_61/moving_mean/*
dtype0*
shape:<*3
shared_name$"batch_normalization_61/moving_mean
�
6batch_normalization_61/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_61/moving_mean*
_output_shapes
:<*
dtype0
�
batch_normalization_61/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_61/beta/*
dtype0*
shape:<*,
shared_namebatch_normalization_61/beta
�
/batch_normalization_61/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_61/beta*
_output_shapes
:<*
dtype0
�
conv2d_41/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_41/bias/*
dtype0*
shape:<*
shared_nameconv2d_41/bias
m
"conv2d_41/bias/Read/ReadVariableOpReadVariableOpconv2d_41/bias*
_output_shapes
:<*
dtype0
�
conv2d_41/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_41/kernel/*
dtype0*
shape:<<*!
shared_nameconv2d_41/kernel
}
$conv2d_41/kernel/Read/ReadVariableOpReadVariableOpconv2d_41/kernel*&
_output_shapes
:<<*
dtype0
�
&batch_normalization_60/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_60/moving_variance/*
dtype0*
shape:<*7
shared_name(&batch_normalization_60/moving_variance
�
:batch_normalization_60/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_60/moving_variance*
_output_shapes
:<*
dtype0
�
"batch_normalization_60/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_60/moving_mean/*
dtype0*
shape:<*3
shared_name$"batch_normalization_60/moving_mean
�
6batch_normalization_60/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_60/moving_mean*
_output_shapes
:<*
dtype0
�
batch_normalization_60/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_60/beta/*
dtype0*
shape:<*,
shared_namebatch_normalization_60/beta
�
/batch_normalization_60/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_60/beta*
_output_shapes
:<*
dtype0
�
conv2d_40/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_40/bias/*
dtype0*
shape:<*
shared_nameconv2d_40/bias
m
"conv2d_40/bias/Read/ReadVariableOpReadVariableOpconv2d_40/bias*
_output_shapes
:<*
dtype0
�
conv2d_40/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_40/kernel/*
dtype0*
shape:<<*!
shared_nameconv2d_40/kernel
}
$conv2d_40/kernel/Read/ReadVariableOpReadVariableOpconv2d_40/kernel*&
_output_shapes
:<<*
dtype0
�
&batch_normalization_59/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_59/moving_variance/*
dtype0*
shape:<*7
shared_name(&batch_normalization_59/moving_variance
�
:batch_normalization_59/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_59/moving_variance*
_output_shapes
:<*
dtype0
�
"batch_normalization_59/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_59/moving_mean/*
dtype0*
shape:<*3
shared_name$"batch_normalization_59/moving_mean
�
6batch_normalization_59/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_59/moving_mean*
_output_shapes
:<*
dtype0
�
batch_normalization_59/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_59/beta/*
dtype0*
shape:<*,
shared_namebatch_normalization_59/beta
�
/batch_normalization_59/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_59/beta*
_output_shapes
:<*
dtype0
�
separable_conv2d_19/biasVarHandleOp*
_output_shapes
: *)

debug_nameseparable_conv2d_19/bias/*
dtype0*
shape:<*)
shared_nameseparable_conv2d_19/bias
�
,separable_conv2d_19/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_19/bias*
_output_shapes
:<*
dtype0
�
$separable_conv2d_19/pointwise_kernelVarHandleOp*
_output_shapes
: *5

debug_name'%separable_conv2d_19/pointwise_kernel/*
dtype0*
shape:�<*5
shared_name&$separable_conv2d_19/pointwise_kernel
�
8separable_conv2d_19/pointwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_19/pointwise_kernel*'
_output_shapes
:�<*
dtype0
�
$separable_conv2d_19/depthwise_kernelVarHandleOp*
_output_shapes
: *5

debug_name'%separable_conv2d_19/depthwise_kernel/*
dtype0*
shape:<*5
shared_name&$separable_conv2d_19/depthwise_kernel
�
8separable_conv2d_19/depthwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_19/depthwise_kernel*&
_output_shapes
:<*
dtype0
�
depthwise_conv2d_19/biasVarHandleOp*
_output_shapes
: *)

debug_namedepthwise_conv2d_19/bias/*
dtype0*
shape:<*)
shared_namedepthwise_conv2d_19/bias
�
,depthwise_conv2d_19/bias/Read/ReadVariableOpReadVariableOpdepthwise_conv2d_19/bias*
_output_shapes
:<*
dtype0
�
$depthwise_conv2d_19/depthwise_kernelVarHandleOp*
_output_shapes
: *5

debug_name'%depthwise_conv2d_19/depthwise_kernel/*
dtype0*
shape:<*5
shared_name&$depthwise_conv2d_19/depthwise_kernel
�
8depthwise_conv2d_19/depthwise_kernel/Read/ReadVariableOpReadVariableOp$depthwise_conv2d_19/depthwise_kernel*&
_output_shapes
:<*
dtype0
�
&batch_normalization_58/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_58/moving_variance/*
dtype0*
shape:<*7
shared_name(&batch_normalization_58/moving_variance
�
:batch_normalization_58/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_58/moving_variance*
_output_shapes
:<*
dtype0
�
"batch_normalization_58/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_58/moving_mean/*
dtype0*
shape:<*3
shared_name$"batch_normalization_58/moving_mean
�
6batch_normalization_58/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_58/moving_mean*
_output_shapes
:<*
dtype0
�
batch_normalization_58/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_58/beta/*
dtype0*
shape:<*,
shared_namebatch_normalization_58/beta
�
/batch_normalization_58/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_58/beta*
_output_shapes
:<*
dtype0
�
separable_conv2d_18/biasVarHandleOp*
_output_shapes
: *)

debug_nameseparable_conv2d_18/bias/*
dtype0*
shape:<*)
shared_nameseparable_conv2d_18/bias
�
,separable_conv2d_18/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_18/bias*
_output_shapes
:<*
dtype0
�
$separable_conv2d_18/pointwise_kernelVarHandleOp*
_output_shapes
: *5

debug_name'%separable_conv2d_18/pointwise_kernel/*
dtype0*
shape:�<*5
shared_name&$separable_conv2d_18/pointwise_kernel
�
8separable_conv2d_18/pointwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_18/pointwise_kernel*'
_output_shapes
:�<*
dtype0
�
$separable_conv2d_18/depthwise_kernelVarHandleOp*
_output_shapes
: *5

debug_name'%separable_conv2d_18/depthwise_kernel/*
dtype0*
shape:<*5
shared_name&$separable_conv2d_18/depthwise_kernel
�
8separable_conv2d_18/depthwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_18/depthwise_kernel*&
_output_shapes
:<*
dtype0
�
depthwise_conv2d_18/biasVarHandleOp*
_output_shapes
: *)

debug_namedepthwise_conv2d_18/bias/*
dtype0*
shape:<*)
shared_namedepthwise_conv2d_18/bias
�
,depthwise_conv2d_18/bias/Read/ReadVariableOpReadVariableOpdepthwise_conv2d_18/bias*
_output_shapes
:<*
dtype0
�
$depthwise_conv2d_18/depthwise_kernelVarHandleOp*
_output_shapes
: *5

debug_name'%depthwise_conv2d_18/depthwise_kernel/*
dtype0*
shape:<*5
shared_name&$depthwise_conv2d_18/depthwise_kernel
�
8depthwise_conv2d_18/depthwise_kernel/Read/ReadVariableOpReadVariableOp$depthwise_conv2d_18/depthwise_kernel*&
_output_shapes
:<*
dtype0
�
&batch_normalization_57/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_57/moving_variance/*
dtype0*
shape:<*7
shared_name(&batch_normalization_57/moving_variance
�
:batch_normalization_57/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_57/moving_variance*
_output_shapes
:<*
dtype0
�
"batch_normalization_57/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_57/moving_mean/*
dtype0*
shape:<*3
shared_name$"batch_normalization_57/moving_mean
�
6batch_normalization_57/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_57/moving_mean*
_output_shapes
:<*
dtype0
�
batch_normalization_57/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_57/beta/*
dtype0*
shape:<*,
shared_namebatch_normalization_57/beta
�
/batch_normalization_57/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_57/beta*
_output_shapes
:<*
dtype0
�
conv2d_39/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_39/bias/*
dtype0*
shape:<*
shared_nameconv2d_39/bias
m
"conv2d_39/bias/Read/ReadVariableOpReadVariableOpconv2d_39/bias*
_output_shapes
:<*
dtype0
�
conv2d_39/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_39/kernel/*
dtype0*
shape:<*!
shared_nameconv2d_39/kernel
}
$conv2d_39/kernel/Read/ReadVariableOpReadVariableOpconv2d_39/kernel*&
_output_shapes
:<*
dtype0
�
&batch_normalization_56/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_56/moving_variance/*
dtype0*
shape:*7
shared_name(&batch_normalization_56/moving_variance
�
:batch_normalization_56/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_56/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_56/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_56/moving_mean/*
dtype0*
shape:*3
shared_name$"batch_normalization_56/moving_mean
�
6batch_normalization_56/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_56/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_56/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_56/beta/*
dtype0*
shape:*,
shared_namebatch_normalization_56/beta
�
/batch_normalization_56/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_56/beta*
_output_shapes
:*
dtype0
�
conv2d_38/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_38/bias/*
dtype0*
shape:*
shared_nameconv2d_38/bias
m
"conv2d_38/bias/Read/ReadVariableOpReadVariableOpconv2d_38/bias*
_output_shapes
:*
dtype0
�
conv2d_38/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_38/kernel/*
dtype0*
shape:*!
shared_nameconv2d_38/kernel
}
$conv2d_38/kernel/Read/ReadVariableOpReadVariableOpconv2d_38/kernel*&
_output_shapes
:*
dtype0
�
&batch_normalization_55/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_55/moving_variance/*
dtype0*
shape:*7
shared_name(&batch_normalization_55/moving_variance
�
:batch_normalization_55/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_55/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_55/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_55/moving_mean/*
dtype0*
shape:*3
shared_name$"batch_normalization_55/moving_mean
�
6batch_normalization_55/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_55/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_55/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_55/beta/*
dtype0*
shape:*,
shared_namebatch_normalization_55/beta
�
/batch_normalization_55/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_55/beta*
_output_shapes
:*
dtype0
�
conv2d_37/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_37/bias/*
dtype0*
shape:*
shared_nameconv2d_37/bias
m
"conv2d_37/bias/Read/ReadVariableOpReadVariableOpconv2d_37/bias*
_output_shapes
:*
dtype0
�
conv2d_37/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_37/kernel/*
dtype0*
shape:*!
shared_nameconv2d_37/kernel
}
$conv2d_37/kernel/Read/ReadVariableOpReadVariableOpconv2d_37/kernel*&
_output_shapes
:*
dtype0
�
&batch_normalization_54/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_54/moving_variance/*
dtype0*
shape:*7
shared_name(&batch_normalization_54/moving_variance
�
:batch_normalization_54/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_54/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_54/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_54/moving_mean/*
dtype0*
shape:*3
shared_name$"batch_normalization_54/moving_mean
�
6batch_normalization_54/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_54/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_54/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_54/beta/*
dtype0*
shape:*,
shared_namebatch_normalization_54/beta
�
/batch_normalization_54/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_54/beta*
_output_shapes
:*
dtype0
�
separable_conv2d_17/biasVarHandleOp*
_output_shapes
: *)

debug_nameseparable_conv2d_17/bias/*
dtype0*
shape:*)
shared_nameseparable_conv2d_17/bias
�
,separable_conv2d_17/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_17/bias*
_output_shapes
:*
dtype0
�
$separable_conv2d_17/pointwise_kernelVarHandleOp*
_output_shapes
: *5

debug_name'%separable_conv2d_17/pointwise_kernel/*
dtype0*
shape:Z*5
shared_name&$separable_conv2d_17/pointwise_kernel
�
8separable_conv2d_17/pointwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_17/pointwise_kernel*&
_output_shapes
:Z*
dtype0
�
$separable_conv2d_17/depthwise_kernelVarHandleOp*
_output_shapes
: *5

debug_name'%separable_conv2d_17/depthwise_kernel/*
dtype0*
shape:*5
shared_name&$separable_conv2d_17/depthwise_kernel
�
8separable_conv2d_17/depthwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_17/depthwise_kernel*&
_output_shapes
:*
dtype0
�
depthwise_conv2d_17/biasVarHandleOp*
_output_shapes
: *)

debug_namedepthwise_conv2d_17/bias/*
dtype0*
shape:*)
shared_namedepthwise_conv2d_17/bias
�
,depthwise_conv2d_17/bias/Read/ReadVariableOpReadVariableOpdepthwise_conv2d_17/bias*
_output_shapes
:*
dtype0
�
$depthwise_conv2d_17/depthwise_kernelVarHandleOp*
_output_shapes
: *5

debug_name'%depthwise_conv2d_17/depthwise_kernel/*
dtype0*
shape:*5
shared_name&$depthwise_conv2d_17/depthwise_kernel
�
8depthwise_conv2d_17/depthwise_kernel/Read/ReadVariableOpReadVariableOp$depthwise_conv2d_17/depthwise_kernel*&
_output_shapes
:*
dtype0
�
&batch_normalization_53/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_53/moving_variance/*
dtype0*
shape:*7
shared_name(&batch_normalization_53/moving_variance
�
:batch_normalization_53/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_53/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_53/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_53/moving_mean/*
dtype0*
shape:*3
shared_name$"batch_normalization_53/moving_mean
�
6batch_normalization_53/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_53/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_53/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_53/beta/*
dtype0*
shape:*,
shared_namebatch_normalization_53/beta
�
/batch_normalization_53/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_53/beta*
_output_shapes
:*
dtype0
�
separable_conv2d_16/biasVarHandleOp*
_output_shapes
: *)

debug_nameseparable_conv2d_16/bias/*
dtype0*
shape:*)
shared_nameseparable_conv2d_16/bias
�
,separable_conv2d_16/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_16/bias*
_output_shapes
:*
dtype0
�
$separable_conv2d_16/pointwise_kernelVarHandleOp*
_output_shapes
: *5

debug_name'%separable_conv2d_16/pointwise_kernel/*
dtype0*
shape:Z*5
shared_name&$separable_conv2d_16/pointwise_kernel
�
8separable_conv2d_16/pointwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_16/pointwise_kernel*&
_output_shapes
:Z*
dtype0
�
$separable_conv2d_16/depthwise_kernelVarHandleOp*
_output_shapes
: *5

debug_name'%separable_conv2d_16/depthwise_kernel/*
dtype0*
shape:*5
shared_name&$separable_conv2d_16/depthwise_kernel
�
8separable_conv2d_16/depthwise_kernel/Read/ReadVariableOpReadVariableOp$separable_conv2d_16/depthwise_kernel*&
_output_shapes
:*
dtype0
�
depthwise_conv2d_16/biasVarHandleOp*
_output_shapes
: *)

debug_namedepthwise_conv2d_16/bias/*
dtype0*
shape:*)
shared_namedepthwise_conv2d_16/bias
�
,depthwise_conv2d_16/bias/Read/ReadVariableOpReadVariableOpdepthwise_conv2d_16/bias*
_output_shapes
:*
dtype0
�
$depthwise_conv2d_16/depthwise_kernelVarHandleOp*
_output_shapes
: *5

debug_name'%depthwise_conv2d_16/depthwise_kernel/*
dtype0*
shape:*5
shared_name&$depthwise_conv2d_16/depthwise_kernel
�
8depthwise_conv2d_16/depthwise_kernel/Read/ReadVariableOpReadVariableOp$depthwise_conv2d_16/depthwise_kernel*&
_output_shapes
:*
dtype0
�
&batch_normalization_52/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_52/moving_variance/*
dtype0*
shape:*7
shared_name(&batch_normalization_52/moving_variance
�
:batch_normalization_52/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_52/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_52/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_52/moving_mean/*
dtype0*
shape:*3
shared_name$"batch_normalization_52/moving_mean
�
6batch_normalization_52/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_52/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_52/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_52/beta/*
dtype0*
shape:*,
shared_namebatch_normalization_52/beta
�
/batch_normalization_52/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_52/beta*
_output_shapes
:*
dtype0
�
conv2d_36/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_36/bias/*
dtype0*
shape:*
shared_nameconv2d_36/bias
m
"conv2d_36/bias/Read/ReadVariableOpReadVariableOpconv2d_36/bias*
_output_shapes
:*
dtype0
�
conv2d_36/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_36/kernel/*
dtype0*
shape:*!
shared_nameconv2d_36/kernel
}
$conv2d_36/kernel/Read/ReadVariableOpReadVariableOpconv2d_36/kernel*&
_output_shapes
:*
dtype0
�
serving_default_input_1Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d_36/kernelconv2d_36/biasbatch_normalization_52/beta"batch_normalization_52/moving_mean&batch_normalization_52/moving_variance$depthwise_conv2d_16/depthwise_kerneldepthwise_conv2d_16/bias$separable_conv2d_16/depthwise_kernel$separable_conv2d_16/pointwise_kernelseparable_conv2d_16/biasbatch_normalization_53/beta"batch_normalization_53/moving_mean&batch_normalization_53/moving_variance$depthwise_conv2d_17/depthwise_kerneldepthwise_conv2d_17/bias$separable_conv2d_17/depthwise_kernel$separable_conv2d_17/pointwise_kernelseparable_conv2d_17/biasbatch_normalization_54/beta"batch_normalization_54/moving_mean&batch_normalization_54/moving_varianceconv2d_37/kernelconv2d_37/biasbatch_normalization_55/beta"batch_normalization_55/moving_mean&batch_normalization_55/moving_varianceconv2d_38/kernelconv2d_38/biasbatch_normalization_56/beta"batch_normalization_56/moving_mean&batch_normalization_56/moving_varianceconv2d_39/kernelconv2d_39/biasbatch_normalization_57/beta"batch_normalization_57/moving_mean&batch_normalization_57/moving_variance$depthwise_conv2d_18/depthwise_kerneldepthwise_conv2d_18/bias$separable_conv2d_18/depthwise_kernel$separable_conv2d_18/pointwise_kernelseparable_conv2d_18/biasbatch_normalization_58/beta"batch_normalization_58/moving_mean&batch_normalization_58/moving_variance$depthwise_conv2d_19/depthwise_kerneldepthwise_conv2d_19/bias$separable_conv2d_19/depthwise_kernel$separable_conv2d_19/pointwise_kernelseparable_conv2d_19/biasbatch_normalization_59/beta"batch_normalization_59/moving_mean&batch_normalization_59/moving_varianceconv2d_40/kernelconv2d_40/biasbatch_normalization_60/beta"batch_normalization_60/moving_mean&batch_normalization_60/moving_varianceconv2d_41/kernelconv2d_41/biasbatch_normalization_61/beta"batch_normalization_61/moving_mean&batch_normalization_61/moving_varianceconv2d_42/kernelconv2d_42/biasbatch_normalization_62/beta"batch_normalization_62/moving_mean&batch_normalization_62/moving_varianceconv2d_43/kernelconv2d_43/biasbatch_normalization_63/beta"batch_normalization_63/moving_mean&batch_normalization_63/moving_varianceconv2d_44/kernelconv2d_44/biasbatch_normalization_64/beta"batch_normalization_64/moving_mean&batch_normalization_64/moving_variance*Y
TinR
P2N*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*o
_read_only_resource_inputsQ
OM	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLM*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_37194

NoOpNoOp
Ɲ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B� B�
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer-9
layer_with_weights-8
layer-10
layer_with_weights-9
layer-11
layer_with_weights-10
layer-12
layer_with_weights-11
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
layer_with_weights-18
layer-21
layer_with_weights-19
layer-22
layer-23
layer_with_weights-20
layer-24
layer_with_weights-21
layer-25
layer-26
layer_with_weights-22
layer-27
layer_with_weights-23
layer-28
layer-29
layer_with_weights-24
layer-30
 layer_with_weights-25
 layer-31
!layer-32
"layer_with_weights-26
"layer-33
#layer_with_weights-27
#layer-34
$layer_with_weights-28
$layer-35
%layer_with_weights-29
%layer-36
&layer-37
'layer-38
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses
._default_save_signature
/	optimizer
0
signatures*
* 
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op*
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
@axis
Abeta
Bmoving_mean
Cmoving_variance*
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
Jdepthwise_kernel
Kbias
 L_jit_compiled_convolution_op*
�
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
Sdepthwise_kernel
Tpointwise_kernel
Ubias
 V_jit_compiled_convolution_op*
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses
]axis
^beta
_moving_mean
`moving_variance*
�
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses
gdepthwise_kernel
hbias
 i_jit_compiled_convolution_op*
�
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses
pdepthwise_kernel
qpointwise_kernel
rbias
 s_jit_compiled_convolution_op*
�
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses
zaxis
{beta
|moving_mean
}moving_variance*
�
~	variables
trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
�pointwise_kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
�pointwise_kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
70
81
A2
B3
C4
J5
K6
S7
T8
U9
^10
_11
`12
g13
h14
p15
q16
r17
{18
|19
}20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
�70
�71
�72
�73
�74
�75
�76*
�
A0
J1
K2
S3
T4
U5
^6
g7
h8
p9
q10
r11
{12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
._default_save_signature
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 

�serving_default* 

70
81*
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_36/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_36/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

A0
B1
C2*

A0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ic
VARIABLE_VALUEbatch_normalization_52/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_52/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_52/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

J0
K1*

J0
K1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
~x
VARIABLE_VALUE$depthwise_conv2d_16/depthwise_kernel@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEdepthwise_conv2d_16/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

S0
T1
U2*

S0
T1
U2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
~x
VARIABLE_VALUE$separable_conv2d_16/depthwise_kernel@layer_with_weights-3/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE$separable_conv2d_16/pointwise_kernel@layer_with_weights-3/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEseparable_conv2d_16/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

^0
_1
`2*

^0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ic
VARIABLE_VALUEbatch_normalization_53/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_53/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_53/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

g0
h1*

g0
h1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
~x
VARIABLE_VALUE$depthwise_conv2d_17/depthwise_kernel@layer_with_weights-5/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEdepthwise_conv2d_17/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

p0
q1
r2*

p0
q1
r2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
~x
VARIABLE_VALUE$separable_conv2d_17/depthwise_kernel@layer_with_weights-6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE$separable_conv2d_17/pointwise_kernel@layer_with_weights-6/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEseparable_conv2d_17/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

{0
|1
}2*

{0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ic
VARIABLE_VALUEbatch_normalization_54/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_54/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_54/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
~	variables
trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_37/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_37/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1
�2*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ic
VARIABLE_VALUEbatch_normalization_55/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_55/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_55/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_38/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_38/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1
�2*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_56/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_56/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE&batch_normalization_56/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_39/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_39/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1
�2*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_57/beta5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_57/moving_mean<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE&batch_normalization_57/moving_variance@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
y
VARIABLE_VALUE$depthwise_conv2d_18/depthwise_kernelAlayer_with_weights-14/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEdepthwise_conv2d_18/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1
�2*

�0
�1
�2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
y
VARIABLE_VALUE$separable_conv2d_18/depthwise_kernelAlayer_with_weights-15/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE$separable_conv2d_18/pointwise_kernelAlayer_with_weights-15/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEseparable_conv2d_18/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1
�2*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_58/beta5layer_with_weights-16/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_58/moving_mean<layer_with_weights-16/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE&batch_normalization_58/moving_variance@layer_with_weights-16/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
y
VARIABLE_VALUE$depthwise_conv2d_19/depthwise_kernelAlayer_with_weights-17/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEdepthwise_conv2d_19/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1
�2*

�0
�1
�2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
y
VARIABLE_VALUE$separable_conv2d_19/depthwise_kernelAlayer_with_weights-18/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE$separable_conv2d_19/pointwise_kernelAlayer_with_weights-18/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEseparable_conv2d_19/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1
�2*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_59/beta5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_59/moving_mean<layer_with_weights-19/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE&batch_normalization_59/moving_variance@layer_with_weights-19/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_40/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_40/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1
�2*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_60/beta5layer_with_weights-21/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_60/moving_mean<layer_with_weights-21/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE&batch_normalization_60/moving_variance@layer_with_weights-21/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_41/kernel7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_41/bias5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1
�2*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_61/beta5layer_with_weights-23/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_61/moving_mean<layer_with_weights-23/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE&batch_normalization_61/moving_variance@layer_with_weights-23/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_42/kernel7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_42/bias5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1
�2*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_62/beta5layer_with_weights-25/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_62/moving_mean<layer_with_weights-25/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE&batch_normalization_62/moving_variance@layer_with_weights-25/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_43/kernel7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_43/bias5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1
�2*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_63/beta5layer_with_weights-27/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_63/moving_mean<layer_with_weights-27/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE&batch_normalization_63/moving_variance@layer_with_weights-27/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_44/kernel7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_44/bias5layer_with_weights-28/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1
�2*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_64/beta5layer_with_weights-29/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_64/moving_mean<layer_with_weights-29/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE&batch_normalization_64/moving_variance@layer_with_weights-29/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
�
70
81
B2
C3
_4
`5
|6
}7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27*
�
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
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38*

�0
�1*
* 
* 
* 
* 
* 
* 
* 

70
81*
* 
* 
* 
* 
* 
* 

B0
C1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

_0
`1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

|0
}1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_36/kernelconv2d_36/biasbatch_normalization_52/beta"batch_normalization_52/moving_mean&batch_normalization_52/moving_variance$depthwise_conv2d_16/depthwise_kerneldepthwise_conv2d_16/bias$separable_conv2d_16/depthwise_kernel$separable_conv2d_16/pointwise_kernelseparable_conv2d_16/biasbatch_normalization_53/beta"batch_normalization_53/moving_mean&batch_normalization_53/moving_variance$depthwise_conv2d_17/depthwise_kerneldepthwise_conv2d_17/bias$separable_conv2d_17/depthwise_kernel$separable_conv2d_17/pointwise_kernelseparable_conv2d_17/biasbatch_normalization_54/beta"batch_normalization_54/moving_mean&batch_normalization_54/moving_varianceconv2d_37/kernelconv2d_37/biasbatch_normalization_55/beta"batch_normalization_55/moving_mean&batch_normalization_55/moving_varianceconv2d_38/kernelconv2d_38/biasbatch_normalization_56/beta"batch_normalization_56/moving_mean&batch_normalization_56/moving_varianceconv2d_39/kernelconv2d_39/biasbatch_normalization_57/beta"batch_normalization_57/moving_mean&batch_normalization_57/moving_variance$depthwise_conv2d_18/depthwise_kerneldepthwise_conv2d_18/bias$separable_conv2d_18/depthwise_kernel$separable_conv2d_18/pointwise_kernelseparable_conv2d_18/biasbatch_normalization_58/beta"batch_normalization_58/moving_mean&batch_normalization_58/moving_variance$depthwise_conv2d_19/depthwise_kerneldepthwise_conv2d_19/bias$separable_conv2d_19/depthwise_kernel$separable_conv2d_19/pointwise_kernelseparable_conv2d_19/biasbatch_normalization_59/beta"batch_normalization_59/moving_mean&batch_normalization_59/moving_varianceconv2d_40/kernelconv2d_40/biasbatch_normalization_60/beta"batch_normalization_60/moving_mean&batch_normalization_60/moving_varianceconv2d_41/kernelconv2d_41/biasbatch_normalization_61/beta"batch_normalization_61/moving_mean&batch_normalization_61/moving_varianceconv2d_42/kernelconv2d_42/biasbatch_normalization_62/beta"batch_normalization_62/moving_mean&batch_normalization_62/moving_varianceconv2d_43/kernelconv2d_43/biasbatch_normalization_63/beta"batch_normalization_63/moving_mean&batch_normalization_63/moving_varianceconv2d_44/kernelconv2d_44/biasbatch_normalization_64/beta"batch_normalization_64/moving_mean&batch_normalization_64/moving_variancetotal_1count_1totalcountConst*^
TinW
U2S*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_38889
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_36/kernelconv2d_36/biasbatch_normalization_52/beta"batch_normalization_52/moving_mean&batch_normalization_52/moving_variance$depthwise_conv2d_16/depthwise_kerneldepthwise_conv2d_16/bias$separable_conv2d_16/depthwise_kernel$separable_conv2d_16/pointwise_kernelseparable_conv2d_16/biasbatch_normalization_53/beta"batch_normalization_53/moving_mean&batch_normalization_53/moving_variance$depthwise_conv2d_17/depthwise_kerneldepthwise_conv2d_17/bias$separable_conv2d_17/depthwise_kernel$separable_conv2d_17/pointwise_kernelseparable_conv2d_17/biasbatch_normalization_54/beta"batch_normalization_54/moving_mean&batch_normalization_54/moving_varianceconv2d_37/kernelconv2d_37/biasbatch_normalization_55/beta"batch_normalization_55/moving_mean&batch_normalization_55/moving_varianceconv2d_38/kernelconv2d_38/biasbatch_normalization_56/beta"batch_normalization_56/moving_mean&batch_normalization_56/moving_varianceconv2d_39/kernelconv2d_39/biasbatch_normalization_57/beta"batch_normalization_57/moving_mean&batch_normalization_57/moving_variance$depthwise_conv2d_18/depthwise_kerneldepthwise_conv2d_18/bias$separable_conv2d_18/depthwise_kernel$separable_conv2d_18/pointwise_kernelseparable_conv2d_18/biasbatch_normalization_58/beta"batch_normalization_58/moving_mean&batch_normalization_58/moving_variance$depthwise_conv2d_19/depthwise_kerneldepthwise_conv2d_19/bias$separable_conv2d_19/depthwise_kernel$separable_conv2d_19/pointwise_kernelseparable_conv2d_19/biasbatch_normalization_59/beta"batch_normalization_59/moving_mean&batch_normalization_59/moving_varianceconv2d_40/kernelconv2d_40/biasbatch_normalization_60/beta"batch_normalization_60/moving_mean&batch_normalization_60/moving_varianceconv2d_41/kernelconv2d_41/biasbatch_normalization_61/beta"batch_normalization_61/moving_mean&batch_normalization_61/moving_varianceconv2d_42/kernelconv2d_42/biasbatch_normalization_62/beta"batch_normalization_62/moving_mean&batch_normalization_62/moving_varianceconv2d_43/kernelconv2d_43/biasbatch_normalization_63/beta"batch_normalization_63/moving_mean&batch_normalization_63/moving_varianceconv2d_44/kernelconv2d_44/biasbatch_normalization_64/beta"batch_normalization_64/moving_mean&batch_normalization_64/moving_variancetotal_1count_1totalcount*]
TinV
T2R*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_39141��
�
�
Q__inference_batch_normalization_53_layer_call_and_return_conditional_losses_37376

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
N__inference_separable_conv2d_17_layer_call_and_return_conditional_losses_35292

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource:Z-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:Z*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������Z*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+���������������������������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������h
EluEluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������z
IdentityIdentityElu:activations:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
3__inference_depthwise_conv2d_16_layer_call_fn_37281

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_depthwise_conv2d_16_layer_call_and_return_conditional_losses_36063y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:%!

_user_specified_name37275:%!

_user_specified_name37277
�
�
N__inference_separable_conv2d_16_layer_call_and_return_conditional_losses_37320

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource:Z-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:Z*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������Z*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+���������������������������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������h
EluEluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������z
IdentityIdentityElu:activations:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
6__inference_batch_normalization_54_layer_call_fn_37435

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_54_layer_call_and_return_conditional_losses_35320�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:%!

_user_specified_name37427:%!

_user_specified_name37429:%!

_user_specified_name37431
�
�
Q__inference_batch_normalization_52_layer_call_and_return_conditional_losses_37272

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
q
U__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_36019

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_54_layer_call_fn_37446

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_54_layer_call_and_return_conditional_losses_35337�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:%!

_user_specified_name37438:%!

_user_specified_name37440:%!

_user_specified_name37442
�9
�
'__inference_model_4_layer_call_fn_36900
input_1!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:#
	unknown_4:
	unknown_5:#
	unknown_6:#
	unknown_7:Z
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:$

unknown_12:

unknown_13:$

unknown_14:$

unknown_15:Z

unknown_16:

unknown_17:

unknown_18:

unknown_19:$

unknown_20:

unknown_21:

unknown_22:

unknown_23:

unknown_24:$

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:$

unknown_30:<

unknown_31:<

unknown_32:<

unknown_33:<

unknown_34:<$

unknown_35:<

unknown_36:<$

unknown_37:<%

unknown_38:�<

unknown_39:<

unknown_40:<

unknown_41:<

unknown_42:<$

unknown_43:<

unknown_44:<$

unknown_45:<%

unknown_46:�<

unknown_47:<

unknown_48:<

unknown_49:<

unknown_50:<$

unknown_51:<<

unknown_52:<

unknown_53:<

unknown_54:<

unknown_55:<$

unknown_56:<<

unknown_57:<

unknown_58:<

unknown_59:<

unknown_60:<$

unknown_61:<<

unknown_62:<

unknown_63:<

unknown_64:<

unknown_65:<$

unknown_66:<

unknown_67:

unknown_68:

unknown_69:

unknown_70:$

unknown_71:

unknown_72:

unknown_73:

unknown_74:

unknown_75:
identity��StatefulPartitionedCall�

StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75*Y
TinR
P2N*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*o
_read_only_resource_inputsQ
OM	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLM*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_4_layer_call_and_return_conditional_losses_36582o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:%!

_user_specified_name36744:%!

_user_specified_name36746:%!

_user_specified_name36748:%!

_user_specified_name36750:%!

_user_specified_name36752:%!

_user_specified_name36754:%!

_user_specified_name36756:%!

_user_specified_name36758:%	!

_user_specified_name36760:%
!

_user_specified_name36762:%!

_user_specified_name36764:%!

_user_specified_name36766:%!

_user_specified_name36768:%!

_user_specified_name36770:%!

_user_specified_name36772:%!

_user_specified_name36774:%!

_user_specified_name36776:%!

_user_specified_name36778:%!

_user_specified_name36780:%!

_user_specified_name36782:%!

_user_specified_name36784:%!

_user_specified_name36786:%!

_user_specified_name36788:%!

_user_specified_name36790:%!

_user_specified_name36792:%!

_user_specified_name36794:%!

_user_specified_name36796:%!

_user_specified_name36798:%!

_user_specified_name36800:%!

_user_specified_name36802:%!

_user_specified_name36804:% !

_user_specified_name36806:%!!

_user_specified_name36808:%"!

_user_specified_name36810:%#!

_user_specified_name36812:%$!

_user_specified_name36814:%%!

_user_specified_name36816:%&!

_user_specified_name36818:%'!

_user_specified_name36820:%(!

_user_specified_name36822:%)!

_user_specified_name36824:%*!

_user_specified_name36826:%+!

_user_specified_name36828:%,!

_user_specified_name36830:%-!

_user_specified_name36832:%.!

_user_specified_name36834:%/!

_user_specified_name36836:%0!

_user_specified_name36838:%1!

_user_specified_name36840:%2!

_user_specified_name36842:%3!

_user_specified_name36844:%4!

_user_specified_name36846:%5!

_user_specified_name36848:%6!

_user_specified_name36850:%7!

_user_specified_name36852:%8!

_user_specified_name36854:%9!

_user_specified_name36856:%:!

_user_specified_name36858:%;!

_user_specified_name36860:%<!

_user_specified_name36862:%=!

_user_specified_name36864:%>!

_user_specified_name36866:%?!

_user_specified_name36868:%@!

_user_specified_name36870:%A!

_user_specified_name36872:%B!

_user_specified_name36874:%C!

_user_specified_name36876:%D!

_user_specified_name36878:%E!

_user_specified_name36880:%F!

_user_specified_name36882:%G!

_user_specified_name36884:%H!

_user_specified_name36886:%I!

_user_specified_name36888:%J!

_user_specified_name36890:%K!

_user_specified_name36892:%L!

_user_specified_name36894:%M!

_user_specified_name36896
�
�
Q__inference_batch_normalization_52_layer_call_and_return_conditional_losses_35171

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
D__inference_conv2d_36_layer_call_and_return_conditional_losses_37216

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
TanhTanhBiasAdd:output:0*
T0*1
_output_shapes
:�����������J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@`
mulMulTanh:y:0mul/y:output:0*
T0*1
_output_shapes
:�����������`
IdentityIdentitymul:z:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
N__inference_depthwise_conv2d_18_layer_call_and_return_conditional_losses_36202

inputs;
!depthwise_readvariableop_resource:<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�depthwise/ReadVariableOp�
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:<*
dtype0h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      <      h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
BiasAddBiasAdddepthwise:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:�����������<V
NoOpNoOp^BiasAdd/ReadVariableOp^depthwise/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:Y U
1
_output_shapes
:�����������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
D__inference_conv2d_41_layer_call_and_return_conditional_losses_36294

inputs8
conv2d_readvariableop_resource:<<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<<*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@<*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@<V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@<h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@<S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
D__inference_conv2d_40_layer_call_and_return_conditional_losses_36270

inputs8
conv2d_readvariableop_resource:<<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<<*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������<j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������<S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_59_layer_call_and_return_conditional_losses_37938

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_58_layer_call_and_return_conditional_losses_37834

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_55_layer_call_and_return_conditional_losses_37568

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
)__inference_conv2d_41_layer_call_fn_38045

inputs!
unknown:<<
	unknown_0:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_41_layer_call_and_return_conditional_losses_36294w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@<: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@<
 
_user_specified_nameinputs:%!

_user_specified_name38039:%!

_user_specified_name38041
�
�
N__inference_separable_conv2d_17_layer_call_and_return_conditional_losses_37424

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource:Z-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:Z*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������Z*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+���������������������������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������h
EluEluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������z
IdentityIdentityElu:activations:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
3__inference_separable_conv2d_19_layer_call_fn_37866

inputs!
unknown:<$
	unknown_0:�<
	unknown_1:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_separable_conv2d_19_layer_call_and_return_conditional_losses_35636�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:%!

_user_specified_name37858:%!

_user_specified_name37860:%!

_user_specified_name37862
�
�
Q__inference_batch_normalization_56_layer_call_and_return_conditional_losses_35432

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
3__inference_separable_conv2d_17_layer_call_fn_37408

inputs!
unknown:#
	unknown_0:Z
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_separable_conv2d_17_layer_call_and_return_conditional_losses_35292�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:%!

_user_specified_name37400:%!

_user_specified_name37402:%!

_user_specified_name37404
�
�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_35918

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_58_layer_call_and_return_conditional_losses_35581

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
D__inference_conv2d_42_layer_call_and_return_conditional_losses_38142

inputs8
conv2d_readvariableop_resource:<<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<<*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  <*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  <V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:���������  <h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:���������  <S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  <: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  <
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
6__inference_batch_normalization_61_layer_call_fn_38067

inputs
unknown:<
	unknown_0:<
	unknown_1:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������<*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_35786�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:%!

_user_specified_name38059:%!

_user_specified_name38061:%!

_user_specified_name38063
�
�
3__inference_depthwise_conv2d_17_layer_call_fn_37385

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_depthwise_conv2d_17_layer_call_and_return_conditional_losses_36094y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:%!

_user_specified_name37379:%!

_user_specified_name37381
�
P
4__inference_average_pooling2d_17_layer_call_fn_38031

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_average_pooling2d_17_layer_call_and_return_conditional_losses_35764�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
3__inference_depthwise_conv2d_18_layer_call_fn_37739

inputs!
unknown:<
	unknown_0:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_depthwise_conv2d_18_layer_call_and_return_conditional_losses_36202y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������<: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������<
 
_user_specified_nameinputs:%!

_user_specified_name37733:%!

_user_specified_name37735
�
l
@__inference_add_8_layer_call_and_return_conditional_losses_37492
inputs_0
inputs_1
identity\
addAddV2inputs_0inputs_1*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::�����������:�����������:[ W
1
_output_shapes
:�����������
"
_user_specified_name
inputs_0:[W
1
_output_shapes
:�����������
"
_user_specified_name
inputs_1
�
�
)__inference_conv2d_42_layer_call_fn_38131

inputs!
unknown:<<
	unknown_0:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  <*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_42_layer_call_and_return_conditional_losses_36318w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  <<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  <: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  <
 
_user_specified_nameinputs:%!

_user_specified_name38125:%!

_user_specified_name38127
�
`
D__inference_softmax_4_layer_call_and_return_conditional_losses_38381

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:���������Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_62_layer_call_fn_38153

inputs
unknown:<
	unknown_0:<
	unknown_1:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������<*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_35852�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:%!

_user_specified_name38145:%!

_user_specified_name38147:%!

_user_specified_name38149
�
�
D__inference_conv2d_38_layer_call_and_return_conditional_losses_37588

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_38267

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_55_layer_call_and_return_conditional_losses_35376

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_59_layer_call_and_return_conditional_losses_35681

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
k
O__inference_average_pooling2d_18_layer_call_and_return_conditional_losses_35830

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_38_layer_call_and_return_conditional_losses_36154

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
6__inference_batch_normalization_53_layer_call_fn_37342

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_53_layer_call_and_return_conditional_losses_35254�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:%!

_user_specified_name37334:%!

_user_specified_name37336:%!

_user_specified_name37338
�
�
N__inference_depthwise_conv2d_17_layer_call_and_return_conditional_losses_36094

inputs;
!depthwise_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�depthwise/ReadVariableOp�
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:*
dtype0h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAdddepthwise:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:�����������V
NoOpNoOp^BiasAdd/ReadVariableOp^depthwise/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_54_layer_call_and_return_conditional_losses_35337

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_55_layer_call_and_return_conditional_losses_37551

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
6__inference_batch_normalization_55_layer_call_fn_37534

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_55_layer_call_and_return_conditional_losses_35393�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:%!

_user_specified_name37526:%!

_user_specified_name37528:%!

_user_specified_name37530
�
�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_35935

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
D__inference_conv2d_43_layer_call_and_return_conditional_losses_38228

inputs8
conv2d_readvariableop_resource:<-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:���������h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_38026

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_52_layer_call_and_return_conditional_losses_37255

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�9
�
'__inference_model_4_layer_call_fn_36741
input_1!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:#
	unknown_4:
	unknown_5:#
	unknown_6:#
	unknown_7:Z
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:$

unknown_12:

unknown_13:$

unknown_14:$

unknown_15:Z

unknown_16:

unknown_17:

unknown_18:

unknown_19:$

unknown_20:

unknown_21:

unknown_22:

unknown_23:

unknown_24:$

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:$

unknown_30:<

unknown_31:<

unknown_32:<

unknown_33:<

unknown_34:<$

unknown_35:<

unknown_36:<$

unknown_37:<%

unknown_38:�<

unknown_39:<

unknown_40:<

unknown_41:<

unknown_42:<$

unknown_43:<

unknown_44:<$

unknown_45:<%

unknown_46:�<

unknown_47:<

unknown_48:<

unknown_49:<

unknown_50:<$

unknown_51:<<

unknown_52:<

unknown_53:<

unknown_54:<

unknown_55:<$

unknown_56:<<

unknown_57:<

unknown_58:<

unknown_59:<

unknown_60:<$

unknown_61:<<

unknown_62:<

unknown_63:<

unknown_64:<

unknown_65:<$

unknown_66:<

unknown_67:

unknown_68:

unknown_69:

unknown_70:$

unknown_71:

unknown_72:

unknown_73:

unknown_74:

unknown_75:
identity��StatefulPartitionedCall�

StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75*Y
TinR
P2N*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*U
_read_only_resource_inputs7
53	
 !"%&'()*-./012567:;<?@ADEFIJK*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_4_layer_call_and_return_conditional_losses_36386o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:%!

_user_specified_name36585:%!

_user_specified_name36587:%!

_user_specified_name36589:%!

_user_specified_name36591:%!

_user_specified_name36593:%!

_user_specified_name36595:%!

_user_specified_name36597:%!

_user_specified_name36599:%	!

_user_specified_name36601:%
!

_user_specified_name36603:%!

_user_specified_name36605:%!

_user_specified_name36607:%!

_user_specified_name36609:%!

_user_specified_name36611:%!

_user_specified_name36613:%!

_user_specified_name36615:%!

_user_specified_name36617:%!

_user_specified_name36619:%!

_user_specified_name36621:%!

_user_specified_name36623:%!

_user_specified_name36625:%!

_user_specified_name36627:%!

_user_specified_name36629:%!

_user_specified_name36631:%!

_user_specified_name36633:%!

_user_specified_name36635:%!

_user_specified_name36637:%!

_user_specified_name36639:%!

_user_specified_name36641:%!

_user_specified_name36643:%!

_user_specified_name36645:% !

_user_specified_name36647:%!!

_user_specified_name36649:%"!

_user_specified_name36651:%#!

_user_specified_name36653:%$!

_user_specified_name36655:%%!

_user_specified_name36657:%&!

_user_specified_name36659:%'!

_user_specified_name36661:%(!

_user_specified_name36663:%)!

_user_specified_name36665:%*!

_user_specified_name36667:%+!

_user_specified_name36669:%,!

_user_specified_name36671:%-!

_user_specified_name36673:%.!

_user_specified_name36675:%/!

_user_specified_name36677:%0!

_user_specified_name36679:%1!

_user_specified_name36681:%2!

_user_specified_name36683:%3!

_user_specified_name36685:%4!

_user_specified_name36687:%5!

_user_specified_name36689:%6!

_user_specified_name36691:%7!

_user_specified_name36693:%8!

_user_specified_name36695:%9!

_user_specified_name36697:%:!

_user_specified_name36699:%;!

_user_specified_name36701:%<!

_user_specified_name36703:%=!

_user_specified_name36705:%>!

_user_specified_name36707:%?!

_user_specified_name36709:%@!

_user_specified_name36711:%A!

_user_specified_name36713:%B!

_user_specified_name36715:%C!

_user_specified_name36717:%D!

_user_specified_name36719:%E!

_user_specified_name36721:%F!

_user_specified_name36723:%G!

_user_specified_name36725:%H!

_user_specified_name36727:%I!

_user_specified_name36729:%J!

_user_specified_name36731:%K!

_user_specified_name36733:%L!

_user_specified_name36735:%M!

_user_specified_name36737
�
�
N__inference_depthwise_conv2d_19_layer_call_and_return_conditional_losses_36233

inputs;
!depthwise_readvariableop_resource:<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�depthwise/ReadVariableOp�
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:<*
dtype0h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      <      h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
BiasAddBiasAdddepthwise:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:�����������<V
NoOpNoOp^BiasAdd/ReadVariableOp^depthwise/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:Y U
1
_output_shapes
:�����������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
D__inference_conv2d_39_layer_call_and_return_conditional_losses_36178

inputs8
conv2d_readvariableop_resource:<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������<j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������<S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
6__inference_batch_normalization_52_layer_call_fn_37238

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_52_layer_call_and_return_conditional_losses_35171�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:%!

_user_specified_name37230:%!

_user_specified_name37232:%!

_user_specified_name37234
�
�
Q__inference_batch_normalization_53_layer_call_and_return_conditional_losses_35237

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
)__inference_conv2d_39_layer_call_fn_37663

inputs!
unknown:<
	unknown_0:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_39_layer_call_and_return_conditional_losses_36178y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:%!

_user_specified_name37657:%!

_user_specified_name37659
�
�
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_38009

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
3__inference_separable_conv2d_16_layer_call_fn_37304

inputs!
unknown:#
	unknown_0:Z
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_separable_conv2d_16_layer_call_and_return_conditional_losses_35209�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:%!

_user_specified_name37296:%!

_user_specified_name37298:%!

_user_specified_name37300
�
E
)__inference_softmax_4_layer_call_fn_38376

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_softmax_4_layer_call_and_return_conditional_losses_36383`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
k
O__inference_average_pooling2d_19_layer_call_and_return_conditional_losses_38208

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_38095

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
)__inference_conv2d_44_layer_call_fn_38293

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_44_layer_call_and_return_conditional_losses_36365w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:%!

_user_specified_name38287:%!

_user_specified_name38289
�
�
Q__inference_batch_normalization_58_layer_call_and_return_conditional_losses_35598

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
k
O__inference_average_pooling2d_19_layer_call_and_return_conditional_losses_35896

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_57_layer_call_and_return_conditional_losses_37713

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_35803

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
6__inference_batch_normalization_60_layer_call_fn_37981

inputs
unknown:<
	unknown_0:<
	unknown_1:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������<*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_35720�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:%!

_user_specified_name37973:%!

_user_specified_name37975:%!

_user_specified_name37977
�
�
N__inference_depthwise_conv2d_18_layer_call_and_return_conditional_losses_37751

inputs;
!depthwise_readvariableop_resource:<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�depthwise/ReadVariableOp�
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:<*
dtype0h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      <      h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
BiasAddBiasAdddepthwise:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:�����������<V
NoOpNoOp^BiasAdd/ReadVariableOp^depthwise/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:Y U
1
_output_shapes
:�����������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_35974

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_59_layer_call_and_return_conditional_losses_35664

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_57_layer_call_and_return_conditional_losses_35498

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
6__inference_batch_normalization_53_layer_call_fn_37331

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_53_layer_call_and_return_conditional_losses_35237�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:%!

_user_specified_name37323:%!

_user_specified_name37325:%!

_user_specified_name37327
�	
�
6__inference_batch_normalization_63_layer_call_fn_38239

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_35918�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:%!

_user_specified_name38231:%!

_user_specified_name38233:%!

_user_specified_name38235
�	
�
6__inference_batch_normalization_52_layer_call_fn_37227

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_52_layer_call_and_return_conditional_losses_35154�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:%!

_user_specified_name37219:%!

_user_specified_name37221:%!

_user_specified_name37223
�
�
)__inference_conv2d_40_layer_call_fn_37959

inputs!
unknown:<<
	unknown_0:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_40_layer_call_and_return_conditional_losses_36270y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������<: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������<
 
_user_specified_nameinputs:%!

_user_specified_name37953:%!

_user_specified_name37955
�	
�
6__inference_batch_normalization_57_layer_call_fn_37696

inputs
unknown:<
	unknown_0:<
	unknown_1:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_57_layer_call_and_return_conditional_losses_35515�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:%!

_user_specified_name37688:%!

_user_specified_name37690:%!

_user_specified_name37692
�
P
4__inference_average_pooling2d_16_layer_call_fn_37649

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_average_pooling2d_16_layer_call_and_return_conditional_losses_35476�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�R
 __inference__wrapped_model_35137
input_1J
0model_4_conv2d_36_conv2d_readvariableop_resource:?
1model_4_conv2d_36_biasadd_readvariableop_resource:D
6model_4_batch_normalization_52_readvariableop_resource:U
Gmodel_4_batch_normalization_52_fusedbatchnormv3_readvariableop_resource:W
Imodel_4_batch_normalization_52_fusedbatchnormv3_readvariableop_1_resource:W
=model_4_depthwise_conv2d_16_depthwise_readvariableop_resource:I
;model_4_depthwise_conv2d_16_biasadd_readvariableop_resource:^
Dmodel_4_separable_conv2d_16_separable_conv2d_readvariableop_resource:`
Fmodel_4_separable_conv2d_16_separable_conv2d_readvariableop_1_resource:ZI
;model_4_separable_conv2d_16_biasadd_readvariableop_resource:D
6model_4_batch_normalization_53_readvariableop_resource:U
Gmodel_4_batch_normalization_53_fusedbatchnormv3_readvariableop_resource:W
Imodel_4_batch_normalization_53_fusedbatchnormv3_readvariableop_1_resource:W
=model_4_depthwise_conv2d_17_depthwise_readvariableop_resource:I
;model_4_depthwise_conv2d_17_biasadd_readvariableop_resource:^
Dmodel_4_separable_conv2d_17_separable_conv2d_readvariableop_resource:`
Fmodel_4_separable_conv2d_17_separable_conv2d_readvariableop_1_resource:ZI
;model_4_separable_conv2d_17_biasadd_readvariableop_resource:D
6model_4_batch_normalization_54_readvariableop_resource:U
Gmodel_4_batch_normalization_54_fusedbatchnormv3_readvariableop_resource:W
Imodel_4_batch_normalization_54_fusedbatchnormv3_readvariableop_1_resource:J
0model_4_conv2d_37_conv2d_readvariableop_resource:?
1model_4_conv2d_37_biasadd_readvariableop_resource:D
6model_4_batch_normalization_55_readvariableop_resource:U
Gmodel_4_batch_normalization_55_fusedbatchnormv3_readvariableop_resource:W
Imodel_4_batch_normalization_55_fusedbatchnormv3_readvariableop_1_resource:J
0model_4_conv2d_38_conv2d_readvariableop_resource:?
1model_4_conv2d_38_biasadd_readvariableop_resource:D
6model_4_batch_normalization_56_readvariableop_resource:U
Gmodel_4_batch_normalization_56_fusedbatchnormv3_readvariableop_resource:W
Imodel_4_batch_normalization_56_fusedbatchnormv3_readvariableop_1_resource:J
0model_4_conv2d_39_conv2d_readvariableop_resource:<?
1model_4_conv2d_39_biasadd_readvariableop_resource:<D
6model_4_batch_normalization_57_readvariableop_resource:<U
Gmodel_4_batch_normalization_57_fusedbatchnormv3_readvariableop_resource:<W
Imodel_4_batch_normalization_57_fusedbatchnormv3_readvariableop_1_resource:<W
=model_4_depthwise_conv2d_18_depthwise_readvariableop_resource:<I
;model_4_depthwise_conv2d_18_biasadd_readvariableop_resource:<^
Dmodel_4_separable_conv2d_18_separable_conv2d_readvariableop_resource:<a
Fmodel_4_separable_conv2d_18_separable_conv2d_readvariableop_1_resource:�<I
;model_4_separable_conv2d_18_biasadd_readvariableop_resource:<D
6model_4_batch_normalization_58_readvariableop_resource:<U
Gmodel_4_batch_normalization_58_fusedbatchnormv3_readvariableop_resource:<W
Imodel_4_batch_normalization_58_fusedbatchnormv3_readvariableop_1_resource:<W
=model_4_depthwise_conv2d_19_depthwise_readvariableop_resource:<I
;model_4_depthwise_conv2d_19_biasadd_readvariableop_resource:<^
Dmodel_4_separable_conv2d_19_separable_conv2d_readvariableop_resource:<a
Fmodel_4_separable_conv2d_19_separable_conv2d_readvariableop_1_resource:�<I
;model_4_separable_conv2d_19_biasadd_readvariableop_resource:<D
6model_4_batch_normalization_59_readvariableop_resource:<U
Gmodel_4_batch_normalization_59_fusedbatchnormv3_readvariableop_resource:<W
Imodel_4_batch_normalization_59_fusedbatchnormv3_readvariableop_1_resource:<J
0model_4_conv2d_40_conv2d_readvariableop_resource:<<?
1model_4_conv2d_40_biasadd_readvariableop_resource:<D
6model_4_batch_normalization_60_readvariableop_resource:<U
Gmodel_4_batch_normalization_60_fusedbatchnormv3_readvariableop_resource:<W
Imodel_4_batch_normalization_60_fusedbatchnormv3_readvariableop_1_resource:<J
0model_4_conv2d_41_conv2d_readvariableop_resource:<<?
1model_4_conv2d_41_biasadd_readvariableop_resource:<D
6model_4_batch_normalization_61_readvariableop_resource:<U
Gmodel_4_batch_normalization_61_fusedbatchnormv3_readvariableop_resource:<W
Imodel_4_batch_normalization_61_fusedbatchnormv3_readvariableop_1_resource:<J
0model_4_conv2d_42_conv2d_readvariableop_resource:<<?
1model_4_conv2d_42_biasadd_readvariableop_resource:<D
6model_4_batch_normalization_62_readvariableop_resource:<U
Gmodel_4_batch_normalization_62_fusedbatchnormv3_readvariableop_resource:<W
Imodel_4_batch_normalization_62_fusedbatchnormv3_readvariableop_1_resource:<J
0model_4_conv2d_43_conv2d_readvariableop_resource:<?
1model_4_conv2d_43_biasadd_readvariableop_resource:D
6model_4_batch_normalization_63_readvariableop_resource:U
Gmodel_4_batch_normalization_63_fusedbatchnormv3_readvariableop_resource:W
Imodel_4_batch_normalization_63_fusedbatchnormv3_readvariableop_1_resource:J
0model_4_conv2d_44_conv2d_readvariableop_resource:?
1model_4_conv2d_44_biasadd_readvariableop_resource:D
6model_4_batch_normalization_64_readvariableop_resource:U
Gmodel_4_batch_normalization_64_fusedbatchnormv3_readvariableop_resource:W
Imodel_4_batch_normalization_64_fusedbatchnormv3_readvariableop_1_resource:
identity��>model_4/batch_normalization_52/FusedBatchNormV3/ReadVariableOp�@model_4/batch_normalization_52/FusedBatchNormV3/ReadVariableOp_1�-model_4/batch_normalization_52/ReadVariableOp�>model_4/batch_normalization_53/FusedBatchNormV3/ReadVariableOp�@model_4/batch_normalization_53/FusedBatchNormV3/ReadVariableOp_1�-model_4/batch_normalization_53/ReadVariableOp�>model_4/batch_normalization_54/FusedBatchNormV3/ReadVariableOp�@model_4/batch_normalization_54/FusedBatchNormV3/ReadVariableOp_1�-model_4/batch_normalization_54/ReadVariableOp�>model_4/batch_normalization_55/FusedBatchNormV3/ReadVariableOp�@model_4/batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1�-model_4/batch_normalization_55/ReadVariableOp�>model_4/batch_normalization_56/FusedBatchNormV3/ReadVariableOp�@model_4/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1�-model_4/batch_normalization_56/ReadVariableOp�>model_4/batch_normalization_57/FusedBatchNormV3/ReadVariableOp�@model_4/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1�-model_4/batch_normalization_57/ReadVariableOp�>model_4/batch_normalization_58/FusedBatchNormV3/ReadVariableOp�@model_4/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1�-model_4/batch_normalization_58/ReadVariableOp�>model_4/batch_normalization_59/FusedBatchNormV3/ReadVariableOp�@model_4/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1�-model_4/batch_normalization_59/ReadVariableOp�>model_4/batch_normalization_60/FusedBatchNormV3/ReadVariableOp�@model_4/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1�-model_4/batch_normalization_60/ReadVariableOp�>model_4/batch_normalization_61/FusedBatchNormV3/ReadVariableOp�@model_4/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1�-model_4/batch_normalization_61/ReadVariableOp�>model_4/batch_normalization_62/FusedBatchNormV3/ReadVariableOp�@model_4/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1�-model_4/batch_normalization_62/ReadVariableOp�>model_4/batch_normalization_63/FusedBatchNormV3/ReadVariableOp�@model_4/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1�-model_4/batch_normalization_63/ReadVariableOp�>model_4/batch_normalization_64/FusedBatchNormV3/ReadVariableOp�@model_4/batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1�-model_4/batch_normalization_64/ReadVariableOp�(model_4/conv2d_36/BiasAdd/ReadVariableOp�'model_4/conv2d_36/Conv2D/ReadVariableOp�(model_4/conv2d_37/BiasAdd/ReadVariableOp�'model_4/conv2d_37/Conv2D/ReadVariableOp�(model_4/conv2d_38/BiasAdd/ReadVariableOp�'model_4/conv2d_38/Conv2D/ReadVariableOp�(model_4/conv2d_39/BiasAdd/ReadVariableOp�'model_4/conv2d_39/Conv2D/ReadVariableOp�(model_4/conv2d_40/BiasAdd/ReadVariableOp�'model_4/conv2d_40/Conv2D/ReadVariableOp�(model_4/conv2d_41/BiasAdd/ReadVariableOp�'model_4/conv2d_41/Conv2D/ReadVariableOp�(model_4/conv2d_42/BiasAdd/ReadVariableOp�'model_4/conv2d_42/Conv2D/ReadVariableOp�(model_4/conv2d_43/BiasAdd/ReadVariableOp�'model_4/conv2d_43/Conv2D/ReadVariableOp�(model_4/conv2d_44/BiasAdd/ReadVariableOp�'model_4/conv2d_44/Conv2D/ReadVariableOp�2model_4/depthwise_conv2d_16/BiasAdd/ReadVariableOp�4model_4/depthwise_conv2d_16/depthwise/ReadVariableOp�2model_4/depthwise_conv2d_17/BiasAdd/ReadVariableOp�4model_4/depthwise_conv2d_17/depthwise/ReadVariableOp�2model_4/depthwise_conv2d_18/BiasAdd/ReadVariableOp�4model_4/depthwise_conv2d_18/depthwise/ReadVariableOp�2model_4/depthwise_conv2d_19/BiasAdd/ReadVariableOp�4model_4/depthwise_conv2d_19/depthwise/ReadVariableOp�2model_4/separable_conv2d_16/BiasAdd/ReadVariableOp�;model_4/separable_conv2d_16/separable_conv2d/ReadVariableOp�=model_4/separable_conv2d_16/separable_conv2d/ReadVariableOp_1�2model_4/separable_conv2d_17/BiasAdd/ReadVariableOp�;model_4/separable_conv2d_17/separable_conv2d/ReadVariableOp�=model_4/separable_conv2d_17/separable_conv2d/ReadVariableOp_1�2model_4/separable_conv2d_18/BiasAdd/ReadVariableOp�;model_4/separable_conv2d_18/separable_conv2d/ReadVariableOp�=model_4/separable_conv2d_18/separable_conv2d/ReadVariableOp_1�2model_4/separable_conv2d_19/BiasAdd/ReadVariableOp�;model_4/separable_conv2d_19/separable_conv2d/ReadVariableOp�=model_4/separable_conv2d_19/separable_conv2d/ReadVariableOp_1�
'model_4/conv2d_36/Conv2D/ReadVariableOpReadVariableOp0model_4_conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_4/conv2d_36/Conv2DConv2Dinput_1/model_4/conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
(model_4/conv2d_36/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv2d_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_4/conv2d_36/BiasAddBiasAdd!model_4/conv2d_36/Conv2D:output:00model_4/conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������~
model_4/conv2d_36/TanhTanh"model_4/conv2d_36/BiasAdd:output:0*
T0*1
_output_shapes
:�����������\
model_4/conv2d_36/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
model_4/conv2d_36/mulMulmodel_4/conv2d_36/Tanh:y:0 model_4/conv2d_36/mul/y:output:0*
T0*1
_output_shapes
:�����������q
$model_4/batch_normalization_52/ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?�
-model_4/batch_normalization_52/ReadVariableOpReadVariableOp6model_4_batch_normalization_52_readvariableop_resource*
_output_shapes
:*
dtype0�
>model_4/batch_normalization_52/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_4_batch_normalization_52_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
@model_4/batch_normalization_52/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_4_batch_normalization_52_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
/model_4/batch_normalization_52/FusedBatchNormV3FusedBatchNormV3model_4/conv2d_36/mul:z:0-model_4/batch_normalization_52/Const:output:05model_4/batch_normalization_52/ReadVariableOp:value:0Fmodel_4/batch_normalization_52/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_4/batch_normalization_52/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
4model_4/depthwise_conv2d_16/depthwise/ReadVariableOpReadVariableOp=model_4_depthwise_conv2d_16_depthwise_readvariableop_resource*&
_output_shapes
:*
dtype0�
+model_4/depthwise_conv2d_16/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
3model_4/depthwise_conv2d_16/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
%model_4/depthwise_conv2d_16/depthwiseDepthwiseConv2dNative3model_4/batch_normalization_52/FusedBatchNormV3:y:0<model_4/depthwise_conv2d_16/depthwise/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
2model_4/depthwise_conv2d_16/BiasAdd/ReadVariableOpReadVariableOp;model_4_depthwise_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
#model_4/depthwise_conv2d_16/BiasAddBiasAdd.model_4/depthwise_conv2d_16/depthwise:output:0:model_4/depthwise_conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
;model_4/separable_conv2d_16/separable_conv2d/ReadVariableOpReadVariableOpDmodel_4_separable_conv2d_16_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
=model_4/separable_conv2d_16/separable_conv2d/ReadVariableOp_1ReadVariableOpFmodel_4_separable_conv2d_16_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:Z*
dtype0�
2model_4/separable_conv2d_16/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
:model_4/separable_conv2d_16/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
6model_4/separable_conv2d_16/separable_conv2d/depthwiseDepthwiseConv2dNative,model_4/depthwise_conv2d_16/BiasAdd:output:0Cmodel_4/separable_conv2d_16/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z*
paddingSAME*
strides
�
,model_4/separable_conv2d_16/separable_conv2dConv2D?model_4/separable_conv2d_16/separable_conv2d/depthwise:output:0Emodel_4/separable_conv2d_16/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
2model_4/separable_conv2d_16/BiasAdd/ReadVariableOpReadVariableOp;model_4_separable_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
#model_4/separable_conv2d_16/BiasAddBiasAdd5model_4/separable_conv2d_16/separable_conv2d:output:0:model_4/separable_conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
model_4/separable_conv2d_16/EluElu,model_4/separable_conv2d_16/BiasAdd:output:0*
T0*1
_output_shapes
:�����������q
$model_4/batch_normalization_53/ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?�
-model_4/batch_normalization_53/ReadVariableOpReadVariableOp6model_4_batch_normalization_53_readvariableop_resource*
_output_shapes
:*
dtype0�
>model_4/batch_normalization_53/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_4_batch_normalization_53_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
@model_4/batch_normalization_53/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_4_batch_normalization_53_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
/model_4/batch_normalization_53/FusedBatchNormV3FusedBatchNormV3-model_4/separable_conv2d_16/Elu:activations:0-model_4/batch_normalization_53/Const:output:05model_4/batch_normalization_53/ReadVariableOp:value:0Fmodel_4/batch_normalization_53/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_4/batch_normalization_53/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
4model_4/depthwise_conv2d_17/depthwise/ReadVariableOpReadVariableOp=model_4_depthwise_conv2d_17_depthwise_readvariableop_resource*&
_output_shapes
:*
dtype0�
+model_4/depthwise_conv2d_17/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
3model_4/depthwise_conv2d_17/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
%model_4/depthwise_conv2d_17/depthwiseDepthwiseConv2dNative3model_4/batch_normalization_53/FusedBatchNormV3:y:0<model_4/depthwise_conv2d_17/depthwise/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
2model_4/depthwise_conv2d_17/BiasAdd/ReadVariableOpReadVariableOp;model_4_depthwise_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
#model_4/depthwise_conv2d_17/BiasAddBiasAdd.model_4/depthwise_conv2d_17/depthwise:output:0:model_4/depthwise_conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
;model_4/separable_conv2d_17/separable_conv2d/ReadVariableOpReadVariableOpDmodel_4_separable_conv2d_17_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
=model_4/separable_conv2d_17/separable_conv2d/ReadVariableOp_1ReadVariableOpFmodel_4_separable_conv2d_17_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:Z*
dtype0�
2model_4/separable_conv2d_17/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
:model_4/separable_conv2d_17/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
6model_4/separable_conv2d_17/separable_conv2d/depthwiseDepthwiseConv2dNative,model_4/depthwise_conv2d_17/BiasAdd:output:0Cmodel_4/separable_conv2d_17/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z*
paddingSAME*
strides
�
,model_4/separable_conv2d_17/separable_conv2dConv2D?model_4/separable_conv2d_17/separable_conv2d/depthwise:output:0Emodel_4/separable_conv2d_17/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
2model_4/separable_conv2d_17/BiasAdd/ReadVariableOpReadVariableOp;model_4_separable_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
#model_4/separable_conv2d_17/BiasAddBiasAdd5model_4/separable_conv2d_17/separable_conv2d:output:0:model_4/separable_conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
model_4/separable_conv2d_17/EluElu,model_4/separable_conv2d_17/BiasAdd:output:0*
T0*1
_output_shapes
:�����������q
$model_4/batch_normalization_54/ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?�
-model_4/batch_normalization_54/ReadVariableOpReadVariableOp6model_4_batch_normalization_54_readvariableop_resource*
_output_shapes
:*
dtype0�
>model_4/batch_normalization_54/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_4_batch_normalization_54_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
@model_4/batch_normalization_54/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_4_batch_normalization_54_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
/model_4/batch_normalization_54/FusedBatchNormV3FusedBatchNormV3-model_4/separable_conv2d_17/Elu:activations:0-model_4/batch_normalization_54/Const:output:05model_4/batch_normalization_54/ReadVariableOp:value:0Fmodel_4/batch_normalization_54/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_4/batch_normalization_54/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
model_4/add_8/addAddV23model_4/batch_normalization_52/FusedBatchNormV3:y:03model_4/batch_normalization_54/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:������������
'model_4/conv2d_37/Conv2D/ReadVariableOpReadVariableOp0model_4_conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_4/conv2d_37/Conv2DConv2Dmodel_4/add_8/add:z:0/model_4/conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
(model_4/conv2d_37/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv2d_37_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_4/conv2d_37/BiasAddBiasAdd!model_4/conv2d_37/Conv2D:output:00model_4/conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������|
model_4/conv2d_37/EluElu"model_4/conv2d_37/BiasAdd:output:0*
T0*1
_output_shapes
:�����������q
$model_4/batch_normalization_55/ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?�
-model_4/batch_normalization_55/ReadVariableOpReadVariableOp6model_4_batch_normalization_55_readvariableop_resource*
_output_shapes
:*
dtype0�
>model_4/batch_normalization_55/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_4_batch_normalization_55_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
@model_4/batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_4_batch_normalization_55_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
/model_4/batch_normalization_55/FusedBatchNormV3FusedBatchNormV3#model_4/conv2d_37/Elu:activations:0-model_4/batch_normalization_55/Const:output:05model_4/batch_normalization_55/ReadVariableOp:value:0Fmodel_4/batch_normalization_55/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_4/batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
'model_4/conv2d_38/Conv2D/ReadVariableOpReadVariableOp0model_4_conv2d_38_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_4/conv2d_38/Conv2DConv2D3model_4/batch_normalization_55/FusedBatchNormV3:y:0/model_4/conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
(model_4/conv2d_38/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv2d_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_4/conv2d_38/BiasAddBiasAdd!model_4/conv2d_38/Conv2D:output:00model_4/conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������|
model_4/conv2d_38/EluElu"model_4/conv2d_38/BiasAdd:output:0*
T0*1
_output_shapes
:�����������q
$model_4/batch_normalization_56/ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?�
-model_4/batch_normalization_56/ReadVariableOpReadVariableOp6model_4_batch_normalization_56_readvariableop_resource*
_output_shapes
:*
dtype0�
>model_4/batch_normalization_56/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_4_batch_normalization_56_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
@model_4/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_4_batch_normalization_56_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
/model_4/batch_normalization_56/FusedBatchNormV3FusedBatchNormV3#model_4/conv2d_38/Elu:activations:0-model_4/batch_normalization_56/Const:output:05model_4/batch_normalization_56/ReadVariableOp:value:0Fmodel_4/batch_normalization_56/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_4/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
$model_4/average_pooling2d_16/AvgPoolAvgPool3model_4/batch_normalization_56/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:�����������*
ksize
*
paddingVALID*
strides
�
'model_4/conv2d_39/Conv2D/ReadVariableOpReadVariableOp0model_4_conv2d_39_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
model_4/conv2d_39/Conv2DConv2D-model_4/average_pooling2d_16/AvgPool:output:0/model_4/conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<*
paddingSAME*
strides
�
(model_4/conv2d_39/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv2d_39_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
model_4/conv2d_39/BiasAddBiasAdd!model_4/conv2d_39/Conv2D:output:00model_4/conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<|
model_4/conv2d_39/EluElu"model_4/conv2d_39/BiasAdd:output:0*
T0*1
_output_shapes
:�����������<q
$model_4/batch_normalization_57/ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?�
-model_4/batch_normalization_57/ReadVariableOpReadVariableOp6model_4_batch_normalization_57_readvariableop_resource*
_output_shapes
:<*
dtype0�
>model_4/batch_normalization_57/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_4_batch_normalization_57_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
@model_4/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_4_batch_normalization_57_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
/model_4/batch_normalization_57/FusedBatchNormV3FusedBatchNormV3#model_4/conv2d_39/Elu:activations:0-model_4/batch_normalization_57/Const:output:05model_4/batch_normalization_57/ReadVariableOp:value:0Fmodel_4/batch_normalization_57/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_4/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������<:<:<:<:<:*
epsilon%o�:*
is_training( �
4model_4/depthwise_conv2d_18/depthwise/ReadVariableOpReadVariableOp=model_4_depthwise_conv2d_18_depthwise_readvariableop_resource*&
_output_shapes
:<*
dtype0�
+model_4/depthwise_conv2d_18/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      <      �
3model_4/depthwise_conv2d_18/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
%model_4/depthwise_conv2d_18/depthwiseDepthwiseConv2dNative3model_4/batch_normalization_57/FusedBatchNormV3:y:0<model_4/depthwise_conv2d_18/depthwise/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<*
paddingVALID*
strides
�
2model_4/depthwise_conv2d_18/BiasAdd/ReadVariableOpReadVariableOp;model_4_depthwise_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
#model_4/depthwise_conv2d_18/BiasAddBiasAdd.model_4/depthwise_conv2d_18/depthwise:output:0:model_4/depthwise_conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<�
;model_4/separable_conv2d_18/separable_conv2d/ReadVariableOpReadVariableOpDmodel_4_separable_conv2d_18_separable_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
=model_4/separable_conv2d_18/separable_conv2d/ReadVariableOp_1ReadVariableOpFmodel_4_separable_conv2d_18_separable_conv2d_readvariableop_1_resource*'
_output_shapes
:�<*
dtype0�
2model_4/separable_conv2d_18/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      <      �
:model_4/separable_conv2d_18/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
6model_4/separable_conv2d_18/separable_conv2d/depthwiseDepthwiseConv2dNative,model_4/depthwise_conv2d_18/BiasAdd:output:0Cmodel_4/separable_conv2d_18/separable_conv2d/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingSAME*
strides
�
,model_4/separable_conv2d_18/separable_conv2dConv2D?model_4/separable_conv2d_18/separable_conv2d/depthwise:output:0Emodel_4/separable_conv2d_18/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:�����������<*
paddingVALID*
strides
�
2model_4/separable_conv2d_18/BiasAdd/ReadVariableOpReadVariableOp;model_4_separable_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
#model_4/separable_conv2d_18/BiasAddBiasAdd5model_4/separable_conv2d_18/separable_conv2d:output:0:model_4/separable_conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<�
model_4/separable_conv2d_18/EluElu,model_4/separable_conv2d_18/BiasAdd:output:0*
T0*1
_output_shapes
:�����������<q
$model_4/batch_normalization_58/ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?�
-model_4/batch_normalization_58/ReadVariableOpReadVariableOp6model_4_batch_normalization_58_readvariableop_resource*
_output_shapes
:<*
dtype0�
>model_4/batch_normalization_58/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_4_batch_normalization_58_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
@model_4/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_4_batch_normalization_58_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
/model_4/batch_normalization_58/FusedBatchNormV3FusedBatchNormV3-model_4/separable_conv2d_18/Elu:activations:0-model_4/batch_normalization_58/Const:output:05model_4/batch_normalization_58/ReadVariableOp:value:0Fmodel_4/batch_normalization_58/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_4/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������<:<:<:<:<:*
epsilon%o�:*
is_training( �
4model_4/depthwise_conv2d_19/depthwise/ReadVariableOpReadVariableOp=model_4_depthwise_conv2d_19_depthwise_readvariableop_resource*&
_output_shapes
:<*
dtype0�
+model_4/depthwise_conv2d_19/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      <      �
3model_4/depthwise_conv2d_19/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
%model_4/depthwise_conv2d_19/depthwiseDepthwiseConv2dNative3model_4/batch_normalization_58/FusedBatchNormV3:y:0<model_4/depthwise_conv2d_19/depthwise/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<*
paddingVALID*
strides
�
2model_4/depthwise_conv2d_19/BiasAdd/ReadVariableOpReadVariableOp;model_4_depthwise_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
#model_4/depthwise_conv2d_19/BiasAddBiasAdd.model_4/depthwise_conv2d_19/depthwise:output:0:model_4/depthwise_conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<�
;model_4/separable_conv2d_19/separable_conv2d/ReadVariableOpReadVariableOpDmodel_4_separable_conv2d_19_separable_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
=model_4/separable_conv2d_19/separable_conv2d/ReadVariableOp_1ReadVariableOpFmodel_4_separable_conv2d_19_separable_conv2d_readvariableop_1_resource*'
_output_shapes
:�<*
dtype0�
2model_4/separable_conv2d_19/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      <      �
:model_4/separable_conv2d_19/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
6model_4/separable_conv2d_19/separable_conv2d/depthwiseDepthwiseConv2dNative,model_4/depthwise_conv2d_19/BiasAdd:output:0Cmodel_4/separable_conv2d_19/separable_conv2d/ReadVariableOp:value:0*
T0*2
_output_shapes 
:������������*
paddingSAME*
strides
�
,model_4/separable_conv2d_19/separable_conv2dConv2D?model_4/separable_conv2d_19/separable_conv2d/depthwise:output:0Emodel_4/separable_conv2d_19/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:�����������<*
paddingVALID*
strides
�
2model_4/separable_conv2d_19/BiasAdd/ReadVariableOpReadVariableOp;model_4_separable_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
#model_4/separable_conv2d_19/BiasAddBiasAdd5model_4/separable_conv2d_19/separable_conv2d:output:0:model_4/separable_conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<�
model_4/separable_conv2d_19/EluElu,model_4/separable_conv2d_19/BiasAdd:output:0*
T0*1
_output_shapes
:�����������<q
$model_4/batch_normalization_59/ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?�
-model_4/batch_normalization_59/ReadVariableOpReadVariableOp6model_4_batch_normalization_59_readvariableop_resource*
_output_shapes
:<*
dtype0�
>model_4/batch_normalization_59/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_4_batch_normalization_59_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
@model_4/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_4_batch_normalization_59_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
/model_4/batch_normalization_59/FusedBatchNormV3FusedBatchNormV3-model_4/separable_conv2d_19/Elu:activations:0-model_4/batch_normalization_59/Const:output:05model_4/batch_normalization_59/ReadVariableOp:value:0Fmodel_4/batch_normalization_59/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_4/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������<:<:<:<:<:*
epsilon%o�:*
is_training( �
model_4/add_9/addAddV23model_4/batch_normalization_57/FusedBatchNormV3:y:03model_4/batch_normalization_59/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:�����������<�
'model_4/conv2d_40/Conv2D/ReadVariableOpReadVariableOp0model_4_conv2d_40_conv2d_readvariableop_resource*&
_output_shapes
:<<*
dtype0�
model_4/conv2d_40/Conv2DConv2Dmodel_4/add_9/add:z:0/model_4/conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<*
paddingSAME*
strides
�
(model_4/conv2d_40/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv2d_40_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
model_4/conv2d_40/BiasAddBiasAdd!model_4/conv2d_40/Conv2D:output:00model_4/conv2d_40/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<|
model_4/conv2d_40/EluElu"model_4/conv2d_40/BiasAdd:output:0*
T0*1
_output_shapes
:�����������<q
$model_4/batch_normalization_60/ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?�
-model_4/batch_normalization_60/ReadVariableOpReadVariableOp6model_4_batch_normalization_60_readvariableop_resource*
_output_shapes
:<*
dtype0�
>model_4/batch_normalization_60/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_4_batch_normalization_60_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
@model_4/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_4_batch_normalization_60_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
/model_4/batch_normalization_60/FusedBatchNormV3FusedBatchNormV3#model_4/conv2d_40/Elu:activations:0-model_4/batch_normalization_60/Const:output:05model_4/batch_normalization_60/ReadVariableOp:value:0Fmodel_4/batch_normalization_60/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_4/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������<:<:<:<:<:*
epsilon%o�:*
is_training( �
$model_4/average_pooling2d_17/AvgPoolAvgPool3model_4/batch_normalization_60/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������@@<*
ksize
*
paddingVALID*
strides
�
'model_4/conv2d_41/Conv2D/ReadVariableOpReadVariableOp0model_4_conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:<<*
dtype0�
model_4/conv2d_41/Conv2DConv2D-model_4/average_pooling2d_17/AvgPool:output:0/model_4/conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@<*
paddingSAME*
strides
�
(model_4/conv2d_41/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv2d_41_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
model_4/conv2d_41/BiasAddBiasAdd!model_4/conv2d_41/Conv2D:output:00model_4/conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@<z
model_4/conv2d_41/EluElu"model_4/conv2d_41/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@<q
$model_4/batch_normalization_61/ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?�
-model_4/batch_normalization_61/ReadVariableOpReadVariableOp6model_4_batch_normalization_61_readvariableop_resource*
_output_shapes
:<*
dtype0�
>model_4/batch_normalization_61/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_4_batch_normalization_61_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
@model_4/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_4_batch_normalization_61_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
/model_4/batch_normalization_61/FusedBatchNormV3FusedBatchNormV3#model_4/conv2d_41/Elu:activations:0-model_4/batch_normalization_61/Const:output:05model_4/batch_normalization_61/ReadVariableOp:value:0Fmodel_4/batch_normalization_61/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_4/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@<:<:<:<:<:*
epsilon%o�:*
is_training( �
$model_4/average_pooling2d_18/AvgPoolAvgPool3model_4/batch_normalization_61/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������  <*
ksize
*
paddingVALID*
strides
�
'model_4/conv2d_42/Conv2D/ReadVariableOpReadVariableOp0model_4_conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
:<<*
dtype0�
model_4/conv2d_42/Conv2DConv2D-model_4/average_pooling2d_18/AvgPool:output:0/model_4/conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  <*
paddingSAME*
strides
�
(model_4/conv2d_42/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv2d_42_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
model_4/conv2d_42/BiasAddBiasAdd!model_4/conv2d_42/Conv2D:output:00model_4/conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  <z
model_4/conv2d_42/EluElu"model_4/conv2d_42/BiasAdd:output:0*
T0*/
_output_shapes
:���������  <q
$model_4/batch_normalization_62/ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?�
-model_4/batch_normalization_62/ReadVariableOpReadVariableOp6model_4_batch_normalization_62_readvariableop_resource*
_output_shapes
:<*
dtype0�
>model_4/batch_normalization_62/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_4_batch_normalization_62_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
@model_4/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_4_batch_normalization_62_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
/model_4/batch_normalization_62/FusedBatchNormV3FusedBatchNormV3#model_4/conv2d_42/Elu:activations:0-model_4/batch_normalization_62/Const:output:05model_4/batch_normalization_62/ReadVariableOp:value:0Fmodel_4/batch_normalization_62/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_4/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������  <:<:<:<:<:*
epsilon%o�:*
is_training( �
$model_4/average_pooling2d_19/AvgPoolAvgPool3model_4/batch_normalization_62/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������<*
ksize
*
paddingVALID*
strides
�
'model_4/conv2d_43/Conv2D/ReadVariableOpReadVariableOp0model_4_conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
model_4/conv2d_43/Conv2DConv2D-model_4/average_pooling2d_19/AvgPool:output:0/model_4/conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
(model_4/conv2d_43/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv2d_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_4/conv2d_43/BiasAddBiasAdd!model_4/conv2d_43/Conv2D:output:00model_4/conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������z
model_4/conv2d_43/EluElu"model_4/conv2d_43/BiasAdd:output:0*
T0*/
_output_shapes
:���������q
$model_4/batch_normalization_63/ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?�
-model_4/batch_normalization_63/ReadVariableOpReadVariableOp6model_4_batch_normalization_63_readvariableop_resource*
_output_shapes
:*
dtype0�
>model_4/batch_normalization_63/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_4_batch_normalization_63_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
@model_4/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_4_batch_normalization_63_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
/model_4/batch_normalization_63/FusedBatchNormV3FusedBatchNormV3#model_4/conv2d_43/Elu:activations:0-model_4/batch_normalization_63/Const:output:05model_4/batch_normalization_63/ReadVariableOp:value:0Fmodel_4/batch_normalization_63/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_4/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( �
'model_4/conv2d_44/Conv2D/ReadVariableOpReadVariableOp0model_4_conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_4/conv2d_44/Conv2DConv2D3model_4/batch_normalization_63/FusedBatchNormV3:y:0/model_4/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
(model_4/conv2d_44/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv2d_44_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_4/conv2d_44/BiasAddBiasAdd!model_4/conv2d_44/Conv2D:output:00model_4/conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������z
model_4/conv2d_44/EluElu"model_4/conv2d_44/BiasAdd:output:0*
T0*/
_output_shapes
:���������q
$model_4/batch_normalization_64/ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?�
-model_4/batch_normalization_64/ReadVariableOpReadVariableOp6model_4_batch_normalization_64_readvariableop_resource*
_output_shapes
:*
dtype0�
>model_4/batch_normalization_64/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_4_batch_normalization_64_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
@model_4/batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_4_batch_normalization_64_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
/model_4/batch_normalization_64/FusedBatchNormV3FusedBatchNormV3#model_4/conv2d_44/Elu:activations:0-model_4/batch_normalization_64/Const:output:05model_4/batch_normalization_64/ReadVariableOp:value:0Fmodel_4/batch_normalization_64/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_4/batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( �
9model_4/global_average_pooling2d_4/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
'model_4/global_average_pooling2d_4/MeanMean3model_4/batch_normalization_64/FusedBatchNormV3:y:0Bmodel_4/global_average_pooling2d_4/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:����������
model_4/softmax_4/SoftmaxSoftmax0model_4/global_average_pooling2d_4/Mean:output:0*
T0*'
_output_shapes
:���������r
IdentityIdentity#model_4/softmax_4/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������!
NoOpNoOp?^model_4/batch_normalization_52/FusedBatchNormV3/ReadVariableOpA^model_4/batch_normalization_52/FusedBatchNormV3/ReadVariableOp_1.^model_4/batch_normalization_52/ReadVariableOp?^model_4/batch_normalization_53/FusedBatchNormV3/ReadVariableOpA^model_4/batch_normalization_53/FusedBatchNormV3/ReadVariableOp_1.^model_4/batch_normalization_53/ReadVariableOp?^model_4/batch_normalization_54/FusedBatchNormV3/ReadVariableOpA^model_4/batch_normalization_54/FusedBatchNormV3/ReadVariableOp_1.^model_4/batch_normalization_54/ReadVariableOp?^model_4/batch_normalization_55/FusedBatchNormV3/ReadVariableOpA^model_4/batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1.^model_4/batch_normalization_55/ReadVariableOp?^model_4/batch_normalization_56/FusedBatchNormV3/ReadVariableOpA^model_4/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1.^model_4/batch_normalization_56/ReadVariableOp?^model_4/batch_normalization_57/FusedBatchNormV3/ReadVariableOpA^model_4/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1.^model_4/batch_normalization_57/ReadVariableOp?^model_4/batch_normalization_58/FusedBatchNormV3/ReadVariableOpA^model_4/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1.^model_4/batch_normalization_58/ReadVariableOp?^model_4/batch_normalization_59/FusedBatchNormV3/ReadVariableOpA^model_4/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1.^model_4/batch_normalization_59/ReadVariableOp?^model_4/batch_normalization_60/FusedBatchNormV3/ReadVariableOpA^model_4/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1.^model_4/batch_normalization_60/ReadVariableOp?^model_4/batch_normalization_61/FusedBatchNormV3/ReadVariableOpA^model_4/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1.^model_4/batch_normalization_61/ReadVariableOp?^model_4/batch_normalization_62/FusedBatchNormV3/ReadVariableOpA^model_4/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1.^model_4/batch_normalization_62/ReadVariableOp?^model_4/batch_normalization_63/FusedBatchNormV3/ReadVariableOpA^model_4/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1.^model_4/batch_normalization_63/ReadVariableOp?^model_4/batch_normalization_64/FusedBatchNormV3/ReadVariableOpA^model_4/batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1.^model_4/batch_normalization_64/ReadVariableOp)^model_4/conv2d_36/BiasAdd/ReadVariableOp(^model_4/conv2d_36/Conv2D/ReadVariableOp)^model_4/conv2d_37/BiasAdd/ReadVariableOp(^model_4/conv2d_37/Conv2D/ReadVariableOp)^model_4/conv2d_38/BiasAdd/ReadVariableOp(^model_4/conv2d_38/Conv2D/ReadVariableOp)^model_4/conv2d_39/BiasAdd/ReadVariableOp(^model_4/conv2d_39/Conv2D/ReadVariableOp)^model_4/conv2d_40/BiasAdd/ReadVariableOp(^model_4/conv2d_40/Conv2D/ReadVariableOp)^model_4/conv2d_41/BiasAdd/ReadVariableOp(^model_4/conv2d_41/Conv2D/ReadVariableOp)^model_4/conv2d_42/BiasAdd/ReadVariableOp(^model_4/conv2d_42/Conv2D/ReadVariableOp)^model_4/conv2d_43/BiasAdd/ReadVariableOp(^model_4/conv2d_43/Conv2D/ReadVariableOp)^model_4/conv2d_44/BiasAdd/ReadVariableOp(^model_4/conv2d_44/Conv2D/ReadVariableOp3^model_4/depthwise_conv2d_16/BiasAdd/ReadVariableOp5^model_4/depthwise_conv2d_16/depthwise/ReadVariableOp3^model_4/depthwise_conv2d_17/BiasAdd/ReadVariableOp5^model_4/depthwise_conv2d_17/depthwise/ReadVariableOp3^model_4/depthwise_conv2d_18/BiasAdd/ReadVariableOp5^model_4/depthwise_conv2d_18/depthwise/ReadVariableOp3^model_4/depthwise_conv2d_19/BiasAdd/ReadVariableOp5^model_4/depthwise_conv2d_19/depthwise/ReadVariableOp3^model_4/separable_conv2d_16/BiasAdd/ReadVariableOp<^model_4/separable_conv2d_16/separable_conv2d/ReadVariableOp>^model_4/separable_conv2d_16/separable_conv2d/ReadVariableOp_13^model_4/separable_conv2d_17/BiasAdd/ReadVariableOp<^model_4/separable_conv2d_17/separable_conv2d/ReadVariableOp>^model_4/separable_conv2d_17/separable_conv2d/ReadVariableOp_13^model_4/separable_conv2d_18/BiasAdd/ReadVariableOp<^model_4/separable_conv2d_18/separable_conv2d/ReadVariableOp>^model_4/separable_conv2d_18/separable_conv2d/ReadVariableOp_13^model_4/separable_conv2d_19/BiasAdd/ReadVariableOp<^model_4/separable_conv2d_19/separable_conv2d/ReadVariableOp>^model_4/separable_conv2d_19/separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2�
>model_4/batch_normalization_52/FusedBatchNormV3/ReadVariableOp>model_4/batch_normalization_52/FusedBatchNormV3/ReadVariableOp2�
@model_4/batch_normalization_52/FusedBatchNormV3/ReadVariableOp_1@model_4/batch_normalization_52/FusedBatchNormV3/ReadVariableOp_12^
-model_4/batch_normalization_52/ReadVariableOp-model_4/batch_normalization_52/ReadVariableOp2�
>model_4/batch_normalization_53/FusedBatchNormV3/ReadVariableOp>model_4/batch_normalization_53/FusedBatchNormV3/ReadVariableOp2�
@model_4/batch_normalization_53/FusedBatchNormV3/ReadVariableOp_1@model_4/batch_normalization_53/FusedBatchNormV3/ReadVariableOp_12^
-model_4/batch_normalization_53/ReadVariableOp-model_4/batch_normalization_53/ReadVariableOp2�
>model_4/batch_normalization_54/FusedBatchNormV3/ReadVariableOp>model_4/batch_normalization_54/FusedBatchNormV3/ReadVariableOp2�
@model_4/batch_normalization_54/FusedBatchNormV3/ReadVariableOp_1@model_4/batch_normalization_54/FusedBatchNormV3/ReadVariableOp_12^
-model_4/batch_normalization_54/ReadVariableOp-model_4/batch_normalization_54/ReadVariableOp2�
>model_4/batch_normalization_55/FusedBatchNormV3/ReadVariableOp>model_4/batch_normalization_55/FusedBatchNormV3/ReadVariableOp2�
@model_4/batch_normalization_55/FusedBatchNormV3/ReadVariableOp_1@model_4/batch_normalization_55/FusedBatchNormV3/ReadVariableOp_12^
-model_4/batch_normalization_55/ReadVariableOp-model_4/batch_normalization_55/ReadVariableOp2�
>model_4/batch_normalization_56/FusedBatchNormV3/ReadVariableOp>model_4/batch_normalization_56/FusedBatchNormV3/ReadVariableOp2�
@model_4/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_1@model_4/batch_normalization_56/FusedBatchNormV3/ReadVariableOp_12^
-model_4/batch_normalization_56/ReadVariableOp-model_4/batch_normalization_56/ReadVariableOp2�
>model_4/batch_normalization_57/FusedBatchNormV3/ReadVariableOp>model_4/batch_normalization_57/FusedBatchNormV3/ReadVariableOp2�
@model_4/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1@model_4/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_12^
-model_4/batch_normalization_57/ReadVariableOp-model_4/batch_normalization_57/ReadVariableOp2�
>model_4/batch_normalization_58/FusedBatchNormV3/ReadVariableOp>model_4/batch_normalization_58/FusedBatchNormV3/ReadVariableOp2�
@model_4/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1@model_4/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_12^
-model_4/batch_normalization_58/ReadVariableOp-model_4/batch_normalization_58/ReadVariableOp2�
>model_4/batch_normalization_59/FusedBatchNormV3/ReadVariableOp>model_4/batch_normalization_59/FusedBatchNormV3/ReadVariableOp2�
@model_4/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1@model_4/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_12^
-model_4/batch_normalization_59/ReadVariableOp-model_4/batch_normalization_59/ReadVariableOp2�
>model_4/batch_normalization_60/FusedBatchNormV3/ReadVariableOp>model_4/batch_normalization_60/FusedBatchNormV3/ReadVariableOp2�
@model_4/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1@model_4/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_12^
-model_4/batch_normalization_60/ReadVariableOp-model_4/batch_normalization_60/ReadVariableOp2�
>model_4/batch_normalization_61/FusedBatchNormV3/ReadVariableOp>model_4/batch_normalization_61/FusedBatchNormV3/ReadVariableOp2�
@model_4/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1@model_4/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_12^
-model_4/batch_normalization_61/ReadVariableOp-model_4/batch_normalization_61/ReadVariableOp2�
>model_4/batch_normalization_62/FusedBatchNormV3/ReadVariableOp>model_4/batch_normalization_62/FusedBatchNormV3/ReadVariableOp2�
@model_4/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1@model_4/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_12^
-model_4/batch_normalization_62/ReadVariableOp-model_4/batch_normalization_62/ReadVariableOp2�
>model_4/batch_normalization_63/FusedBatchNormV3/ReadVariableOp>model_4/batch_normalization_63/FusedBatchNormV3/ReadVariableOp2�
@model_4/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1@model_4/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_12^
-model_4/batch_normalization_63/ReadVariableOp-model_4/batch_normalization_63/ReadVariableOp2�
>model_4/batch_normalization_64/FusedBatchNormV3/ReadVariableOp>model_4/batch_normalization_64/FusedBatchNormV3/ReadVariableOp2�
@model_4/batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1@model_4/batch_normalization_64/FusedBatchNormV3/ReadVariableOp_12^
-model_4/batch_normalization_64/ReadVariableOp-model_4/batch_normalization_64/ReadVariableOp2T
(model_4/conv2d_36/BiasAdd/ReadVariableOp(model_4/conv2d_36/BiasAdd/ReadVariableOp2R
'model_4/conv2d_36/Conv2D/ReadVariableOp'model_4/conv2d_36/Conv2D/ReadVariableOp2T
(model_4/conv2d_37/BiasAdd/ReadVariableOp(model_4/conv2d_37/BiasAdd/ReadVariableOp2R
'model_4/conv2d_37/Conv2D/ReadVariableOp'model_4/conv2d_37/Conv2D/ReadVariableOp2T
(model_4/conv2d_38/BiasAdd/ReadVariableOp(model_4/conv2d_38/BiasAdd/ReadVariableOp2R
'model_4/conv2d_38/Conv2D/ReadVariableOp'model_4/conv2d_38/Conv2D/ReadVariableOp2T
(model_4/conv2d_39/BiasAdd/ReadVariableOp(model_4/conv2d_39/BiasAdd/ReadVariableOp2R
'model_4/conv2d_39/Conv2D/ReadVariableOp'model_4/conv2d_39/Conv2D/ReadVariableOp2T
(model_4/conv2d_40/BiasAdd/ReadVariableOp(model_4/conv2d_40/BiasAdd/ReadVariableOp2R
'model_4/conv2d_40/Conv2D/ReadVariableOp'model_4/conv2d_40/Conv2D/ReadVariableOp2T
(model_4/conv2d_41/BiasAdd/ReadVariableOp(model_4/conv2d_41/BiasAdd/ReadVariableOp2R
'model_4/conv2d_41/Conv2D/ReadVariableOp'model_4/conv2d_41/Conv2D/ReadVariableOp2T
(model_4/conv2d_42/BiasAdd/ReadVariableOp(model_4/conv2d_42/BiasAdd/ReadVariableOp2R
'model_4/conv2d_42/Conv2D/ReadVariableOp'model_4/conv2d_42/Conv2D/ReadVariableOp2T
(model_4/conv2d_43/BiasAdd/ReadVariableOp(model_4/conv2d_43/BiasAdd/ReadVariableOp2R
'model_4/conv2d_43/Conv2D/ReadVariableOp'model_4/conv2d_43/Conv2D/ReadVariableOp2T
(model_4/conv2d_44/BiasAdd/ReadVariableOp(model_4/conv2d_44/BiasAdd/ReadVariableOp2R
'model_4/conv2d_44/Conv2D/ReadVariableOp'model_4/conv2d_44/Conv2D/ReadVariableOp2h
2model_4/depthwise_conv2d_16/BiasAdd/ReadVariableOp2model_4/depthwise_conv2d_16/BiasAdd/ReadVariableOp2l
4model_4/depthwise_conv2d_16/depthwise/ReadVariableOp4model_4/depthwise_conv2d_16/depthwise/ReadVariableOp2h
2model_4/depthwise_conv2d_17/BiasAdd/ReadVariableOp2model_4/depthwise_conv2d_17/BiasAdd/ReadVariableOp2l
4model_4/depthwise_conv2d_17/depthwise/ReadVariableOp4model_4/depthwise_conv2d_17/depthwise/ReadVariableOp2h
2model_4/depthwise_conv2d_18/BiasAdd/ReadVariableOp2model_4/depthwise_conv2d_18/BiasAdd/ReadVariableOp2l
4model_4/depthwise_conv2d_18/depthwise/ReadVariableOp4model_4/depthwise_conv2d_18/depthwise/ReadVariableOp2h
2model_4/depthwise_conv2d_19/BiasAdd/ReadVariableOp2model_4/depthwise_conv2d_19/BiasAdd/ReadVariableOp2l
4model_4/depthwise_conv2d_19/depthwise/ReadVariableOp4model_4/depthwise_conv2d_19/depthwise/ReadVariableOp2h
2model_4/separable_conv2d_16/BiasAdd/ReadVariableOp2model_4/separable_conv2d_16/BiasAdd/ReadVariableOp2z
;model_4/separable_conv2d_16/separable_conv2d/ReadVariableOp;model_4/separable_conv2d_16/separable_conv2d/ReadVariableOp2~
=model_4/separable_conv2d_16/separable_conv2d/ReadVariableOp_1=model_4/separable_conv2d_16/separable_conv2d/ReadVariableOp_12h
2model_4/separable_conv2d_17/BiasAdd/ReadVariableOp2model_4/separable_conv2d_17/BiasAdd/ReadVariableOp2z
;model_4/separable_conv2d_17/separable_conv2d/ReadVariableOp;model_4/separable_conv2d_17/separable_conv2d/ReadVariableOp2~
=model_4/separable_conv2d_17/separable_conv2d/ReadVariableOp_1=model_4/separable_conv2d_17/separable_conv2d/ReadVariableOp_12h
2model_4/separable_conv2d_18/BiasAdd/ReadVariableOp2model_4/separable_conv2d_18/BiasAdd/ReadVariableOp2z
;model_4/separable_conv2d_18/separable_conv2d/ReadVariableOp;model_4/separable_conv2d_18/separable_conv2d/ReadVariableOp2~
=model_4/separable_conv2d_18/separable_conv2d/ReadVariableOp_1=model_4/separable_conv2d_18/separable_conv2d/ReadVariableOp_12h
2model_4/separable_conv2d_19/BiasAdd/ReadVariableOp2model_4/separable_conv2d_19/BiasAdd/ReadVariableOp2z
;model_4/separable_conv2d_19/separable_conv2d/ReadVariableOp;model_4/separable_conv2d_19/separable_conv2d/ReadVariableOp2~
=model_4/separable_conv2d_19/separable_conv2d/ReadVariableOp_1=model_4/separable_conv2d_19/separable_conv2d/ReadVariableOp_1:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:(&$
"
_user_specified_name
resource:('$
"
_user_specified_name
resource:(($
"
_user_specified_name
resource:()$
"
_user_specified_name
resource:(*$
"
_user_specified_name
resource:(+$
"
_user_specified_name
resource:(,$
"
_user_specified_name
resource:(-$
"
_user_specified_name
resource:(.$
"
_user_specified_name
resource:(/$
"
_user_specified_name
resource:(0$
"
_user_specified_name
resource:(1$
"
_user_specified_name
resource:(2$
"
_user_specified_name
resource:(3$
"
_user_specified_name
resource:(4$
"
_user_specified_name
resource:(5$
"
_user_specified_name
resource:(6$
"
_user_specified_name
resource:(7$
"
_user_specified_name
resource:(8$
"
_user_specified_name
resource:(9$
"
_user_specified_name
resource:(:$
"
_user_specified_name
resource:(;$
"
_user_specified_name
resource:(<$
"
_user_specified_name
resource:(=$
"
_user_specified_name
resource:(>$
"
_user_specified_name
resource:(?$
"
_user_specified_name
resource:(@$
"
_user_specified_name
resource:(A$
"
_user_specified_name
resource:(B$
"
_user_specified_name
resource:(C$
"
_user_specified_name
resource:(D$
"
_user_specified_name
resource:(E$
"
_user_specified_name
resource:(F$
"
_user_specified_name
resource:(G$
"
_user_specified_name
resource:(H$
"
_user_specified_name
resource:(I$
"
_user_specified_name
resource:(J$
"
_user_specified_name
resource:(K$
"
_user_specified_name
resource:(L$
"
_user_specified_name
resource:(M$
"
_user_specified_name
resource
�	
�
6__inference_batch_normalization_58_layer_call_fn_37800

inputs
unknown:<
	unknown_0:<
	unknown_1:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_58_layer_call_and_return_conditional_losses_35598�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:%!

_user_specified_name37792:%!

_user_specified_name37794:%!

_user_specified_name37796
�
�
N__inference_separable_conv2d_18_layer_call_and_return_conditional_losses_37778

inputsB
(separable_conv2d_readvariableop_resource:<E
*separable_conv2d_readvariableop_1_resource:�<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*'
_output_shapes
:�<*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      <      o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+���������������������������<*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������<h
EluEluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������<z
IdentityIdentityElu:activations:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
D__inference_conv2d_36_layer_call_and_return_conditional_losses_36039

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
TanhTanhBiasAdd:output:0*
T0*1
_output_shapes
:�����������J
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@`
mulMulTanh:y:0mul/y:output:0*
T0*1
_output_shapes
:�����������`
IdentityIdentitymul:z:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_56_layer_call_and_return_conditional_losses_35449

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
)__inference_conv2d_38_layer_call_fn_37577

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_38_layer_call_and_return_conditional_losses_36154y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:%!

_user_specified_name37571:%!

_user_specified_name37573
�
�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_38360

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
6__inference_batch_normalization_64_layer_call_fn_38326

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_35991�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:%!

_user_specified_name38318:%!

_user_specified_name38320:%!

_user_specified_name38322
�8
�
#__inference_signature_wrapper_37194
input_1!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:#
	unknown_4:
	unknown_5:#
	unknown_6:#
	unknown_7:Z
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:$

unknown_12:

unknown_13:$

unknown_14:$

unknown_15:Z

unknown_16:

unknown_17:

unknown_18:

unknown_19:$

unknown_20:

unknown_21:

unknown_22:

unknown_23:

unknown_24:$

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:$

unknown_30:<

unknown_31:<

unknown_32:<

unknown_33:<

unknown_34:<$

unknown_35:<

unknown_36:<$

unknown_37:<%

unknown_38:�<

unknown_39:<

unknown_40:<

unknown_41:<

unknown_42:<$

unknown_43:<

unknown_44:<$

unknown_45:<%

unknown_46:�<

unknown_47:<

unknown_48:<

unknown_49:<

unknown_50:<$

unknown_51:<<

unknown_52:<

unknown_53:<

unknown_54:<

unknown_55:<$

unknown_56:<<

unknown_57:<

unknown_58:<

unknown_59:<

unknown_60:<$

unknown_61:<<

unknown_62:<

unknown_63:<

unknown_64:<

unknown_65:<$

unknown_66:<

unknown_67:

unknown_68:

unknown_69:

unknown_70:$

unknown_71:

unknown_72:

unknown_73:

unknown_74:

unknown_75:
identity��StatefulPartitionedCall�

StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66
unknown_67
unknown_68
unknown_69
unknown_70
unknown_71
unknown_72
unknown_73
unknown_74
unknown_75*Y
TinR
P2N*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*o
_read_only_resource_inputsQ
OM	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLM*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_35137o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:%!

_user_specified_name37038:%!

_user_specified_name37040:%!

_user_specified_name37042:%!

_user_specified_name37044:%!

_user_specified_name37046:%!

_user_specified_name37048:%!

_user_specified_name37050:%!

_user_specified_name37052:%	!

_user_specified_name37054:%
!

_user_specified_name37056:%!

_user_specified_name37058:%!

_user_specified_name37060:%!

_user_specified_name37062:%!

_user_specified_name37064:%!

_user_specified_name37066:%!

_user_specified_name37068:%!

_user_specified_name37070:%!

_user_specified_name37072:%!

_user_specified_name37074:%!

_user_specified_name37076:%!

_user_specified_name37078:%!

_user_specified_name37080:%!

_user_specified_name37082:%!

_user_specified_name37084:%!

_user_specified_name37086:%!

_user_specified_name37088:%!

_user_specified_name37090:%!

_user_specified_name37092:%!

_user_specified_name37094:%!

_user_specified_name37096:%!

_user_specified_name37098:% !

_user_specified_name37100:%!!

_user_specified_name37102:%"!

_user_specified_name37104:%#!

_user_specified_name37106:%$!

_user_specified_name37108:%%!

_user_specified_name37110:%&!

_user_specified_name37112:%'!

_user_specified_name37114:%(!

_user_specified_name37116:%)!

_user_specified_name37118:%*!

_user_specified_name37120:%+!

_user_specified_name37122:%,!

_user_specified_name37124:%-!

_user_specified_name37126:%.!

_user_specified_name37128:%/!

_user_specified_name37130:%0!

_user_specified_name37132:%1!

_user_specified_name37134:%2!

_user_specified_name37136:%3!

_user_specified_name37138:%4!

_user_specified_name37140:%5!

_user_specified_name37142:%6!

_user_specified_name37144:%7!

_user_specified_name37146:%8!

_user_specified_name37148:%9!

_user_specified_name37150:%:!

_user_specified_name37152:%;!

_user_specified_name37154:%<!

_user_specified_name37156:%=!

_user_specified_name37158:%>!

_user_specified_name37160:%?!

_user_specified_name37162:%@!

_user_specified_name37164:%A!

_user_specified_name37166:%B!

_user_specified_name37168:%C!

_user_specified_name37170:%D!

_user_specified_name37172:%E!

_user_specified_name37174:%F!

_user_specified_name37176:%G!

_user_specified_name37178:%H!

_user_specified_name37180:%I!

_user_specified_name37182:%J!

_user_specified_name37184:%K!

_user_specified_name37186:%L!

_user_specified_name37188:%M!

_user_specified_name37190
�
j
@__inference_add_8_layer_call_and_return_conditional_losses_36119

inputs
inputs_1
identityZ
addAddV2inputsinputs_1*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::�����������:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:YU
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_38198

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_38181

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_57_layer_call_and_return_conditional_losses_37730

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_35852

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_54_layer_call_and_return_conditional_losses_37463

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
l
@__inference_add_9_layer_call_and_return_conditional_losses_37950
inputs_0
inputs_1
identity\
addAddV2inputs_0inputs_1*
T0*1
_output_shapes
:�����������<Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::�����������<:�����������<:[ W
1
_output_shapes
:�����������<
"
_user_specified_name
inputs_0:[W
1
_output_shapes
:�����������<
"
_user_specified_name
inputs_1
��
�%
B__inference_model_4_layer_call_and_return_conditional_losses_36386
input_1)
conv2d_36_36040:
conv2d_36_36042:*
batch_normalization_52_36045:*
batch_normalization_52_36047:*
batch_normalization_52_36049:3
depthwise_conv2d_16_36064:'
depthwise_conv2d_16_36066:3
separable_conv2d_16_36069:3
separable_conv2d_16_36071:Z'
separable_conv2d_16_36073:*
batch_normalization_53_36076:*
batch_normalization_53_36078:*
batch_normalization_53_36080:3
depthwise_conv2d_17_36095:'
depthwise_conv2d_17_36097:3
separable_conv2d_17_36100:3
separable_conv2d_17_36102:Z'
separable_conv2d_17_36104:*
batch_normalization_54_36107:*
batch_normalization_54_36109:*
batch_normalization_54_36111:)
conv2d_37_36132:
conv2d_37_36134:*
batch_normalization_55_36137:*
batch_normalization_55_36139:*
batch_normalization_55_36141:)
conv2d_38_36155:
conv2d_38_36157:*
batch_normalization_56_36160:*
batch_normalization_56_36162:*
batch_normalization_56_36164:)
conv2d_39_36179:<
conv2d_39_36181:<*
batch_normalization_57_36184:<*
batch_normalization_57_36186:<*
batch_normalization_57_36188:<3
depthwise_conv2d_18_36203:<'
depthwise_conv2d_18_36205:<3
separable_conv2d_18_36208:<4
separable_conv2d_18_36210:�<'
separable_conv2d_18_36212:<*
batch_normalization_58_36215:<*
batch_normalization_58_36217:<*
batch_normalization_58_36219:<3
depthwise_conv2d_19_36234:<'
depthwise_conv2d_19_36236:<3
separable_conv2d_19_36239:<4
separable_conv2d_19_36241:�<'
separable_conv2d_19_36243:<*
batch_normalization_59_36246:<*
batch_normalization_59_36248:<*
batch_normalization_59_36250:<)
conv2d_40_36271:<<
conv2d_40_36273:<*
batch_normalization_60_36276:<*
batch_normalization_60_36278:<*
batch_normalization_60_36280:<)
conv2d_41_36295:<<
conv2d_41_36297:<*
batch_normalization_61_36300:<*
batch_normalization_61_36302:<*
batch_normalization_61_36304:<)
conv2d_42_36319:<<
conv2d_42_36321:<*
batch_normalization_62_36324:<*
batch_normalization_62_36326:<*
batch_normalization_62_36328:<)
conv2d_43_36343:<
conv2d_43_36345:*
batch_normalization_63_36348:*
batch_normalization_63_36350:*
batch_normalization_63_36352:)
conv2d_44_36366:
conv2d_44_36368:*
batch_normalization_64_36371:*
batch_normalization_64_36373:*
batch_normalization_64_36375:
identity��.batch_normalization_52/StatefulPartitionedCall�.batch_normalization_53/StatefulPartitionedCall�.batch_normalization_54/StatefulPartitionedCall�.batch_normalization_55/StatefulPartitionedCall�.batch_normalization_56/StatefulPartitionedCall�.batch_normalization_57/StatefulPartitionedCall�.batch_normalization_58/StatefulPartitionedCall�.batch_normalization_59/StatefulPartitionedCall�.batch_normalization_60/StatefulPartitionedCall�.batch_normalization_61/StatefulPartitionedCall�.batch_normalization_62/StatefulPartitionedCall�.batch_normalization_63/StatefulPartitionedCall�.batch_normalization_64/StatefulPartitionedCall�!conv2d_36/StatefulPartitionedCall�!conv2d_37/StatefulPartitionedCall�!conv2d_38/StatefulPartitionedCall�!conv2d_39/StatefulPartitionedCall�!conv2d_40/StatefulPartitionedCall�!conv2d_41/StatefulPartitionedCall�!conv2d_42/StatefulPartitionedCall�!conv2d_43/StatefulPartitionedCall�!conv2d_44/StatefulPartitionedCall�+depthwise_conv2d_16/StatefulPartitionedCall�+depthwise_conv2d_17/StatefulPartitionedCall�+depthwise_conv2d_18/StatefulPartitionedCall�+depthwise_conv2d_19/StatefulPartitionedCall�+separable_conv2d_16/StatefulPartitionedCall�+separable_conv2d_17/StatefulPartitionedCall�+separable_conv2d_18/StatefulPartitionedCall�+separable_conv2d_19/StatefulPartitionedCall�
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_36_36040conv2d_36_36042*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_36_layer_call_and_return_conditional_losses_36039�
.batch_normalization_52/StatefulPartitionedCallStatefulPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0batch_normalization_52_36045batch_normalization_52_36047batch_normalization_52_36049*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_52_layer_call_and_return_conditional_losses_35154�
+depthwise_conv2d_16/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_52/StatefulPartitionedCall:output:0depthwise_conv2d_16_36064depthwise_conv2d_16_36066*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_depthwise_conv2d_16_layer_call_and_return_conditional_losses_36063�
+separable_conv2d_16/StatefulPartitionedCallStatefulPartitionedCall4depthwise_conv2d_16/StatefulPartitionedCall:output:0separable_conv2d_16_36069separable_conv2d_16_36071separable_conv2d_16_36073*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_separable_conv2d_16_layer_call_and_return_conditional_losses_35209�
.batch_normalization_53/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_16/StatefulPartitionedCall:output:0batch_normalization_53_36076batch_normalization_53_36078batch_normalization_53_36080*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_53_layer_call_and_return_conditional_losses_35237�
+depthwise_conv2d_17/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_53/StatefulPartitionedCall:output:0depthwise_conv2d_17_36095depthwise_conv2d_17_36097*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_depthwise_conv2d_17_layer_call_and_return_conditional_losses_36094�
+separable_conv2d_17/StatefulPartitionedCallStatefulPartitionedCall4depthwise_conv2d_17/StatefulPartitionedCall:output:0separable_conv2d_17_36100separable_conv2d_17_36102separable_conv2d_17_36104*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_separable_conv2d_17_layer_call_and_return_conditional_losses_35292�
.batch_normalization_54/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_17/StatefulPartitionedCall:output:0batch_normalization_54_36107batch_normalization_54_36109batch_normalization_54_36111*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_54_layer_call_and_return_conditional_losses_35320�
add_8/PartitionedCallPartitionedCall7batch_normalization_52/StatefulPartitionedCall:output:07batch_normalization_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_8_layer_call_and_return_conditional_losses_36119�
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCalladd_8/PartitionedCall:output:0conv2d_37_36132conv2d_37_36134*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_37_layer_call_and_return_conditional_losses_36131�
.batch_normalization_55/StatefulPartitionedCallStatefulPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0batch_normalization_55_36137batch_normalization_55_36139batch_normalization_55_36141*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_55_layer_call_and_return_conditional_losses_35376�
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_55/StatefulPartitionedCall:output:0conv2d_38_36155conv2d_38_36157*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_38_layer_call_and_return_conditional_losses_36154�
.batch_normalization_56/StatefulPartitionedCallStatefulPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0batch_normalization_56_36160batch_normalization_56_36162batch_normalization_56_36164*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_56_layer_call_and_return_conditional_losses_35432�
$average_pooling2d_16/PartitionedCallPartitionedCall7batch_normalization_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_average_pooling2d_16_layer_call_and_return_conditional_losses_35476�
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_16/PartitionedCall:output:0conv2d_39_36179conv2d_39_36181*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_39_layer_call_and_return_conditional_losses_36178�
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0batch_normalization_57_36184batch_normalization_57_36186batch_normalization_57_36188*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_57_layer_call_and_return_conditional_losses_35498�
+depthwise_conv2d_18/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0depthwise_conv2d_18_36203depthwise_conv2d_18_36205*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_depthwise_conv2d_18_layer_call_and_return_conditional_losses_36202�
+separable_conv2d_18/StatefulPartitionedCallStatefulPartitionedCall4depthwise_conv2d_18/StatefulPartitionedCall:output:0separable_conv2d_18_36208separable_conv2d_18_36210separable_conv2d_18_36212*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_separable_conv2d_18_layer_call_and_return_conditional_losses_35553�
.batch_normalization_58/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_18/StatefulPartitionedCall:output:0batch_normalization_58_36215batch_normalization_58_36217batch_normalization_58_36219*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_58_layer_call_and_return_conditional_losses_35581�
+depthwise_conv2d_19/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_58/StatefulPartitionedCall:output:0depthwise_conv2d_19_36234depthwise_conv2d_19_36236*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_depthwise_conv2d_19_layer_call_and_return_conditional_losses_36233�
+separable_conv2d_19/StatefulPartitionedCallStatefulPartitionedCall4depthwise_conv2d_19/StatefulPartitionedCall:output:0separable_conv2d_19_36239separable_conv2d_19_36241separable_conv2d_19_36243*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_separable_conv2d_19_layer_call_and_return_conditional_losses_35636�
.batch_normalization_59/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_19/StatefulPartitionedCall:output:0batch_normalization_59_36246batch_normalization_59_36248batch_normalization_59_36250*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_59_layer_call_and_return_conditional_losses_35664�
add_9/PartitionedCallPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:07batch_normalization_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_9_layer_call_and_return_conditional_losses_36258�
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCalladd_9/PartitionedCall:output:0conv2d_40_36271conv2d_40_36273*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_40_layer_call_and_return_conditional_losses_36270�
.batch_normalization_60/StatefulPartitionedCallStatefulPartitionedCall*conv2d_40/StatefulPartitionedCall:output:0batch_normalization_60_36276batch_normalization_60_36278batch_normalization_60_36280*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_35720�
$average_pooling2d_17/PartitionedCallPartitionedCall7batch_normalization_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_average_pooling2d_17_layer_call_and_return_conditional_losses_35764�
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_17/PartitionedCall:output:0conv2d_41_36295conv2d_41_36297*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_41_layer_call_and_return_conditional_losses_36294�
.batch_normalization_61/StatefulPartitionedCallStatefulPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0batch_normalization_61_36300batch_normalization_61_36302batch_normalization_61_36304*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@<*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_35786�
$average_pooling2d_18/PartitionedCallPartitionedCall7batch_normalization_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  <* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_average_pooling2d_18_layer_call_and_return_conditional_losses_35830�
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_18/PartitionedCall:output:0conv2d_42_36319conv2d_42_36321*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  <*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_42_layer_call_and_return_conditional_losses_36318�
.batch_normalization_62/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0batch_normalization_62_36324batch_normalization_62_36326batch_normalization_62_36328*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  <*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_35852�
$average_pooling2d_19/PartitionedCallPartitionedCall7batch_normalization_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_average_pooling2d_19_layer_call_and_return_conditional_losses_35896�
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_19/PartitionedCall:output:0conv2d_43_36343conv2d_43_36345*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_43_layer_call_and_return_conditional_losses_36342�
.batch_normalization_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0batch_normalization_63_36348batch_normalization_63_36350batch_normalization_63_36352*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_35918�
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_63/StatefulPartitionedCall:output:0conv2d_44_36366conv2d_44_36368*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_44_layer_call_and_return_conditional_losses_36365�
.batch_normalization_64/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0batch_normalization_64_36371batch_normalization_64_36373batch_normalization_64_36375*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_35974�
*global_average_pooling2d_4/PartitionedCallPartitionedCall7batch_normalization_64/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_36019�
softmax_4/PartitionedCallPartitionedCall3global_average_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_softmax_4_layer_call_and_return_conditional_losses_36383q
IdentityIdentity"softmax_4/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������

NoOpNoOp/^batch_normalization_52/StatefulPartitionedCall/^batch_normalization_53/StatefulPartitionedCall/^batch_normalization_54/StatefulPartitionedCall/^batch_normalization_55/StatefulPartitionedCall/^batch_normalization_56/StatefulPartitionedCall/^batch_normalization_57/StatefulPartitionedCall/^batch_normalization_58/StatefulPartitionedCall/^batch_normalization_59/StatefulPartitionedCall/^batch_normalization_60/StatefulPartitionedCall/^batch_normalization_61/StatefulPartitionedCall/^batch_normalization_62/StatefulPartitionedCall/^batch_normalization_63/StatefulPartitionedCall/^batch_normalization_64/StatefulPartitionedCall"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall"^conv2d_39/StatefulPartitionedCall"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall,^depthwise_conv2d_16/StatefulPartitionedCall,^depthwise_conv2d_17/StatefulPartitionedCall,^depthwise_conv2d_18/StatefulPartitionedCall,^depthwise_conv2d_19/StatefulPartitionedCall,^separable_conv2d_16/StatefulPartitionedCall,^separable_conv2d_17/StatefulPartitionedCall,^separable_conv2d_18/StatefulPartitionedCall,^separable_conv2d_19/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_52/StatefulPartitionedCall.batch_normalization_52/StatefulPartitionedCall2`
.batch_normalization_53/StatefulPartitionedCall.batch_normalization_53/StatefulPartitionedCall2`
.batch_normalization_54/StatefulPartitionedCall.batch_normalization_54/StatefulPartitionedCall2`
.batch_normalization_55/StatefulPartitionedCall.batch_normalization_55/StatefulPartitionedCall2`
.batch_normalization_56/StatefulPartitionedCall.batch_normalization_56/StatefulPartitionedCall2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2`
.batch_normalization_58/StatefulPartitionedCall.batch_normalization_58/StatefulPartitionedCall2`
.batch_normalization_59/StatefulPartitionedCall.batch_normalization_59/StatefulPartitionedCall2`
.batch_normalization_60/StatefulPartitionedCall.batch_normalization_60/StatefulPartitionedCall2`
.batch_normalization_61/StatefulPartitionedCall.batch_normalization_61/StatefulPartitionedCall2`
.batch_normalization_62/StatefulPartitionedCall.batch_normalization_62/StatefulPartitionedCall2`
.batch_normalization_63/StatefulPartitionedCall.batch_normalization_63/StatefulPartitionedCall2`
.batch_normalization_64/StatefulPartitionedCall.batch_normalization_64/StatefulPartitionedCall2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2Z
+depthwise_conv2d_16/StatefulPartitionedCall+depthwise_conv2d_16/StatefulPartitionedCall2Z
+depthwise_conv2d_17/StatefulPartitionedCall+depthwise_conv2d_17/StatefulPartitionedCall2Z
+depthwise_conv2d_18/StatefulPartitionedCall+depthwise_conv2d_18/StatefulPartitionedCall2Z
+depthwise_conv2d_19/StatefulPartitionedCall+depthwise_conv2d_19/StatefulPartitionedCall2Z
+separable_conv2d_16/StatefulPartitionedCall+separable_conv2d_16/StatefulPartitionedCall2Z
+separable_conv2d_17/StatefulPartitionedCall+separable_conv2d_17/StatefulPartitionedCall2Z
+separable_conv2d_18/StatefulPartitionedCall+separable_conv2d_18/StatefulPartitionedCall2Z
+separable_conv2d_19/StatefulPartitionedCall+separable_conv2d_19/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:%!

_user_specified_name36040:%!

_user_specified_name36042:%!

_user_specified_name36045:%!

_user_specified_name36047:%!

_user_specified_name36049:%!

_user_specified_name36064:%!

_user_specified_name36066:%!

_user_specified_name36069:%	!

_user_specified_name36071:%
!

_user_specified_name36073:%!

_user_specified_name36076:%!

_user_specified_name36078:%!

_user_specified_name36080:%!

_user_specified_name36095:%!

_user_specified_name36097:%!

_user_specified_name36100:%!

_user_specified_name36102:%!

_user_specified_name36104:%!

_user_specified_name36107:%!

_user_specified_name36109:%!

_user_specified_name36111:%!

_user_specified_name36132:%!

_user_specified_name36134:%!

_user_specified_name36137:%!

_user_specified_name36139:%!

_user_specified_name36141:%!

_user_specified_name36155:%!

_user_specified_name36157:%!

_user_specified_name36160:%!

_user_specified_name36162:%!

_user_specified_name36164:% !

_user_specified_name36179:%!!

_user_specified_name36181:%"!

_user_specified_name36184:%#!

_user_specified_name36186:%$!

_user_specified_name36188:%%!

_user_specified_name36203:%&!

_user_specified_name36205:%'!

_user_specified_name36208:%(!

_user_specified_name36210:%)!

_user_specified_name36212:%*!

_user_specified_name36215:%+!

_user_specified_name36217:%,!

_user_specified_name36219:%-!

_user_specified_name36234:%.!

_user_specified_name36236:%/!

_user_specified_name36239:%0!

_user_specified_name36241:%1!

_user_specified_name36243:%2!

_user_specified_name36246:%3!

_user_specified_name36248:%4!

_user_specified_name36250:%5!

_user_specified_name36271:%6!

_user_specified_name36273:%7!

_user_specified_name36276:%8!

_user_specified_name36278:%9!

_user_specified_name36280:%:!

_user_specified_name36295:%;!

_user_specified_name36297:%<!

_user_specified_name36300:%=!

_user_specified_name36302:%>!

_user_specified_name36304:%?!

_user_specified_name36319:%@!

_user_specified_name36321:%A!

_user_specified_name36324:%B!

_user_specified_name36326:%C!

_user_specified_name36328:%D!

_user_specified_name36343:%E!

_user_specified_name36345:%F!

_user_specified_name36348:%G!

_user_specified_name36350:%H!

_user_specified_name36352:%I!

_user_specified_name36366:%J!

_user_specified_name36368:%K!

_user_specified_name36371:%L!

_user_specified_name36373:%M!

_user_specified_name36375
�
�
N__inference_depthwise_conv2d_16_layer_call_and_return_conditional_losses_36063

inputs;
!depthwise_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�depthwise/ReadVariableOp�
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:*
dtype0h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAdddepthwise:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:�����������V
NoOpNoOp^BiasAdd/ReadVariableOp^depthwise/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
q
U__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_38371

inputs
identityg
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_37_layer_call_and_return_conditional_losses_37512

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
)__inference_conv2d_36_layer_call_fn_37203

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_36_layer_call_and_return_conditional_losses_36039y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:%!

_user_specified_name37197:%!

_user_specified_name37199
�
�
N__inference_separable_conv2d_19_layer_call_and_return_conditional_losses_35636

inputsB
(separable_conv2d_readvariableop_resource:<E
*separable_conv2d_readvariableop_1_resource:�<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*'
_output_shapes
:�<*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      <      o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+���������������������������<*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������<h
EluEluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������<z
IdentityIdentityElu:activations:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
V
:__inference_global_average_pooling2d_4_layer_call_fn_38365

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_36019i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
P
4__inference_average_pooling2d_19_layer_call_fn_38203

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_average_pooling2d_19_layer_call_and_return_conditional_losses_35896�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
k
O__inference_average_pooling2d_17_layer_call_and_return_conditional_losses_38036

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_59_layer_call_fn_37904

inputs
unknown:<
	unknown_0:<
	unknown_1:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_59_layer_call_and_return_conditional_losses_35681�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:%!

_user_specified_name37896:%!

_user_specified_name37898:%!

_user_specified_name37900
�
`
D__inference_softmax_4_layer_call_and_return_conditional_losses_36383

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:���������Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_39_layer_call_and_return_conditional_losses_37674

inputs8
conv2d_readvariableop_resource:<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������<j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������<S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_52_layer_call_and_return_conditional_losses_35154

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
N__inference_depthwise_conv2d_19_layer_call_and_return_conditional_losses_37855

inputs;
!depthwise_readvariableop_resource:<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�depthwise/ReadVariableOp�
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:<*
dtype0h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      <      h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
BiasAddBiasAdddepthwise:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:�����������<V
NoOpNoOp^BiasAdd/ReadVariableOp^depthwise/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:Y U
1
_output_shapes
:�����������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
j
@__inference_add_9_layer_call_and_return_conditional_losses_36258

inputs
inputs_1
identityZ
addAddV2inputsinputs_1*
T0*1
_output_shapes
:�����������<Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::�����������<:�����������<:Y U
1
_output_shapes
:�����������<
 
_user_specified_nameinputs:YU
1
_output_shapes
:�����������<
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_35869

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
N__inference_separable_conv2d_18_layer_call_and_return_conditional_losses_35553

inputsB
(separable_conv2d_readvariableop_resource:<E
*separable_conv2d_readvariableop_1_resource:�<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*'
_output_shapes
:�<*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      <      o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+���������������������������<*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������<h
EluEluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������<z
IdentityIdentityElu:activations:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
N__inference_depthwise_conv2d_16_layer_call_and_return_conditional_losses_37293

inputs;
!depthwise_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�depthwise/ReadVariableOp�
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:*
dtype0h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAdddepthwise:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:�����������V
NoOpNoOp^BiasAdd/ReadVariableOp^depthwise/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_38112

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
6__inference_batch_normalization_61_layer_call_fn_38078

inputs
unknown:<
	unknown_0:<
	unknown_1:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_35803�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:%!

_user_specified_name38070:%!

_user_specified_name38072:%!

_user_specified_name38074
�
�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_38343

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
��
�8
!__inference__traced_restore_39141
file_prefix;
!assignvariableop_conv2d_36_kernel:/
!assignvariableop_1_conv2d_36_bias:<
.assignvariableop_2_batch_normalization_52_beta:C
5assignvariableop_3_batch_normalization_52_moving_mean:G
9assignvariableop_4_batch_normalization_52_moving_variance:Q
7assignvariableop_5_depthwise_conv2d_16_depthwise_kernel:9
+assignvariableop_6_depthwise_conv2d_16_bias:Q
7assignvariableop_7_separable_conv2d_16_depthwise_kernel:Q
7assignvariableop_8_separable_conv2d_16_pointwise_kernel:Z9
+assignvariableop_9_separable_conv2d_16_bias:=
/assignvariableop_10_batch_normalization_53_beta:D
6assignvariableop_11_batch_normalization_53_moving_mean:H
:assignvariableop_12_batch_normalization_53_moving_variance:R
8assignvariableop_13_depthwise_conv2d_17_depthwise_kernel::
,assignvariableop_14_depthwise_conv2d_17_bias:R
8assignvariableop_15_separable_conv2d_17_depthwise_kernel:R
8assignvariableop_16_separable_conv2d_17_pointwise_kernel:Z:
,assignvariableop_17_separable_conv2d_17_bias:=
/assignvariableop_18_batch_normalization_54_beta:D
6assignvariableop_19_batch_normalization_54_moving_mean:H
:assignvariableop_20_batch_normalization_54_moving_variance:>
$assignvariableop_21_conv2d_37_kernel:0
"assignvariableop_22_conv2d_37_bias:=
/assignvariableop_23_batch_normalization_55_beta:D
6assignvariableop_24_batch_normalization_55_moving_mean:H
:assignvariableop_25_batch_normalization_55_moving_variance:>
$assignvariableop_26_conv2d_38_kernel:0
"assignvariableop_27_conv2d_38_bias:=
/assignvariableop_28_batch_normalization_56_beta:D
6assignvariableop_29_batch_normalization_56_moving_mean:H
:assignvariableop_30_batch_normalization_56_moving_variance:>
$assignvariableop_31_conv2d_39_kernel:<0
"assignvariableop_32_conv2d_39_bias:<=
/assignvariableop_33_batch_normalization_57_beta:<D
6assignvariableop_34_batch_normalization_57_moving_mean:<H
:assignvariableop_35_batch_normalization_57_moving_variance:<R
8assignvariableop_36_depthwise_conv2d_18_depthwise_kernel:<:
,assignvariableop_37_depthwise_conv2d_18_bias:<R
8assignvariableop_38_separable_conv2d_18_depthwise_kernel:<S
8assignvariableop_39_separable_conv2d_18_pointwise_kernel:�<:
,assignvariableop_40_separable_conv2d_18_bias:<=
/assignvariableop_41_batch_normalization_58_beta:<D
6assignvariableop_42_batch_normalization_58_moving_mean:<H
:assignvariableop_43_batch_normalization_58_moving_variance:<R
8assignvariableop_44_depthwise_conv2d_19_depthwise_kernel:<:
,assignvariableop_45_depthwise_conv2d_19_bias:<R
8assignvariableop_46_separable_conv2d_19_depthwise_kernel:<S
8assignvariableop_47_separable_conv2d_19_pointwise_kernel:�<:
,assignvariableop_48_separable_conv2d_19_bias:<=
/assignvariableop_49_batch_normalization_59_beta:<D
6assignvariableop_50_batch_normalization_59_moving_mean:<H
:assignvariableop_51_batch_normalization_59_moving_variance:<>
$assignvariableop_52_conv2d_40_kernel:<<0
"assignvariableop_53_conv2d_40_bias:<=
/assignvariableop_54_batch_normalization_60_beta:<D
6assignvariableop_55_batch_normalization_60_moving_mean:<H
:assignvariableop_56_batch_normalization_60_moving_variance:<>
$assignvariableop_57_conv2d_41_kernel:<<0
"assignvariableop_58_conv2d_41_bias:<=
/assignvariableop_59_batch_normalization_61_beta:<D
6assignvariableop_60_batch_normalization_61_moving_mean:<H
:assignvariableop_61_batch_normalization_61_moving_variance:<>
$assignvariableop_62_conv2d_42_kernel:<<0
"assignvariableop_63_conv2d_42_bias:<=
/assignvariableop_64_batch_normalization_62_beta:<D
6assignvariableop_65_batch_normalization_62_moving_mean:<H
:assignvariableop_66_batch_normalization_62_moving_variance:<>
$assignvariableop_67_conv2d_43_kernel:<0
"assignvariableop_68_conv2d_43_bias:=
/assignvariableop_69_batch_normalization_63_beta:D
6assignvariableop_70_batch_normalization_63_moving_mean:H
:assignvariableop_71_batch_normalization_63_moving_variance:>
$assignvariableop_72_conv2d_44_kernel:0
"assignvariableop_73_conv2d_44_bias:=
/assignvariableop_74_batch_normalization_64_beta:D
6assignvariableop_75_batch_normalization_64_moving_mean:H
:assignvariableop_76_batch_normalization_64_moving_variance:%
assignvariableop_77_total_1: %
assignvariableop_78_count_1: #
assignvariableop_79_total: #
assignvariableop_80_count: 
identity_82��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_9�&
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*�&
value�%B�%RB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-3/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-3/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-5/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-6/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-14/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-15/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-15/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-16/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-16/moving_variance/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-17/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-18/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-18/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-19/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-19/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-21/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-21/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-23/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-23/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-23/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-25/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-25/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-25/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-27/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-27/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-27/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-28/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-29/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-29/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-29/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*�
value�B�RB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*`
dtypesV
T2R[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_36_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_36_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_52_betaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp5assignvariableop_3_batch_normalization_52_moving_meanIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp9assignvariableop_4_batch_normalization_52_moving_varianceIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp7assignvariableop_5_depthwise_conv2d_16_depthwise_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp+assignvariableop_6_depthwise_conv2d_16_biasIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp7assignvariableop_7_separable_conv2d_16_depthwise_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp7assignvariableop_8_separable_conv2d_16_pointwise_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp+assignvariableop_9_separable_conv2d_16_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp/assignvariableop_10_batch_normalization_53_betaIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp6assignvariableop_11_batch_normalization_53_moving_meanIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp:assignvariableop_12_batch_normalization_53_moving_varianceIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp8assignvariableop_13_depthwise_conv2d_17_depthwise_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp,assignvariableop_14_depthwise_conv2d_17_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp8assignvariableop_15_separable_conv2d_17_depthwise_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp8assignvariableop_16_separable_conv2d_17_pointwise_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp,assignvariableop_17_separable_conv2d_17_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp/assignvariableop_18_batch_normalization_54_betaIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp6assignvariableop_19_batch_normalization_54_moving_meanIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp:assignvariableop_20_batch_normalization_54_moving_varianceIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp$assignvariableop_21_conv2d_37_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp"assignvariableop_22_conv2d_37_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp/assignvariableop_23_batch_normalization_55_betaIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp6assignvariableop_24_batch_normalization_55_moving_meanIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp:assignvariableop_25_batch_normalization_55_moving_varianceIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp$assignvariableop_26_conv2d_38_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp"assignvariableop_27_conv2d_38_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp/assignvariableop_28_batch_normalization_56_betaIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp6assignvariableop_29_batch_normalization_56_moving_meanIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp:assignvariableop_30_batch_normalization_56_moving_varianceIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp$assignvariableop_31_conv2d_39_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp"assignvariableop_32_conv2d_39_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp/assignvariableop_33_batch_normalization_57_betaIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp6assignvariableop_34_batch_normalization_57_moving_meanIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp:assignvariableop_35_batch_normalization_57_moving_varianceIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp8assignvariableop_36_depthwise_conv2d_18_depthwise_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp,assignvariableop_37_depthwise_conv2d_18_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp8assignvariableop_38_separable_conv2d_18_depthwise_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp8assignvariableop_39_separable_conv2d_18_pointwise_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp,assignvariableop_40_separable_conv2d_18_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp/assignvariableop_41_batch_normalization_58_betaIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp6assignvariableop_42_batch_normalization_58_moving_meanIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp:assignvariableop_43_batch_normalization_58_moving_varianceIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp8assignvariableop_44_depthwise_conv2d_19_depthwise_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp,assignvariableop_45_depthwise_conv2d_19_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp8assignvariableop_46_separable_conv2d_19_depthwise_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp8assignvariableop_47_separable_conv2d_19_pointwise_kernelIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp,assignvariableop_48_separable_conv2d_19_biasIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp/assignvariableop_49_batch_normalization_59_betaIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp6assignvariableop_50_batch_normalization_59_moving_meanIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp:assignvariableop_51_batch_normalization_59_moving_varianceIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp$assignvariableop_52_conv2d_40_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp"assignvariableop_53_conv2d_40_biasIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp/assignvariableop_54_batch_normalization_60_betaIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp6assignvariableop_55_batch_normalization_60_moving_meanIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp:assignvariableop_56_batch_normalization_60_moving_varianceIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp$assignvariableop_57_conv2d_41_kernelIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp"assignvariableop_58_conv2d_41_biasIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp/assignvariableop_59_batch_normalization_61_betaIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp6assignvariableop_60_batch_normalization_61_moving_meanIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp:assignvariableop_61_batch_normalization_61_moving_varianceIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp$assignvariableop_62_conv2d_42_kernelIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp"assignvariableop_63_conv2d_42_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp/assignvariableop_64_batch_normalization_62_betaIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp6assignvariableop_65_batch_normalization_62_moving_meanIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp:assignvariableop_66_batch_normalization_62_moving_varianceIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp$assignvariableop_67_conv2d_43_kernelIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp"assignvariableop_68_conv2d_43_biasIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp/assignvariableop_69_batch_normalization_63_betaIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp6assignvariableop_70_batch_normalization_63_moving_meanIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp:assignvariableop_71_batch_normalization_63_moving_varianceIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp$assignvariableop_72_conv2d_44_kernelIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp"assignvariableop_73_conv2d_44_biasIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp/assignvariableop_74_batch_normalization_64_betaIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp6assignvariableop_75_batch_normalization_64_moving_meanIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp:assignvariableop_76_batch_normalization_64_moving_varianceIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOpassignvariableop_77_total_1Identity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOpassignvariableop_78_count_1Identity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOpassignvariableop_79_totalIdentity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOpassignvariableop_80_countIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_81Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_82IdentityIdentity_81:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_9*
_output_shapes
 "#
identity_82Identity_82:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
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
AssignVariableOp_80AssignVariableOp_802(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameconv2d_36/kernel:.*
(
_user_specified_nameconv2d_36/bias:;7
5
_user_specified_namebatch_normalization_52/beta:B>
<
_user_specified_name$"batch_normalization_52/moving_mean:FB
@
_user_specified_name(&batch_normalization_52/moving_variance:D@
>
_user_specified_name&$depthwise_conv2d_16/depthwise_kernel:84
2
_user_specified_namedepthwise_conv2d_16/bias:D@
>
_user_specified_name&$separable_conv2d_16/depthwise_kernel:D	@
>
_user_specified_name&$separable_conv2d_16/pointwise_kernel:8
4
2
_user_specified_nameseparable_conv2d_16/bias:;7
5
_user_specified_namebatch_normalization_53/beta:B>
<
_user_specified_name$"batch_normalization_53/moving_mean:FB
@
_user_specified_name(&batch_normalization_53/moving_variance:D@
>
_user_specified_name&$depthwise_conv2d_17/depthwise_kernel:84
2
_user_specified_namedepthwise_conv2d_17/bias:D@
>
_user_specified_name&$separable_conv2d_17/depthwise_kernel:D@
>
_user_specified_name&$separable_conv2d_17/pointwise_kernel:84
2
_user_specified_nameseparable_conv2d_17/bias:;7
5
_user_specified_namebatch_normalization_54/beta:B>
<
_user_specified_name$"batch_normalization_54/moving_mean:FB
@
_user_specified_name(&batch_normalization_54/moving_variance:0,
*
_user_specified_nameconv2d_37/kernel:.*
(
_user_specified_nameconv2d_37/bias:;7
5
_user_specified_namebatch_normalization_55/beta:B>
<
_user_specified_name$"batch_normalization_55/moving_mean:FB
@
_user_specified_name(&batch_normalization_55/moving_variance:0,
*
_user_specified_nameconv2d_38/kernel:.*
(
_user_specified_nameconv2d_38/bias:;7
5
_user_specified_namebatch_normalization_56/beta:B>
<
_user_specified_name$"batch_normalization_56/moving_mean:FB
@
_user_specified_name(&batch_normalization_56/moving_variance:0 ,
*
_user_specified_nameconv2d_39/kernel:.!*
(
_user_specified_nameconv2d_39/bias:;"7
5
_user_specified_namebatch_normalization_57/beta:B#>
<
_user_specified_name$"batch_normalization_57/moving_mean:F$B
@
_user_specified_name(&batch_normalization_57/moving_variance:D%@
>
_user_specified_name&$depthwise_conv2d_18/depthwise_kernel:8&4
2
_user_specified_namedepthwise_conv2d_18/bias:D'@
>
_user_specified_name&$separable_conv2d_18/depthwise_kernel:D(@
>
_user_specified_name&$separable_conv2d_18/pointwise_kernel:8)4
2
_user_specified_nameseparable_conv2d_18/bias:;*7
5
_user_specified_namebatch_normalization_58/beta:B+>
<
_user_specified_name$"batch_normalization_58/moving_mean:F,B
@
_user_specified_name(&batch_normalization_58/moving_variance:D-@
>
_user_specified_name&$depthwise_conv2d_19/depthwise_kernel:8.4
2
_user_specified_namedepthwise_conv2d_19/bias:D/@
>
_user_specified_name&$separable_conv2d_19/depthwise_kernel:D0@
>
_user_specified_name&$separable_conv2d_19/pointwise_kernel:814
2
_user_specified_nameseparable_conv2d_19/bias:;27
5
_user_specified_namebatch_normalization_59/beta:B3>
<
_user_specified_name$"batch_normalization_59/moving_mean:F4B
@
_user_specified_name(&batch_normalization_59/moving_variance:05,
*
_user_specified_nameconv2d_40/kernel:.6*
(
_user_specified_nameconv2d_40/bias:;77
5
_user_specified_namebatch_normalization_60/beta:B8>
<
_user_specified_name$"batch_normalization_60/moving_mean:F9B
@
_user_specified_name(&batch_normalization_60/moving_variance:0:,
*
_user_specified_nameconv2d_41/kernel:.;*
(
_user_specified_nameconv2d_41/bias:;<7
5
_user_specified_namebatch_normalization_61/beta:B=>
<
_user_specified_name$"batch_normalization_61/moving_mean:F>B
@
_user_specified_name(&batch_normalization_61/moving_variance:0?,
*
_user_specified_nameconv2d_42/kernel:.@*
(
_user_specified_nameconv2d_42/bias:;A7
5
_user_specified_namebatch_normalization_62/beta:BB>
<
_user_specified_name$"batch_normalization_62/moving_mean:FCB
@
_user_specified_name(&batch_normalization_62/moving_variance:0D,
*
_user_specified_nameconv2d_43/kernel:.E*
(
_user_specified_nameconv2d_43/bias:;F7
5
_user_specified_namebatch_normalization_63/beta:BG>
<
_user_specified_name$"batch_normalization_63/moving_mean:FHB
@
_user_specified_name(&batch_normalization_63/moving_variance:0I,
*
_user_specified_nameconv2d_44/kernel:.J*
(
_user_specified_nameconv2d_44/bias:;K7
5
_user_specified_namebatch_normalization_64/beta:BL>
<
_user_specified_name$"batch_normalization_64/moving_mean:FMB
@
_user_specified_name(&batch_normalization_64/moving_variance:'N#
!
_user_specified_name	total_1:'O#
!
_user_specified_name	count_1:%P!

_user_specified_nametotal:%Q!

_user_specified_namecount
�
P
4__inference_average_pooling2d_18_layer_call_fn_38117

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_average_pooling2d_18_layer_call_and_return_conditional_losses_35830�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�O
__inference__traced_save_38889
file_prefixA
'read_disablecopyonread_conv2d_36_kernel:5
'read_1_disablecopyonread_conv2d_36_bias:B
4read_2_disablecopyonread_batch_normalization_52_beta:I
;read_3_disablecopyonread_batch_normalization_52_moving_mean:M
?read_4_disablecopyonread_batch_normalization_52_moving_variance:W
=read_5_disablecopyonread_depthwise_conv2d_16_depthwise_kernel:?
1read_6_disablecopyonread_depthwise_conv2d_16_bias:W
=read_7_disablecopyonread_separable_conv2d_16_depthwise_kernel:W
=read_8_disablecopyonread_separable_conv2d_16_pointwise_kernel:Z?
1read_9_disablecopyonread_separable_conv2d_16_bias:C
5read_10_disablecopyonread_batch_normalization_53_beta:J
<read_11_disablecopyonread_batch_normalization_53_moving_mean:N
@read_12_disablecopyonread_batch_normalization_53_moving_variance:X
>read_13_disablecopyonread_depthwise_conv2d_17_depthwise_kernel:@
2read_14_disablecopyonread_depthwise_conv2d_17_bias:X
>read_15_disablecopyonread_separable_conv2d_17_depthwise_kernel:X
>read_16_disablecopyonread_separable_conv2d_17_pointwise_kernel:Z@
2read_17_disablecopyonread_separable_conv2d_17_bias:C
5read_18_disablecopyonread_batch_normalization_54_beta:J
<read_19_disablecopyonread_batch_normalization_54_moving_mean:N
@read_20_disablecopyonread_batch_normalization_54_moving_variance:D
*read_21_disablecopyonread_conv2d_37_kernel:6
(read_22_disablecopyonread_conv2d_37_bias:C
5read_23_disablecopyonread_batch_normalization_55_beta:J
<read_24_disablecopyonread_batch_normalization_55_moving_mean:N
@read_25_disablecopyonread_batch_normalization_55_moving_variance:D
*read_26_disablecopyonread_conv2d_38_kernel:6
(read_27_disablecopyonread_conv2d_38_bias:C
5read_28_disablecopyonread_batch_normalization_56_beta:J
<read_29_disablecopyonread_batch_normalization_56_moving_mean:N
@read_30_disablecopyonread_batch_normalization_56_moving_variance:D
*read_31_disablecopyonread_conv2d_39_kernel:<6
(read_32_disablecopyonread_conv2d_39_bias:<C
5read_33_disablecopyonread_batch_normalization_57_beta:<J
<read_34_disablecopyonread_batch_normalization_57_moving_mean:<N
@read_35_disablecopyonread_batch_normalization_57_moving_variance:<X
>read_36_disablecopyonread_depthwise_conv2d_18_depthwise_kernel:<@
2read_37_disablecopyonread_depthwise_conv2d_18_bias:<X
>read_38_disablecopyonread_separable_conv2d_18_depthwise_kernel:<Y
>read_39_disablecopyonread_separable_conv2d_18_pointwise_kernel:�<@
2read_40_disablecopyonread_separable_conv2d_18_bias:<C
5read_41_disablecopyonread_batch_normalization_58_beta:<J
<read_42_disablecopyonread_batch_normalization_58_moving_mean:<N
@read_43_disablecopyonread_batch_normalization_58_moving_variance:<X
>read_44_disablecopyonread_depthwise_conv2d_19_depthwise_kernel:<@
2read_45_disablecopyonread_depthwise_conv2d_19_bias:<X
>read_46_disablecopyonread_separable_conv2d_19_depthwise_kernel:<Y
>read_47_disablecopyonread_separable_conv2d_19_pointwise_kernel:�<@
2read_48_disablecopyonread_separable_conv2d_19_bias:<C
5read_49_disablecopyonread_batch_normalization_59_beta:<J
<read_50_disablecopyonread_batch_normalization_59_moving_mean:<N
@read_51_disablecopyonread_batch_normalization_59_moving_variance:<D
*read_52_disablecopyonread_conv2d_40_kernel:<<6
(read_53_disablecopyonread_conv2d_40_bias:<C
5read_54_disablecopyonread_batch_normalization_60_beta:<J
<read_55_disablecopyonread_batch_normalization_60_moving_mean:<N
@read_56_disablecopyonread_batch_normalization_60_moving_variance:<D
*read_57_disablecopyonread_conv2d_41_kernel:<<6
(read_58_disablecopyonread_conv2d_41_bias:<C
5read_59_disablecopyonread_batch_normalization_61_beta:<J
<read_60_disablecopyonread_batch_normalization_61_moving_mean:<N
@read_61_disablecopyonread_batch_normalization_61_moving_variance:<D
*read_62_disablecopyonread_conv2d_42_kernel:<<6
(read_63_disablecopyonread_conv2d_42_bias:<C
5read_64_disablecopyonread_batch_normalization_62_beta:<J
<read_65_disablecopyonread_batch_normalization_62_moving_mean:<N
@read_66_disablecopyonread_batch_normalization_62_moving_variance:<D
*read_67_disablecopyonread_conv2d_43_kernel:<6
(read_68_disablecopyonread_conv2d_43_bias:C
5read_69_disablecopyonread_batch_normalization_63_beta:J
<read_70_disablecopyonread_batch_normalization_63_moving_mean:N
@read_71_disablecopyonread_batch_normalization_63_moving_variance:D
*read_72_disablecopyonread_conv2d_44_kernel:6
(read_73_disablecopyonread_conv2d_44_bias:C
5read_74_disablecopyonread_batch_normalization_64_beta:J
<read_75_disablecopyonread_batch_normalization_64_moving_mean:N
@read_76_disablecopyonread_batch_normalization_64_moving_variance:+
!read_77_disablecopyonread_total_1: +
!read_78_disablecopyonread_count_1: )
read_79_disablecopyonread_total: )
read_80_disablecopyonread_count: 
savev2_const
identity_163��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_72/DisableCopyOnRead�Read_72/ReadVariableOp�Read_73/DisableCopyOnRead�Read_73/ReadVariableOp�Read_74/DisableCopyOnRead�Read_74/ReadVariableOp�Read_75/DisableCopyOnRead�Read_75/ReadVariableOp�Read_76/DisableCopyOnRead�Read_76/ReadVariableOp�Read_77/DisableCopyOnRead�Read_77/ReadVariableOp�Read_78/DisableCopyOnRead�Read_78/ReadVariableOp�Read_79/DisableCopyOnRead�Read_79/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_80/DisableCopyOnRead�Read_80/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_36_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_36_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_36_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_36_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_2/DisableCopyOnReadDisableCopyOnRead4read_2_disablecopyonread_batch_normalization_52_beta"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp4read_2_disablecopyonread_batch_normalization_52_beta^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_3/DisableCopyOnReadDisableCopyOnRead;read_3_disablecopyonread_batch_normalization_52_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp;read_3_disablecopyonread_batch_normalization_52_moving_mean^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_4/DisableCopyOnReadDisableCopyOnRead?read_4_disablecopyonread_batch_normalization_52_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp?read_4_disablecopyonread_batch_normalization_52_moving_variance^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_5/DisableCopyOnReadDisableCopyOnRead=read_5_disablecopyonread_depthwise_conv2d_16_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp=read_5_disablecopyonread_depthwise_conv2d_16_depthwise_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0v
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_6/DisableCopyOnReadDisableCopyOnRead1read_6_disablecopyonread_depthwise_conv2d_16_bias"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp1read_6_disablecopyonread_depthwise_conv2d_16_bias^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_7/DisableCopyOnReadDisableCopyOnRead=read_7_disablecopyonread_separable_conv2d_16_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp=read_7_disablecopyonread_separable_conv2d_16_depthwise_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0v
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_8/DisableCopyOnReadDisableCopyOnRead=read_8_disablecopyonread_separable_conv2d_16_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp=read_8_disablecopyonread_separable_conv2d_16_pointwise_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:Z*
dtype0v
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:Zm
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
:Z�
Read_9/DisableCopyOnReadDisableCopyOnRead1read_9_disablecopyonread_separable_conv2d_16_bias"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp1read_9_disablecopyonread_separable_conv2d_16_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_10/DisableCopyOnReadDisableCopyOnRead5read_10_disablecopyonread_batch_normalization_53_beta"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp5read_10_disablecopyonread_batch_normalization_53_beta^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_11/DisableCopyOnReadDisableCopyOnRead<read_11_disablecopyonread_batch_normalization_53_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp<read_11_disablecopyonread_batch_normalization_53_moving_mean^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_12/DisableCopyOnReadDisableCopyOnRead@read_12_disablecopyonread_batch_normalization_53_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp@read_12_disablecopyonread_batch_normalization_53_moving_variance^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_13/DisableCopyOnReadDisableCopyOnRead>read_13_disablecopyonread_depthwise_conv2d_17_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp>read_13_disablecopyonread_depthwise_conv2d_17_depthwise_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_14/DisableCopyOnReadDisableCopyOnRead2read_14_disablecopyonread_depthwise_conv2d_17_bias"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp2read_14_disablecopyonread_depthwise_conv2d_17_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_15/DisableCopyOnReadDisableCopyOnRead>read_15_disablecopyonread_separable_conv2d_17_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp>read_15_disablecopyonread_separable_conv2d_17_depthwise_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_16/DisableCopyOnReadDisableCopyOnRead>read_16_disablecopyonread_separable_conv2d_17_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp>read_16_disablecopyonread_separable_conv2d_17_pointwise_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:Z*
dtype0w
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:Zm
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*&
_output_shapes
:Z�
Read_17/DisableCopyOnReadDisableCopyOnRead2read_17_disablecopyonread_separable_conv2d_17_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp2read_17_disablecopyonread_separable_conv2d_17_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_18/DisableCopyOnReadDisableCopyOnRead5read_18_disablecopyonread_batch_normalization_54_beta"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp5read_18_disablecopyonread_batch_normalization_54_beta^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_19/DisableCopyOnReadDisableCopyOnRead<read_19_disablecopyonread_batch_normalization_54_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp<read_19_disablecopyonread_batch_normalization_54_moving_mean^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_20/DisableCopyOnReadDisableCopyOnRead@read_20_disablecopyonread_batch_normalization_54_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp@read_20_disablecopyonread_batch_normalization_54_moving_variance^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_21/DisableCopyOnReadDisableCopyOnRead*read_21_disablecopyonread_conv2d_37_kernel"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp*read_21_disablecopyonread_conv2d_37_kernel^Read_21/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*&
_output_shapes
:}
Read_22/DisableCopyOnReadDisableCopyOnRead(read_22_disablecopyonread_conv2d_37_bias"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp(read_22_disablecopyonread_conv2d_37_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_23/DisableCopyOnReadDisableCopyOnRead5read_23_disablecopyonread_batch_normalization_55_beta"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp5read_23_disablecopyonread_batch_normalization_55_beta^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_24/DisableCopyOnReadDisableCopyOnRead<read_24_disablecopyonread_batch_normalization_55_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp<read_24_disablecopyonread_batch_normalization_55_moving_mean^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_25/DisableCopyOnReadDisableCopyOnRead@read_25_disablecopyonread_batch_normalization_55_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp@read_25_disablecopyonread_batch_normalization_55_moving_variance^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_26/DisableCopyOnReadDisableCopyOnRead*read_26_disablecopyonread_conv2d_38_kernel"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp*read_26_disablecopyonread_conv2d_38_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*&
_output_shapes
:}
Read_27/DisableCopyOnReadDisableCopyOnRead(read_27_disablecopyonread_conv2d_38_bias"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp(read_27_disablecopyonread_conv2d_38_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_28/DisableCopyOnReadDisableCopyOnRead5read_28_disablecopyonread_batch_normalization_56_beta"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp5read_28_disablecopyonread_batch_normalization_56_beta^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_29/DisableCopyOnReadDisableCopyOnRead<read_29_disablecopyonread_batch_normalization_56_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp<read_29_disablecopyonread_batch_normalization_56_moving_mean^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_30/DisableCopyOnReadDisableCopyOnRead@read_30_disablecopyonread_batch_normalization_56_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp@read_30_disablecopyonread_batch_normalization_56_moving_variance^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_31/DisableCopyOnReadDisableCopyOnRead*read_31_disablecopyonread_conv2d_39_kernel"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp*read_31_disablecopyonread_conv2d_39_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:<*
dtype0w
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:<m
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*&
_output_shapes
:<}
Read_32/DisableCopyOnReadDisableCopyOnRead(read_32_disablecopyonread_conv2d_39_bias"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp(read_32_disablecopyonread_conv2d_39_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_33/DisableCopyOnReadDisableCopyOnRead5read_33_disablecopyonread_batch_normalization_57_beta"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp5read_33_disablecopyonread_batch_normalization_57_beta^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_34/DisableCopyOnReadDisableCopyOnRead<read_34_disablecopyonread_batch_normalization_57_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp<read_34_disablecopyonread_batch_normalization_57_moving_mean^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_35/DisableCopyOnReadDisableCopyOnRead@read_35_disablecopyonread_batch_normalization_57_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp@read_35_disablecopyonread_batch_normalization_57_moving_variance^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_36/DisableCopyOnReadDisableCopyOnRead>read_36_disablecopyonread_depthwise_conv2d_18_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp>read_36_disablecopyonread_depthwise_conv2d_18_depthwise_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:<*
dtype0w
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:<m
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*&
_output_shapes
:<�
Read_37/DisableCopyOnReadDisableCopyOnRead2read_37_disablecopyonread_depthwise_conv2d_18_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp2read_37_disablecopyonread_depthwise_conv2d_18_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_38/DisableCopyOnReadDisableCopyOnRead>read_38_disablecopyonread_separable_conv2d_18_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp>read_38_disablecopyonread_separable_conv2d_18_depthwise_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:<*
dtype0w
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:<m
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*&
_output_shapes
:<�
Read_39/DisableCopyOnReadDisableCopyOnRead>read_39_disablecopyonread_separable_conv2d_18_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp>read_39_disablecopyonread_separable_conv2d_18_pointwise_kernel^Read_39/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�<*
dtype0x
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�<n
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*'
_output_shapes
:�<�
Read_40/DisableCopyOnReadDisableCopyOnRead2read_40_disablecopyonread_separable_conv2d_18_bias"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp2read_40_disablecopyonread_separable_conv2d_18_bias^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_41/DisableCopyOnReadDisableCopyOnRead5read_41_disablecopyonread_batch_normalization_58_beta"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp5read_41_disablecopyonread_batch_normalization_58_beta^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0k
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_42/DisableCopyOnReadDisableCopyOnRead<read_42_disablecopyonread_batch_normalization_58_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp<read_42_disablecopyonread_batch_normalization_58_moving_mean^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_43/DisableCopyOnReadDisableCopyOnRead@read_43_disablecopyonread_batch_normalization_58_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp@read_43_disablecopyonread_batch_normalization_58_moving_variance^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_44/DisableCopyOnReadDisableCopyOnRead>read_44_disablecopyonread_depthwise_conv2d_19_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp>read_44_disablecopyonread_depthwise_conv2d_19_depthwise_kernel^Read_44/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:<*
dtype0w
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:<m
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*&
_output_shapes
:<�
Read_45/DisableCopyOnReadDisableCopyOnRead2read_45_disablecopyonread_depthwise_conv2d_19_bias"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp2read_45_disablecopyonread_depthwise_conv2d_19_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_46/DisableCopyOnReadDisableCopyOnRead>read_46_disablecopyonread_separable_conv2d_19_depthwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp>read_46_disablecopyonread_separable_conv2d_19_depthwise_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:<*
dtype0w
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:<m
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*&
_output_shapes
:<�
Read_47/DisableCopyOnReadDisableCopyOnRead>read_47_disablecopyonread_separable_conv2d_19_pointwise_kernel"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp>read_47_disablecopyonread_separable_conv2d_19_pointwise_kernel^Read_47/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:�<*
dtype0x
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:�<n
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*'
_output_shapes
:�<�
Read_48/DisableCopyOnReadDisableCopyOnRead2read_48_disablecopyonread_separable_conv2d_19_bias"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp2read_48_disablecopyonread_separable_conv2d_19_bias^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_49/DisableCopyOnReadDisableCopyOnRead5read_49_disablecopyonread_batch_normalization_59_beta"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp5read_49_disablecopyonread_batch_normalization_59_beta^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_50/DisableCopyOnReadDisableCopyOnRead<read_50_disablecopyonread_batch_normalization_59_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp<read_50_disablecopyonread_batch_normalization_59_moving_mean^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_51/DisableCopyOnReadDisableCopyOnRead@read_51_disablecopyonread_batch_normalization_59_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp@read_51_disablecopyonread_batch_normalization_59_moving_variance^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0l
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
:<
Read_52/DisableCopyOnReadDisableCopyOnRead*read_52_disablecopyonread_conv2d_40_kernel"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp*read_52_disablecopyonread_conv2d_40_kernel^Read_52/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:<<*
dtype0x
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:<<o
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*&
_output_shapes
:<<}
Read_53/DisableCopyOnReadDisableCopyOnRead(read_53_disablecopyonread_conv2d_40_bias"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp(read_53_disablecopyonread_conv2d_40_bias^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0l
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_54/DisableCopyOnReadDisableCopyOnRead5read_54_disablecopyonread_batch_normalization_60_beta"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp5read_54_disablecopyonread_batch_normalization_60_beta^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_55/DisableCopyOnReadDisableCopyOnRead<read_55_disablecopyonread_batch_normalization_60_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp<read_55_disablecopyonread_batch_normalization_60_moving_mean^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_56/DisableCopyOnReadDisableCopyOnRead@read_56_disablecopyonread_batch_normalization_60_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp@read_56_disablecopyonread_batch_normalization_60_moving_variance^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:<
Read_57/DisableCopyOnReadDisableCopyOnRead*read_57_disablecopyonread_conv2d_41_kernel"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp*read_57_disablecopyonread_conv2d_41_kernel^Read_57/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:<<*
dtype0x
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:<<o
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*&
_output_shapes
:<<}
Read_58/DisableCopyOnReadDisableCopyOnRead(read_58_disablecopyonread_conv2d_41_bias"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp(read_58_disablecopyonread_conv2d_41_bias^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0l
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_59/DisableCopyOnReadDisableCopyOnRead5read_59_disablecopyonread_batch_normalization_61_beta"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp5read_59_disablecopyonread_batch_normalization_61_beta^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0l
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_60/DisableCopyOnReadDisableCopyOnRead<read_60_disablecopyonread_batch_normalization_61_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp<read_60_disablecopyonread_batch_normalization_61_moving_mean^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_61/DisableCopyOnReadDisableCopyOnRead@read_61_disablecopyonread_batch_normalization_61_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp@read_61_disablecopyonread_batch_normalization_61_moving_variance^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0l
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:<
Read_62/DisableCopyOnReadDisableCopyOnRead*read_62_disablecopyonread_conv2d_42_kernel"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp*read_62_disablecopyonread_conv2d_42_kernel^Read_62/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:<<*
dtype0x
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:<<o
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*&
_output_shapes
:<<}
Read_63/DisableCopyOnReadDisableCopyOnRead(read_63_disablecopyonread_conv2d_42_bias"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp(read_63_disablecopyonread_conv2d_42_bias^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_64/DisableCopyOnReadDisableCopyOnRead5read_64_disablecopyonread_batch_normalization_62_beta"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp5read_64_disablecopyonread_batch_normalization_62_beta^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0l
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<c
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_65/DisableCopyOnReadDisableCopyOnRead<read_65_disablecopyonread_batch_normalization_62_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp<read_65_disablecopyonread_batch_normalization_62_moving_mean^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0l
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<c
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
:<�
Read_66/DisableCopyOnReadDisableCopyOnRead@read_66_disablecopyonread_batch_normalization_62_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp@read_66_disablecopyonread_batch_normalization_62_moving_variance^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:<*
dtype0l
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:<c
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes
:<
Read_67/DisableCopyOnReadDisableCopyOnRead*read_67_disablecopyonread_conv2d_43_kernel"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp*read_67_disablecopyonread_conv2d_43_kernel^Read_67/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:<*
dtype0x
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:<o
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*&
_output_shapes
:<}
Read_68/DisableCopyOnReadDisableCopyOnRead(read_68_disablecopyonread_conv2d_43_bias"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp(read_68_disablecopyonread_conv2d_43_bias^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_69/DisableCopyOnReadDisableCopyOnRead5read_69_disablecopyonread_batch_normalization_63_beta"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp5read_69_disablecopyonread_batch_normalization_63_beta^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_70/DisableCopyOnReadDisableCopyOnRead<read_70_disablecopyonread_batch_normalization_63_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp<read_70_disablecopyonread_batch_normalization_63_moving_mean^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_71/DisableCopyOnReadDisableCopyOnRead@read_71_disablecopyonread_batch_normalization_63_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOp@read_71_disablecopyonread_batch_normalization_63_moving_variance^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_72/DisableCopyOnReadDisableCopyOnRead*read_72_disablecopyonread_conv2d_44_kernel"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp*read_72_disablecopyonread_conv2d_44_kernel^Read_72/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*&
_output_shapes
:}
Read_73/DisableCopyOnReadDisableCopyOnRead(read_73_disablecopyonread_conv2d_44_bias"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp(read_73_disablecopyonread_conv2d_44_bias^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_74/DisableCopyOnReadDisableCopyOnRead5read_74_disablecopyonread_batch_normalization_64_beta"/device:CPU:0*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp5read_74_disablecopyonread_batch_normalization_64_beta^Read_74/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_75/DisableCopyOnReadDisableCopyOnRead<read_75_disablecopyonread_batch_normalization_64_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp<read_75_disablecopyonread_batch_normalization_64_moving_mean^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_76/DisableCopyOnReadDisableCopyOnRead@read_76_disablecopyonread_batch_normalization_64_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOp@read_76_disablecopyonread_batch_normalization_64_moving_variance^Read_76/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_77/DisableCopyOnReadDisableCopyOnRead!read_77_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOp!read_77_disablecopyonread_total_1^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_78/DisableCopyOnReadDisableCopyOnRead!read_78_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOp!read_78_disablecopyonread_count_1^Read_78/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_79/DisableCopyOnReadDisableCopyOnReadread_79_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOpread_79_disablecopyonread_total^Read_79/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_80/DisableCopyOnReadDisableCopyOnReadread_80_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_80/ReadVariableOpReadVariableOpread_80_disablecopyonread_count^Read_80/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*
_output_shapes
: �&
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*�&
value�%B�%RB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-3/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-3/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-5/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-6/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-14/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-15/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-15/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-16/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-16/moving_variance/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-17/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-18/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-18/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-19/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-19/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-21/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-21/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-23/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-23/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-23/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-25/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-25/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-25/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-27/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-27/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-27/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-28/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-29/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-29/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-29/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*�
value�B�RB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *`
dtypesV
T2R�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_162Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_163IdentityIdentity_162:output:0^NoOp*
T0*
_output_shapes
: �!
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_163Identity_163:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameconv2d_36/kernel:.*
(
_user_specified_nameconv2d_36/bias:;7
5
_user_specified_namebatch_normalization_52/beta:B>
<
_user_specified_name$"batch_normalization_52/moving_mean:FB
@
_user_specified_name(&batch_normalization_52/moving_variance:D@
>
_user_specified_name&$depthwise_conv2d_16/depthwise_kernel:84
2
_user_specified_namedepthwise_conv2d_16/bias:D@
>
_user_specified_name&$separable_conv2d_16/depthwise_kernel:D	@
>
_user_specified_name&$separable_conv2d_16/pointwise_kernel:8
4
2
_user_specified_nameseparable_conv2d_16/bias:;7
5
_user_specified_namebatch_normalization_53/beta:B>
<
_user_specified_name$"batch_normalization_53/moving_mean:FB
@
_user_specified_name(&batch_normalization_53/moving_variance:D@
>
_user_specified_name&$depthwise_conv2d_17/depthwise_kernel:84
2
_user_specified_namedepthwise_conv2d_17/bias:D@
>
_user_specified_name&$separable_conv2d_17/depthwise_kernel:D@
>
_user_specified_name&$separable_conv2d_17/pointwise_kernel:84
2
_user_specified_nameseparable_conv2d_17/bias:;7
5
_user_specified_namebatch_normalization_54/beta:B>
<
_user_specified_name$"batch_normalization_54/moving_mean:FB
@
_user_specified_name(&batch_normalization_54/moving_variance:0,
*
_user_specified_nameconv2d_37/kernel:.*
(
_user_specified_nameconv2d_37/bias:;7
5
_user_specified_namebatch_normalization_55/beta:B>
<
_user_specified_name$"batch_normalization_55/moving_mean:FB
@
_user_specified_name(&batch_normalization_55/moving_variance:0,
*
_user_specified_nameconv2d_38/kernel:.*
(
_user_specified_nameconv2d_38/bias:;7
5
_user_specified_namebatch_normalization_56/beta:B>
<
_user_specified_name$"batch_normalization_56/moving_mean:FB
@
_user_specified_name(&batch_normalization_56/moving_variance:0 ,
*
_user_specified_nameconv2d_39/kernel:.!*
(
_user_specified_nameconv2d_39/bias:;"7
5
_user_specified_namebatch_normalization_57/beta:B#>
<
_user_specified_name$"batch_normalization_57/moving_mean:F$B
@
_user_specified_name(&batch_normalization_57/moving_variance:D%@
>
_user_specified_name&$depthwise_conv2d_18/depthwise_kernel:8&4
2
_user_specified_namedepthwise_conv2d_18/bias:D'@
>
_user_specified_name&$separable_conv2d_18/depthwise_kernel:D(@
>
_user_specified_name&$separable_conv2d_18/pointwise_kernel:8)4
2
_user_specified_nameseparable_conv2d_18/bias:;*7
5
_user_specified_namebatch_normalization_58/beta:B+>
<
_user_specified_name$"batch_normalization_58/moving_mean:F,B
@
_user_specified_name(&batch_normalization_58/moving_variance:D-@
>
_user_specified_name&$depthwise_conv2d_19/depthwise_kernel:8.4
2
_user_specified_namedepthwise_conv2d_19/bias:D/@
>
_user_specified_name&$separable_conv2d_19/depthwise_kernel:D0@
>
_user_specified_name&$separable_conv2d_19/pointwise_kernel:814
2
_user_specified_nameseparable_conv2d_19/bias:;27
5
_user_specified_namebatch_normalization_59/beta:B3>
<
_user_specified_name$"batch_normalization_59/moving_mean:F4B
@
_user_specified_name(&batch_normalization_59/moving_variance:05,
*
_user_specified_nameconv2d_40/kernel:.6*
(
_user_specified_nameconv2d_40/bias:;77
5
_user_specified_namebatch_normalization_60/beta:B8>
<
_user_specified_name$"batch_normalization_60/moving_mean:F9B
@
_user_specified_name(&batch_normalization_60/moving_variance:0:,
*
_user_specified_nameconv2d_41/kernel:.;*
(
_user_specified_nameconv2d_41/bias:;<7
5
_user_specified_namebatch_normalization_61/beta:B=>
<
_user_specified_name$"batch_normalization_61/moving_mean:F>B
@
_user_specified_name(&batch_normalization_61/moving_variance:0?,
*
_user_specified_nameconv2d_42/kernel:.@*
(
_user_specified_nameconv2d_42/bias:;A7
5
_user_specified_namebatch_normalization_62/beta:BB>
<
_user_specified_name$"batch_normalization_62/moving_mean:FCB
@
_user_specified_name(&batch_normalization_62/moving_variance:0D,
*
_user_specified_nameconv2d_43/kernel:.E*
(
_user_specified_nameconv2d_43/bias:;F7
5
_user_specified_namebatch_normalization_63/beta:BG>
<
_user_specified_name$"batch_normalization_63/moving_mean:FHB
@
_user_specified_name(&batch_normalization_63/moving_variance:0I,
*
_user_specified_nameconv2d_44/kernel:.J*
(
_user_specified_nameconv2d_44/bias:;K7
5
_user_specified_namebatch_normalization_64/beta:BL>
<
_user_specified_name$"batch_normalization_64/moving_mean:FMB
@
_user_specified_name(&batch_normalization_64/moving_variance:'N#
!
_user_specified_name	total_1:'O#
!
_user_specified_name	count_1:%P!

_user_specified_nametotal:%Q!

_user_specified_namecount:=R9

_output_shapes
: 

_user_specified_nameConst
�	
�
6__inference_batch_normalization_57_layer_call_fn_37685

inputs
unknown:<
	unknown_0:<
	unknown_1:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������<*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_57_layer_call_and_return_conditional_losses_35498�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:%!

_user_specified_name37677:%!

_user_specified_name37679:%!

_user_specified_name37681
�
�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_35991

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_57_layer_call_and_return_conditional_losses_35515

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_38284

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
6__inference_batch_normalization_62_layer_call_fn_38164

inputs
unknown:<
	unknown_0:<
	unknown_1:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_35869�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:%!

_user_specified_name38156:%!

_user_specified_name38158:%!

_user_specified_name38160
�
�
Q__inference_batch_normalization_56_layer_call_and_return_conditional_losses_37644

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
��
�%
B__inference_model_4_layer_call_and_return_conditional_losses_36582
input_1)
conv2d_36_36389:
conv2d_36_36391:*
batch_normalization_52_36394:*
batch_normalization_52_36396:*
batch_normalization_52_36398:3
depthwise_conv2d_16_36401:'
depthwise_conv2d_16_36403:3
separable_conv2d_16_36406:3
separable_conv2d_16_36408:Z'
separable_conv2d_16_36410:*
batch_normalization_53_36413:*
batch_normalization_53_36415:*
batch_normalization_53_36417:3
depthwise_conv2d_17_36420:'
depthwise_conv2d_17_36422:3
separable_conv2d_17_36425:3
separable_conv2d_17_36427:Z'
separable_conv2d_17_36429:*
batch_normalization_54_36432:*
batch_normalization_54_36434:*
batch_normalization_54_36436:)
conv2d_37_36440:
conv2d_37_36442:*
batch_normalization_55_36445:*
batch_normalization_55_36447:*
batch_normalization_55_36449:)
conv2d_38_36452:
conv2d_38_36454:*
batch_normalization_56_36457:*
batch_normalization_56_36459:*
batch_normalization_56_36461:)
conv2d_39_36465:<
conv2d_39_36467:<*
batch_normalization_57_36470:<*
batch_normalization_57_36472:<*
batch_normalization_57_36474:<3
depthwise_conv2d_18_36477:<'
depthwise_conv2d_18_36479:<3
separable_conv2d_18_36482:<4
separable_conv2d_18_36484:�<'
separable_conv2d_18_36486:<*
batch_normalization_58_36489:<*
batch_normalization_58_36491:<*
batch_normalization_58_36493:<3
depthwise_conv2d_19_36496:<'
depthwise_conv2d_19_36498:<3
separable_conv2d_19_36501:<4
separable_conv2d_19_36503:�<'
separable_conv2d_19_36505:<*
batch_normalization_59_36508:<*
batch_normalization_59_36510:<*
batch_normalization_59_36512:<)
conv2d_40_36516:<<
conv2d_40_36518:<*
batch_normalization_60_36521:<*
batch_normalization_60_36523:<*
batch_normalization_60_36525:<)
conv2d_41_36529:<<
conv2d_41_36531:<*
batch_normalization_61_36534:<*
batch_normalization_61_36536:<*
batch_normalization_61_36538:<)
conv2d_42_36542:<<
conv2d_42_36544:<*
batch_normalization_62_36547:<*
batch_normalization_62_36549:<*
batch_normalization_62_36551:<)
conv2d_43_36555:<
conv2d_43_36557:*
batch_normalization_63_36560:*
batch_normalization_63_36562:*
batch_normalization_63_36564:)
conv2d_44_36567:
conv2d_44_36569:*
batch_normalization_64_36572:*
batch_normalization_64_36574:*
batch_normalization_64_36576:
identity��.batch_normalization_52/StatefulPartitionedCall�.batch_normalization_53/StatefulPartitionedCall�.batch_normalization_54/StatefulPartitionedCall�.batch_normalization_55/StatefulPartitionedCall�.batch_normalization_56/StatefulPartitionedCall�.batch_normalization_57/StatefulPartitionedCall�.batch_normalization_58/StatefulPartitionedCall�.batch_normalization_59/StatefulPartitionedCall�.batch_normalization_60/StatefulPartitionedCall�.batch_normalization_61/StatefulPartitionedCall�.batch_normalization_62/StatefulPartitionedCall�.batch_normalization_63/StatefulPartitionedCall�.batch_normalization_64/StatefulPartitionedCall�!conv2d_36/StatefulPartitionedCall�!conv2d_37/StatefulPartitionedCall�!conv2d_38/StatefulPartitionedCall�!conv2d_39/StatefulPartitionedCall�!conv2d_40/StatefulPartitionedCall�!conv2d_41/StatefulPartitionedCall�!conv2d_42/StatefulPartitionedCall�!conv2d_43/StatefulPartitionedCall�!conv2d_44/StatefulPartitionedCall�+depthwise_conv2d_16/StatefulPartitionedCall�+depthwise_conv2d_17/StatefulPartitionedCall�+depthwise_conv2d_18/StatefulPartitionedCall�+depthwise_conv2d_19/StatefulPartitionedCall�+separable_conv2d_16/StatefulPartitionedCall�+separable_conv2d_17/StatefulPartitionedCall�+separable_conv2d_18/StatefulPartitionedCall�+separable_conv2d_19/StatefulPartitionedCall�
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_36_36389conv2d_36_36391*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_36_layer_call_and_return_conditional_losses_36039�
.batch_normalization_52/StatefulPartitionedCallStatefulPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0batch_normalization_52_36394batch_normalization_52_36396batch_normalization_52_36398*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_52_layer_call_and_return_conditional_losses_35171�
+depthwise_conv2d_16/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_52/StatefulPartitionedCall:output:0depthwise_conv2d_16_36401depthwise_conv2d_16_36403*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_depthwise_conv2d_16_layer_call_and_return_conditional_losses_36063�
+separable_conv2d_16/StatefulPartitionedCallStatefulPartitionedCall4depthwise_conv2d_16/StatefulPartitionedCall:output:0separable_conv2d_16_36406separable_conv2d_16_36408separable_conv2d_16_36410*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_separable_conv2d_16_layer_call_and_return_conditional_losses_35209�
.batch_normalization_53/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_16/StatefulPartitionedCall:output:0batch_normalization_53_36413batch_normalization_53_36415batch_normalization_53_36417*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_53_layer_call_and_return_conditional_losses_35254�
+depthwise_conv2d_17/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_53/StatefulPartitionedCall:output:0depthwise_conv2d_17_36420depthwise_conv2d_17_36422*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_depthwise_conv2d_17_layer_call_and_return_conditional_losses_36094�
+separable_conv2d_17/StatefulPartitionedCallStatefulPartitionedCall4depthwise_conv2d_17/StatefulPartitionedCall:output:0separable_conv2d_17_36425separable_conv2d_17_36427separable_conv2d_17_36429*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_separable_conv2d_17_layer_call_and_return_conditional_losses_35292�
.batch_normalization_54/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_17/StatefulPartitionedCall:output:0batch_normalization_54_36432batch_normalization_54_36434batch_normalization_54_36436*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_54_layer_call_and_return_conditional_losses_35337�
add_8/PartitionedCallPartitionedCall7batch_normalization_52/StatefulPartitionedCall:output:07batch_normalization_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_8_layer_call_and_return_conditional_losses_36119�
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCalladd_8/PartitionedCall:output:0conv2d_37_36440conv2d_37_36442*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_37_layer_call_and_return_conditional_losses_36131�
.batch_normalization_55/StatefulPartitionedCallStatefulPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0batch_normalization_55_36445batch_normalization_55_36447batch_normalization_55_36449*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_55_layer_call_and_return_conditional_losses_35393�
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_55/StatefulPartitionedCall:output:0conv2d_38_36452conv2d_38_36454*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_38_layer_call_and_return_conditional_losses_36154�
.batch_normalization_56/StatefulPartitionedCallStatefulPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0batch_normalization_56_36457batch_normalization_56_36459batch_normalization_56_36461*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_56_layer_call_and_return_conditional_losses_35449�
$average_pooling2d_16/PartitionedCallPartitionedCall7batch_normalization_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_average_pooling2d_16_layer_call_and_return_conditional_losses_35476�
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_16/PartitionedCall:output:0conv2d_39_36465conv2d_39_36467*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_39_layer_call_and_return_conditional_losses_36178�
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0batch_normalization_57_36470batch_normalization_57_36472batch_normalization_57_36474*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_57_layer_call_and_return_conditional_losses_35515�
+depthwise_conv2d_18/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0depthwise_conv2d_18_36477depthwise_conv2d_18_36479*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_depthwise_conv2d_18_layer_call_and_return_conditional_losses_36202�
+separable_conv2d_18/StatefulPartitionedCallStatefulPartitionedCall4depthwise_conv2d_18/StatefulPartitionedCall:output:0separable_conv2d_18_36482separable_conv2d_18_36484separable_conv2d_18_36486*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_separable_conv2d_18_layer_call_and_return_conditional_losses_35553�
.batch_normalization_58/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_18/StatefulPartitionedCall:output:0batch_normalization_58_36489batch_normalization_58_36491batch_normalization_58_36493*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_58_layer_call_and_return_conditional_losses_35598�
+depthwise_conv2d_19/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_58/StatefulPartitionedCall:output:0depthwise_conv2d_19_36496depthwise_conv2d_19_36498*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_depthwise_conv2d_19_layer_call_and_return_conditional_losses_36233�
+separable_conv2d_19/StatefulPartitionedCallStatefulPartitionedCall4depthwise_conv2d_19/StatefulPartitionedCall:output:0separable_conv2d_19_36501separable_conv2d_19_36503separable_conv2d_19_36505*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_separable_conv2d_19_layer_call_and_return_conditional_losses_35636�
.batch_normalization_59/StatefulPartitionedCallStatefulPartitionedCall4separable_conv2d_19/StatefulPartitionedCall:output:0batch_normalization_59_36508batch_normalization_59_36510batch_normalization_59_36512*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_59_layer_call_and_return_conditional_losses_35681�
add_9/PartitionedCallPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:07batch_normalization_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_9_layer_call_and_return_conditional_losses_36258�
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCalladd_9/PartitionedCall:output:0conv2d_40_36516conv2d_40_36518*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_40_layer_call_and_return_conditional_losses_36270�
.batch_normalization_60/StatefulPartitionedCallStatefulPartitionedCall*conv2d_40/StatefulPartitionedCall:output:0batch_normalization_60_36521batch_normalization_60_36523batch_normalization_60_36525*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_35737�
$average_pooling2d_17/PartitionedCallPartitionedCall7batch_normalization_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_average_pooling2d_17_layer_call_and_return_conditional_losses_35764�
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_17/PartitionedCall:output:0conv2d_41_36529conv2d_41_36531*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_41_layer_call_and_return_conditional_losses_36294�
.batch_normalization_61/StatefulPartitionedCallStatefulPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0batch_normalization_61_36534batch_normalization_61_36536batch_normalization_61_36538*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_35803�
$average_pooling2d_18/PartitionedCallPartitionedCall7batch_normalization_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  <* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_average_pooling2d_18_layer_call_and_return_conditional_losses_35830�
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_18/PartitionedCall:output:0conv2d_42_36542conv2d_42_36544*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  <*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_42_layer_call_and_return_conditional_losses_36318�
.batch_normalization_62/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0batch_normalization_62_36547batch_normalization_62_36549batch_normalization_62_36551*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  <*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_35869�
$average_pooling2d_19/PartitionedCallPartitionedCall7batch_normalization_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_average_pooling2d_19_layer_call_and_return_conditional_losses_35896�
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_19/PartitionedCall:output:0conv2d_43_36555conv2d_43_36557*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_43_layer_call_and_return_conditional_losses_36342�
.batch_normalization_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0batch_normalization_63_36560batch_normalization_63_36562batch_normalization_63_36564*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_35935�
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_63/StatefulPartitionedCall:output:0conv2d_44_36567conv2d_44_36569*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_44_layer_call_and_return_conditional_losses_36365�
.batch_normalization_64/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0batch_normalization_64_36572batch_normalization_64_36574batch_normalization_64_36576*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_35991�
*global_average_pooling2d_4/PartitionedCallPartitionedCall7batch_normalization_64/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *^
fYRW
U__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_36019�
softmax_4/PartitionedCallPartitionedCall3global_average_pooling2d_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_softmax_4_layer_call_and_return_conditional_losses_36383q
IdentityIdentity"softmax_4/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������

NoOpNoOp/^batch_normalization_52/StatefulPartitionedCall/^batch_normalization_53/StatefulPartitionedCall/^batch_normalization_54/StatefulPartitionedCall/^batch_normalization_55/StatefulPartitionedCall/^batch_normalization_56/StatefulPartitionedCall/^batch_normalization_57/StatefulPartitionedCall/^batch_normalization_58/StatefulPartitionedCall/^batch_normalization_59/StatefulPartitionedCall/^batch_normalization_60/StatefulPartitionedCall/^batch_normalization_61/StatefulPartitionedCall/^batch_normalization_62/StatefulPartitionedCall/^batch_normalization_63/StatefulPartitionedCall/^batch_normalization_64/StatefulPartitionedCall"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall"^conv2d_39/StatefulPartitionedCall"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall,^depthwise_conv2d_16/StatefulPartitionedCall,^depthwise_conv2d_17/StatefulPartitionedCall,^depthwise_conv2d_18/StatefulPartitionedCall,^depthwise_conv2d_19/StatefulPartitionedCall,^separable_conv2d_16/StatefulPartitionedCall,^separable_conv2d_17/StatefulPartitionedCall,^separable_conv2d_18/StatefulPartitionedCall,^separable_conv2d_19/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_52/StatefulPartitionedCall.batch_normalization_52/StatefulPartitionedCall2`
.batch_normalization_53/StatefulPartitionedCall.batch_normalization_53/StatefulPartitionedCall2`
.batch_normalization_54/StatefulPartitionedCall.batch_normalization_54/StatefulPartitionedCall2`
.batch_normalization_55/StatefulPartitionedCall.batch_normalization_55/StatefulPartitionedCall2`
.batch_normalization_56/StatefulPartitionedCall.batch_normalization_56/StatefulPartitionedCall2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2`
.batch_normalization_58/StatefulPartitionedCall.batch_normalization_58/StatefulPartitionedCall2`
.batch_normalization_59/StatefulPartitionedCall.batch_normalization_59/StatefulPartitionedCall2`
.batch_normalization_60/StatefulPartitionedCall.batch_normalization_60/StatefulPartitionedCall2`
.batch_normalization_61/StatefulPartitionedCall.batch_normalization_61/StatefulPartitionedCall2`
.batch_normalization_62/StatefulPartitionedCall.batch_normalization_62/StatefulPartitionedCall2`
.batch_normalization_63/StatefulPartitionedCall.batch_normalization_63/StatefulPartitionedCall2`
.batch_normalization_64/StatefulPartitionedCall.batch_normalization_64/StatefulPartitionedCall2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2Z
+depthwise_conv2d_16/StatefulPartitionedCall+depthwise_conv2d_16/StatefulPartitionedCall2Z
+depthwise_conv2d_17/StatefulPartitionedCall+depthwise_conv2d_17/StatefulPartitionedCall2Z
+depthwise_conv2d_18/StatefulPartitionedCall+depthwise_conv2d_18/StatefulPartitionedCall2Z
+depthwise_conv2d_19/StatefulPartitionedCall+depthwise_conv2d_19/StatefulPartitionedCall2Z
+separable_conv2d_16/StatefulPartitionedCall+separable_conv2d_16/StatefulPartitionedCall2Z
+separable_conv2d_17/StatefulPartitionedCall+separable_conv2d_17/StatefulPartitionedCall2Z
+separable_conv2d_18/StatefulPartitionedCall+separable_conv2d_18/StatefulPartitionedCall2Z
+separable_conv2d_19/StatefulPartitionedCall+separable_conv2d_19/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:%!

_user_specified_name36389:%!

_user_specified_name36391:%!

_user_specified_name36394:%!

_user_specified_name36396:%!

_user_specified_name36398:%!

_user_specified_name36401:%!

_user_specified_name36403:%!

_user_specified_name36406:%	!

_user_specified_name36408:%
!

_user_specified_name36410:%!

_user_specified_name36413:%!

_user_specified_name36415:%!

_user_specified_name36417:%!

_user_specified_name36420:%!

_user_specified_name36422:%!

_user_specified_name36425:%!

_user_specified_name36427:%!

_user_specified_name36429:%!

_user_specified_name36432:%!

_user_specified_name36434:%!

_user_specified_name36436:%!

_user_specified_name36440:%!

_user_specified_name36442:%!

_user_specified_name36445:%!

_user_specified_name36447:%!

_user_specified_name36449:%!

_user_specified_name36452:%!

_user_specified_name36454:%!

_user_specified_name36457:%!

_user_specified_name36459:%!

_user_specified_name36461:% !

_user_specified_name36465:%!!

_user_specified_name36467:%"!

_user_specified_name36470:%#!

_user_specified_name36472:%$!

_user_specified_name36474:%%!

_user_specified_name36477:%&!

_user_specified_name36479:%'!

_user_specified_name36482:%(!

_user_specified_name36484:%)!

_user_specified_name36486:%*!

_user_specified_name36489:%+!

_user_specified_name36491:%,!

_user_specified_name36493:%-!

_user_specified_name36496:%.!

_user_specified_name36498:%/!

_user_specified_name36501:%0!

_user_specified_name36503:%1!

_user_specified_name36505:%2!

_user_specified_name36508:%3!

_user_specified_name36510:%4!

_user_specified_name36512:%5!

_user_specified_name36516:%6!

_user_specified_name36518:%7!

_user_specified_name36521:%8!

_user_specified_name36523:%9!

_user_specified_name36525:%:!

_user_specified_name36529:%;!

_user_specified_name36531:%<!

_user_specified_name36534:%=!

_user_specified_name36536:%>!

_user_specified_name36538:%?!

_user_specified_name36542:%@!

_user_specified_name36544:%A!

_user_specified_name36547:%B!

_user_specified_name36549:%C!

_user_specified_name36551:%D!

_user_specified_name36555:%E!

_user_specified_name36557:%F!

_user_specified_name36560:%G!

_user_specified_name36562:%H!

_user_specified_name36564:%I!

_user_specified_name36567:%J!

_user_specified_name36569:%K!

_user_specified_name36572:%L!

_user_specified_name36574:%M!

_user_specified_name36576
�
�
D__inference_conv2d_37_layer_call_and_return_conditional_losses_36131

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_58_layer_call_and_return_conditional_losses_37817

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
D__inference_conv2d_44_layer_call_and_return_conditional_losses_38304

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:���������h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
6__inference_batch_normalization_55_layer_call_fn_37523

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_55_layer_call_and_return_conditional_losses_35376�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:%!

_user_specified_name37515:%!

_user_specified_name37517:%!

_user_specified_name37519
�	
�
6__inference_batch_normalization_63_layer_call_fn_38250

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_35935�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:%!

_user_specified_name38242:%!

_user_specified_name38244:%!

_user_specified_name38246
�
�
D__inference_conv2d_43_layer_call_and_return_conditional_losses_36342

inputs8
conv2d_readvariableop_resource:<-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:���������h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
k
O__inference_average_pooling2d_18_layer_call_and_return_conditional_losses_38122

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_40_layer_call_and_return_conditional_losses_37970

inputs8
conv2d_readvariableop_resource:<<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<<*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������<X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:�����������<j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:�����������<S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_35786

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
)__inference_conv2d_37_layer_call_fn_37501

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_37_layer_call_and_return_conditional_losses_36131y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:%!

_user_specified_name37495:%!

_user_specified_name37497
�
�
N__inference_separable_conv2d_19_layer_call_and_return_conditional_losses_37882

inputsB
(separable_conv2d_readvariableop_resource:<E
*separable_conv2d_readvariableop_1_resource:�<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*'
_output_shapes
:�<*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      <      o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,����������������������������*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+���������������������������<*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������<h
EluEluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������<z
IdentityIdentityElu:activations:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_35737

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
D__inference_conv2d_44_layer_call_and_return_conditional_losses_36365

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:���������h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
3__inference_depthwise_conv2d_19_layer_call_fn_37843

inputs!
unknown:<
	unknown_0:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_depthwise_conv2d_19_layer_call_and_return_conditional_losses_36233y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������<: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������<
 
_user_specified_nameinputs:%!

_user_specified_name37837:%!

_user_specified_name37839
�
�
)__inference_conv2d_43_layer_call_fn_38217

inputs!
unknown:<
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_43_layer_call_and_return_conditional_losses_36342w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������<: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������<
 
_user_specified_nameinputs:%!

_user_specified_name38211:%!

_user_specified_name38213
�
k
O__inference_average_pooling2d_16_layer_call_and_return_conditional_losses_35476

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_42_layer_call_and_return_conditional_losses_36318

inputs8
conv2d_readvariableop_resource:<<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<<*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  <*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  <V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:���������  <h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:���������  <S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  <: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  <
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_59_layer_call_and_return_conditional_losses_37921

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_54_layer_call_and_return_conditional_losses_35320

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_53_layer_call_and_return_conditional_losses_37359

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_56_layer_call_and_return_conditional_losses_37627

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
6__inference_batch_normalization_64_layer_call_fn_38315

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_35974�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:%!

_user_specified_name38307:%!

_user_specified_name38309:%!

_user_specified_name38311
�
�
D__inference_conv2d_41_layer_call_and_return_conditional_losses_38056

inputs8
conv2d_readvariableop_resource:<<-
biasadd_readvariableop_resource:<
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<<*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@<*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@<V
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@<h
IdentityIdentityElu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@<S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
3__inference_separable_conv2d_18_layer_call_fn_37762

inputs!
unknown:<$
	unknown_0:�<
	unknown_1:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_separable_conv2d_18_layer_call_and_return_conditional_losses_35553�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:%!

_user_specified_name37754:%!

_user_specified_name37756:%!

_user_specified_name37758
�	
�
6__inference_batch_normalization_59_layer_call_fn_37893

inputs
unknown:<
	unknown_0:<
	unknown_1:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������<*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_59_layer_call_and_return_conditional_losses_35664�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:%!

_user_specified_name37885:%!

_user_specified_name37887:%!

_user_specified_name37889
�
k
O__inference_average_pooling2d_17_layer_call_and_return_conditional_losses_35764

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_54_layer_call_and_return_conditional_losses_37480

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_53_layer_call_and_return_conditional_losses_35254

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_35720

inputs%
readvariableop_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:<*
dtype0*
valueB<*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������<:<:<:<:<:*
epsilon%o�:*
exponential_avg_factor%��L?�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
k
O__inference_average_pooling2d_16_layer_call_and_return_conditional_losses_37654

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
N__inference_depthwise_conv2d_17_layer_call_and_return_conditional_losses_37397

inputs;
!depthwise_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�depthwise/ReadVariableOp�
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:*
dtype0h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAdddepthwise:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:�����������V
NoOpNoOp^BiasAdd/ReadVariableOp^depthwise/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
Q
%__inference_add_8_layer_call_fn_37486
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_8_layer_call_and_return_conditional_losses_36119j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::�����������:�����������:[ W
1
_output_shapes
:�����������
"
_user_specified_name
inputs_0:[W
1
_output_shapes
:�����������
"
_user_specified_name
inputs_1
�	
�
6__inference_batch_normalization_58_layer_call_fn_37789

inputs
unknown:<
	unknown_0:<
	unknown_1:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������<*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_58_layer_call_and_return_conditional_losses_35581�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:%!

_user_specified_name37781:%!

_user_specified_name37783:%!

_user_specified_name37785
�	
�
6__inference_batch_normalization_60_layer_call_fn_37992

inputs
unknown:<
	unknown_0:<
	unknown_1:<
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������<*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_35737�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������<: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������<
 
_user_specified_nameinputs:%!

_user_specified_name37984:%!

_user_specified_name37986:%!

_user_specified_name37988
�
Q
%__inference_add_9_layer_call_fn_37944
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������<* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_9_layer_call_and_return_conditional_losses_36258j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������<"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::�����������<:�����������<:[ W
1
_output_shapes
:�����������<
"
_user_specified_name
inputs_0:[W
1
_output_shapes
:�����������<
"
_user_specified_name
inputs_1
�	
�
6__inference_batch_normalization_56_layer_call_fn_37599

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_56_layer_call_and_return_conditional_losses_35432�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:%!

_user_specified_name37591:%!

_user_specified_name37593:%!

_user_specified_name37595
�
�
N__inference_separable_conv2d_16_layer_call_and_return_conditional_losses_35209

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource:Z-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�separable_conv2d/ReadVariableOp�!separable_conv2d/ReadVariableOp_1�
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:Z*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      �
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������Z*
paddingSAME*
strides
�
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+���������������������������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+���������������������������h
EluEluBiasAdd:output:0*
T0*A
_output_shapes/
-:+���������������������������z
IdentityIdentityElu:activations:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
6__inference_batch_normalization_56_layer_call_fn_37610

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_56_layer_call_and_return_conditional_losses_35449�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:%!

_user_specified_name37602:%!

_user_specified_name37604:%!

_user_specified_name37606
�
�
Q__inference_batch_normalization_55_layer_call_and_return_conditional_losses_35393

inputs%
readvariableop_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOpR
ConstConst*
_output_shapes
:*
dtype0*
valueB*  �?b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsConst:output:0ReadVariableOp:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������y
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+���������������������������: : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
input_1:
serving_default_input_1:0�����������=
	softmax_40
StatefulPartitionedCall:0���������tensorflow/serving/predict:ϓ
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer-9
layer_with_weights-8
layer-10
layer_with_weights-9
layer-11
layer_with_weights-10
layer-12
layer_with_weights-11
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
layer_with_weights-18
layer-21
layer_with_weights-19
layer-22
layer-23
layer_with_weights-20
layer-24
layer_with_weights-21
layer-25
layer-26
layer_with_weights-22
layer-27
layer_with_weights-23
layer-28
layer-29
layer_with_weights-24
layer-30
 layer_with_weights-25
 layer-31
!layer-32
"layer_with_weights-26
"layer-33
#layer_with_weights-27
#layer-34
$layer_with_weights-28
$layer-35
%layer_with_weights-29
%layer-36
&layer-37
'layer-38
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses
._default_save_signature
/	optimizer
0
signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op"
_tf_keras_layer
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
@axis
Abeta
Bmoving_mean
Cmoving_variance"
_tf_keras_layer
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
Jdepthwise_kernel
Kbias
 L_jit_compiled_convolution_op"
_tf_keras_layer
�
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
Sdepthwise_kernel
Tpointwise_kernel
Ubias
 V_jit_compiled_convolution_op"
_tf_keras_layer
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses
]axis
^beta
_moving_mean
`moving_variance"
_tf_keras_layer
�
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses
gdepthwise_kernel
hbias
 i_jit_compiled_convolution_op"
_tf_keras_layer
�
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses
pdepthwise_kernel
qpointwise_kernel
rbias
 s_jit_compiled_convolution_op"
_tf_keras_layer
�
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses
zaxis
{beta
|moving_mean
}moving_variance"
_tf_keras_layer
�
~	variables
trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
�pointwise_kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�depthwise_kernel
�pointwise_kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
70
81
A2
B3
C4
J5
K6
S7
T8
U9
^10
_11
`12
g13
h14
p15
q16
r17
{18
|19
}20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
�70
�71
�72
�73
�74
�75
�76"
trackable_list_wrapper
�
A0
J1
K2
S3
T4
U5
^6
g7
h8
p9
q10
r11
{12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
._default_save_signature
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
'__inference_model_4_layer_call_fn_36741
'__inference_model_4_layer_call_fn_36900�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
B__inference_model_4_layer_call_and_return_conditional_losses_36386
B__inference_model_4_layer_call_and_return_conditional_losses_36582�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�B�
 __inference__wrapped_model_35137input_1"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
"
_generic_user_object
-
�serving_default"
signature_map
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_36_layer_call_fn_37203�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_36_layer_call_and_return_conditional_losses_37216�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_36/kernel
:2conv2d_36/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
5
A0
B1
C2"
trackable_list_wrapper
'
A0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_52_layer_call_fn_37227
6__inference_batch_normalization_52_layer_call_fn_37238�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_52_layer_call_and_return_conditional_losses_37255
Q__inference_batch_normalization_52_layer_call_and_return_conditional_losses_37272�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'2batch_normalization_52/beta
2:0 (2"batch_normalization_52/moving_mean
6:4 (2&batch_normalization_52/moving_variance
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_depthwise_conv2d_16_layer_call_fn_37281�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
N__inference_depthwise_conv2d_16_layer_call_and_return_conditional_losses_37293�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
>:<2$depthwise_conv2d_16/depthwise_kernel
&:$2depthwise_conv2d_16/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
5
S0
T1
U2"
trackable_list_wrapper
5
S0
T1
U2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_separable_conv2d_16_layer_call_fn_37304�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
N__inference_separable_conv2d_16_layer_call_and_return_conditional_losses_37320�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
>:<2$separable_conv2d_16/depthwise_kernel
>:<Z2$separable_conv2d_16/pointwise_kernel
&:$2separable_conv2d_16/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
5
^0
_1
`2"
trackable_list_wrapper
'
^0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_53_layer_call_fn_37331
6__inference_batch_normalization_53_layer_call_fn_37342�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_53_layer_call_and_return_conditional_losses_37359
Q__inference_batch_normalization_53_layer_call_and_return_conditional_losses_37376�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'2batch_normalization_53/beta
2:0 (2"batch_normalization_53/moving_mean
6:4 (2&batch_normalization_53/moving_variance
.
g0
h1"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_depthwise_conv2d_17_layer_call_fn_37385�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
N__inference_depthwise_conv2d_17_layer_call_and_return_conditional_losses_37397�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
>:<2$depthwise_conv2d_17/depthwise_kernel
&:$2depthwise_conv2d_17/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
5
p0
q1
r2"
trackable_list_wrapper
5
p0
q1
r2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_separable_conv2d_17_layer_call_fn_37408�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
N__inference_separable_conv2d_17_layer_call_and_return_conditional_losses_37424�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
>:<2$separable_conv2d_17/depthwise_kernel
>:<Z2$separable_conv2d_17/pointwise_kernel
&:$2separable_conv2d_17/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
5
{0
|1
}2"
trackable_list_wrapper
'
{0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_54_layer_call_fn_37435
6__inference_batch_normalization_54_layer_call_fn_37446�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_54_layer_call_and_return_conditional_losses_37463
Q__inference_batch_normalization_54_layer_call_and_return_conditional_losses_37480�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'2batch_normalization_54/beta
2:0 (2"batch_normalization_54/moving_mean
6:4 (2&batch_normalization_54/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
~	variables
trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_add_8_layer_call_fn_37486�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_add_8_layer_call_and_return_conditional_losses_37492�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_37_layer_call_fn_37501�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_37_layer_call_and_return_conditional_losses_37512�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_37/kernel
:2conv2d_37/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
8
�0
�1
�2"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_55_layer_call_fn_37523
6__inference_batch_normalization_55_layer_call_fn_37534�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_55_layer_call_and_return_conditional_losses_37551
Q__inference_batch_normalization_55_layer_call_and_return_conditional_losses_37568�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'2batch_normalization_55/beta
2:0 (2"batch_normalization_55/moving_mean
6:4 (2&batch_normalization_55/moving_variance
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_38_layer_call_fn_37577�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_38_layer_call_and_return_conditional_losses_37588�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_38/kernel
:2conv2d_38/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
8
�0
�1
�2"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_56_layer_call_fn_37599
6__inference_batch_normalization_56_layer_call_fn_37610�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_56_layer_call_and_return_conditional_losses_37627
Q__inference_batch_normalization_56_layer_call_and_return_conditional_losses_37644�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'2batch_normalization_56/beta
2:0 (2"batch_normalization_56/moving_mean
6:4 (2&batch_normalization_56/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
4__inference_average_pooling2d_16_layer_call_fn_37649�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
O__inference_average_pooling2d_16_layer_call_and_return_conditional_losses_37654�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_39_layer_call_fn_37663�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_39_layer_call_and_return_conditional_losses_37674�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(<2conv2d_39/kernel
:<2conv2d_39/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
8
�0
�1
�2"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_57_layer_call_fn_37685
6__inference_batch_normalization_57_layer_call_fn_37696�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_57_layer_call_and_return_conditional_losses_37713
Q__inference_batch_normalization_57_layer_call_and_return_conditional_losses_37730�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'<2batch_normalization_57/beta
2:0< (2"batch_normalization_57/moving_mean
6:4< (2&batch_normalization_57/moving_variance
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_depthwise_conv2d_18_layer_call_fn_37739�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
N__inference_depthwise_conv2d_18_layer_call_and_return_conditional_losses_37751�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
>:<<2$depthwise_conv2d_18/depthwise_kernel
&:$<2depthwise_conv2d_18/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
8
�0
�1
�2"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_separable_conv2d_18_layer_call_fn_37762�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
N__inference_separable_conv2d_18_layer_call_and_return_conditional_losses_37778�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
>:<<2$separable_conv2d_18/depthwise_kernel
?:=�<2$separable_conv2d_18/pointwise_kernel
&:$<2separable_conv2d_18/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
8
�0
�1
�2"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_58_layer_call_fn_37789
6__inference_batch_normalization_58_layer_call_fn_37800�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_58_layer_call_and_return_conditional_losses_37817
Q__inference_batch_normalization_58_layer_call_and_return_conditional_losses_37834�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'<2batch_normalization_58/beta
2:0< (2"batch_normalization_58/moving_mean
6:4< (2&batch_normalization_58/moving_variance
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_depthwise_conv2d_19_layer_call_fn_37843�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
N__inference_depthwise_conv2d_19_layer_call_and_return_conditional_losses_37855�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
>:<<2$depthwise_conv2d_19/depthwise_kernel
&:$<2depthwise_conv2d_19/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
8
�0
�1
�2"
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_separable_conv2d_19_layer_call_fn_37866�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
N__inference_separable_conv2d_19_layer_call_and_return_conditional_losses_37882�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
>:<<2$separable_conv2d_19/depthwise_kernel
?:=�<2$separable_conv2d_19/pointwise_kernel
&:$<2separable_conv2d_19/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
8
�0
�1
�2"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_59_layer_call_fn_37893
6__inference_batch_normalization_59_layer_call_fn_37904�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_59_layer_call_and_return_conditional_losses_37921
Q__inference_batch_normalization_59_layer_call_and_return_conditional_losses_37938�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'<2batch_normalization_59/beta
2:0< (2"batch_normalization_59/moving_mean
6:4< (2&batch_normalization_59/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_add_9_layer_call_fn_37944�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_add_9_layer_call_and_return_conditional_losses_37950�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_40_layer_call_fn_37959�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_40_layer_call_and_return_conditional_losses_37970�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(<<2conv2d_40/kernel
:<2conv2d_40/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
8
�0
�1
�2"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_60_layer_call_fn_37981
6__inference_batch_normalization_60_layer_call_fn_37992�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_38009
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_38026�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'<2batch_normalization_60/beta
2:0< (2"batch_normalization_60/moving_mean
6:4< (2&batch_normalization_60/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
4__inference_average_pooling2d_17_layer_call_fn_38031�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
O__inference_average_pooling2d_17_layer_call_and_return_conditional_losses_38036�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_41_layer_call_fn_38045�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_41_layer_call_and_return_conditional_losses_38056�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(<<2conv2d_41/kernel
:<2conv2d_41/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
8
�0
�1
�2"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_61_layer_call_fn_38067
6__inference_batch_normalization_61_layer_call_fn_38078�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_38095
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_38112�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'<2batch_normalization_61/beta
2:0< (2"batch_normalization_61/moving_mean
6:4< (2&batch_normalization_61/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
4__inference_average_pooling2d_18_layer_call_fn_38117�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
O__inference_average_pooling2d_18_layer_call_and_return_conditional_losses_38122�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_42_layer_call_fn_38131�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_42_layer_call_and_return_conditional_losses_38142�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(<<2conv2d_42/kernel
:<2conv2d_42/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
8
�0
�1
�2"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_62_layer_call_fn_38153
6__inference_batch_normalization_62_layer_call_fn_38164�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_38181
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_38198�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'<2batch_normalization_62/beta
2:0< (2"batch_normalization_62/moving_mean
6:4< (2&batch_normalization_62/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
4__inference_average_pooling2d_19_layer_call_fn_38203�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
O__inference_average_pooling2d_19_layer_call_and_return_conditional_losses_38208�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_43_layer_call_fn_38217�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_43_layer_call_and_return_conditional_losses_38228�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(<2conv2d_43/kernel
:2conv2d_43/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
8
�0
�1
�2"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_63_layer_call_fn_38239
6__inference_batch_normalization_63_layer_call_fn_38250�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_38267
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_38284�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'2batch_normalization_63/beta
2:0 (2"batch_normalization_63/moving_mean
6:4 (2&batch_normalization_63/moving_variance
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_44_layer_call_fn_38293�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_44_layer_call_and_return_conditional_losses_38304�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_44/kernel
:2conv2d_44/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
8
�0
�1
�2"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_64_layer_call_fn_38315
6__inference_batch_normalization_64_layer_call_fn_38326�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_38343
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_38360�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'2batch_normalization_64/beta
2:0 (2"batch_normalization_64/moving_mean
6:4 (2&batch_normalization_64/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
:__inference_global_average_pooling2d_4_layer_call_fn_38365�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
U__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_38371�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_softmax_4_layer_call_fn_38376�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_softmax_4_layer_call_and_return_conditional_losses_38381�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
70
81
B2
C3
_4
`5
|6
}7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27"
trackable_list_wrapper
�
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
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_model_4_layer_call_fn_36741input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_model_4_layer_call_fn_36900input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_4_layer_call_and_return_conditional_losses_36386input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_model_4_layer_call_and_return_conditional_losses_36582input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_37194input_1"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�
	jinput_1
kwonlydefaults
 
annotations� *
 
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv2d_36_layer_call_fn_37203inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_36_layer_call_and_return_conditional_losses_37216inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_52_layer_call_fn_37227inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_52_layer_call_fn_37238inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_52_layer_call_and_return_conditional_losses_37255inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_52_layer_call_and_return_conditional_losses_37272inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
3__inference_depthwise_conv2d_16_layer_call_fn_37281inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_depthwise_conv2d_16_layer_call_and_return_conditional_losses_37293inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
3__inference_separable_conv2d_16_layer_call_fn_37304inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_separable_conv2d_16_layer_call_and_return_conditional_losses_37320inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_53_layer_call_fn_37331inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_53_layer_call_fn_37342inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_53_layer_call_and_return_conditional_losses_37359inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_53_layer_call_and_return_conditional_losses_37376inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
3__inference_depthwise_conv2d_17_layer_call_fn_37385inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_depthwise_conv2d_17_layer_call_and_return_conditional_losses_37397inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
3__inference_separable_conv2d_17_layer_call_fn_37408inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_separable_conv2d_17_layer_call_and_return_conditional_losses_37424inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_54_layer_call_fn_37435inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_54_layer_call_fn_37446inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_54_layer_call_and_return_conditional_losses_37463inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_54_layer_call_and_return_conditional_losses_37480inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
%__inference_add_8_layer_call_fn_37486inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_add_8_layer_call_and_return_conditional_losses_37492inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_conv2d_37_layer_call_fn_37501inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_37_layer_call_and_return_conditional_losses_37512inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_55_layer_call_fn_37523inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_55_layer_call_fn_37534inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_55_layer_call_and_return_conditional_losses_37551inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_55_layer_call_and_return_conditional_losses_37568inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_conv2d_38_layer_call_fn_37577inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_38_layer_call_and_return_conditional_losses_37588inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_56_layer_call_fn_37599inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_56_layer_call_fn_37610inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_56_layer_call_and_return_conditional_losses_37627inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_56_layer_call_and_return_conditional_losses_37644inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
4__inference_average_pooling2d_16_layer_call_fn_37649inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_average_pooling2d_16_layer_call_and_return_conditional_losses_37654inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_conv2d_39_layer_call_fn_37663inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_39_layer_call_and_return_conditional_losses_37674inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_57_layer_call_fn_37685inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_57_layer_call_fn_37696inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_57_layer_call_and_return_conditional_losses_37713inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_57_layer_call_and_return_conditional_losses_37730inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
3__inference_depthwise_conv2d_18_layer_call_fn_37739inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_depthwise_conv2d_18_layer_call_and_return_conditional_losses_37751inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
3__inference_separable_conv2d_18_layer_call_fn_37762inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_separable_conv2d_18_layer_call_and_return_conditional_losses_37778inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_58_layer_call_fn_37789inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_58_layer_call_fn_37800inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_58_layer_call_and_return_conditional_losses_37817inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_58_layer_call_and_return_conditional_losses_37834inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
3__inference_depthwise_conv2d_19_layer_call_fn_37843inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_depthwise_conv2d_19_layer_call_and_return_conditional_losses_37855inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
3__inference_separable_conv2d_19_layer_call_fn_37866inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_separable_conv2d_19_layer_call_and_return_conditional_losses_37882inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_59_layer_call_fn_37893inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_59_layer_call_fn_37904inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_59_layer_call_and_return_conditional_losses_37921inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_59_layer_call_and_return_conditional_losses_37938inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
%__inference_add_9_layer_call_fn_37944inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_add_9_layer_call_and_return_conditional_losses_37950inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_conv2d_40_layer_call_fn_37959inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_40_layer_call_and_return_conditional_losses_37970inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_60_layer_call_fn_37981inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_60_layer_call_fn_37992inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_38009inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_38026inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
4__inference_average_pooling2d_17_layer_call_fn_38031inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_average_pooling2d_17_layer_call_and_return_conditional_losses_38036inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_conv2d_41_layer_call_fn_38045inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_41_layer_call_and_return_conditional_losses_38056inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_61_layer_call_fn_38067inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_61_layer_call_fn_38078inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_38095inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_38112inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
4__inference_average_pooling2d_18_layer_call_fn_38117inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_average_pooling2d_18_layer_call_and_return_conditional_losses_38122inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_conv2d_42_layer_call_fn_38131inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_42_layer_call_and_return_conditional_losses_38142inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_62_layer_call_fn_38153inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_62_layer_call_fn_38164inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_38181inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_38198inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
4__inference_average_pooling2d_19_layer_call_fn_38203inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_average_pooling2d_19_layer_call_and_return_conditional_losses_38208inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_conv2d_43_layer_call_fn_38217inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_43_layer_call_and_return_conditional_losses_38228inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_63_layer_call_fn_38239inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_63_layer_call_fn_38250inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_38267inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_38284inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_conv2d_44_layer_call_fn_38293inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_44_layer_call_and_return_conditional_losses_38304inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_64_layer_call_fn_38315inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_batch_normalization_64_layer_call_fn_38326inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_38343inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_38360inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
:__inference_global_average_pooling2d_4_layer_call_fn_38365inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
U__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_38371inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_softmax_4_layer_call_fn_38376inputs"�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_softmax_4_layer_call_and_return_conditional_losses_38381inputs"�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
 __inference__wrapped_model_35137��78ABCJKSTU^_`ghpqr{|}��������������������������������������������������������:�7
0�-
+�(
input_1�����������
� "5�2
0
	softmax_4#� 
	softmax_4����������
@__inference_add_8_layer_call_and_return_conditional_losses_37492�n�k
d�a
_�\
,�)
inputs_0�����������
,�)
inputs_1�����������
� "6�3
,�)
tensor_0�����������
� �
%__inference_add_8_layer_call_fn_37486�n�k
d�a
_�\
,�)
inputs_0�����������
,�)
inputs_1�����������
� "+�(
unknown������������
@__inference_add_9_layer_call_and_return_conditional_losses_37950�n�k
d�a
_�\
,�)
inputs_0�����������<
,�)
inputs_1�����������<
� "6�3
,�)
tensor_0�����������<
� �
%__inference_add_9_layer_call_fn_37944�n�k
d�a
_�\
,�)
inputs_0�����������<
,�)
inputs_1�����������<
� "+�(
unknown�����������<�
O__inference_average_pooling2d_16_layer_call_and_return_conditional_losses_37654�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
4__inference_average_pooling2d_16_layer_call_fn_37649�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
O__inference_average_pooling2d_17_layer_call_and_return_conditional_losses_38036�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
4__inference_average_pooling2d_17_layer_call_fn_38031�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
O__inference_average_pooling2d_18_layer_call_and_return_conditional_losses_38122�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
4__inference_average_pooling2d_18_layer_call_fn_38117�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
O__inference_average_pooling2d_19_layer_call_and_return_conditional_losses_38208�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
4__inference_average_pooling2d_19_layer_call_fn_38203�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
Q__inference_batch_normalization_52_layer_call_and_return_conditional_losses_37255�ABCQ�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
Q__inference_batch_normalization_52_layer_call_and_return_conditional_losses_37272�ABCQ�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
6__inference_batch_normalization_52_layer_call_fn_37227�ABCQ�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
6__inference_batch_normalization_52_layer_call_fn_37238�ABCQ�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
Q__inference_batch_normalization_53_layer_call_and_return_conditional_losses_37359�^_`Q�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
Q__inference_batch_normalization_53_layer_call_and_return_conditional_losses_37376�^_`Q�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
6__inference_batch_normalization_53_layer_call_fn_37331�^_`Q�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
6__inference_batch_normalization_53_layer_call_fn_37342�^_`Q�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
Q__inference_batch_normalization_54_layer_call_and_return_conditional_losses_37463�{|}Q�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
Q__inference_batch_normalization_54_layer_call_and_return_conditional_losses_37480�{|}Q�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
6__inference_batch_normalization_54_layer_call_fn_37435�{|}Q�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
6__inference_batch_normalization_54_layer_call_fn_37446�{|}Q�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
Q__inference_batch_normalization_55_layer_call_and_return_conditional_losses_37551����Q�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
Q__inference_batch_normalization_55_layer_call_and_return_conditional_losses_37568����Q�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
6__inference_batch_normalization_55_layer_call_fn_37523����Q�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
6__inference_batch_normalization_55_layer_call_fn_37534����Q�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
Q__inference_batch_normalization_56_layer_call_and_return_conditional_losses_37627����Q�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
Q__inference_batch_normalization_56_layer_call_and_return_conditional_losses_37644����Q�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
6__inference_batch_normalization_56_layer_call_fn_37599����Q�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
6__inference_batch_normalization_56_layer_call_fn_37610����Q�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
Q__inference_batch_normalization_57_layer_call_and_return_conditional_losses_37713����Q�N
G�D
:�7
inputs+���������������������������<
p

 
� "F�C
<�9
tensor_0+���������������������������<
� �
Q__inference_batch_normalization_57_layer_call_and_return_conditional_losses_37730����Q�N
G�D
:�7
inputs+���������������������������<
p 

 
� "F�C
<�9
tensor_0+���������������������������<
� �
6__inference_batch_normalization_57_layer_call_fn_37685����Q�N
G�D
:�7
inputs+���������������������������<
p

 
� ";�8
unknown+���������������������������<�
6__inference_batch_normalization_57_layer_call_fn_37696����Q�N
G�D
:�7
inputs+���������������������������<
p 

 
� ";�8
unknown+���������������������������<�
Q__inference_batch_normalization_58_layer_call_and_return_conditional_losses_37817����Q�N
G�D
:�7
inputs+���������������������������<
p

 
� "F�C
<�9
tensor_0+���������������������������<
� �
Q__inference_batch_normalization_58_layer_call_and_return_conditional_losses_37834����Q�N
G�D
:�7
inputs+���������������������������<
p 

 
� "F�C
<�9
tensor_0+���������������������������<
� �
6__inference_batch_normalization_58_layer_call_fn_37789����Q�N
G�D
:�7
inputs+���������������������������<
p

 
� ";�8
unknown+���������������������������<�
6__inference_batch_normalization_58_layer_call_fn_37800����Q�N
G�D
:�7
inputs+���������������������������<
p 

 
� ";�8
unknown+���������������������������<�
Q__inference_batch_normalization_59_layer_call_and_return_conditional_losses_37921����Q�N
G�D
:�7
inputs+���������������������������<
p

 
� "F�C
<�9
tensor_0+���������������������������<
� �
Q__inference_batch_normalization_59_layer_call_and_return_conditional_losses_37938����Q�N
G�D
:�7
inputs+���������������������������<
p 

 
� "F�C
<�9
tensor_0+���������������������������<
� �
6__inference_batch_normalization_59_layer_call_fn_37893����Q�N
G�D
:�7
inputs+���������������������������<
p

 
� ";�8
unknown+���������������������������<�
6__inference_batch_normalization_59_layer_call_fn_37904����Q�N
G�D
:�7
inputs+���������������������������<
p 

 
� ";�8
unknown+���������������������������<�
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_38009����Q�N
G�D
:�7
inputs+���������������������������<
p

 
� "F�C
<�9
tensor_0+���������������������������<
� �
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_38026����Q�N
G�D
:�7
inputs+���������������������������<
p 

 
� "F�C
<�9
tensor_0+���������������������������<
� �
6__inference_batch_normalization_60_layer_call_fn_37981����Q�N
G�D
:�7
inputs+���������������������������<
p

 
� ";�8
unknown+���������������������������<�
6__inference_batch_normalization_60_layer_call_fn_37992����Q�N
G�D
:�7
inputs+���������������������������<
p 

 
� ";�8
unknown+���������������������������<�
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_38095����Q�N
G�D
:�7
inputs+���������������������������<
p

 
� "F�C
<�9
tensor_0+���������������������������<
� �
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_38112����Q�N
G�D
:�7
inputs+���������������������������<
p 

 
� "F�C
<�9
tensor_0+���������������������������<
� �
6__inference_batch_normalization_61_layer_call_fn_38067����Q�N
G�D
:�7
inputs+���������������������������<
p

 
� ";�8
unknown+���������������������������<�
6__inference_batch_normalization_61_layer_call_fn_38078����Q�N
G�D
:�7
inputs+���������������������������<
p 

 
� ";�8
unknown+���������������������������<�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_38181����Q�N
G�D
:�7
inputs+���������������������������<
p

 
� "F�C
<�9
tensor_0+���������������������������<
� �
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_38198����Q�N
G�D
:�7
inputs+���������������������������<
p 

 
� "F�C
<�9
tensor_0+���������������������������<
� �
6__inference_batch_normalization_62_layer_call_fn_38153����Q�N
G�D
:�7
inputs+���������������������������<
p

 
� ";�8
unknown+���������������������������<�
6__inference_batch_normalization_62_layer_call_fn_38164����Q�N
G�D
:�7
inputs+���������������������������<
p 

 
� ";�8
unknown+���������������������������<�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_38267����Q�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_38284����Q�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
6__inference_batch_normalization_63_layer_call_fn_38239����Q�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
6__inference_batch_normalization_63_layer_call_fn_38250����Q�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_38343����Q�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_38360����Q�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
6__inference_batch_normalization_64_layer_call_fn_38315����Q�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
6__inference_batch_normalization_64_layer_call_fn_38326����Q�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
D__inference_conv2d_36_layer_call_and_return_conditional_losses_37216w789�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
)__inference_conv2d_36_layer_call_fn_37203l789�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
D__inference_conv2d_37_layer_call_and_return_conditional_losses_37512y��9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
)__inference_conv2d_37_layer_call_fn_37501n��9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
D__inference_conv2d_38_layer_call_and_return_conditional_losses_37588y��9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
)__inference_conv2d_38_layer_call_fn_37577n��9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
D__inference_conv2d_39_layer_call_and_return_conditional_losses_37674y��9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������<
� �
)__inference_conv2d_39_layer_call_fn_37663n��9�6
/�,
*�'
inputs�����������
� "+�(
unknown�����������<�
D__inference_conv2d_40_layer_call_and_return_conditional_losses_37970y��9�6
/�,
*�'
inputs�����������<
� "6�3
,�)
tensor_0�����������<
� �
)__inference_conv2d_40_layer_call_fn_37959n��9�6
/�,
*�'
inputs�����������<
� "+�(
unknown�����������<�
D__inference_conv2d_41_layer_call_and_return_conditional_losses_38056u��7�4
-�*
(�%
inputs���������@@<
� "4�1
*�'
tensor_0���������@@<
� �
)__inference_conv2d_41_layer_call_fn_38045j��7�4
-�*
(�%
inputs���������@@<
� ")�&
unknown���������@@<�
D__inference_conv2d_42_layer_call_and_return_conditional_losses_38142u��7�4
-�*
(�%
inputs���������  <
� "4�1
*�'
tensor_0���������  <
� �
)__inference_conv2d_42_layer_call_fn_38131j��7�4
-�*
(�%
inputs���������  <
� ")�&
unknown���������  <�
D__inference_conv2d_43_layer_call_and_return_conditional_losses_38228u��7�4
-�*
(�%
inputs���������<
� "4�1
*�'
tensor_0���������
� �
)__inference_conv2d_43_layer_call_fn_38217j��7�4
-�*
(�%
inputs���������<
� ")�&
unknown����������
D__inference_conv2d_44_layer_call_and_return_conditional_losses_38304u��7�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0���������
� �
)__inference_conv2d_44_layer_call_fn_38293j��7�4
-�*
(�%
inputs���������
� ")�&
unknown����������
N__inference_depthwise_conv2d_16_layer_call_and_return_conditional_losses_37293wJK9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
3__inference_depthwise_conv2d_16_layer_call_fn_37281lJK9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
N__inference_depthwise_conv2d_17_layer_call_and_return_conditional_losses_37397wgh9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
3__inference_depthwise_conv2d_17_layer_call_fn_37385lgh9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
N__inference_depthwise_conv2d_18_layer_call_and_return_conditional_losses_37751y��9�6
/�,
*�'
inputs�����������<
� "6�3
,�)
tensor_0�����������<
� �
3__inference_depthwise_conv2d_18_layer_call_fn_37739n��9�6
/�,
*�'
inputs�����������<
� "+�(
unknown�����������<�
N__inference_depthwise_conv2d_19_layer_call_and_return_conditional_losses_37855y��9�6
/�,
*�'
inputs�����������<
� "6�3
,�)
tensor_0�����������<
� �
3__inference_depthwise_conv2d_19_layer_call_fn_37843n��9�6
/�,
*�'
inputs�����������<
� "+�(
unknown�����������<�
U__inference_global_average_pooling2d_4_layer_call_and_return_conditional_losses_38371�R�O
H�E
C�@
inputs4������������������������������������
� "5�2
+�(
tensor_0������������������
� �
:__inference_global_average_pooling2d_4_layer_call_fn_38365�R�O
H�E
C�@
inputs4������������������������������������
� "*�'
unknown�������������������
B__inference_model_4_layer_call_and_return_conditional_losses_36386��78ABCJKSTU^_`ghpqr{|}��������������������������������������������������������B�?
8�5
+�(
input_1�����������
p

 
� ",�)
"�
tensor_0���������
� �
B__inference_model_4_layer_call_and_return_conditional_losses_36582��78ABCJKSTU^_`ghpqr{|}��������������������������������������������������������B�?
8�5
+�(
input_1�����������
p 

 
� ",�)
"�
tensor_0���������
� �
'__inference_model_4_layer_call_fn_36741��78ABCJKSTU^_`ghpqr{|}��������������������������������������������������������B�?
8�5
+�(
input_1�����������
p

 
� "!�
unknown����������
'__inference_model_4_layer_call_fn_36900��78ABCJKSTU^_`ghpqr{|}��������������������������������������������������������B�?
8�5
+�(
input_1�����������
p 

 
� "!�
unknown����������
N__inference_separable_conv2d_16_layer_call_and_return_conditional_losses_37320�STUI�F
?�<
:�7
inputs+���������������������������
� "F�C
<�9
tensor_0+���������������������������
� �
3__inference_separable_conv2d_16_layer_call_fn_37304�STUI�F
?�<
:�7
inputs+���������������������������
� ";�8
unknown+����������������������������
N__inference_separable_conv2d_17_layer_call_and_return_conditional_losses_37424�pqrI�F
?�<
:�7
inputs+���������������������������
� "F�C
<�9
tensor_0+���������������������������
� �
3__inference_separable_conv2d_17_layer_call_fn_37408�pqrI�F
?�<
:�7
inputs+���������������������������
� ";�8
unknown+����������������������������
N__inference_separable_conv2d_18_layer_call_and_return_conditional_losses_37778����I�F
?�<
:�7
inputs+���������������������������<
� "F�C
<�9
tensor_0+���������������������������<
� �
3__inference_separable_conv2d_18_layer_call_fn_37762����I�F
?�<
:�7
inputs+���������������������������<
� ";�8
unknown+���������������������������<�
N__inference_separable_conv2d_19_layer_call_and_return_conditional_losses_37882����I�F
?�<
:�7
inputs+���������������������������<
� "F�C
<�9
tensor_0+���������������������������<
� �
3__inference_separable_conv2d_19_layer_call_fn_37866����I�F
?�<
:�7
inputs+���������������������������<
� ";�8
unknown+���������������������������<�
#__inference_signature_wrapper_37194��78ABCJKSTU^_`ghpqr{|}��������������������������������������������������������E�B
� 
;�8
6
input_1+�(
input_1�����������"5�2
0
	softmax_4#� 
	softmax_4����������
D__inference_softmax_4_layer_call_and_return_conditional_losses_38381c3�0
)�&
 �
inputs���������

 
� ",�)
"�
tensor_0���������
� �
)__inference_softmax_4_layer_call_fn_38376X3�0
)�&
 �
inputs���������

 
� "!�
unknown���������
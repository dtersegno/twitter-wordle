Ӡ
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
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
executor_typestring ??
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
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??
~
dense_2797/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:NN*"
shared_namedense_2797/kernel
w
%dense_2797/kernel/Read/ReadVariableOpReadVariableOpdense_2797/kernel*
_output_shapes

:NN*
dtype0
v
dense_2797/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:N* 
shared_namedense_2797/bias
o
#dense_2797/bias/Read/ReadVariableOpReadVariableOpdense_2797/bias*
_output_shapes
:N*
dtype0
~
dense_2798/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:NN*"
shared_namedense_2798/kernel
w
%dense_2798/kernel/Read/ReadVariableOpReadVariableOpdense_2798/kernel*
_output_shapes

:NN*
dtype0
v
dense_2798/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:N* 
shared_namedense_2798/bias
o
#dense_2798/bias/Read/ReadVariableOpReadVariableOpdense_2798/bias*
_output_shapes
:N*
dtype0
~
dense_2799/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:N*"
shared_namedense_2799/kernel
w
%dense_2799/kernel/Read/ReadVariableOpReadVariableOpdense_2799/kernel*
_output_shapes

:N*
dtype0
v
dense_2799/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_2799/bias
o
#dense_2799/bias/Read/ReadVariableOpReadVariableOpdense_2799/bias*
_output_shapes
:*
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
?
Adam/dense_2797/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:NN*)
shared_nameAdam/dense_2797/kernel/m
?
,Adam/dense_2797/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2797/kernel/m*
_output_shapes

:NN*
dtype0
?
Adam/dense_2797/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:N*'
shared_nameAdam/dense_2797/bias/m
}
*Adam/dense_2797/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2797/bias/m*
_output_shapes
:N*
dtype0
?
Adam/dense_2798/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:NN*)
shared_nameAdam/dense_2798/kernel/m
?
,Adam/dense_2798/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2798/kernel/m*
_output_shapes

:NN*
dtype0
?
Adam/dense_2798/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:N*'
shared_nameAdam/dense_2798/bias/m
}
*Adam/dense_2798/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2798/bias/m*
_output_shapes
:N*
dtype0
?
Adam/dense_2799/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:N*)
shared_nameAdam/dense_2799/kernel/m
?
,Adam/dense_2799/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2799/kernel/m*
_output_shapes

:N*
dtype0
?
Adam/dense_2799/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_2799/bias/m
}
*Adam/dense_2799/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2799/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_2797/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:NN*)
shared_nameAdam/dense_2797/kernel/v
?
,Adam/dense_2797/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2797/kernel/v*
_output_shapes

:NN*
dtype0
?
Adam/dense_2797/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:N*'
shared_nameAdam/dense_2797/bias/v
}
*Adam/dense_2797/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2797/bias/v*
_output_shapes
:N*
dtype0
?
Adam/dense_2798/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:NN*)
shared_nameAdam/dense_2798/kernel/v
?
,Adam/dense_2798/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2798/kernel/v*
_output_shapes

:NN*
dtype0
?
Adam/dense_2798/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:N*'
shared_nameAdam/dense_2798/bias/v
}
*Adam/dense_2798/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2798/bias/v*
_output_shapes
:N*
dtype0
?
Adam/dense_2799/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:N*)
shared_nameAdam/dense_2799/kernel/v
?
,Adam/dense_2799/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2799/kernel/v*
_output_shapes

:N*
dtype0
?
Adam/dense_2799/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_2799/bias/v
}
*Adam/dense_2799/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2799/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?+
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?*
value?*B?* B?*
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses*
?
%iter

&beta_1

'beta_2
	(decay
)learning_ratemDmEmFmGmHmIvJvKvLvMvNvO*
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*
* 
?
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
* 
* 
* 

/serving_default* 
a[
VARIABLE_VALUEdense_2797/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2797/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEdense_2798/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2798/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEdense_2799/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2799/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

?0*
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
8
	@total
	Acount
B	variables
C	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

@0
A1*

B	variables*
?~
VARIABLE_VALUEAdam/dense_2797/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/dense_2797/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/dense_2798/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/dense_2798/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/dense_2799/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/dense_2799/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/dense_2797/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/dense_2797/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/dense_2798/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/dense_2798/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/dense_2799/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/dense_2799/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
 serving_default_dense_2797_inputPlaceholder*'
_output_shapes
:?????????N*
dtype0*
shape:?????????N
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_dense_2797_inputdense_2797/kerneldense_2797/biasdense_2798/kerneldense_2798/biasdense_2799/kerneldense_2799/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? */
f*R(
&__inference_signature_wrapper_27926658
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_2797/kernel/Read/ReadVariableOp#dense_2797/bias/Read/ReadVariableOp%dense_2798/kernel/Read/ReadVariableOp#dense_2798/bias/Read/ReadVariableOp%dense_2799/kernel/Read/ReadVariableOp#dense_2799/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/dense_2797/kernel/m/Read/ReadVariableOp*Adam/dense_2797/bias/m/Read/ReadVariableOp,Adam/dense_2798/kernel/m/Read/ReadVariableOp*Adam/dense_2798/bias/m/Read/ReadVariableOp,Adam/dense_2799/kernel/m/Read/ReadVariableOp*Adam/dense_2799/bias/m/Read/ReadVariableOp,Adam/dense_2797/kernel/v/Read/ReadVariableOp*Adam/dense_2797/bias/v/Read/ReadVariableOp,Adam/dense_2798/kernel/v/Read/ReadVariableOp*Adam/dense_2798/bias/v/Read/ReadVariableOp,Adam/dense_2799/kernel/v/Read/ReadVariableOp*Adam/dense_2799/bias/v/Read/ReadVariableOpConst*&
Tin
2	*
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
GPU 2J 8? **
f%R#
!__inference__traced_save_27926815
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_2797/kerneldense_2797/biasdense_2798/kerneldense_2798/biasdense_2799/kerneldense_2799/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_2797/kernel/mAdam/dense_2797/bias/mAdam/dense_2798/kernel/mAdam/dense_2798/bias/mAdam/dense_2799/kernel/mAdam/dense_2799/bias/mAdam/dense_2797/kernel/vAdam/dense_2797/bias/vAdam/dense_2798/kernel/vAdam/dense_2798/bias/vAdam/dense_2799/kernel/vAdam/dense_2799/bias/v*%
Tin
2*
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
GPU 2J 8? *-
f(R&
$__inference__traced_restore_27926900??
?9
?

!__inference__traced_save_27926815
file_prefix0
,savev2_dense_2797_kernel_read_readvariableop.
*savev2_dense_2797_bias_read_readvariableop0
,savev2_dense_2798_kernel_read_readvariableop.
*savev2_dense_2798_bias_read_readvariableop0
,savev2_dense_2799_kernel_read_readvariableop.
*savev2_dense_2799_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_dense_2797_kernel_m_read_readvariableop5
1savev2_adam_dense_2797_bias_m_read_readvariableop7
3savev2_adam_dense_2798_kernel_m_read_readvariableop5
1savev2_adam_dense_2798_bias_m_read_readvariableop7
3savev2_adam_dense_2799_kernel_m_read_readvariableop5
1savev2_adam_dense_2799_bias_m_read_readvariableop7
3savev2_adam_dense_2797_kernel_v_read_readvariableop5
1savev2_adam_dense_2797_bias_v_read_readvariableop7
3savev2_adam_dense_2798_kernel_v_read_readvariableop5
1savev2_adam_dense_2798_bias_v_read_readvariableop7
3savev2_adam_dense_2799_kernel_v_read_readvariableop5
1savev2_adam_dense_2799_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B ?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_2797_kernel_read_readvariableop*savev2_dense_2797_bias_read_readvariableop,savev2_dense_2798_kernel_read_readvariableop*savev2_dense_2798_bias_read_readvariableop,savev2_dense_2799_kernel_read_readvariableop*savev2_dense_2799_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_dense_2797_kernel_m_read_readvariableop1savev2_adam_dense_2797_bias_m_read_readvariableop3savev2_adam_dense_2798_kernel_m_read_readvariableop1savev2_adam_dense_2798_bias_m_read_readvariableop3savev2_adam_dense_2799_kernel_m_read_readvariableop1savev2_adam_dense_2799_bias_m_read_readvariableop3savev2_adam_dense_2797_kernel_v_read_readvariableop1savev2_adam_dense_2797_bias_v_read_readvariableop3savev2_adam_dense_2798_kernel_v_read_readvariableop1savev2_adam_dense_2798_bias_v_read_readvariableop3savev2_adam_dense_2799_kernel_v_read_readvariableop1savev2_adam_dense_2799_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *(
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :NN:N:NN:N:N:: : : : : : : :NN:N:NN:N:N::NN:N:NN:N:N:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:NN: 

_output_shapes
:N:$ 

_output_shapes

:NN: 

_output_shapes
:N:$ 

_output_shapes

:N: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:NN: 

_output_shapes
:N:$ 

_output_shapes

:NN: 

_output_shapes
:N:$ 

_output_shapes

:N: 

_output_shapes
::$ 

_output_shapes

:NN: 

_output_shapes
:N:$ 

_output_shapes

:NN: 

_output_shapes
:N:$ 

_output_shapes

:N: 

_output_shapes
::

_output_shapes
: 
?
?
M__inference_sequential_1068_layer_call_and_return_conditional_losses_27926549
dense_2797_input%
dense_2797_27926533:NN!
dense_2797_27926535:N%
dense_2798_27926538:NN!
dense_2798_27926540:N%
dense_2799_27926543:N!
dense_2799_27926545:
identity??"dense_2797/StatefulPartitionedCall?"dense_2798/StatefulPartitionedCall?"dense_2799/StatefulPartitionedCallj
dense_2797/CastCastdense_2797_input*

DstT0*

SrcT0*'
_output_shapes
:?????????N?
"dense_2797/StatefulPartitionedCallStatefulPartitionedCalldense_2797/Cast:y:0dense_2797_27926533dense_2797_27926535*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????N*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2797_layer_call_and_return_conditional_losses_27926353?
"dense_2798/StatefulPartitionedCallStatefulPartitionedCall+dense_2797/StatefulPartitionedCall:output:0dense_2798_27926538dense_2798_27926540*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????N*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2798_layer_call_and_return_conditional_losses_27926370?
"dense_2799/StatefulPartitionedCallStatefulPartitionedCall+dense_2798/StatefulPartitionedCall:output:0dense_2799_27926543dense_2799_27926545*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2799_layer_call_and_return_conditional_losses_27926386z
IdentityIdentity+dense_2799/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^dense_2797/StatefulPartitionedCall#^dense_2798/StatefulPartitionedCall#^dense_2799/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????N: : : : : : 2H
"dense_2797/StatefulPartitionedCall"dense_2797/StatefulPartitionedCall2H
"dense_2798/StatefulPartitionedCall"dense_2798/StatefulPartitionedCall2H
"dense_2799/StatefulPartitionedCall"dense_2799/StatefulPartitionedCall:Y U
'
_output_shapes
:?????????N
*
_user_specified_namedense_2797_input
?
?
&__inference_signature_wrapper_27926658
dense_2797_input
unknown:NN
	unknown_0:N
	unknown_1:NN
	unknown_2:N
	unknown_3:N
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_2797_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__wrapped_model_27926334o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????N: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????N
*
_user_specified_namedense_2797_input
?	
?
2__inference_sequential_1068_layer_call_fn_27926509
dense_2797_input
unknown:NN
	unknown_0:N
	unknown_1:NN
	unknown_2:N
	unknown_3:N
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_2797_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_sequential_1068_layer_call_and_return_conditional_losses_27926477o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????N: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????N
*
_user_specified_namedense_2797_input
?
?
2__inference_sequential_1068_layer_call_fn_27926572

inputs
unknown:NN
	unknown_0:N
	unknown_1:NN
	unknown_2:N
	unknown_3:N
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_sequential_1068_layer_call_and_return_conditional_losses_27926393o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????N: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????N
 
_user_specified_nameinputs
?

?
H__inference_dense_2797_layer_call_and_return_conditional_losses_27926353

inputs0
matmul_readvariableop_resource:NN-
biasadd_readvariableop_resource:N
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:NN*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:N*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????NP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Na
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Nw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????N: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????N
 
_user_specified_nameinputs
?
?
M__inference_sequential_1068_layer_call_and_return_conditional_losses_27926614

inputs;
)dense_2797_matmul_readvariableop_resource:NN8
*dense_2797_biasadd_readvariableop_resource:N;
)dense_2798_matmul_readvariableop_resource:NN8
*dense_2798_biasadd_readvariableop_resource:N;
)dense_2799_matmul_readvariableop_resource:N8
*dense_2799_biasadd_readvariableop_resource:
identity??!dense_2797/BiasAdd/ReadVariableOp? dense_2797/MatMul/ReadVariableOp?!dense_2798/BiasAdd/ReadVariableOp? dense_2798/MatMul/ReadVariableOp?!dense_2799/BiasAdd/ReadVariableOp? dense_2799/MatMul/ReadVariableOp`
dense_2797/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????N?
 dense_2797/MatMul/ReadVariableOpReadVariableOp)dense_2797_matmul_readvariableop_resource*
_output_shapes

:NN*
dtype0?
dense_2797/MatMulMatMuldense_2797/Cast:y:0(dense_2797/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????N?
!dense_2797/BiasAdd/ReadVariableOpReadVariableOp*dense_2797_biasadd_readvariableop_resource*
_output_shapes
:N*
dtype0?
dense_2797/BiasAddBiasAdddense_2797/MatMul:product:0)dense_2797/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Nf
dense_2797/ReluReludense_2797/BiasAdd:output:0*
T0*'
_output_shapes
:?????????N?
 dense_2798/MatMul/ReadVariableOpReadVariableOp)dense_2798_matmul_readvariableop_resource*
_output_shapes

:NN*
dtype0?
dense_2798/MatMulMatMuldense_2797/Relu:activations:0(dense_2798/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????N?
!dense_2798/BiasAdd/ReadVariableOpReadVariableOp*dense_2798_biasadd_readvariableop_resource*
_output_shapes
:N*
dtype0?
dense_2798/BiasAddBiasAdddense_2798/MatMul:product:0)dense_2798/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Nf
dense_2798/ReluReludense_2798/BiasAdd:output:0*
T0*'
_output_shapes
:?????????N?
 dense_2799/MatMul/ReadVariableOpReadVariableOp)dense_2799_matmul_readvariableop_resource*
_output_shapes

:N*
dtype0?
dense_2799/MatMulMatMuldense_2798/Relu:activations:0(dense_2799/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!dense_2799/BiasAdd/ReadVariableOpReadVariableOp*dense_2799_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_2799/BiasAddBiasAdddense_2799/MatMul:product:0)dense_2799/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
IdentityIdentitydense_2799/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_2797/BiasAdd/ReadVariableOp!^dense_2797/MatMul/ReadVariableOp"^dense_2798/BiasAdd/ReadVariableOp!^dense_2798/MatMul/ReadVariableOp"^dense_2799/BiasAdd/ReadVariableOp!^dense_2799/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????N: : : : : : 2F
!dense_2797/BiasAdd/ReadVariableOp!dense_2797/BiasAdd/ReadVariableOp2D
 dense_2797/MatMul/ReadVariableOp dense_2797/MatMul/ReadVariableOp2F
!dense_2798/BiasAdd/ReadVariableOp!dense_2798/BiasAdd/ReadVariableOp2D
 dense_2798/MatMul/ReadVariableOp dense_2798/MatMul/ReadVariableOp2F
!dense_2799/BiasAdd/ReadVariableOp!dense_2799/BiasAdd/ReadVariableOp2D
 dense_2799/MatMul/ReadVariableOp dense_2799/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????N
 
_user_specified_nameinputs
?
?
M__inference_sequential_1068_layer_call_and_return_conditional_losses_27926639

inputs;
)dense_2797_matmul_readvariableop_resource:NN8
*dense_2797_biasadd_readvariableop_resource:N;
)dense_2798_matmul_readvariableop_resource:NN8
*dense_2798_biasadd_readvariableop_resource:N;
)dense_2799_matmul_readvariableop_resource:N8
*dense_2799_biasadd_readvariableop_resource:
identity??!dense_2797/BiasAdd/ReadVariableOp? dense_2797/MatMul/ReadVariableOp?!dense_2798/BiasAdd/ReadVariableOp? dense_2798/MatMul/ReadVariableOp?!dense_2799/BiasAdd/ReadVariableOp? dense_2799/MatMul/ReadVariableOp`
dense_2797/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????N?
 dense_2797/MatMul/ReadVariableOpReadVariableOp)dense_2797_matmul_readvariableop_resource*
_output_shapes

:NN*
dtype0?
dense_2797/MatMulMatMuldense_2797/Cast:y:0(dense_2797/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????N?
!dense_2797/BiasAdd/ReadVariableOpReadVariableOp*dense_2797_biasadd_readvariableop_resource*
_output_shapes
:N*
dtype0?
dense_2797/BiasAddBiasAdddense_2797/MatMul:product:0)dense_2797/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Nf
dense_2797/ReluReludense_2797/BiasAdd:output:0*
T0*'
_output_shapes
:?????????N?
 dense_2798/MatMul/ReadVariableOpReadVariableOp)dense_2798_matmul_readvariableop_resource*
_output_shapes

:NN*
dtype0?
dense_2798/MatMulMatMuldense_2797/Relu:activations:0(dense_2798/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????N?
!dense_2798/BiasAdd/ReadVariableOpReadVariableOp*dense_2798_biasadd_readvariableop_resource*
_output_shapes
:N*
dtype0?
dense_2798/BiasAddBiasAdddense_2798/MatMul:product:0)dense_2798/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Nf
dense_2798/ReluReludense_2798/BiasAdd:output:0*
T0*'
_output_shapes
:?????????N?
 dense_2799/MatMul/ReadVariableOpReadVariableOp)dense_2799_matmul_readvariableop_resource*
_output_shapes

:N*
dtype0?
dense_2799/MatMulMatMuldense_2798/Relu:activations:0(dense_2799/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!dense_2799/BiasAdd/ReadVariableOpReadVariableOp*dense_2799_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_2799/BiasAddBiasAdddense_2799/MatMul:product:0)dense_2799/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
IdentityIdentitydense_2799/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_2797/BiasAdd/ReadVariableOp!^dense_2797/MatMul/ReadVariableOp"^dense_2798/BiasAdd/ReadVariableOp!^dense_2798/MatMul/ReadVariableOp"^dense_2799/BiasAdd/ReadVariableOp!^dense_2799/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????N: : : : : : 2F
!dense_2797/BiasAdd/ReadVariableOp!dense_2797/BiasAdd/ReadVariableOp2D
 dense_2797/MatMul/ReadVariableOp dense_2797/MatMul/ReadVariableOp2F
!dense_2798/BiasAdd/ReadVariableOp!dense_2798/BiasAdd/ReadVariableOp2D
 dense_2798/MatMul/ReadVariableOp dense_2798/MatMul/ReadVariableOp2F
!dense_2799/BiasAdd/ReadVariableOp!dense_2799/BiasAdd/ReadVariableOp2D
 dense_2799/MatMul/ReadVariableOp dense_2799/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????N
 
_user_specified_nameinputs
?
?
-__inference_dense_2797_layer_call_fn_27926667

inputs
unknown:NN
	unknown_0:N
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????N*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2797_layer_call_and_return_conditional_losses_27926353o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????N`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????N: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????N
 
_user_specified_nameinputs
?

?
H__inference_dense_2798_layer_call_and_return_conditional_losses_27926698

inputs0
matmul_readvariableop_resource:NN-
biasadd_readvariableop_resource:N
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:NN*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:N*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????NP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Na
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Nw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????N: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????N
 
_user_specified_nameinputs
?	
?
H__inference_dense_2799_layer_call_and_return_conditional_losses_27926386

inputs0
matmul_readvariableop_resource:N-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:N*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????N: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????N
 
_user_specified_nameinputs
?
?
M__inference_sequential_1068_layer_call_and_return_conditional_losses_27926393

inputs%
dense_2797_27926354:NN!
dense_2797_27926356:N%
dense_2798_27926371:NN!
dense_2798_27926373:N%
dense_2799_27926387:N!
dense_2799_27926389:
identity??"dense_2797/StatefulPartitionedCall?"dense_2798/StatefulPartitionedCall?"dense_2799/StatefulPartitionedCall`
dense_2797/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????N?
"dense_2797/StatefulPartitionedCallStatefulPartitionedCalldense_2797/Cast:y:0dense_2797_27926354dense_2797_27926356*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????N*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2797_layer_call_and_return_conditional_losses_27926353?
"dense_2798/StatefulPartitionedCallStatefulPartitionedCall+dense_2797/StatefulPartitionedCall:output:0dense_2798_27926371dense_2798_27926373*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????N*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2798_layer_call_and_return_conditional_losses_27926370?
"dense_2799/StatefulPartitionedCallStatefulPartitionedCall+dense_2798/StatefulPartitionedCall:output:0dense_2799_27926387dense_2799_27926389*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2799_layer_call_and_return_conditional_losses_27926386z
IdentityIdentity+dense_2799/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^dense_2797/StatefulPartitionedCall#^dense_2798/StatefulPartitionedCall#^dense_2799/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????N: : : : : : 2H
"dense_2797/StatefulPartitionedCall"dense_2797/StatefulPartitionedCall2H
"dense_2798/StatefulPartitionedCall"dense_2798/StatefulPartitionedCall2H
"dense_2799/StatefulPartitionedCall"dense_2799/StatefulPartitionedCall:O K
'
_output_shapes
:?????????N
 
_user_specified_nameinputs
?
?
2__inference_sequential_1068_layer_call_fn_27926589

inputs
unknown:NN
	unknown_0:N
	unknown_1:NN
	unknown_2:N
	unknown_3:N
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_sequential_1068_layer_call_and_return_conditional_losses_27926477o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????N: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????N
 
_user_specified_nameinputs
?
?
M__inference_sequential_1068_layer_call_and_return_conditional_losses_27926529
dense_2797_input%
dense_2797_27926513:NN!
dense_2797_27926515:N%
dense_2798_27926518:NN!
dense_2798_27926520:N%
dense_2799_27926523:N!
dense_2799_27926525:
identity??"dense_2797/StatefulPartitionedCall?"dense_2798/StatefulPartitionedCall?"dense_2799/StatefulPartitionedCallj
dense_2797/CastCastdense_2797_input*

DstT0*

SrcT0*'
_output_shapes
:?????????N?
"dense_2797/StatefulPartitionedCallStatefulPartitionedCalldense_2797/Cast:y:0dense_2797_27926513dense_2797_27926515*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????N*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2797_layer_call_and_return_conditional_losses_27926353?
"dense_2798/StatefulPartitionedCallStatefulPartitionedCall+dense_2797/StatefulPartitionedCall:output:0dense_2798_27926518dense_2798_27926520*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????N*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2798_layer_call_and_return_conditional_losses_27926370?
"dense_2799/StatefulPartitionedCallStatefulPartitionedCall+dense_2798/StatefulPartitionedCall:output:0dense_2799_27926523dense_2799_27926525*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2799_layer_call_and_return_conditional_losses_27926386z
IdentityIdentity+dense_2799/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^dense_2797/StatefulPartitionedCall#^dense_2798/StatefulPartitionedCall#^dense_2799/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????N: : : : : : 2H
"dense_2797/StatefulPartitionedCall"dense_2797/StatefulPartitionedCall2H
"dense_2798/StatefulPartitionedCall"dense_2798/StatefulPartitionedCall2H
"dense_2799/StatefulPartitionedCall"dense_2799/StatefulPartitionedCall:Y U
'
_output_shapes
:?????????N
*
_user_specified_namedense_2797_input
?
?
-__inference_dense_2799_layer_call_fn_27926707

inputs
unknown:N
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2799_layer_call_and_return_conditional_losses_27926386o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????N: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????N
 
_user_specified_nameinputs
?
?
M__inference_sequential_1068_layer_call_and_return_conditional_losses_27926477

inputs%
dense_2797_27926461:NN!
dense_2797_27926463:N%
dense_2798_27926466:NN!
dense_2798_27926468:N%
dense_2799_27926471:N!
dense_2799_27926473:
identity??"dense_2797/StatefulPartitionedCall?"dense_2798/StatefulPartitionedCall?"dense_2799/StatefulPartitionedCall`
dense_2797/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????N?
"dense_2797/StatefulPartitionedCallStatefulPartitionedCalldense_2797/Cast:y:0dense_2797_27926461dense_2797_27926463*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????N*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2797_layer_call_and_return_conditional_losses_27926353?
"dense_2798/StatefulPartitionedCallStatefulPartitionedCall+dense_2797/StatefulPartitionedCall:output:0dense_2798_27926466dense_2798_27926468*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????N*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2798_layer_call_and_return_conditional_losses_27926370?
"dense_2799/StatefulPartitionedCallStatefulPartitionedCall+dense_2798/StatefulPartitionedCall:output:0dense_2799_27926471dense_2799_27926473*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2799_layer_call_and_return_conditional_losses_27926386z
IdentityIdentity+dense_2799/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^dense_2797/StatefulPartitionedCall#^dense_2798/StatefulPartitionedCall#^dense_2799/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????N: : : : : : 2H
"dense_2797/StatefulPartitionedCall"dense_2797/StatefulPartitionedCall2H
"dense_2798/StatefulPartitionedCall"dense_2798/StatefulPartitionedCall2H
"dense_2799/StatefulPartitionedCall"dense_2799/StatefulPartitionedCall:O K
'
_output_shapes
:?????????N
 
_user_specified_nameinputs
?

?
H__inference_dense_2797_layer_call_and_return_conditional_losses_27926678

inputs0
matmul_readvariableop_resource:NN-
biasadd_readvariableop_resource:N
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:NN*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:N*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????NP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Na
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Nw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????N: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????N
 
_user_specified_nameinputs
?	
?
2__inference_sequential_1068_layer_call_fn_27926408
dense_2797_input
unknown:NN
	unknown_0:N
	unknown_1:NN
	unknown_2:N
	unknown_3:N
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_2797_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_sequential_1068_layer_call_and_return_conditional_losses_27926393o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????N: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????N
*
_user_specified_namedense_2797_input
?	
?
H__inference_dense_2799_layer_call_and_return_conditional_losses_27926717

inputs0
matmul_readvariableop_resource:N-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:N*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????N: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????N
 
_user_specified_nameinputs
?%
?
#__inference__wrapped_model_27926334
dense_2797_inputK
9sequential_1068_dense_2797_matmul_readvariableop_resource:NNH
:sequential_1068_dense_2797_biasadd_readvariableop_resource:NK
9sequential_1068_dense_2798_matmul_readvariableop_resource:NNH
:sequential_1068_dense_2798_biasadd_readvariableop_resource:NK
9sequential_1068_dense_2799_matmul_readvariableop_resource:NH
:sequential_1068_dense_2799_biasadd_readvariableop_resource:
identity??1sequential_1068/dense_2797/BiasAdd/ReadVariableOp?0sequential_1068/dense_2797/MatMul/ReadVariableOp?1sequential_1068/dense_2798/BiasAdd/ReadVariableOp?0sequential_1068/dense_2798/MatMul/ReadVariableOp?1sequential_1068/dense_2799/BiasAdd/ReadVariableOp?0sequential_1068/dense_2799/MatMul/ReadVariableOpz
sequential_1068/dense_2797/CastCastdense_2797_input*

DstT0*

SrcT0*'
_output_shapes
:?????????N?
0sequential_1068/dense_2797/MatMul/ReadVariableOpReadVariableOp9sequential_1068_dense_2797_matmul_readvariableop_resource*
_output_shapes

:NN*
dtype0?
!sequential_1068/dense_2797/MatMulMatMul#sequential_1068/dense_2797/Cast:y:08sequential_1068/dense_2797/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????N?
1sequential_1068/dense_2797/BiasAdd/ReadVariableOpReadVariableOp:sequential_1068_dense_2797_biasadd_readvariableop_resource*
_output_shapes
:N*
dtype0?
"sequential_1068/dense_2797/BiasAddBiasAdd+sequential_1068/dense_2797/MatMul:product:09sequential_1068/dense_2797/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????N?
sequential_1068/dense_2797/ReluRelu+sequential_1068/dense_2797/BiasAdd:output:0*
T0*'
_output_shapes
:?????????N?
0sequential_1068/dense_2798/MatMul/ReadVariableOpReadVariableOp9sequential_1068_dense_2798_matmul_readvariableop_resource*
_output_shapes

:NN*
dtype0?
!sequential_1068/dense_2798/MatMulMatMul-sequential_1068/dense_2797/Relu:activations:08sequential_1068/dense_2798/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????N?
1sequential_1068/dense_2798/BiasAdd/ReadVariableOpReadVariableOp:sequential_1068_dense_2798_biasadd_readvariableop_resource*
_output_shapes
:N*
dtype0?
"sequential_1068/dense_2798/BiasAddBiasAdd+sequential_1068/dense_2798/MatMul:product:09sequential_1068/dense_2798/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????N?
sequential_1068/dense_2798/ReluRelu+sequential_1068/dense_2798/BiasAdd:output:0*
T0*'
_output_shapes
:?????????N?
0sequential_1068/dense_2799/MatMul/ReadVariableOpReadVariableOp9sequential_1068_dense_2799_matmul_readvariableop_resource*
_output_shapes

:N*
dtype0?
!sequential_1068/dense_2799/MatMulMatMul-sequential_1068/dense_2798/Relu:activations:08sequential_1068/dense_2799/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
1sequential_1068/dense_2799/BiasAdd/ReadVariableOpReadVariableOp:sequential_1068_dense_2799_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
"sequential_1068/dense_2799/BiasAddBiasAdd+sequential_1068/dense_2799/MatMul:product:09sequential_1068/dense_2799/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????z
IdentityIdentity+sequential_1068/dense_2799/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp2^sequential_1068/dense_2797/BiasAdd/ReadVariableOp1^sequential_1068/dense_2797/MatMul/ReadVariableOp2^sequential_1068/dense_2798/BiasAdd/ReadVariableOp1^sequential_1068/dense_2798/MatMul/ReadVariableOp2^sequential_1068/dense_2799/BiasAdd/ReadVariableOp1^sequential_1068/dense_2799/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????N: : : : : : 2f
1sequential_1068/dense_2797/BiasAdd/ReadVariableOp1sequential_1068/dense_2797/BiasAdd/ReadVariableOp2d
0sequential_1068/dense_2797/MatMul/ReadVariableOp0sequential_1068/dense_2797/MatMul/ReadVariableOp2f
1sequential_1068/dense_2798/BiasAdd/ReadVariableOp1sequential_1068/dense_2798/BiasAdd/ReadVariableOp2d
0sequential_1068/dense_2798/MatMul/ReadVariableOp0sequential_1068/dense_2798/MatMul/ReadVariableOp2f
1sequential_1068/dense_2799/BiasAdd/ReadVariableOp1sequential_1068/dense_2799/BiasAdd/ReadVariableOp2d
0sequential_1068/dense_2799/MatMul/ReadVariableOp0sequential_1068/dense_2799/MatMul/ReadVariableOp:Y U
'
_output_shapes
:?????????N
*
_user_specified_namedense_2797_input
?f
?
$__inference__traced_restore_27926900
file_prefix4
"assignvariableop_dense_2797_kernel:NN0
"assignvariableop_1_dense_2797_bias:N6
$assignvariableop_2_dense_2798_kernel:NN0
"assignvariableop_3_dense_2798_bias:N6
$assignvariableop_4_dense_2799_kernel:N0
"assignvariableop_5_dense_2799_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: >
,assignvariableop_13_adam_dense_2797_kernel_m:NN8
*assignvariableop_14_adam_dense_2797_bias_m:N>
,assignvariableop_15_adam_dense_2798_kernel_m:NN8
*assignvariableop_16_adam_dense_2798_bias_m:N>
,assignvariableop_17_adam_dense_2799_kernel_m:N8
*assignvariableop_18_adam_dense_2799_bias_m:>
,assignvariableop_19_adam_dense_2797_kernel_v:NN8
*assignvariableop_20_adam_dense_2797_bias_v:N>
,assignvariableop_21_adam_dense_2798_kernel_v:NN8
*assignvariableop_22_adam_dense_2798_bias_v:N>
,assignvariableop_23_adam_dense_2799_kernel_v:N8
*assignvariableop_24_adam_dense_2799_bias_v:
identity_26??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp"assignvariableop_dense_2797_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_2797_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_2798_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_2798_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_dense_2799_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_2799_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp,assignvariableop_13_adam_dense_2797_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_2797_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_dense_2798_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_2798_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_dense_2799_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_2799_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_dense_2797_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_2797_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_dense_2798_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_2798_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_dense_2799_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_2799_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_25Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_26IdentityIdentity_25:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_26Identity_26:output:0*G
_input_shapes6
4: : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_24AssignVariableOp_242(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?

?
H__inference_dense_2798_layer_call_and_return_conditional_losses_27926370

inputs0
matmul_readvariableop_resource:NN-
biasadd_readvariableop_resource:N
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:NN*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????Nr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:N*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????NP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????Na
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????Nw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????N: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????N
 
_user_specified_nameinputs
?
?
-__inference_dense_2798_layer_call_fn_27926687

inputs
unknown:NN
	unknown_0:N
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????N*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2798_layer_call_and_return_conditional_losses_27926370o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????N`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????N: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????N
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
dense_2797_input9
"serving_default_dense_2797_input:0?????????N>

dense_27990
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?N
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
?
%iter

&beta_1

'beta_2
	(decay
)learning_ratemDmEmFmGmHmIvJvKvLvMvNvO"
	optimizer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_sequential_1068_layer_call_fn_27926408
2__inference_sequential_1068_layer_call_fn_27926572
2__inference_sequential_1068_layer_call_fn_27926589
2__inference_sequential_1068_layer_call_fn_27926509?
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
?2?
M__inference_sequential_1068_layer_call_and_return_conditional_losses_27926614
M__inference_sequential_1068_layer_call_and_return_conditional_losses_27926639
M__inference_sequential_1068_layer_call_and_return_conditional_losses_27926529
M__inference_sequential_1068_layer_call_and_return_conditional_losses_27926549?
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
?B?
#__inference__wrapped_model_27926334dense_2797_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
/serving_default"
signature_map
#:!NN2dense_2797/kernel
:N2dense_2797/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_dense_2797_layer_call_fn_27926667?
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
H__inference_dense_2797_layer_call_and_return_conditional_losses_27926678?
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
#:!NN2dense_2798/kernel
:N2dense_2798/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_dense_2798_layer_call_fn_27926687?
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
H__inference_dense_2798_layer_call_and_return_conditional_losses_27926698?
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
#:!N2dense_2799/kernel
:2dense_2799/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_dense_2799_layer_call_fn_27926707?
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
H__inference_dense_2799_layer_call_and_return_conditional_losses_27926717?
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
&__inference_signature_wrapper_27926658dense_2797_input"?
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
N
	@total
	Acount
B	variables
C	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
@0
A1"
trackable_list_wrapper
-
B	variables"
_generic_user_object
(:&NN2Adam/dense_2797/kernel/m
": N2Adam/dense_2797/bias/m
(:&NN2Adam/dense_2798/kernel/m
": N2Adam/dense_2798/bias/m
(:&N2Adam/dense_2799/kernel/m
": 2Adam/dense_2799/bias/m
(:&NN2Adam/dense_2797/kernel/v
": N2Adam/dense_2797/bias/v
(:&NN2Adam/dense_2798/kernel/v
": N2Adam/dense_2798/bias/v
(:&N2Adam/dense_2799/kernel/v
": 2Adam/dense_2799/bias/v?
#__inference__wrapped_model_27926334|9?6
/?,
*?'
dense_2797_input?????????N
? "7?4
2

dense_2799$?!

dense_2799??????????
H__inference_dense_2797_layer_call_and_return_conditional_losses_27926678\/?,
%?"
 ?
inputs?????????N
? "%?"
?
0?????????N
? ?
-__inference_dense_2797_layer_call_fn_27926667O/?,
%?"
 ?
inputs?????????N
? "??????????N?
H__inference_dense_2798_layer_call_and_return_conditional_losses_27926698\/?,
%?"
 ?
inputs?????????N
? "%?"
?
0?????????N
? ?
-__inference_dense_2798_layer_call_fn_27926687O/?,
%?"
 ?
inputs?????????N
? "??????????N?
H__inference_dense_2799_layer_call_and_return_conditional_losses_27926717\/?,
%?"
 ?
inputs?????????N
? "%?"
?
0?????????
? ?
-__inference_dense_2799_layer_call_fn_27926707O/?,
%?"
 ?
inputs?????????N
? "???????????
M__inference_sequential_1068_layer_call_and_return_conditional_losses_27926529rA?>
7?4
*?'
dense_2797_input?????????N
p 

 
? "%?"
?
0?????????
? ?
M__inference_sequential_1068_layer_call_and_return_conditional_losses_27926549rA?>
7?4
*?'
dense_2797_input?????????N
p

 
? "%?"
?
0?????????
? ?
M__inference_sequential_1068_layer_call_and_return_conditional_losses_27926614h7?4
-?*
 ?
inputs?????????N
p 

 
? "%?"
?
0?????????
? ?
M__inference_sequential_1068_layer_call_and_return_conditional_losses_27926639h7?4
-?*
 ?
inputs?????????N
p

 
? "%?"
?
0?????????
? ?
2__inference_sequential_1068_layer_call_fn_27926408eA?>
7?4
*?'
dense_2797_input?????????N
p 

 
? "???????????
2__inference_sequential_1068_layer_call_fn_27926509eA?>
7?4
*?'
dense_2797_input?????????N
p

 
? "???????????
2__inference_sequential_1068_layer_call_fn_27926572[7?4
-?*
 ?
inputs?????????N
p 

 
? "???????????
2__inference_sequential_1068_layer_call_fn_27926589[7?4
-?*
 ?
inputs?????????N
p

 
? "???????????
&__inference_signature_wrapper_27926658?M?J
? 
C?@
>
dense_2797_input*?'
dense_2797_input?????????N"7?4
2

dense_2799$?!

dense_2799?????????
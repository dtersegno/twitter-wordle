
¡ò
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
delete_old_dirsbool(
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
Á
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
executor_typestring ¨
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ÿ³
~
dense_3374/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:XX*"
shared_namedense_3374/kernel
w
%dense_3374/kernel/Read/ReadVariableOpReadVariableOpdense_3374/kernel*
_output_shapes

:XX*
dtype0
v
dense_3374/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:X* 
shared_namedense_3374/bias
o
#dense_3374/bias/Read/ReadVariableOpReadVariableOpdense_3374/bias*
_output_shapes
:X*
dtype0
~
dense_3375/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:X*"
shared_namedense_3375/kernel
w
%dense_3375/kernel/Read/ReadVariableOpReadVariableOpdense_3375/kernel*
_output_shapes

:X*
dtype0
v
dense_3375/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_3375/bias
o
#dense_3375/bias/Read/ReadVariableOpReadVariableOpdense_3375/bias*
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

Adam/dense_3374/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:XX*)
shared_nameAdam/dense_3374/kernel/m

,Adam/dense_3374/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3374/kernel/m*
_output_shapes

:XX*
dtype0

Adam/dense_3374/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:X*'
shared_nameAdam/dense_3374/bias/m
}
*Adam/dense_3374/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3374/bias/m*
_output_shapes
:X*
dtype0

Adam/dense_3375/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:X*)
shared_nameAdam/dense_3375/kernel/m

,Adam/dense_3375/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3375/kernel/m*
_output_shapes

:X*
dtype0

Adam/dense_3375/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_3375/bias/m
}
*Adam/dense_3375/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3375/bias/m*
_output_shapes
:*
dtype0

Adam/dense_3374/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:XX*)
shared_nameAdam/dense_3374/kernel/v

,Adam/dense_3374/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3374/kernel/v*
_output_shapes

:XX*
dtype0

Adam/dense_3374/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:X*'
shared_nameAdam/dense_3374/bias/v
}
*Adam/dense_3374/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3374/bias/v*
_output_shapes
:X*
dtype0

Adam/dense_3375/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:X*)
shared_nameAdam/dense_3375/kernel/v

,Adam/dense_3375/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3375/kernel/v*
_output_shapes

:X*
dtype0

Adam/dense_3375/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_3375/bias/v
}
*Adam/dense_3375/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3375/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
¿ 
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ú
valueðBí Bæ

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

iter

beta_1

beta_2
	decay
 learning_ratem6m7m8m9v:v;v<v=*
 
0
1
2
3*
 
0
1
2
3*
* 
°
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
* 
* 
* 

&serving_default* 
a[
VARIABLE_VALUEdense_3374/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_3374/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEdense_3375/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_3375/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
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

0
1*

10*
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
	2total
	3count
4	variables
5	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

20
31*

4	variables*
~
VARIABLE_VALUEAdam/dense_3374/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_3374/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_3375/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_3375/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_3374/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_3374/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_3375/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_3375/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

 serving_default_dense_3374_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿX

StatefulPartitionedCallStatefulPartitionedCall serving_default_dense_3374_inputdense_3374/kerneldense_3374/biasdense_3375/kerneldense_3375/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 */
f*R(
&__inference_signature_wrapper_37358793
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_3374/kernel/Read/ReadVariableOp#dense_3374/bias/Read/ReadVariableOp%dense_3375/kernel/Read/ReadVariableOp#dense_3375/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/dense_3374/kernel/m/Read/ReadVariableOp*Adam/dense_3374/bias/m/Read/ReadVariableOp,Adam/dense_3375/kernel/m/Read/ReadVariableOp*Adam/dense_3375/bias/m/Read/ReadVariableOp,Adam/dense_3374/kernel/v/Read/ReadVariableOp*Adam/dense_3374/bias/v/Read/ReadVariableOp,Adam/dense_3375/kernel/v/Read/ReadVariableOp*Adam/dense_3375/bias/v/Read/ReadVariableOpConst* 
Tin
2	*
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
GPU 2J 8 **
f%R#
!__inference__traced_save_37358912

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3374/kerneldense_3374/biasdense_3375/kerneldense_3375/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_3374/kernel/mAdam/dense_3374/bias/mAdam/dense_3375/kernel/mAdam/dense_3375/bias/mAdam/dense_3374/kernel/vAdam/dense_3374/bias/vAdam/dense_3375/kernel/vAdam/dense_3375/bias/v*
Tin
2*
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
GPU 2J 8 *-
f(R&
$__inference__traced_restore_37358979ËÝ
Ð
Ê
M__inference_sequential_1314_layer_call_and_return_conditional_losses_37358595

inputs%
dense_3374_37358573:XX!
dense_3374_37358575:X%
dense_3375_37358589:X!
dense_3375_37358591:
identity¢"dense_3374/StatefulPartitionedCall¢"dense_3375/StatefulPartitionedCall`
dense_3374/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
"dense_3374/StatefulPartitionedCallStatefulPartitionedCalldense_3374/Cast:y:0dense_3374_37358573dense_3374_37358575*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_3374_layer_call_and_return_conditional_losses_37358572£
"dense_3375/StatefulPartitionedCallStatefulPartitionedCall+dense_3374/StatefulPartitionedCall:output:0dense_3375_37358589dense_3375_37358591*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_3375_layer_call_and_return_conditional_losses_37358588z
IdentityIdentity+dense_3375/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^dense_3374/StatefulPartitionedCall#^dense_3375/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿX: : : : 2H
"dense_3374/StatefulPartitionedCall"dense_3374/StatefulPartitionedCall2H
"dense_3375/StatefulPartitionedCall"dense_3375/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
 
_user_specified_nameinputs
î
Ô
M__inference_sequential_1314_layer_call_and_return_conditional_losses_37358695
dense_3374_input%
dense_3374_37358684:XX!
dense_3374_37358686:X%
dense_3375_37358689:X!
dense_3375_37358691:
identity¢"dense_3374/StatefulPartitionedCall¢"dense_3375/StatefulPartitionedCallj
dense_3374/CastCastdense_3374_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
"dense_3374/StatefulPartitionedCallStatefulPartitionedCalldense_3374/Cast:y:0dense_3374_37358684dense_3374_37358686*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_3374_layer_call_and_return_conditional_losses_37358572£
"dense_3375/StatefulPartitionedCallStatefulPartitionedCall+dense_3374/StatefulPartitionedCall:output:0dense_3375_37358689dense_3375_37358691*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_3375_layer_call_and_return_conditional_losses_37358588z
IdentityIdentity+dense_3375/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^dense_3374/StatefulPartitionedCall#^dense_3375/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿX: : : : 2H
"dense_3374/StatefulPartitionedCall"dense_3374/StatefulPartitionedCall2H
"dense_3375/StatefulPartitionedCall"dense_3375/StatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
*
_user_specified_namedense_3374_input
Ê

-__inference_dense_3374_layer_call_fn_37358802

inputs
unknown:XX
	unknown_0:X
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_3374_layer_call_and_return_conditional_losses_37358572o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿX: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
 
_user_specified_nameinputs
´N
º
$__inference__traced_restore_37358979
file_prefix4
"assignvariableop_dense_3374_kernel:XX0
"assignvariableop_1_dense_3374_bias:X6
$assignvariableop_2_dense_3375_kernel:X0
"assignvariableop_3_dense_3375_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: >
,assignvariableop_11_adam_dense_3374_kernel_m:XX8
*assignvariableop_12_adam_dense_3374_bias_m:X>
,assignvariableop_13_adam_dense_3375_kernel_m:X8
*assignvariableop_14_adam_dense_3375_bias_m:>
,assignvariableop_15_adam_dense_3374_kernel_v:XX8
*assignvariableop_16_adam_dense_3374_bias_v:X>
,assignvariableop_17_adam_dense_3375_kernel_v:X8
*assignvariableop_18_adam_dense_3375_bias_v:
identity_20¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ò

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ø	
valueî	Bë	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp"assignvariableop_dense_3374_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_3374_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_3375_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_3375_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp,assignvariableop_11_adam_dense_3374_kernel_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp*assignvariableop_12_adam_dense_3374_bias_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp,assignvariableop_13_adam_dense_3375_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_3375_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_dense_3374_kernel_vIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_3374_bias_vIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_dense_3375_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_3375_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ñ
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: Þ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_20Identity_20:output:0*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_18AssignVariableOp_182(
AssignVariableOp_2AssignVariableOp_22(
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

Ó
&__inference_signature_wrapper_37358793
dense_3374_input
unknown:XX
	unknown_0:X
	unknown_1:X
	unknown_2:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCalldense_3374_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__wrapped_model_37358553o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿX: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
*
_user_specified_namedense_3374_input

È
#__inference__wrapped_model_37358553
dense_3374_inputK
9sequential_1314_dense_3374_matmul_readvariableop_resource:XXH
:sequential_1314_dense_3374_biasadd_readvariableop_resource:XK
9sequential_1314_dense_3375_matmul_readvariableop_resource:XH
:sequential_1314_dense_3375_biasadd_readvariableop_resource:
identity¢1sequential_1314/dense_3374/BiasAdd/ReadVariableOp¢0sequential_1314/dense_3374/MatMul/ReadVariableOp¢1sequential_1314/dense_3375/BiasAdd/ReadVariableOp¢0sequential_1314/dense_3375/MatMul/ReadVariableOpz
sequential_1314/dense_3374/CastCastdense_3374_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿXª
0sequential_1314/dense_3374/MatMul/ReadVariableOpReadVariableOp9sequential_1314_dense_3374_matmul_readvariableop_resource*
_output_shapes

:XX*
dtype0¼
!sequential_1314/dense_3374/MatMulMatMul#sequential_1314/dense_3374/Cast:y:08sequential_1314/dense_3374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX¨
1sequential_1314/dense_3374/BiasAdd/ReadVariableOpReadVariableOp:sequential_1314_dense_3374_biasadd_readvariableop_resource*
_output_shapes
:X*
dtype0Ç
"sequential_1314/dense_3374/BiasAddBiasAdd+sequential_1314/dense_3374/MatMul:product:09sequential_1314/dense_3374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
sequential_1314/dense_3374/ReluRelu+sequential_1314/dense_3374/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿXª
0sequential_1314/dense_3375/MatMul/ReadVariableOpReadVariableOp9sequential_1314_dense_3375_matmul_readvariableop_resource*
_output_shapes

:X*
dtype0Æ
!sequential_1314/dense_3375/MatMulMatMul-sequential_1314/dense_3374/Relu:activations:08sequential_1314/dense_3375/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
1sequential_1314/dense_3375/BiasAdd/ReadVariableOpReadVariableOp:sequential_1314_dense_3375_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ç
"sequential_1314/dense_3375/BiasAddBiasAdd+sequential_1314/dense_3375/MatMul:product:09sequential_1314/dense_3375/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
IdentityIdentity+sequential_1314/dense_3375/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp2^sequential_1314/dense_3374/BiasAdd/ReadVariableOp1^sequential_1314/dense_3374/MatMul/ReadVariableOp2^sequential_1314/dense_3375/BiasAdd/ReadVariableOp1^sequential_1314/dense_3375/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿX: : : : 2f
1sequential_1314/dense_3374/BiasAdd/ReadVariableOp1sequential_1314/dense_3374/BiasAdd/ReadVariableOp2d
0sequential_1314/dense_3374/MatMul/ReadVariableOp0sequential_1314/dense_3374/MatMul/ReadVariableOp2f
1sequential_1314/dense_3375/BiasAdd/ReadVariableOp1sequential_1314/dense_3375/BiasAdd/ReadVariableOp2d
0sequential_1314/dense_3375/MatMul/ReadVariableOp0sequential_1314/dense_3375/MatMul/ReadVariableOp:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
*
_user_specified_namedense_3374_input


ù
H__inference_dense_3374_layer_call_and_return_conditional_losses_37358572

inputs0
matmul_readvariableop_resource:XX-
biasadd_readvariableop_resource:X
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:XX*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿXr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:X*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿXP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿXa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿXw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿX: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
 
_user_specified_nameinputs


ù
H__inference_dense_3374_layer_call_and_return_conditional_losses_37358813

inputs0
matmul_readvariableop_resource:XX-
biasadd_readvariableop_resource:X
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:XX*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿXr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:X*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿXP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿXa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿXw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿX: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
 
_user_specified_nameinputs
/

!__inference__traced_save_37358912
file_prefix0
,savev2_dense_3374_kernel_read_readvariableop.
*savev2_dense_3374_bias_read_readvariableop0
,savev2_dense_3375_kernel_read_readvariableop.
*savev2_dense_3375_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_dense_3374_kernel_m_read_readvariableop5
1savev2_adam_dense_3374_bias_m_read_readvariableop7
3savev2_adam_dense_3375_kernel_m_read_readvariableop5
1savev2_adam_dense_3375_bias_m_read_readvariableop7
3savev2_adam_dense_3374_kernel_v_read_readvariableop5
1savev2_adam_dense_3374_bias_v_read_readvariableop7
3savev2_adam_dense_3375_kernel_v_read_readvariableop5
1savev2_adam_dense_3375_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ï

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ø	
valueî	Bë	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B §
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_3374_kernel_read_readvariableop*savev2_dense_3374_bias_read_readvariableop,savev2_dense_3375_kernel_read_readvariableop*savev2_dense_3375_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_dense_3374_kernel_m_read_readvariableop1savev2_adam_dense_3374_bias_m_read_readvariableop3savev2_adam_dense_3375_kernel_m_read_readvariableop1savev2_adam_dense_3375_bias_m_read_readvariableop3savev2_adam_dense_3374_kernel_v_read_readvariableop1savev2_adam_dense_3374_bias_v_read_readvariableop3savev2_adam_dense_3375_kernel_v_read_readvariableop1savev2_adam_dense_3375_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *"
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*
_input_shapest
r: :XX:X:X:: : : : : : : :XX:X:X::XX:X:X:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:XX: 

_output_shapes
:X:$ 

_output_shapes

:X: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :
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
: :$ 

_output_shapes

:XX: 

_output_shapes
:X:$ 

_output_shapes

:X: 

_output_shapes
::$ 

_output_shapes

:XX: 

_output_shapes
:X:$ 

_output_shapes

:X: 

_output_shapes
::

_output_shapes
: 
ê
è
M__inference_sequential_1314_layer_call_and_return_conditional_losses_37358778

inputs;
)dense_3374_matmul_readvariableop_resource:XX8
*dense_3374_biasadd_readvariableop_resource:X;
)dense_3375_matmul_readvariableop_resource:X8
*dense_3375_biasadd_readvariableop_resource:
identity¢!dense_3374/BiasAdd/ReadVariableOp¢ dense_3374/MatMul/ReadVariableOp¢!dense_3375/BiasAdd/ReadVariableOp¢ dense_3375/MatMul/ReadVariableOp`
dense_3374/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
 dense_3374/MatMul/ReadVariableOpReadVariableOp)dense_3374_matmul_readvariableop_resource*
_output_shapes

:XX*
dtype0
dense_3374/MatMulMatMuldense_3374/Cast:y:0(dense_3374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
!dense_3374/BiasAdd/ReadVariableOpReadVariableOp*dense_3374_biasadd_readvariableop_resource*
_output_shapes
:X*
dtype0
dense_3374/BiasAddBiasAdddense_3374/MatMul:product:0)dense_3374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿXf
dense_3374/ReluReludense_3374/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
 dense_3375/MatMul/ReadVariableOpReadVariableOp)dense_3375_matmul_readvariableop_resource*
_output_shapes

:X*
dtype0
dense_3375/MatMulMatMuldense_3374/Relu:activations:0(dense_3375/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_3375/BiasAdd/ReadVariableOpReadVariableOp*dense_3375_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3375/BiasAddBiasAdddense_3375/MatMul:product:0)dense_3375/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentitydense_3375/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp"^dense_3374/BiasAdd/ReadVariableOp!^dense_3374/MatMul/ReadVariableOp"^dense_3375/BiasAdd/ReadVariableOp!^dense_3375/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿX: : : : 2F
!dense_3374/BiasAdd/ReadVariableOp!dense_3374/BiasAdd/ReadVariableOp2D
 dense_3374/MatMul/ReadVariableOp dense_3374/MatMul/ReadVariableOp2F
!dense_3375/BiasAdd/ReadVariableOp!dense_3375/BiasAdd/ReadVariableOp2D
 dense_3375/MatMul/ReadVariableOp dense_3375/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
 
_user_specified_nameinputs
Ð
Ê
M__inference_sequential_1314_layer_call_and_return_conditional_losses_37358656

inputs%
dense_3374_37358645:XX!
dense_3374_37358647:X%
dense_3375_37358650:X!
dense_3375_37358652:
identity¢"dense_3374/StatefulPartitionedCall¢"dense_3375/StatefulPartitionedCall`
dense_3374/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
"dense_3374/StatefulPartitionedCallStatefulPartitionedCalldense_3374/Cast:y:0dense_3374_37358645dense_3374_37358647*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_3374_layer_call_and_return_conditional_losses_37358572£
"dense_3375/StatefulPartitionedCallStatefulPartitionedCall+dense_3374/StatefulPartitionedCall:output:0dense_3375_37358650dense_3375_37358652*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_3375_layer_call_and_return_conditional_losses_37358588z
IdentityIdentity+dense_3375/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^dense_3374/StatefulPartitionedCall#^dense_3375/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿX: : : : 2H
"dense_3374/StatefulPartitionedCall"dense_3374/StatefulPartitionedCall2H
"dense_3375/StatefulPartitionedCall"dense_3375/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
 
_user_specified_nameinputs
Ê

-__inference_dense_3375_layer_call_fn_37358822

inputs
unknown:X
	unknown_0:
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_3375_layer_call_and_return_conditional_losses_37358588o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿX: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
 
_user_specified_nameinputs
Ë	
ù
H__inference_dense_3375_layer_call_and_return_conditional_losses_37358832

inputs0
matmul_readvariableop_resource:X-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:X*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿX: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
 
_user_specified_nameinputs
Æ
ß
2__inference_sequential_1314_layer_call_fn_37358606
dense_3374_input
unknown:XX
	unknown_0:X
	unknown_1:X
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_3374_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_sequential_1314_layer_call_and_return_conditional_losses_37358595o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿX: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
*
_user_specified_namedense_3374_input
î
Ô
M__inference_sequential_1314_layer_call_and_return_conditional_losses_37358710
dense_3374_input%
dense_3374_37358699:XX!
dense_3374_37358701:X%
dense_3375_37358704:X!
dense_3375_37358706:
identity¢"dense_3374/StatefulPartitionedCall¢"dense_3375/StatefulPartitionedCallj
dense_3374/CastCastdense_3374_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
"dense_3374/StatefulPartitionedCallStatefulPartitionedCalldense_3374/Cast:y:0dense_3374_37358699dense_3374_37358701*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_3374_layer_call_and_return_conditional_losses_37358572£
"dense_3375/StatefulPartitionedCallStatefulPartitionedCall+dense_3374/StatefulPartitionedCall:output:0dense_3375_37358704dense_3375_37358706*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_3375_layer_call_and_return_conditional_losses_37358588z
IdentityIdentity+dense_3375/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^dense_3374/StatefulPartitionedCall#^dense_3375/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿX: : : : 2H
"dense_3374/StatefulPartitionedCall"dense_3374/StatefulPartitionedCall2H
"dense_3375/StatefulPartitionedCall"dense_3375/StatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
*
_user_specified_namedense_3374_input
Ë	
ù
H__inference_dense_3375_layer_call_and_return_conditional_losses_37358588

inputs0
matmul_readvariableop_resource:X-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:X*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿX: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
 
_user_specified_nameinputs
¨
Õ
2__inference_sequential_1314_layer_call_fn_37358729

inputs
unknown:XX
	unknown_0:X
	unknown_1:X
	unknown_2:
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_sequential_1314_layer_call_and_return_conditional_losses_37358595o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿX: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
 
_user_specified_nameinputs
Æ
ß
2__inference_sequential_1314_layer_call_fn_37358680
dense_3374_input
unknown:XX
	unknown_0:X
	unknown_1:X
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_3374_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_sequential_1314_layer_call_and_return_conditional_losses_37358656o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿX: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
*
_user_specified_namedense_3374_input
¨
Õ
2__inference_sequential_1314_layer_call_fn_37358742

inputs
unknown:XX
	unknown_0:X
	unknown_1:X
	unknown_2:
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_sequential_1314_layer_call_and_return_conditional_losses_37358656o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿX: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
 
_user_specified_nameinputs
ê
è
M__inference_sequential_1314_layer_call_and_return_conditional_losses_37358760

inputs;
)dense_3374_matmul_readvariableop_resource:XX8
*dense_3374_biasadd_readvariableop_resource:X;
)dense_3375_matmul_readvariableop_resource:X8
*dense_3375_biasadd_readvariableop_resource:
identity¢!dense_3374/BiasAdd/ReadVariableOp¢ dense_3374/MatMul/ReadVariableOp¢!dense_3375/BiasAdd/ReadVariableOp¢ dense_3375/MatMul/ReadVariableOp`
dense_3374/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
 dense_3374/MatMul/ReadVariableOpReadVariableOp)dense_3374_matmul_readvariableop_resource*
_output_shapes

:XX*
dtype0
dense_3374/MatMulMatMuldense_3374/Cast:y:0(dense_3374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
!dense_3374/BiasAdd/ReadVariableOpReadVariableOp*dense_3374_biasadd_readvariableop_resource*
_output_shapes
:X*
dtype0
dense_3374/BiasAddBiasAdddense_3374/MatMul:product:0)dense_3374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿXf
dense_3374/ReluReludense_3374/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
 dense_3375/MatMul/ReadVariableOpReadVariableOp)dense_3375_matmul_readvariableop_resource*
_output_shapes

:X*
dtype0
dense_3375/MatMulMatMuldense_3374/Relu:activations:0(dense_3375/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_3375/BiasAdd/ReadVariableOpReadVariableOp*dense_3375_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3375/BiasAddBiasAdddense_3375/MatMul:product:0)dense_3375/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentitydense_3375/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp"^dense_3374/BiasAdd/ReadVariableOp!^dense_3374/MatMul/ReadVariableOp"^dense_3375/BiasAdd/ReadVariableOp!^dense_3375/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿX: : : : 2F
!dense_3374/BiasAdd/ReadVariableOp!dense_3374/BiasAdd/ReadVariableOp2D
 dense_3374/MatMul/ReadVariableOp dense_3374/MatMul/ReadVariableOp2F
!dense_3375/BiasAdd/ReadVariableOp!dense_3375/BiasAdd/ReadVariableOp2D
 dense_3375/MatMul/ReadVariableOp dense_3375/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¿
serving_default«
M
dense_3374_input9
"serving_default_dense_3374_input:0ÿÿÿÿÿÿÿÿÿX>

dense_33750
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ð?
´
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures"
_tf_keras_sequential
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer

iter

beta_1

beta_2
	decay
 learning_ratem6m7m8m9v:v;v<v="
	optimizer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
2
2__inference_sequential_1314_layer_call_fn_37358606
2__inference_sequential_1314_layer_call_fn_37358729
2__inference_sequential_1314_layer_call_fn_37358742
2__inference_sequential_1314_layer_call_fn_37358680À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2ÿ
M__inference_sequential_1314_layer_call_and_return_conditional_losses_37358760
M__inference_sequential_1314_layer_call_and_return_conditional_losses_37358778
M__inference_sequential_1314_layer_call_and_return_conditional_losses_37358695
M__inference_sequential_1314_layer_call_and_return_conditional_losses_37358710À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
×BÔ
#__inference__wrapped_model_37358553dense_3374_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
&serving_default"
signature_map
#:!XX2dense_3374/kernel
:X2dense_3374/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
×2Ô
-__inference_dense_3374_layer_call_fn_37358802¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_dense_3374_layer_call_and_return_conditional_losses_37358813¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
#:!X2dense_3375/kernel
:2dense_3375/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
×2Ô
-__inference_dense_3375_layer_call_fn_37358822¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_dense_3375_layer_call_and_return_conditional_losses_37358832¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
10"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÖBÓ
&__inference_signature_wrapper_37358793dense_3374_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
N
	2total
	3count
4	variables
5	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
20
31"
trackable_list_wrapper
-
4	variables"
_generic_user_object
(:&XX2Adam/dense_3374/kernel/m
": X2Adam/dense_3374/bias/m
(:&X2Adam/dense_3375/kernel/m
": 2Adam/dense_3375/bias/m
(:&XX2Adam/dense_3374/kernel/v
": X2Adam/dense_3374/bias/v
(:&X2Adam/dense_3375/kernel/v
": 2Adam/dense_3375/bias/v¡
#__inference__wrapped_model_37358553z9¢6
/¢,
*'
dense_3374_inputÿÿÿÿÿÿÿÿÿX
ª "7ª4
2

dense_3375$!

dense_3375ÿÿÿÿÿÿÿÿÿ¨
H__inference_dense_3374_layer_call_and_return_conditional_losses_37358813\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿX
ª "%¢"

0ÿÿÿÿÿÿÿÿÿX
 
-__inference_dense_3374_layer_call_fn_37358802O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿX
ª "ÿÿÿÿÿÿÿÿÿX¨
H__inference_dense_3375_layer_call_and_return_conditional_losses_37358832\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿX
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dense_3375_layer_call_fn_37358822O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿX
ª "ÿÿÿÿÿÿÿÿÿÁ
M__inference_sequential_1314_layer_call_and_return_conditional_losses_37358695pA¢>
7¢4
*'
dense_3374_inputÿÿÿÿÿÿÿÿÿX
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Á
M__inference_sequential_1314_layer_call_and_return_conditional_losses_37358710pA¢>
7¢4
*'
dense_3374_inputÿÿÿÿÿÿÿÿÿX
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
M__inference_sequential_1314_layer_call_and_return_conditional_losses_37358760f7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿX
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
M__inference_sequential_1314_layer_call_and_return_conditional_losses_37358778f7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿX
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
2__inference_sequential_1314_layer_call_fn_37358606cA¢>
7¢4
*'
dense_3374_inputÿÿÿÿÿÿÿÿÿX
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
2__inference_sequential_1314_layer_call_fn_37358680cA¢>
7¢4
*'
dense_3374_inputÿÿÿÿÿÿÿÿÿX
p

 
ª "ÿÿÿÿÿÿÿÿÿ
2__inference_sequential_1314_layer_call_fn_37358729Y7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿX
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
2__inference_sequential_1314_layer_call_fn_37358742Y7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿX
p

 
ª "ÿÿÿÿÿÿÿÿÿ¹
&__inference_signature_wrapper_37358793M¢J
¢ 
Cª@
>
dense_3374_input*'
dense_3374_inputÿÿÿÿÿÿÿÿÿX"7ª4
2

dense_3375$!

dense_3375ÿÿÿÿÿÿÿÿÿ
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
dense_4274/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:AA*"
shared_namedense_4274/kernel
w
%dense_4274/kernel/Read/ReadVariableOpReadVariableOpdense_4274/kernel*
_output_shapes

:AA*
dtype0
v
dense_4274/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:A* 
shared_namedense_4274/bias
o
#dense_4274/bias/Read/ReadVariableOpReadVariableOpdense_4274/bias*
_output_shapes
:A*
dtype0
~
dense_4275/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:A*"
shared_namedense_4275/kernel
w
%dense_4275/kernel/Read/ReadVariableOpReadVariableOpdense_4275/kernel*
_output_shapes

:A*
dtype0
v
dense_4275/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_4275/bias
o
#dense_4275/bias/Read/ReadVariableOpReadVariableOpdense_4275/bias*
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
Adam/dense_4274/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:AA*)
shared_nameAdam/dense_4274/kernel/m

,Adam/dense_4274/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4274/kernel/m*
_output_shapes

:AA*
dtype0

Adam/dense_4274/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*'
shared_nameAdam/dense_4274/bias/m
}
*Adam/dense_4274/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4274/bias/m*
_output_shapes
:A*
dtype0

Adam/dense_4275/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:A*)
shared_nameAdam/dense_4275/kernel/m

,Adam/dense_4275/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4275/kernel/m*
_output_shapes

:A*
dtype0

Adam/dense_4275/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_4275/bias/m
}
*Adam/dense_4275/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4275/bias/m*
_output_shapes
:*
dtype0

Adam/dense_4274/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:AA*)
shared_nameAdam/dense_4274/kernel/v

,Adam/dense_4274/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4274/kernel/v*
_output_shapes

:AA*
dtype0

Adam/dense_4274/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:A*'
shared_nameAdam/dense_4274/bias/v
}
*Adam/dense_4274/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4274/bias/v*
_output_shapes
:A*
dtype0

Adam/dense_4275/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:A*)
shared_nameAdam/dense_4275/kernel/v

,Adam/dense_4275/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4275/kernel/v*
_output_shapes

:A*
dtype0

Adam/dense_4275/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_4275/bias/v
}
*Adam/dense_4275/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4275/bias/v*
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
VARIABLE_VALUEdense_4274/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_4274/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_4275/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_4275/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/dense_4274/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_4274/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_4275/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_4275/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_4274/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_4274/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_4275/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_4275/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

 serving_default_dense_4274_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿA

StatefulPartitionedCallStatefulPartitionedCall serving_default_dense_4274_inputdense_4274/kerneldense_4274/biasdense_4275/kerneldense_4275/bias*
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
&__inference_signature_wrapper_57479137
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_4274/kernel/Read/ReadVariableOp#dense_4274/bias/Read/ReadVariableOp%dense_4275/kernel/Read/ReadVariableOp#dense_4275/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/dense_4274/kernel/m/Read/ReadVariableOp*Adam/dense_4274/bias/m/Read/ReadVariableOp,Adam/dense_4275/kernel/m/Read/ReadVariableOp*Adam/dense_4275/bias/m/Read/ReadVariableOp,Adam/dense_4274/kernel/v/Read/ReadVariableOp*Adam/dense_4274/bias/v/Read/ReadVariableOp,Adam/dense_4275/kernel/v/Read/ReadVariableOp*Adam/dense_4275/bias/v/Read/ReadVariableOpConst* 
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
!__inference__traced_save_57479256

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_4274/kerneldense_4274/biasdense_4275/kerneldense_4275/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_4274/kernel/mAdam/dense_4274/bias/mAdam/dense_4275/kernel/mAdam/dense_4275/bias/mAdam/dense_4274/kernel/vAdam/dense_4274/bias/vAdam/dense_4275/kernel/vAdam/dense_4275/bias/v*
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
$__inference__traced_restore_57479323ËÝ
Ê

-__inference_dense_4274_layer_call_fn_57479146

inputs
unknown:AA
	unknown_0:A
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4274_layer_call_and_return_conditional_losses_57478916o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿA: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
 
_user_specified_nameinputs


ù
H__inference_dense_4274_layer_call_and_return_conditional_losses_57479157

inputs0
matmul_readvariableop_resource:AA-
biasadd_readvariableop_resource:A
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:AA*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿAr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:A*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿAP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿAa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿAw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿA: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
 
_user_specified_nameinputs

È
#__inference__wrapped_model_57478897
dense_4274_inputK
9sequential_1764_dense_4274_matmul_readvariableop_resource:AAH
:sequential_1764_dense_4274_biasadd_readvariableop_resource:AK
9sequential_1764_dense_4275_matmul_readvariableop_resource:AH
:sequential_1764_dense_4275_biasadd_readvariableop_resource:
identity¢1sequential_1764/dense_4274/BiasAdd/ReadVariableOp¢0sequential_1764/dense_4274/MatMul/ReadVariableOp¢1sequential_1764/dense_4275/BiasAdd/ReadVariableOp¢0sequential_1764/dense_4275/MatMul/ReadVariableOpz
sequential_1764/dense_4274/CastCastdense_4274_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿAª
0sequential_1764/dense_4274/MatMul/ReadVariableOpReadVariableOp9sequential_1764_dense_4274_matmul_readvariableop_resource*
_output_shapes

:AA*
dtype0¼
!sequential_1764/dense_4274/MatMulMatMul#sequential_1764/dense_4274/Cast:y:08sequential_1764/dense_4274/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA¨
1sequential_1764/dense_4274/BiasAdd/ReadVariableOpReadVariableOp:sequential_1764_dense_4274_biasadd_readvariableop_resource*
_output_shapes
:A*
dtype0Ç
"sequential_1764/dense_4274/BiasAddBiasAdd+sequential_1764/dense_4274/MatMul:product:09sequential_1764/dense_4274/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
sequential_1764/dense_4274/ReluRelu+sequential_1764/dense_4274/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿAª
0sequential_1764/dense_4275/MatMul/ReadVariableOpReadVariableOp9sequential_1764_dense_4275_matmul_readvariableop_resource*
_output_shapes

:A*
dtype0Æ
!sequential_1764/dense_4275/MatMulMatMul-sequential_1764/dense_4274/Relu:activations:08sequential_1764/dense_4275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
1sequential_1764/dense_4275/BiasAdd/ReadVariableOpReadVariableOp:sequential_1764_dense_4275_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ç
"sequential_1764/dense_4275/BiasAddBiasAdd+sequential_1764/dense_4275/MatMul:product:09sequential_1764/dense_4275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
IdentityIdentity+sequential_1764/dense_4275/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp2^sequential_1764/dense_4274/BiasAdd/ReadVariableOp1^sequential_1764/dense_4274/MatMul/ReadVariableOp2^sequential_1764/dense_4275/BiasAdd/ReadVariableOp1^sequential_1764/dense_4275/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿA: : : : 2f
1sequential_1764/dense_4274/BiasAdd/ReadVariableOp1sequential_1764/dense_4274/BiasAdd/ReadVariableOp2d
0sequential_1764/dense_4274/MatMul/ReadVariableOp0sequential_1764/dense_4274/MatMul/ReadVariableOp2f
1sequential_1764/dense_4275/BiasAdd/ReadVariableOp1sequential_1764/dense_4275/BiasAdd/ReadVariableOp2d
0sequential_1764/dense_4275/MatMul/ReadVariableOp0sequential_1764/dense_4275/MatMul/ReadVariableOp:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
*
_user_specified_namedense_4274_input
¨
Õ
2__inference_sequential_1764_layer_call_fn_57479086

inputs
unknown:AA
	unknown_0:A
	unknown_1:A
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
M__inference_sequential_1764_layer_call_and_return_conditional_losses_57479000o
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
:ÿÿÿÿÿÿÿÿÿA: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
 
_user_specified_nameinputs
Ð
Ê
M__inference_sequential_1764_layer_call_and_return_conditional_losses_57479000

inputs%
dense_4274_57478989:AA!
dense_4274_57478991:A%
dense_4275_57478994:A!
dense_4275_57478996:
identity¢"dense_4274/StatefulPartitionedCall¢"dense_4275/StatefulPartitionedCall`
dense_4274/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
"dense_4274/StatefulPartitionedCallStatefulPartitionedCalldense_4274/Cast:y:0dense_4274_57478989dense_4274_57478991*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4274_layer_call_and_return_conditional_losses_57478916£
"dense_4275/StatefulPartitionedCallStatefulPartitionedCall+dense_4274/StatefulPartitionedCall:output:0dense_4275_57478994dense_4275_57478996*
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
H__inference_dense_4275_layer_call_and_return_conditional_losses_57478932z
IdentityIdentity+dense_4275/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^dense_4274/StatefulPartitionedCall#^dense_4275/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿA: : : : 2H
"dense_4274/StatefulPartitionedCall"dense_4274/StatefulPartitionedCall2H
"dense_4275/StatefulPartitionedCall"dense_4275/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
 
_user_specified_nameinputs
Ê

-__inference_dense_4275_layer_call_fn_57479166

inputs
unknown:A
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
H__inference_dense_4275_layer_call_and_return_conditional_losses_57478932o
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
:ÿÿÿÿÿÿÿÿÿA: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
 
_user_specified_nameinputs
ê
è
M__inference_sequential_1764_layer_call_and_return_conditional_losses_57479122

inputs;
)dense_4274_matmul_readvariableop_resource:AA8
*dense_4274_biasadd_readvariableop_resource:A;
)dense_4275_matmul_readvariableop_resource:A8
*dense_4275_biasadd_readvariableop_resource:
identity¢!dense_4274/BiasAdd/ReadVariableOp¢ dense_4274/MatMul/ReadVariableOp¢!dense_4275/BiasAdd/ReadVariableOp¢ dense_4275/MatMul/ReadVariableOp`
dense_4274/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
 dense_4274/MatMul/ReadVariableOpReadVariableOp)dense_4274_matmul_readvariableop_resource*
_output_shapes

:AA*
dtype0
dense_4274/MatMulMatMuldense_4274/Cast:y:0(dense_4274/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
!dense_4274/BiasAdd/ReadVariableOpReadVariableOp*dense_4274_biasadd_readvariableop_resource*
_output_shapes
:A*
dtype0
dense_4274/BiasAddBiasAdddense_4274/MatMul:product:0)dense_4274/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿAf
dense_4274/ReluReludense_4274/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
 dense_4275/MatMul/ReadVariableOpReadVariableOp)dense_4275_matmul_readvariableop_resource*
_output_shapes

:A*
dtype0
dense_4275/MatMulMatMuldense_4274/Relu:activations:0(dense_4275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_4275/BiasAdd/ReadVariableOpReadVariableOp*dense_4275_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_4275/BiasAddBiasAdddense_4275/MatMul:product:0)dense_4275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentitydense_4275/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp"^dense_4274/BiasAdd/ReadVariableOp!^dense_4274/MatMul/ReadVariableOp"^dense_4275/BiasAdd/ReadVariableOp!^dense_4275/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿA: : : : 2F
!dense_4274/BiasAdd/ReadVariableOp!dense_4274/BiasAdd/ReadVariableOp2D
 dense_4274/MatMul/ReadVariableOp dense_4274/MatMul/ReadVariableOp2F
!dense_4275/BiasAdd/ReadVariableOp!dense_4275/BiasAdd/ReadVariableOp2D
 dense_4275/MatMul/ReadVariableOp dense_4275/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
 
_user_specified_nameinputs
î
Ô
M__inference_sequential_1764_layer_call_and_return_conditional_losses_57479054
dense_4274_input%
dense_4274_57479043:AA!
dense_4274_57479045:A%
dense_4275_57479048:A!
dense_4275_57479050:
identity¢"dense_4274/StatefulPartitionedCall¢"dense_4275/StatefulPartitionedCallj
dense_4274/CastCastdense_4274_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
"dense_4274/StatefulPartitionedCallStatefulPartitionedCalldense_4274/Cast:y:0dense_4274_57479043dense_4274_57479045*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4274_layer_call_and_return_conditional_losses_57478916£
"dense_4275/StatefulPartitionedCallStatefulPartitionedCall+dense_4274/StatefulPartitionedCall:output:0dense_4275_57479048dense_4275_57479050*
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
H__inference_dense_4275_layer_call_and_return_conditional_losses_57478932z
IdentityIdentity+dense_4275/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^dense_4274/StatefulPartitionedCall#^dense_4275/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿA: : : : 2H
"dense_4274/StatefulPartitionedCall"dense_4274/StatefulPartitionedCall2H
"dense_4275/StatefulPartitionedCall"dense_4275/StatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
*
_user_specified_namedense_4274_input
Ë	
ù
H__inference_dense_4275_layer_call_and_return_conditional_losses_57478932

inputs0
matmul_readvariableop_resource:A-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:A*
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
:ÿÿÿÿÿÿÿÿÿA: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
 
_user_specified_nameinputs


ù
H__inference_dense_4274_layer_call_and_return_conditional_losses_57478916

inputs0
matmul_readvariableop_resource:AA-
biasadd_readvariableop_resource:A
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:AA*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿAr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:A*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿAP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿAa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿAw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿA: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
 
_user_specified_nameinputs

Ó
&__inference_signature_wrapper_57479137
dense_4274_input
unknown:AA
	unknown_0:A
	unknown_1:A
	unknown_2:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCalldense_4274_inputunknown	unknown_0	unknown_1	unknown_2*
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
#__inference__wrapped_model_57478897o
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
:ÿÿÿÿÿÿÿÿÿA: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
*
_user_specified_namedense_4274_input
Ð
Ê
M__inference_sequential_1764_layer_call_and_return_conditional_losses_57478939

inputs%
dense_4274_57478917:AA!
dense_4274_57478919:A%
dense_4275_57478933:A!
dense_4275_57478935:
identity¢"dense_4274/StatefulPartitionedCall¢"dense_4275/StatefulPartitionedCall`
dense_4274/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
"dense_4274/StatefulPartitionedCallStatefulPartitionedCalldense_4274/Cast:y:0dense_4274_57478917dense_4274_57478919*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4274_layer_call_and_return_conditional_losses_57478916£
"dense_4275/StatefulPartitionedCallStatefulPartitionedCall+dense_4274/StatefulPartitionedCall:output:0dense_4275_57478933dense_4275_57478935*
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
H__inference_dense_4275_layer_call_and_return_conditional_losses_57478932z
IdentityIdentity+dense_4275/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^dense_4274/StatefulPartitionedCall#^dense_4275/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿA: : : : 2H
"dense_4274/StatefulPartitionedCall"dense_4274/StatefulPartitionedCall2H
"dense_4275/StatefulPartitionedCall"dense_4275/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
 
_user_specified_nameinputs
Ë	
ù
H__inference_dense_4275_layer_call_and_return_conditional_losses_57479176

inputs0
matmul_readvariableop_resource:A-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:A*
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
:ÿÿÿÿÿÿÿÿÿA: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
 
_user_specified_nameinputs
/

!__inference__traced_save_57479256
file_prefix0
,savev2_dense_4274_kernel_read_readvariableop.
*savev2_dense_4274_bias_read_readvariableop0
,savev2_dense_4275_kernel_read_readvariableop.
*savev2_dense_4275_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_dense_4274_kernel_m_read_readvariableop5
1savev2_adam_dense_4274_bias_m_read_readvariableop7
3savev2_adam_dense_4275_kernel_m_read_readvariableop5
1savev2_adam_dense_4275_bias_m_read_readvariableop7
3savev2_adam_dense_4274_kernel_v_read_readvariableop5
1savev2_adam_dense_4274_bias_v_read_readvariableop7
3savev2_adam_dense_4275_kernel_v_read_readvariableop5
1savev2_adam_dense_4275_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_4274_kernel_read_readvariableop*savev2_dense_4274_bias_read_readvariableop,savev2_dense_4275_kernel_read_readvariableop*savev2_dense_4275_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_dense_4274_kernel_m_read_readvariableop1savev2_adam_dense_4274_bias_m_read_readvariableop3savev2_adam_dense_4275_kernel_m_read_readvariableop1savev2_adam_dense_4275_bias_m_read_readvariableop3savev2_adam_dense_4274_kernel_v_read_readvariableop1savev2_adam_dense_4274_bias_v_read_readvariableop3savev2_adam_dense_4275_kernel_v_read_readvariableop1savev2_adam_dense_4275_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
r: :AA:A:A:: : : : : : : :AA:A:A::AA:A:A:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:AA: 

_output_shapes
:A:$ 

_output_shapes

:A: 
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

:AA: 

_output_shapes
:A:$ 

_output_shapes

:A: 

_output_shapes
::$ 

_output_shapes

:AA: 

_output_shapes
:A:$ 

_output_shapes

:A: 

_output_shapes
::

_output_shapes
: 
ê
è
M__inference_sequential_1764_layer_call_and_return_conditional_losses_57479104

inputs;
)dense_4274_matmul_readvariableop_resource:AA8
*dense_4274_biasadd_readvariableop_resource:A;
)dense_4275_matmul_readvariableop_resource:A8
*dense_4275_biasadd_readvariableop_resource:
identity¢!dense_4274/BiasAdd/ReadVariableOp¢ dense_4274/MatMul/ReadVariableOp¢!dense_4275/BiasAdd/ReadVariableOp¢ dense_4275/MatMul/ReadVariableOp`
dense_4274/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
 dense_4274/MatMul/ReadVariableOpReadVariableOp)dense_4274_matmul_readvariableop_resource*
_output_shapes

:AA*
dtype0
dense_4274/MatMulMatMuldense_4274/Cast:y:0(dense_4274/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
!dense_4274/BiasAdd/ReadVariableOpReadVariableOp*dense_4274_biasadd_readvariableop_resource*
_output_shapes
:A*
dtype0
dense_4274/BiasAddBiasAdddense_4274/MatMul:product:0)dense_4274/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿAf
dense_4274/ReluReludense_4274/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
 dense_4275/MatMul/ReadVariableOpReadVariableOp)dense_4275_matmul_readvariableop_resource*
_output_shapes

:A*
dtype0
dense_4275/MatMulMatMuldense_4274/Relu:activations:0(dense_4275/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_4275/BiasAdd/ReadVariableOpReadVariableOp*dense_4275_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_4275/BiasAddBiasAdddense_4275/MatMul:product:0)dense_4275/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentitydense_4275/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp"^dense_4274/BiasAdd/ReadVariableOp!^dense_4274/MatMul/ReadVariableOp"^dense_4275/BiasAdd/ReadVariableOp!^dense_4275/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿA: : : : 2F
!dense_4274/BiasAdd/ReadVariableOp!dense_4274/BiasAdd/ReadVariableOp2D
 dense_4274/MatMul/ReadVariableOp dense_4274/MatMul/ReadVariableOp2F
!dense_4275/BiasAdd/ReadVariableOp!dense_4275/BiasAdd/ReadVariableOp2D
 dense_4275/MatMul/ReadVariableOp dense_4275/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
 
_user_specified_nameinputs
Æ
ß
2__inference_sequential_1764_layer_call_fn_57479024
dense_4274_input
unknown:AA
	unknown_0:A
	unknown_1:A
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_4274_inputunknown	unknown_0	unknown_1	unknown_2*
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
M__inference_sequential_1764_layer_call_and_return_conditional_losses_57479000o
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
:ÿÿÿÿÿÿÿÿÿA: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
*
_user_specified_namedense_4274_input
Æ
ß
2__inference_sequential_1764_layer_call_fn_57478950
dense_4274_input
unknown:AA
	unknown_0:A
	unknown_1:A
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_4274_inputunknown	unknown_0	unknown_1	unknown_2*
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
M__inference_sequential_1764_layer_call_and_return_conditional_losses_57478939o
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
:ÿÿÿÿÿÿÿÿÿA: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
*
_user_specified_namedense_4274_input
î
Ô
M__inference_sequential_1764_layer_call_and_return_conditional_losses_57479039
dense_4274_input%
dense_4274_57479028:AA!
dense_4274_57479030:A%
dense_4275_57479033:A!
dense_4275_57479035:
identity¢"dense_4274/StatefulPartitionedCall¢"dense_4275/StatefulPartitionedCallj
dense_4274/CastCastdense_4274_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
"dense_4274/StatefulPartitionedCallStatefulPartitionedCalldense_4274/Cast:y:0dense_4274_57479028dense_4274_57479030*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4274_layer_call_and_return_conditional_losses_57478916£
"dense_4275/StatefulPartitionedCallStatefulPartitionedCall+dense_4274/StatefulPartitionedCall:output:0dense_4275_57479033dense_4275_57479035*
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
H__inference_dense_4275_layer_call_and_return_conditional_losses_57478932z
IdentityIdentity+dense_4275/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^dense_4274/StatefulPartitionedCall#^dense_4275/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿA: : : : 2H
"dense_4274/StatefulPartitionedCall"dense_4274/StatefulPartitionedCall2H
"dense_4275/StatefulPartitionedCall"dense_4275/StatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
*
_user_specified_namedense_4274_input
´N
º
$__inference__traced_restore_57479323
file_prefix4
"assignvariableop_dense_4274_kernel:AA0
"assignvariableop_1_dense_4274_bias:A6
$assignvariableop_2_dense_4275_kernel:A0
"assignvariableop_3_dense_4275_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: >
,assignvariableop_11_adam_dense_4274_kernel_m:AA8
*assignvariableop_12_adam_dense_4274_bias_m:A>
,assignvariableop_13_adam_dense_4275_kernel_m:A8
*assignvariableop_14_adam_dense_4275_bias_m:>
,assignvariableop_15_adam_dense_4274_kernel_v:AA8
*assignvariableop_16_adam_dense_4274_bias_v:A>
,assignvariableop_17_adam_dense_4275_kernel_v:A8
*assignvariableop_18_adam_dense_4275_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_dense_4274_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_4274_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_4275_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_4275_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_11AssignVariableOp,assignvariableop_11_adam_dense_4274_kernel_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp*assignvariableop_12_adam_dense_4274_bias_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp,assignvariableop_13_adam_dense_4275_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_4275_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_dense_4274_kernel_vIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_4274_bias_vIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_dense_4275_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_4275_bias_vIdentity_18:output:0"/device:CPU:0*
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
¨
Õ
2__inference_sequential_1764_layer_call_fn_57479073

inputs
unknown:AA
	unknown_0:A
	unknown_1:A
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
M__inference_sequential_1764_layer_call_and_return_conditional_losses_57478939o
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
:ÿÿÿÿÿÿÿÿÿA: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿA
 
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
dense_4274_input9
"serving_default_dense_4274_input:0ÿÿÿÿÿÿÿÿÿA>

dense_42750
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
2__inference_sequential_1764_layer_call_fn_57478950
2__inference_sequential_1764_layer_call_fn_57479073
2__inference_sequential_1764_layer_call_fn_57479086
2__inference_sequential_1764_layer_call_fn_57479024À
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
M__inference_sequential_1764_layer_call_and_return_conditional_losses_57479104
M__inference_sequential_1764_layer_call_and_return_conditional_losses_57479122
M__inference_sequential_1764_layer_call_and_return_conditional_losses_57479039
M__inference_sequential_1764_layer_call_and_return_conditional_losses_57479054À
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
#__inference__wrapped_model_57478897dense_4274_input"
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
#:!AA2dense_4274/kernel
:A2dense_4274/bias
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
-__inference_dense_4274_layer_call_fn_57479146¢
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
H__inference_dense_4274_layer_call_and_return_conditional_losses_57479157¢
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
#:!A2dense_4275/kernel
:2dense_4275/bias
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
-__inference_dense_4275_layer_call_fn_57479166¢
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
H__inference_dense_4275_layer_call_and_return_conditional_losses_57479176¢
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
&__inference_signature_wrapper_57479137dense_4274_input"
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
(:&AA2Adam/dense_4274/kernel/m
": A2Adam/dense_4274/bias/m
(:&A2Adam/dense_4275/kernel/m
": 2Adam/dense_4275/bias/m
(:&AA2Adam/dense_4274/kernel/v
": A2Adam/dense_4274/bias/v
(:&A2Adam/dense_4275/kernel/v
": 2Adam/dense_4275/bias/v¡
#__inference__wrapped_model_57478897z9¢6
/¢,
*'
dense_4274_inputÿÿÿÿÿÿÿÿÿA
ª "7ª4
2

dense_4275$!

dense_4275ÿÿÿÿÿÿÿÿÿ¨
H__inference_dense_4274_layer_call_and_return_conditional_losses_57479157\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿA
ª "%¢"

0ÿÿÿÿÿÿÿÿÿA
 
-__inference_dense_4274_layer_call_fn_57479146O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿA
ª "ÿÿÿÿÿÿÿÿÿA¨
H__inference_dense_4275_layer_call_and_return_conditional_losses_57479176\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿA
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dense_4275_layer_call_fn_57479166O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿA
ª "ÿÿÿÿÿÿÿÿÿÁ
M__inference_sequential_1764_layer_call_and_return_conditional_losses_57479039pA¢>
7¢4
*'
dense_4274_inputÿÿÿÿÿÿÿÿÿA
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Á
M__inference_sequential_1764_layer_call_and_return_conditional_losses_57479054pA¢>
7¢4
*'
dense_4274_inputÿÿÿÿÿÿÿÿÿA
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
M__inference_sequential_1764_layer_call_and_return_conditional_losses_57479104f7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿA
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
M__inference_sequential_1764_layer_call_and_return_conditional_losses_57479122f7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿA
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
2__inference_sequential_1764_layer_call_fn_57478950cA¢>
7¢4
*'
dense_4274_inputÿÿÿÿÿÿÿÿÿA
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
2__inference_sequential_1764_layer_call_fn_57479024cA¢>
7¢4
*'
dense_4274_inputÿÿÿÿÿÿÿÿÿA
p

 
ª "ÿÿÿÿÿÿÿÿÿ
2__inference_sequential_1764_layer_call_fn_57479073Y7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿA
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
2__inference_sequential_1764_layer_call_fn_57479086Y7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿA
p

 
ª "ÿÿÿÿÿÿÿÿÿ¹
&__inference_signature_wrapper_57479137M¢J
¢ 
Cª@
>
dense_4274_input*'
dense_4274_inputÿÿÿÿÿÿÿÿÿA"7ª4
2

dense_4275$!

dense_4275ÿÿÿÿÿÿÿÿÿ
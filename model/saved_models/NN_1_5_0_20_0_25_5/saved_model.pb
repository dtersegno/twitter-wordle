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
dense_3900/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:33*"
shared_namedense_3900/kernel
w
%dense_3900/kernel/Read/ReadVariableOpReadVariableOpdense_3900/kernel*
_output_shapes

:33*
dtype0
v
dense_3900/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:3* 
shared_namedense_3900/bias
o
#dense_3900/bias/Read/ReadVariableOpReadVariableOpdense_3900/bias*
_output_shapes
:3*
dtype0
~
dense_3901/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:3*"
shared_namedense_3901/kernel
w
%dense_3901/kernel/Read/ReadVariableOpReadVariableOpdense_3901/kernel*
_output_shapes

:3*
dtype0
v
dense_3901/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_3901/bias
o
#dense_3901/bias/Read/ReadVariableOpReadVariableOpdense_3901/bias*
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
Adam/dense_3900/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:33*)
shared_nameAdam/dense_3900/kernel/m

,Adam/dense_3900/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3900/kernel/m*
_output_shapes

:33*
dtype0

Adam/dense_3900/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:3*'
shared_nameAdam/dense_3900/bias/m
}
*Adam/dense_3900/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3900/bias/m*
_output_shapes
:3*
dtype0

Adam/dense_3901/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:3*)
shared_nameAdam/dense_3901/kernel/m

,Adam/dense_3901/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3901/kernel/m*
_output_shapes

:3*
dtype0

Adam/dense_3901/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_3901/bias/m
}
*Adam/dense_3901/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3901/bias/m*
_output_shapes
:*
dtype0

Adam/dense_3900/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:33*)
shared_nameAdam/dense_3900/kernel/v

,Adam/dense_3900/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3900/kernel/v*
_output_shapes

:33*
dtype0

Adam/dense_3900/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:3*'
shared_nameAdam/dense_3900/bias/v
}
*Adam/dense_3900/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3900/bias/v*
_output_shapes
:3*
dtype0

Adam/dense_3901/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:3*)
shared_nameAdam/dense_3901/kernel/v

,Adam/dense_3901/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3901/kernel/v*
_output_shapes

:3*
dtype0

Adam/dense_3901/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_3901/bias/v
}
*Adam/dense_3901/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3901/bias/v*
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
VARIABLE_VALUEdense_3900/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_3900/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_3901/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_3901/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/dense_3900/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_3900/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_3901/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_3901/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_3900/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_3900/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_3901/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_3901/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

 serving_default_dense_3900_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ3

StatefulPartitionedCallStatefulPartitionedCall serving_default_dense_3900_inputdense_3900/kerneldense_3900/biasdense_3901/kerneldense_3901/bias*
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
&__inference_signature_wrapper_44986319
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_3900/kernel/Read/ReadVariableOp#dense_3900/bias/Read/ReadVariableOp%dense_3901/kernel/Read/ReadVariableOp#dense_3901/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/dense_3900/kernel/m/Read/ReadVariableOp*Adam/dense_3900/bias/m/Read/ReadVariableOp,Adam/dense_3901/kernel/m/Read/ReadVariableOp*Adam/dense_3901/bias/m/Read/ReadVariableOp,Adam/dense_3900/kernel/v/Read/ReadVariableOp*Adam/dense_3900/bias/v/Read/ReadVariableOp,Adam/dense_3901/kernel/v/Read/ReadVariableOp*Adam/dense_3901/bias/v/Read/ReadVariableOpConst* 
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
!__inference__traced_save_44986438

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3900/kerneldense_3900/biasdense_3901/kerneldense_3901/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_3900/kernel/mAdam/dense_3900/bias/mAdam/dense_3901/kernel/mAdam/dense_3901/bias/mAdam/dense_3900/kernel/vAdam/dense_3900/bias/vAdam/dense_3901/kernel/vAdam/dense_3901/bias/v*
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
$__inference__traced_restore_44986505ËÝ
¨
Õ
2__inference_sequential_1577_layer_call_fn_44986268

inputs
unknown:33
	unknown_0:3
	unknown_1:3
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
M__inference_sequential_1577_layer_call_and_return_conditional_losses_44986182o
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
:ÿÿÿÿÿÿÿÿÿ3: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
 
_user_specified_nameinputs
ê
è
M__inference_sequential_1577_layer_call_and_return_conditional_losses_44986304

inputs;
)dense_3900_matmul_readvariableop_resource:338
*dense_3900_biasadd_readvariableop_resource:3;
)dense_3901_matmul_readvariableop_resource:38
*dense_3901_biasadd_readvariableop_resource:
identity¢!dense_3900/BiasAdd/ReadVariableOp¢ dense_3900/MatMul/ReadVariableOp¢!dense_3901/BiasAdd/ReadVariableOp¢ dense_3901/MatMul/ReadVariableOp`
dense_3900/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
 dense_3900/MatMul/ReadVariableOpReadVariableOp)dense_3900_matmul_readvariableop_resource*
_output_shapes

:33*
dtype0
dense_3900/MatMulMatMuldense_3900/Cast:y:0(dense_3900/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
!dense_3900/BiasAdd/ReadVariableOpReadVariableOp*dense_3900_biasadd_readvariableop_resource*
_output_shapes
:3*
dtype0
dense_3900/BiasAddBiasAdddense_3900/MatMul:product:0)dense_3900/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3f
dense_3900/ReluReludense_3900/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
 dense_3901/MatMul/ReadVariableOpReadVariableOp)dense_3901_matmul_readvariableop_resource*
_output_shapes

:3*
dtype0
dense_3901/MatMulMatMuldense_3900/Relu:activations:0(dense_3901/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_3901/BiasAdd/ReadVariableOpReadVariableOp*dense_3901_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3901/BiasAddBiasAdddense_3901/MatMul:product:0)dense_3901/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentitydense_3901/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp"^dense_3900/BiasAdd/ReadVariableOp!^dense_3900/MatMul/ReadVariableOp"^dense_3901/BiasAdd/ReadVariableOp!^dense_3901/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ3: : : : 2F
!dense_3900/BiasAdd/ReadVariableOp!dense_3900/BiasAdd/ReadVariableOp2D
 dense_3900/MatMul/ReadVariableOp dense_3900/MatMul/ReadVariableOp2F
!dense_3901/BiasAdd/ReadVariableOp!dense_3901/BiasAdd/ReadVariableOp2D
 dense_3901/MatMul/ReadVariableOp dense_3901/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
 
_user_specified_nameinputs
Ê

-__inference_dense_3901_layer_call_fn_44986348

inputs
unknown:3
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
H__inference_dense_3901_layer_call_and_return_conditional_losses_44986114o
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
:ÿÿÿÿÿÿÿÿÿ3: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
 
_user_specified_nameinputs
¨
Õ
2__inference_sequential_1577_layer_call_fn_44986255

inputs
unknown:33
	unknown_0:3
	unknown_1:3
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
M__inference_sequential_1577_layer_call_and_return_conditional_losses_44986121o
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
:ÿÿÿÿÿÿÿÿÿ3: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
 
_user_specified_nameinputs


ù
H__inference_dense_3900_layer_call_and_return_conditional_losses_44986098

inputs0
matmul_readvariableop_resource:33-
biasadd_readvariableop_resource:3
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:33*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:3*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ3: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
 
_user_specified_nameinputs
Ð
Ê
M__inference_sequential_1577_layer_call_and_return_conditional_losses_44986182

inputs%
dense_3900_44986171:33!
dense_3900_44986173:3%
dense_3901_44986176:3!
dense_3901_44986178:
identity¢"dense_3900/StatefulPartitionedCall¢"dense_3901/StatefulPartitionedCall`
dense_3900/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
"dense_3900/StatefulPartitionedCallStatefulPartitionedCalldense_3900/Cast:y:0dense_3900_44986171dense_3900_44986173*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_3900_layer_call_and_return_conditional_losses_44986098£
"dense_3901/StatefulPartitionedCallStatefulPartitionedCall+dense_3900/StatefulPartitionedCall:output:0dense_3901_44986176dense_3901_44986178*
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
H__inference_dense_3901_layer_call_and_return_conditional_losses_44986114z
IdentityIdentity+dense_3901/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^dense_3900/StatefulPartitionedCall#^dense_3901/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ3: : : : 2H
"dense_3900/StatefulPartitionedCall"dense_3900/StatefulPartitionedCall2H
"dense_3901/StatefulPartitionedCall"dense_3901/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
 
_user_specified_nameinputs
Æ
ß
2__inference_sequential_1577_layer_call_fn_44986132
dense_3900_input
unknown:33
	unknown_0:3
	unknown_1:3
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_3900_inputunknown	unknown_0	unknown_1	unknown_2*
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
M__inference_sequential_1577_layer_call_and_return_conditional_losses_44986121o
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
:ÿÿÿÿÿÿÿÿÿ3: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
*
_user_specified_namedense_3900_input
î
Ô
M__inference_sequential_1577_layer_call_and_return_conditional_losses_44986236
dense_3900_input%
dense_3900_44986225:33!
dense_3900_44986227:3%
dense_3901_44986230:3!
dense_3901_44986232:
identity¢"dense_3900/StatefulPartitionedCall¢"dense_3901/StatefulPartitionedCallj
dense_3900/CastCastdense_3900_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
"dense_3900/StatefulPartitionedCallStatefulPartitionedCalldense_3900/Cast:y:0dense_3900_44986225dense_3900_44986227*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_3900_layer_call_and_return_conditional_losses_44986098£
"dense_3901/StatefulPartitionedCallStatefulPartitionedCall+dense_3900/StatefulPartitionedCall:output:0dense_3901_44986230dense_3901_44986232*
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
H__inference_dense_3901_layer_call_and_return_conditional_losses_44986114z
IdentityIdentity+dense_3901/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^dense_3900/StatefulPartitionedCall#^dense_3901/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ3: : : : 2H
"dense_3900/StatefulPartitionedCall"dense_3900/StatefulPartitionedCall2H
"dense_3901/StatefulPartitionedCall"dense_3901/StatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
*
_user_specified_namedense_3900_input
Ë	
ù
H__inference_dense_3901_layer_call_and_return_conditional_losses_44986358

inputs0
matmul_readvariableop_resource:3-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:3*
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
:ÿÿÿÿÿÿÿÿÿ3: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
 
_user_specified_nameinputs
/

!__inference__traced_save_44986438
file_prefix0
,savev2_dense_3900_kernel_read_readvariableop.
*savev2_dense_3900_bias_read_readvariableop0
,savev2_dense_3901_kernel_read_readvariableop.
*savev2_dense_3901_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_dense_3900_kernel_m_read_readvariableop5
1savev2_adam_dense_3900_bias_m_read_readvariableop7
3savev2_adam_dense_3901_kernel_m_read_readvariableop5
1savev2_adam_dense_3901_bias_m_read_readvariableop7
3savev2_adam_dense_3900_kernel_v_read_readvariableop5
1savev2_adam_dense_3900_bias_v_read_readvariableop7
3savev2_adam_dense_3901_kernel_v_read_readvariableop5
1savev2_adam_dense_3901_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_3900_kernel_read_readvariableop*savev2_dense_3900_bias_read_readvariableop,savev2_dense_3901_kernel_read_readvariableop*savev2_dense_3901_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_dense_3900_kernel_m_read_readvariableop1savev2_adam_dense_3900_bias_m_read_readvariableop3savev2_adam_dense_3901_kernel_m_read_readvariableop1savev2_adam_dense_3901_bias_m_read_readvariableop3savev2_adam_dense_3900_kernel_v_read_readvariableop1savev2_adam_dense_3900_bias_v_read_readvariableop3savev2_adam_dense_3901_kernel_v_read_readvariableop1savev2_adam_dense_3901_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
r: :33:3:3:: : : : : : : :33:3:3::33:3:3:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:33: 

_output_shapes
:3:$ 

_output_shapes

:3: 
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

:33: 

_output_shapes
:3:$ 

_output_shapes

:3: 

_output_shapes
::$ 

_output_shapes

:33: 

_output_shapes
:3:$ 

_output_shapes

:3: 

_output_shapes
::

_output_shapes
: 
Ë	
ù
H__inference_dense_3901_layer_call_and_return_conditional_losses_44986114

inputs0
matmul_readvariableop_resource:3-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:3*
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
:ÿÿÿÿÿÿÿÿÿ3: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
 
_user_specified_nameinputs
Ð
Ê
M__inference_sequential_1577_layer_call_and_return_conditional_losses_44986121

inputs%
dense_3900_44986099:33!
dense_3900_44986101:3%
dense_3901_44986115:3!
dense_3901_44986117:
identity¢"dense_3900/StatefulPartitionedCall¢"dense_3901/StatefulPartitionedCall`
dense_3900/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
"dense_3900/StatefulPartitionedCallStatefulPartitionedCalldense_3900/Cast:y:0dense_3900_44986099dense_3900_44986101*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_3900_layer_call_and_return_conditional_losses_44986098£
"dense_3901/StatefulPartitionedCallStatefulPartitionedCall+dense_3900/StatefulPartitionedCall:output:0dense_3901_44986115dense_3901_44986117*
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
H__inference_dense_3901_layer_call_and_return_conditional_losses_44986114z
IdentityIdentity+dense_3901/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^dense_3900/StatefulPartitionedCall#^dense_3901/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ3: : : : 2H
"dense_3900/StatefulPartitionedCall"dense_3900/StatefulPartitionedCall2H
"dense_3901/StatefulPartitionedCall"dense_3901/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
 
_user_specified_nameinputs

Ó
&__inference_signature_wrapper_44986319
dense_3900_input
unknown:33
	unknown_0:3
	unknown_1:3
	unknown_2:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCalldense_3900_inputunknown	unknown_0	unknown_1	unknown_2*
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
#__inference__wrapped_model_44986079o
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
:ÿÿÿÿÿÿÿÿÿ3: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
*
_user_specified_namedense_3900_input

È
#__inference__wrapped_model_44986079
dense_3900_inputK
9sequential_1577_dense_3900_matmul_readvariableop_resource:33H
:sequential_1577_dense_3900_biasadd_readvariableop_resource:3K
9sequential_1577_dense_3901_matmul_readvariableop_resource:3H
:sequential_1577_dense_3901_biasadd_readvariableop_resource:
identity¢1sequential_1577/dense_3900/BiasAdd/ReadVariableOp¢0sequential_1577/dense_3900/MatMul/ReadVariableOp¢1sequential_1577/dense_3901/BiasAdd/ReadVariableOp¢0sequential_1577/dense_3901/MatMul/ReadVariableOpz
sequential_1577/dense_3900/CastCastdense_3900_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3ª
0sequential_1577/dense_3900/MatMul/ReadVariableOpReadVariableOp9sequential_1577_dense_3900_matmul_readvariableop_resource*
_output_shapes

:33*
dtype0¼
!sequential_1577/dense_3900/MatMulMatMul#sequential_1577/dense_3900/Cast:y:08sequential_1577/dense_3900/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3¨
1sequential_1577/dense_3900/BiasAdd/ReadVariableOpReadVariableOp:sequential_1577_dense_3900_biasadd_readvariableop_resource*
_output_shapes
:3*
dtype0Ç
"sequential_1577/dense_3900/BiasAddBiasAdd+sequential_1577/dense_3900/MatMul:product:09sequential_1577/dense_3900/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
sequential_1577/dense_3900/ReluRelu+sequential_1577/dense_3900/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3ª
0sequential_1577/dense_3901/MatMul/ReadVariableOpReadVariableOp9sequential_1577_dense_3901_matmul_readvariableop_resource*
_output_shapes

:3*
dtype0Æ
!sequential_1577/dense_3901/MatMulMatMul-sequential_1577/dense_3900/Relu:activations:08sequential_1577/dense_3901/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
1sequential_1577/dense_3901/BiasAdd/ReadVariableOpReadVariableOp:sequential_1577_dense_3901_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ç
"sequential_1577/dense_3901/BiasAddBiasAdd+sequential_1577/dense_3901/MatMul:product:09sequential_1577/dense_3901/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
IdentityIdentity+sequential_1577/dense_3901/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp2^sequential_1577/dense_3900/BiasAdd/ReadVariableOp1^sequential_1577/dense_3900/MatMul/ReadVariableOp2^sequential_1577/dense_3901/BiasAdd/ReadVariableOp1^sequential_1577/dense_3901/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ3: : : : 2f
1sequential_1577/dense_3900/BiasAdd/ReadVariableOp1sequential_1577/dense_3900/BiasAdd/ReadVariableOp2d
0sequential_1577/dense_3900/MatMul/ReadVariableOp0sequential_1577/dense_3900/MatMul/ReadVariableOp2f
1sequential_1577/dense_3901/BiasAdd/ReadVariableOp1sequential_1577/dense_3901/BiasAdd/ReadVariableOp2d
0sequential_1577/dense_3901/MatMul/ReadVariableOp0sequential_1577/dense_3901/MatMul/ReadVariableOp:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
*
_user_specified_namedense_3900_input
Æ
ß
2__inference_sequential_1577_layer_call_fn_44986206
dense_3900_input
unknown:33
	unknown_0:3
	unknown_1:3
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_3900_inputunknown	unknown_0	unknown_1	unknown_2*
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
M__inference_sequential_1577_layer_call_and_return_conditional_losses_44986182o
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
:ÿÿÿÿÿÿÿÿÿ3: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
*
_user_specified_namedense_3900_input
î
Ô
M__inference_sequential_1577_layer_call_and_return_conditional_losses_44986221
dense_3900_input%
dense_3900_44986210:33!
dense_3900_44986212:3%
dense_3901_44986215:3!
dense_3901_44986217:
identity¢"dense_3900/StatefulPartitionedCall¢"dense_3901/StatefulPartitionedCallj
dense_3900/CastCastdense_3900_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
"dense_3900/StatefulPartitionedCallStatefulPartitionedCalldense_3900/Cast:y:0dense_3900_44986210dense_3900_44986212*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_3900_layer_call_and_return_conditional_losses_44986098£
"dense_3901/StatefulPartitionedCallStatefulPartitionedCall+dense_3900/StatefulPartitionedCall:output:0dense_3901_44986215dense_3901_44986217*
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
H__inference_dense_3901_layer_call_and_return_conditional_losses_44986114z
IdentityIdentity+dense_3901/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp#^dense_3900/StatefulPartitionedCall#^dense_3901/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ3: : : : 2H
"dense_3900/StatefulPartitionedCall"dense_3900/StatefulPartitionedCall2H
"dense_3901/StatefulPartitionedCall"dense_3901/StatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
*
_user_specified_namedense_3900_input
Ê

-__inference_dense_3900_layer_call_fn_44986328

inputs
unknown:33
	unknown_0:3
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_3900_layer_call_and_return_conditional_losses_44986098o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ3: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
 
_user_specified_nameinputs
´N
º
$__inference__traced_restore_44986505
file_prefix4
"assignvariableop_dense_3900_kernel:330
"assignvariableop_1_dense_3900_bias:36
$assignvariableop_2_dense_3901_kernel:30
"assignvariableop_3_dense_3901_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: >
,assignvariableop_11_adam_dense_3900_kernel_m:338
*assignvariableop_12_adam_dense_3900_bias_m:3>
,assignvariableop_13_adam_dense_3901_kernel_m:38
*assignvariableop_14_adam_dense_3901_bias_m:>
,assignvariableop_15_adam_dense_3900_kernel_v:338
*assignvariableop_16_adam_dense_3900_bias_v:3>
,assignvariableop_17_adam_dense_3901_kernel_v:38
*assignvariableop_18_adam_dense_3901_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_dense_3900_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_3900_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_3901_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_3901_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_11AssignVariableOp,assignvariableop_11_adam_dense_3900_kernel_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp*assignvariableop_12_adam_dense_3900_bias_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp,assignvariableop_13_adam_dense_3901_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_3901_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_dense_3900_kernel_vIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_3900_bias_vIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_dense_3901_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_3901_bias_vIdentity_18:output:0"/device:CPU:0*
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
ê
è
M__inference_sequential_1577_layer_call_and_return_conditional_losses_44986286

inputs;
)dense_3900_matmul_readvariableop_resource:338
*dense_3900_biasadd_readvariableop_resource:3;
)dense_3901_matmul_readvariableop_resource:38
*dense_3901_biasadd_readvariableop_resource:
identity¢!dense_3900/BiasAdd/ReadVariableOp¢ dense_3900/MatMul/ReadVariableOp¢!dense_3901/BiasAdd/ReadVariableOp¢ dense_3901/MatMul/ReadVariableOp`
dense_3900/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
 dense_3900/MatMul/ReadVariableOpReadVariableOp)dense_3900_matmul_readvariableop_resource*
_output_shapes

:33*
dtype0
dense_3900/MatMulMatMuldense_3900/Cast:y:0(dense_3900/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
!dense_3900/BiasAdd/ReadVariableOpReadVariableOp*dense_3900_biasadd_readvariableop_resource*
_output_shapes
:3*
dtype0
dense_3900/BiasAddBiasAdddense_3900/MatMul:product:0)dense_3900/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3f
dense_3900/ReluReludense_3900/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
 dense_3901/MatMul/ReadVariableOpReadVariableOp)dense_3901_matmul_readvariableop_resource*
_output_shapes

:3*
dtype0
dense_3901/MatMulMatMuldense_3900/Relu:activations:0(dense_3901/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_3901/BiasAdd/ReadVariableOpReadVariableOp*dense_3901_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3901/BiasAddBiasAdddense_3901/MatMul:product:0)dense_3901/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentitydense_3901/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp"^dense_3900/BiasAdd/ReadVariableOp!^dense_3900/MatMul/ReadVariableOp"^dense_3901/BiasAdd/ReadVariableOp!^dense_3901/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ3: : : : 2F
!dense_3900/BiasAdd/ReadVariableOp!dense_3900/BiasAdd/ReadVariableOp2D
 dense_3900/MatMul/ReadVariableOp dense_3900/MatMul/ReadVariableOp2F
!dense_3901/BiasAdd/ReadVariableOp!dense_3901/BiasAdd/ReadVariableOp2D
 dense_3901/MatMul/ReadVariableOp dense_3901/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
 
_user_specified_nameinputs


ù
H__inference_dense_3900_layer_call_and_return_conditional_losses_44986339

inputs0
matmul_readvariableop_resource:33-
biasadd_readvariableop_resource:3
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:33*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:3*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ3: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ3
 
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
dense_3900_input9
"serving_default_dense_3900_input:0ÿÿÿÿÿÿÿÿÿ3>

dense_39010
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
2__inference_sequential_1577_layer_call_fn_44986132
2__inference_sequential_1577_layer_call_fn_44986255
2__inference_sequential_1577_layer_call_fn_44986268
2__inference_sequential_1577_layer_call_fn_44986206À
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
M__inference_sequential_1577_layer_call_and_return_conditional_losses_44986286
M__inference_sequential_1577_layer_call_and_return_conditional_losses_44986304
M__inference_sequential_1577_layer_call_and_return_conditional_losses_44986221
M__inference_sequential_1577_layer_call_and_return_conditional_losses_44986236À
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
#__inference__wrapped_model_44986079dense_3900_input"
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
#:!332dense_3900/kernel
:32dense_3900/bias
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
-__inference_dense_3900_layer_call_fn_44986328¢
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
H__inference_dense_3900_layer_call_and_return_conditional_losses_44986339¢
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
#:!32dense_3901/kernel
:2dense_3901/bias
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
-__inference_dense_3901_layer_call_fn_44986348¢
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
H__inference_dense_3901_layer_call_and_return_conditional_losses_44986358¢
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
&__inference_signature_wrapper_44986319dense_3900_input"
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
(:&332Adam/dense_3900/kernel/m
": 32Adam/dense_3900/bias/m
(:&32Adam/dense_3901/kernel/m
": 2Adam/dense_3901/bias/m
(:&332Adam/dense_3900/kernel/v
": 32Adam/dense_3900/bias/v
(:&32Adam/dense_3901/kernel/v
": 2Adam/dense_3901/bias/v¡
#__inference__wrapped_model_44986079z9¢6
/¢,
*'
dense_3900_inputÿÿÿÿÿÿÿÿÿ3
ª "7ª4
2

dense_3901$!

dense_3901ÿÿÿÿÿÿÿÿÿ¨
H__inference_dense_3900_layer_call_and_return_conditional_losses_44986339\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ3
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ3
 
-__inference_dense_3900_layer_call_fn_44986328O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ3
ª "ÿÿÿÿÿÿÿÿÿ3¨
H__inference_dense_3901_layer_call_and_return_conditional_losses_44986358\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ3
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dense_3901_layer_call_fn_44986348O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ3
ª "ÿÿÿÿÿÿÿÿÿÁ
M__inference_sequential_1577_layer_call_and_return_conditional_losses_44986221pA¢>
7¢4
*'
dense_3900_inputÿÿÿÿÿÿÿÿÿ3
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Á
M__inference_sequential_1577_layer_call_and_return_conditional_losses_44986236pA¢>
7¢4
*'
dense_3900_inputÿÿÿÿÿÿÿÿÿ3
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
M__inference_sequential_1577_layer_call_and_return_conditional_losses_44986286f7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ3
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
M__inference_sequential_1577_layer_call_and_return_conditional_losses_44986304f7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ3
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
2__inference_sequential_1577_layer_call_fn_44986132cA¢>
7¢4
*'
dense_3900_inputÿÿÿÿÿÿÿÿÿ3
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
2__inference_sequential_1577_layer_call_fn_44986206cA¢>
7¢4
*'
dense_3900_inputÿÿÿÿÿÿÿÿÿ3
p

 
ª "ÿÿÿÿÿÿÿÿÿ
2__inference_sequential_1577_layer_call_fn_44986255Y7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ3
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
2__inference_sequential_1577_layer_call_fn_44986268Y7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ3
p

 
ª "ÿÿÿÿÿÿÿÿÿ¹
&__inference_signature_wrapper_44986319M¢J
¢ 
Cª@
>
dense_3900_input*'
dense_3900_inputÿÿÿÿÿÿÿÿÿ3"7ª4
2

dense_3901$!

dense_3901ÿÿÿÿÿÿÿÿÿ
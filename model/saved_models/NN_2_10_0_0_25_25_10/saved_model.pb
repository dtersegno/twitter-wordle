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
dense_2977/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:==*"
shared_namedense_2977/kernel
w
%dense_2977/kernel/Read/ReadVariableOpReadVariableOpdense_2977/kernel*
_output_shapes

:==*
dtype0
v
dense_2977/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:=* 
shared_namedense_2977/bias
o
#dense_2977/bias/Read/ReadVariableOpReadVariableOpdense_2977/bias*
_output_shapes
:=*
dtype0
~
dense_2978/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:==*"
shared_namedense_2978/kernel
w
%dense_2978/kernel/Read/ReadVariableOpReadVariableOpdense_2978/kernel*
_output_shapes

:==*
dtype0
v
dense_2978/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:=* 
shared_namedense_2978/bias
o
#dense_2978/bias/Read/ReadVariableOpReadVariableOpdense_2978/bias*
_output_shapes
:=*
dtype0
~
dense_2979/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:=*"
shared_namedense_2979/kernel
w
%dense_2979/kernel/Read/ReadVariableOpReadVariableOpdense_2979/kernel*
_output_shapes

:=*
dtype0
v
dense_2979/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_2979/bias
o
#dense_2979/bias/Read/ReadVariableOpReadVariableOpdense_2979/bias*
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
Adam/dense_2977/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:==*)
shared_nameAdam/dense_2977/kernel/m
?
,Adam/dense_2977/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2977/kernel/m*
_output_shapes

:==*
dtype0
?
Adam/dense_2977/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:=*'
shared_nameAdam/dense_2977/bias/m
}
*Adam/dense_2977/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2977/bias/m*
_output_shapes
:=*
dtype0
?
Adam/dense_2978/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:==*)
shared_nameAdam/dense_2978/kernel/m
?
,Adam/dense_2978/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2978/kernel/m*
_output_shapes

:==*
dtype0
?
Adam/dense_2978/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:=*'
shared_nameAdam/dense_2978/bias/m
}
*Adam/dense_2978/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2978/bias/m*
_output_shapes
:=*
dtype0
?
Adam/dense_2979/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:=*)
shared_nameAdam/dense_2979/kernel/m
?
,Adam/dense_2979/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2979/kernel/m*
_output_shapes

:=*
dtype0
?
Adam/dense_2979/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_2979/bias/m
}
*Adam/dense_2979/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2979/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_2977/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:==*)
shared_nameAdam/dense_2977/kernel/v
?
,Adam/dense_2977/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2977/kernel/v*
_output_shapes

:==*
dtype0
?
Adam/dense_2977/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:=*'
shared_nameAdam/dense_2977/bias/v
}
*Adam/dense_2977/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2977/bias/v*
_output_shapes
:=*
dtype0
?
Adam/dense_2978/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:==*)
shared_nameAdam/dense_2978/kernel/v
?
,Adam/dense_2978/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2978/kernel/v*
_output_shapes

:==*
dtype0
?
Adam/dense_2978/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:=*'
shared_nameAdam/dense_2978/bias/v
}
*Adam/dense_2978/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2978/bias/v*
_output_shapes
:=*
dtype0
?
Adam/dense_2979/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:=*)
shared_nameAdam/dense_2979/kernel/v
?
,Adam/dense_2979/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2979/kernel/v*
_output_shapes

:=*
dtype0
?
Adam/dense_2979/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_2979/bias/v
}
*Adam/dense_2979/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2979/bias/v*
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
VARIABLE_VALUEdense_2977/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2977/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_2978/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2978/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEdense_2979/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_2979/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/dense_2977/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/dense_2977/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/dense_2978/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/dense_2978/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/dense_2979/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/dense_2979/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/dense_2977/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/dense_2977/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/dense_2978/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/dense_2978/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/dense_2979/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/dense_2979/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
 serving_default_dense_2977_inputPlaceholder*'
_output_shapes
:?????????=*
dtype0*
shape:?????????=
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_dense_2977_inputdense_2977/kerneldense_2977/biasdense_2978/kerneldense_2978/biasdense_2979/kerneldense_2979/bias*
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
&__inference_signature_wrapper_34371242
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_2977/kernel/Read/ReadVariableOp#dense_2977/bias/Read/ReadVariableOp%dense_2978/kernel/Read/ReadVariableOp#dense_2978/bias/Read/ReadVariableOp%dense_2979/kernel/Read/ReadVariableOp#dense_2979/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/dense_2977/kernel/m/Read/ReadVariableOp*Adam/dense_2977/bias/m/Read/ReadVariableOp,Adam/dense_2978/kernel/m/Read/ReadVariableOp*Adam/dense_2978/bias/m/Read/ReadVariableOp,Adam/dense_2979/kernel/m/Read/ReadVariableOp*Adam/dense_2979/bias/m/Read/ReadVariableOp,Adam/dense_2977/kernel/v/Read/ReadVariableOp*Adam/dense_2977/bias/v/Read/ReadVariableOp,Adam/dense_2978/kernel/v/Read/ReadVariableOp*Adam/dense_2978/bias/v/Read/ReadVariableOp,Adam/dense_2979/kernel/v/Read/ReadVariableOp*Adam/dense_2979/bias/v/Read/ReadVariableOpConst*&
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
!__inference__traced_save_34371399
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_2977/kerneldense_2977/biasdense_2978/kerneldense_2978/biasdense_2979/kerneldense_2979/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_2977/kernel/mAdam/dense_2977/bias/mAdam/dense_2978/kernel/mAdam/dense_2978/bias/mAdam/dense_2979/kernel/mAdam/dense_2979/bias/mAdam/dense_2977/kernel/vAdam/dense_2977/bias/vAdam/dense_2978/kernel/vAdam/dense_2978/bias/vAdam/dense_2979/kernel/vAdam/dense_2979/bias/v*%
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
$__inference__traced_restore_34371484??
?

?
H__inference_dense_2977_layer_call_and_return_conditional_losses_34370937

inputs0
matmul_readvariableop_resource:==-
biasadd_readvariableop_resource:=
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:==*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:=*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????=a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????=w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????=: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????=
 
_user_specified_nameinputs
?	
?
2__inference_sequential_1128_layer_call_fn_34370992
dense_2977_input
unknown:==
	unknown_0:=
	unknown_1:==
	unknown_2:=
	unknown_3:=
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_2977_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
M__inference_sequential_1128_layer_call_and_return_conditional_losses_34370977o
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
:?????????=: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????=
*
_user_specified_namedense_2977_input
?
?
-__inference_dense_2977_layer_call_fn_34371251

inputs
unknown:==
	unknown_0:=
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????=*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2977_layer_call_and_return_conditional_losses_34370937o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????=`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????=: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????=
 
_user_specified_nameinputs
?
?
M__inference_sequential_1128_layer_call_and_return_conditional_losses_34370977

inputs%
dense_2977_34370938:==!
dense_2977_34370940:=%
dense_2978_34370955:==!
dense_2978_34370957:=%
dense_2979_34370971:=!
dense_2979_34370973:
identity??"dense_2977/StatefulPartitionedCall?"dense_2978/StatefulPartitionedCall?"dense_2979/StatefulPartitionedCall`
dense_2977/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????=?
"dense_2977/StatefulPartitionedCallStatefulPartitionedCalldense_2977/Cast:y:0dense_2977_34370938dense_2977_34370940*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????=*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2977_layer_call_and_return_conditional_losses_34370937?
"dense_2978/StatefulPartitionedCallStatefulPartitionedCall+dense_2977/StatefulPartitionedCall:output:0dense_2978_34370955dense_2978_34370957*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????=*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2978_layer_call_and_return_conditional_losses_34370954?
"dense_2979/StatefulPartitionedCallStatefulPartitionedCall+dense_2978/StatefulPartitionedCall:output:0dense_2979_34370971dense_2979_34370973*
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
H__inference_dense_2979_layer_call_and_return_conditional_losses_34370970z
IdentityIdentity+dense_2979/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^dense_2977/StatefulPartitionedCall#^dense_2978/StatefulPartitionedCall#^dense_2979/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????=: : : : : : 2H
"dense_2977/StatefulPartitionedCall"dense_2977/StatefulPartitionedCall2H
"dense_2978/StatefulPartitionedCall"dense_2978/StatefulPartitionedCall2H
"dense_2979/StatefulPartitionedCall"dense_2979/StatefulPartitionedCall:O K
'
_output_shapes
:?????????=
 
_user_specified_nameinputs
?
?
M__inference_sequential_1128_layer_call_and_return_conditional_losses_34371061

inputs%
dense_2977_34371045:==!
dense_2977_34371047:=%
dense_2978_34371050:==!
dense_2978_34371052:=%
dense_2979_34371055:=!
dense_2979_34371057:
identity??"dense_2977/StatefulPartitionedCall?"dense_2978/StatefulPartitionedCall?"dense_2979/StatefulPartitionedCall`
dense_2977/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????=?
"dense_2977/StatefulPartitionedCallStatefulPartitionedCalldense_2977/Cast:y:0dense_2977_34371045dense_2977_34371047*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????=*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2977_layer_call_and_return_conditional_losses_34370937?
"dense_2978/StatefulPartitionedCallStatefulPartitionedCall+dense_2977/StatefulPartitionedCall:output:0dense_2978_34371050dense_2978_34371052*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????=*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2978_layer_call_and_return_conditional_losses_34370954?
"dense_2979/StatefulPartitionedCallStatefulPartitionedCall+dense_2978/StatefulPartitionedCall:output:0dense_2979_34371055dense_2979_34371057*
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
H__inference_dense_2979_layer_call_and_return_conditional_losses_34370970z
IdentityIdentity+dense_2979/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^dense_2977/StatefulPartitionedCall#^dense_2978/StatefulPartitionedCall#^dense_2979/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????=: : : : : : 2H
"dense_2977/StatefulPartitionedCall"dense_2977/StatefulPartitionedCall2H
"dense_2978/StatefulPartitionedCall"dense_2978/StatefulPartitionedCall2H
"dense_2979/StatefulPartitionedCall"dense_2979/StatefulPartitionedCall:O K
'
_output_shapes
:?????????=
 
_user_specified_nameinputs
?9
?

!__inference__traced_save_34371399
file_prefix0
,savev2_dense_2977_kernel_read_readvariableop.
*savev2_dense_2977_bias_read_readvariableop0
,savev2_dense_2978_kernel_read_readvariableop.
*savev2_dense_2978_bias_read_readvariableop0
,savev2_dense_2979_kernel_read_readvariableop.
*savev2_dense_2979_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_dense_2977_kernel_m_read_readvariableop5
1savev2_adam_dense_2977_bias_m_read_readvariableop7
3savev2_adam_dense_2978_kernel_m_read_readvariableop5
1savev2_adam_dense_2978_bias_m_read_readvariableop7
3savev2_adam_dense_2979_kernel_m_read_readvariableop5
1savev2_adam_dense_2979_bias_m_read_readvariableop7
3savev2_adam_dense_2977_kernel_v_read_readvariableop5
1savev2_adam_dense_2977_bias_v_read_readvariableop7
3savev2_adam_dense_2978_kernel_v_read_readvariableop5
1savev2_adam_dense_2978_bias_v_read_readvariableop7
3savev2_adam_dense_2979_kernel_v_read_readvariableop5
1savev2_adam_dense_2979_bias_v_read_readvariableop
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

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_2977_kernel_read_readvariableop*savev2_dense_2977_bias_read_readvariableop,savev2_dense_2978_kernel_read_readvariableop*savev2_dense_2978_bias_read_readvariableop,savev2_dense_2979_kernel_read_readvariableop*savev2_dense_2979_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_dense_2977_kernel_m_read_readvariableop1savev2_adam_dense_2977_bias_m_read_readvariableop3savev2_adam_dense_2978_kernel_m_read_readvariableop1savev2_adam_dense_2978_bias_m_read_readvariableop3savev2_adam_dense_2979_kernel_m_read_readvariableop1savev2_adam_dense_2979_bias_m_read_readvariableop3savev2_adam_dense_2977_kernel_v_read_readvariableop1savev2_adam_dense_2977_bias_v_read_readvariableop3savev2_adam_dense_2978_kernel_v_read_readvariableop1savev2_adam_dense_2978_bias_v_read_readvariableop3savev2_adam_dense_2979_kernel_v_read_readvariableop1savev2_adam_dense_2979_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?: :==:=:==:=:=:: : : : : : : :==:=:==:=:=::==:=:==:=:=:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:==: 

_output_shapes
:=:$ 

_output_shapes

:==: 

_output_shapes
:=:$ 

_output_shapes

:=: 
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

:==: 

_output_shapes
:=:$ 

_output_shapes

:==: 

_output_shapes
:=:$ 

_output_shapes

:=: 

_output_shapes
::$ 

_output_shapes

:==: 

_output_shapes
:=:$ 

_output_shapes

:==: 

_output_shapes
:=:$ 

_output_shapes

:=: 

_output_shapes
::

_output_shapes
: 
?
?
M__inference_sequential_1128_layer_call_and_return_conditional_losses_34371198

inputs;
)dense_2977_matmul_readvariableop_resource:==8
*dense_2977_biasadd_readvariableop_resource:=;
)dense_2978_matmul_readvariableop_resource:==8
*dense_2978_biasadd_readvariableop_resource:=;
)dense_2979_matmul_readvariableop_resource:=8
*dense_2979_biasadd_readvariableop_resource:
identity??!dense_2977/BiasAdd/ReadVariableOp? dense_2977/MatMul/ReadVariableOp?!dense_2978/BiasAdd/ReadVariableOp? dense_2978/MatMul/ReadVariableOp?!dense_2979/BiasAdd/ReadVariableOp? dense_2979/MatMul/ReadVariableOp`
dense_2977/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????=?
 dense_2977/MatMul/ReadVariableOpReadVariableOp)dense_2977_matmul_readvariableop_resource*
_output_shapes

:==*
dtype0?
dense_2977/MatMulMatMuldense_2977/Cast:y:0(dense_2977/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=?
!dense_2977/BiasAdd/ReadVariableOpReadVariableOp*dense_2977_biasadd_readvariableop_resource*
_output_shapes
:=*
dtype0?
dense_2977/BiasAddBiasAdddense_2977/MatMul:product:0)dense_2977/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=f
dense_2977/ReluReludense_2977/BiasAdd:output:0*
T0*'
_output_shapes
:?????????=?
 dense_2978/MatMul/ReadVariableOpReadVariableOp)dense_2978_matmul_readvariableop_resource*
_output_shapes

:==*
dtype0?
dense_2978/MatMulMatMuldense_2977/Relu:activations:0(dense_2978/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=?
!dense_2978/BiasAdd/ReadVariableOpReadVariableOp*dense_2978_biasadd_readvariableop_resource*
_output_shapes
:=*
dtype0?
dense_2978/BiasAddBiasAdddense_2978/MatMul:product:0)dense_2978/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=f
dense_2978/ReluReludense_2978/BiasAdd:output:0*
T0*'
_output_shapes
:?????????=?
 dense_2979/MatMul/ReadVariableOpReadVariableOp)dense_2979_matmul_readvariableop_resource*
_output_shapes

:=*
dtype0?
dense_2979/MatMulMatMuldense_2978/Relu:activations:0(dense_2979/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!dense_2979/BiasAdd/ReadVariableOpReadVariableOp*dense_2979_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_2979/BiasAddBiasAdddense_2979/MatMul:product:0)dense_2979/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
IdentityIdentitydense_2979/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_2977/BiasAdd/ReadVariableOp!^dense_2977/MatMul/ReadVariableOp"^dense_2978/BiasAdd/ReadVariableOp!^dense_2978/MatMul/ReadVariableOp"^dense_2979/BiasAdd/ReadVariableOp!^dense_2979/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????=: : : : : : 2F
!dense_2977/BiasAdd/ReadVariableOp!dense_2977/BiasAdd/ReadVariableOp2D
 dense_2977/MatMul/ReadVariableOp dense_2977/MatMul/ReadVariableOp2F
!dense_2978/BiasAdd/ReadVariableOp!dense_2978/BiasAdd/ReadVariableOp2D
 dense_2978/MatMul/ReadVariableOp dense_2978/MatMul/ReadVariableOp2F
!dense_2979/BiasAdd/ReadVariableOp!dense_2979/BiasAdd/ReadVariableOp2D
 dense_2979/MatMul/ReadVariableOp dense_2979/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????=
 
_user_specified_nameinputs
?

?
H__inference_dense_2977_layer_call_and_return_conditional_losses_34371262

inputs0
matmul_readvariableop_resource:==-
biasadd_readvariableop_resource:=
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:==*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:=*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????=a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????=w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????=: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????=
 
_user_specified_nameinputs
?f
?
$__inference__traced_restore_34371484
file_prefix4
"assignvariableop_dense_2977_kernel:==0
"assignvariableop_1_dense_2977_bias:=6
$assignvariableop_2_dense_2978_kernel:==0
"assignvariableop_3_dense_2978_bias:=6
$assignvariableop_4_dense_2979_kernel:=0
"assignvariableop_5_dense_2979_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: >
,assignvariableop_13_adam_dense_2977_kernel_m:==8
*assignvariableop_14_adam_dense_2977_bias_m:=>
,assignvariableop_15_adam_dense_2978_kernel_m:==8
*assignvariableop_16_adam_dense_2978_bias_m:=>
,assignvariableop_17_adam_dense_2979_kernel_m:=8
*assignvariableop_18_adam_dense_2979_bias_m:>
,assignvariableop_19_adam_dense_2977_kernel_v:==8
*assignvariableop_20_adam_dense_2977_bias_v:=>
,assignvariableop_21_adam_dense_2978_kernel_v:==8
*assignvariableop_22_adam_dense_2978_bias_v:=>
,assignvariableop_23_adam_dense_2979_kernel_v:=8
*assignvariableop_24_adam_dense_2979_bias_v:
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
AssignVariableOpAssignVariableOp"assignvariableop_dense_2977_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_2977_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_2978_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_2978_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_dense_2979_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_2979_biasIdentity_5:output:0"/device:CPU:0*
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
AssignVariableOp_13AssignVariableOp,assignvariableop_13_adam_dense_2977_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_2977_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_dense_2978_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_2978_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_dense_2979_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_2979_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_dense_2977_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_2977_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_dense_2978_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_2978_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_dense_2979_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_2979_bias_vIdentity_24:output:0"/device:CPU:0*
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
?
2__inference_sequential_1128_layer_call_fn_34371093
dense_2977_input
unknown:==
	unknown_0:=
	unknown_1:==
	unknown_2:=
	unknown_3:=
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_2977_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
M__inference_sequential_1128_layer_call_and_return_conditional_losses_34371061o
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
:?????????=: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????=
*
_user_specified_namedense_2977_input
?
?
M__inference_sequential_1128_layer_call_and_return_conditional_losses_34371223

inputs;
)dense_2977_matmul_readvariableop_resource:==8
*dense_2977_biasadd_readvariableop_resource:=;
)dense_2978_matmul_readvariableop_resource:==8
*dense_2978_biasadd_readvariableop_resource:=;
)dense_2979_matmul_readvariableop_resource:=8
*dense_2979_biasadd_readvariableop_resource:
identity??!dense_2977/BiasAdd/ReadVariableOp? dense_2977/MatMul/ReadVariableOp?!dense_2978/BiasAdd/ReadVariableOp? dense_2978/MatMul/ReadVariableOp?!dense_2979/BiasAdd/ReadVariableOp? dense_2979/MatMul/ReadVariableOp`
dense_2977/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????=?
 dense_2977/MatMul/ReadVariableOpReadVariableOp)dense_2977_matmul_readvariableop_resource*
_output_shapes

:==*
dtype0?
dense_2977/MatMulMatMuldense_2977/Cast:y:0(dense_2977/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=?
!dense_2977/BiasAdd/ReadVariableOpReadVariableOp*dense_2977_biasadd_readvariableop_resource*
_output_shapes
:=*
dtype0?
dense_2977/BiasAddBiasAdddense_2977/MatMul:product:0)dense_2977/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=f
dense_2977/ReluReludense_2977/BiasAdd:output:0*
T0*'
_output_shapes
:?????????=?
 dense_2978/MatMul/ReadVariableOpReadVariableOp)dense_2978_matmul_readvariableop_resource*
_output_shapes

:==*
dtype0?
dense_2978/MatMulMatMuldense_2977/Relu:activations:0(dense_2978/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=?
!dense_2978/BiasAdd/ReadVariableOpReadVariableOp*dense_2978_biasadd_readvariableop_resource*
_output_shapes
:=*
dtype0?
dense_2978/BiasAddBiasAdddense_2978/MatMul:product:0)dense_2978/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=f
dense_2978/ReluReludense_2978/BiasAdd:output:0*
T0*'
_output_shapes
:?????????=?
 dense_2979/MatMul/ReadVariableOpReadVariableOp)dense_2979_matmul_readvariableop_resource*
_output_shapes

:=*
dtype0?
dense_2979/MatMulMatMuldense_2978/Relu:activations:0(dense_2979/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!dense_2979/BiasAdd/ReadVariableOpReadVariableOp*dense_2979_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_2979/BiasAddBiasAdddense_2979/MatMul:product:0)dense_2979/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
IdentityIdentitydense_2979/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^dense_2977/BiasAdd/ReadVariableOp!^dense_2977/MatMul/ReadVariableOp"^dense_2978/BiasAdd/ReadVariableOp!^dense_2978/MatMul/ReadVariableOp"^dense_2979/BiasAdd/ReadVariableOp!^dense_2979/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????=: : : : : : 2F
!dense_2977/BiasAdd/ReadVariableOp!dense_2977/BiasAdd/ReadVariableOp2D
 dense_2977/MatMul/ReadVariableOp dense_2977/MatMul/ReadVariableOp2F
!dense_2978/BiasAdd/ReadVariableOp!dense_2978/BiasAdd/ReadVariableOp2D
 dense_2978/MatMul/ReadVariableOp dense_2978/MatMul/ReadVariableOp2F
!dense_2979/BiasAdd/ReadVariableOp!dense_2979/BiasAdd/ReadVariableOp2D
 dense_2979/MatMul/ReadVariableOp dense_2979/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????=
 
_user_specified_nameinputs
?	
?
H__inference_dense_2979_layer_call_and_return_conditional_losses_34371301

inputs0
matmul_readvariableop_resource:=-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:=*
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
:?????????=: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????=
 
_user_specified_nameinputs
?
?
M__inference_sequential_1128_layer_call_and_return_conditional_losses_34371133
dense_2977_input%
dense_2977_34371117:==!
dense_2977_34371119:=%
dense_2978_34371122:==!
dense_2978_34371124:=%
dense_2979_34371127:=!
dense_2979_34371129:
identity??"dense_2977/StatefulPartitionedCall?"dense_2978/StatefulPartitionedCall?"dense_2979/StatefulPartitionedCallj
dense_2977/CastCastdense_2977_input*

DstT0*

SrcT0*'
_output_shapes
:?????????=?
"dense_2977/StatefulPartitionedCallStatefulPartitionedCalldense_2977/Cast:y:0dense_2977_34371117dense_2977_34371119*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????=*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2977_layer_call_and_return_conditional_losses_34370937?
"dense_2978/StatefulPartitionedCallStatefulPartitionedCall+dense_2977/StatefulPartitionedCall:output:0dense_2978_34371122dense_2978_34371124*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????=*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2978_layer_call_and_return_conditional_losses_34370954?
"dense_2979/StatefulPartitionedCallStatefulPartitionedCall+dense_2978/StatefulPartitionedCall:output:0dense_2979_34371127dense_2979_34371129*
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
H__inference_dense_2979_layer_call_and_return_conditional_losses_34370970z
IdentityIdentity+dense_2979/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^dense_2977/StatefulPartitionedCall#^dense_2978/StatefulPartitionedCall#^dense_2979/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????=: : : : : : 2H
"dense_2977/StatefulPartitionedCall"dense_2977/StatefulPartitionedCall2H
"dense_2978/StatefulPartitionedCall"dense_2978/StatefulPartitionedCall2H
"dense_2979/StatefulPartitionedCall"dense_2979/StatefulPartitionedCall:Y U
'
_output_shapes
:?????????=
*
_user_specified_namedense_2977_input
?	
?
H__inference_dense_2979_layer_call_and_return_conditional_losses_34370970

inputs0
matmul_readvariableop_resource:=-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:=*
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
:?????????=: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????=
 
_user_specified_nameinputs
?

?
H__inference_dense_2978_layer_call_and_return_conditional_losses_34370954

inputs0
matmul_readvariableop_resource:==-
biasadd_readvariableop_resource:=
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:==*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:=*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????=a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????=w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????=: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????=
 
_user_specified_nameinputs
?
?
M__inference_sequential_1128_layer_call_and_return_conditional_losses_34371113
dense_2977_input%
dense_2977_34371097:==!
dense_2977_34371099:=%
dense_2978_34371102:==!
dense_2978_34371104:=%
dense_2979_34371107:=!
dense_2979_34371109:
identity??"dense_2977/StatefulPartitionedCall?"dense_2978/StatefulPartitionedCall?"dense_2979/StatefulPartitionedCallj
dense_2977/CastCastdense_2977_input*

DstT0*

SrcT0*'
_output_shapes
:?????????=?
"dense_2977/StatefulPartitionedCallStatefulPartitionedCalldense_2977/Cast:y:0dense_2977_34371097dense_2977_34371099*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????=*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2977_layer_call_and_return_conditional_losses_34370937?
"dense_2978/StatefulPartitionedCallStatefulPartitionedCall+dense_2977/StatefulPartitionedCall:output:0dense_2978_34371102dense_2978_34371104*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????=*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2978_layer_call_and_return_conditional_losses_34370954?
"dense_2979/StatefulPartitionedCallStatefulPartitionedCall+dense_2978/StatefulPartitionedCall:output:0dense_2979_34371107dense_2979_34371109*
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
H__inference_dense_2979_layer_call_and_return_conditional_losses_34370970z
IdentityIdentity+dense_2979/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^dense_2977/StatefulPartitionedCall#^dense_2978/StatefulPartitionedCall#^dense_2979/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????=: : : : : : 2H
"dense_2977/StatefulPartitionedCall"dense_2977/StatefulPartitionedCall2H
"dense_2978/StatefulPartitionedCall"dense_2978/StatefulPartitionedCall2H
"dense_2979/StatefulPartitionedCall"dense_2979/StatefulPartitionedCall:Y U
'
_output_shapes
:?????????=
*
_user_specified_namedense_2977_input
?
?
2__inference_sequential_1128_layer_call_fn_34371173

inputs
unknown:==
	unknown_0:=
	unknown_1:==
	unknown_2:=
	unknown_3:=
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
M__inference_sequential_1128_layer_call_and_return_conditional_losses_34371061o
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
:?????????=: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????=
 
_user_specified_nameinputs
?
?
-__inference_dense_2978_layer_call_fn_34371271

inputs
unknown:==
	unknown_0:=
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????=*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dense_2978_layer_call_and_return_conditional_losses_34370954o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????=`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????=: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????=
 
_user_specified_nameinputs
?
?
-__inference_dense_2979_layer_call_fn_34371291

inputs
unknown:=
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
H__inference_dense_2979_layer_call_and_return_conditional_losses_34370970o
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
:?????????=: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????=
 
_user_specified_nameinputs
?
?
&__inference_signature_wrapper_34371242
dense_2977_input
unknown:==
	unknown_0:=
	unknown_1:==
	unknown_2:=
	unknown_3:=
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_2977_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
#__inference__wrapped_model_34370918o
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
:?????????=: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????=
*
_user_specified_namedense_2977_input
?
?
2__inference_sequential_1128_layer_call_fn_34371156

inputs
unknown:==
	unknown_0:=
	unknown_1:==
	unknown_2:=
	unknown_3:=
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
M__inference_sequential_1128_layer_call_and_return_conditional_losses_34370977o
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
:?????????=: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????=
 
_user_specified_nameinputs
?

?
H__inference_dense_2978_layer_call_and_return_conditional_losses_34371282

inputs0
matmul_readvariableop_resource:==-
biasadd_readvariableop_resource:=
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:==*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:=*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????=a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????=w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????=: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????=
 
_user_specified_nameinputs
?%
?
#__inference__wrapped_model_34370918
dense_2977_inputK
9sequential_1128_dense_2977_matmul_readvariableop_resource:==H
:sequential_1128_dense_2977_biasadd_readvariableop_resource:=K
9sequential_1128_dense_2978_matmul_readvariableop_resource:==H
:sequential_1128_dense_2978_biasadd_readvariableop_resource:=K
9sequential_1128_dense_2979_matmul_readvariableop_resource:=H
:sequential_1128_dense_2979_biasadd_readvariableop_resource:
identity??1sequential_1128/dense_2977/BiasAdd/ReadVariableOp?0sequential_1128/dense_2977/MatMul/ReadVariableOp?1sequential_1128/dense_2978/BiasAdd/ReadVariableOp?0sequential_1128/dense_2978/MatMul/ReadVariableOp?1sequential_1128/dense_2979/BiasAdd/ReadVariableOp?0sequential_1128/dense_2979/MatMul/ReadVariableOpz
sequential_1128/dense_2977/CastCastdense_2977_input*

DstT0*

SrcT0*'
_output_shapes
:?????????=?
0sequential_1128/dense_2977/MatMul/ReadVariableOpReadVariableOp9sequential_1128_dense_2977_matmul_readvariableop_resource*
_output_shapes

:==*
dtype0?
!sequential_1128/dense_2977/MatMulMatMul#sequential_1128/dense_2977/Cast:y:08sequential_1128/dense_2977/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=?
1sequential_1128/dense_2977/BiasAdd/ReadVariableOpReadVariableOp:sequential_1128_dense_2977_biasadd_readvariableop_resource*
_output_shapes
:=*
dtype0?
"sequential_1128/dense_2977/BiasAddBiasAdd+sequential_1128/dense_2977/MatMul:product:09sequential_1128/dense_2977/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=?
sequential_1128/dense_2977/ReluRelu+sequential_1128/dense_2977/BiasAdd:output:0*
T0*'
_output_shapes
:?????????=?
0sequential_1128/dense_2978/MatMul/ReadVariableOpReadVariableOp9sequential_1128_dense_2978_matmul_readvariableop_resource*
_output_shapes

:==*
dtype0?
!sequential_1128/dense_2978/MatMulMatMul-sequential_1128/dense_2977/Relu:activations:08sequential_1128/dense_2978/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=?
1sequential_1128/dense_2978/BiasAdd/ReadVariableOpReadVariableOp:sequential_1128_dense_2978_biasadd_readvariableop_resource*
_output_shapes
:=*
dtype0?
"sequential_1128/dense_2978/BiasAddBiasAdd+sequential_1128/dense_2978/MatMul:product:09sequential_1128/dense_2978/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????=?
sequential_1128/dense_2978/ReluRelu+sequential_1128/dense_2978/BiasAdd:output:0*
T0*'
_output_shapes
:?????????=?
0sequential_1128/dense_2979/MatMul/ReadVariableOpReadVariableOp9sequential_1128_dense_2979_matmul_readvariableop_resource*
_output_shapes

:=*
dtype0?
!sequential_1128/dense_2979/MatMulMatMul-sequential_1128/dense_2978/Relu:activations:08sequential_1128/dense_2979/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
1sequential_1128/dense_2979/BiasAdd/ReadVariableOpReadVariableOp:sequential_1128_dense_2979_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
"sequential_1128/dense_2979/BiasAddBiasAdd+sequential_1128/dense_2979/MatMul:product:09sequential_1128/dense_2979/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????z
IdentityIdentity+sequential_1128/dense_2979/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp2^sequential_1128/dense_2977/BiasAdd/ReadVariableOp1^sequential_1128/dense_2977/MatMul/ReadVariableOp2^sequential_1128/dense_2978/BiasAdd/ReadVariableOp1^sequential_1128/dense_2978/MatMul/ReadVariableOp2^sequential_1128/dense_2979/BiasAdd/ReadVariableOp1^sequential_1128/dense_2979/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????=: : : : : : 2f
1sequential_1128/dense_2977/BiasAdd/ReadVariableOp1sequential_1128/dense_2977/BiasAdd/ReadVariableOp2d
0sequential_1128/dense_2977/MatMul/ReadVariableOp0sequential_1128/dense_2977/MatMul/ReadVariableOp2f
1sequential_1128/dense_2978/BiasAdd/ReadVariableOp1sequential_1128/dense_2978/BiasAdd/ReadVariableOp2d
0sequential_1128/dense_2978/MatMul/ReadVariableOp0sequential_1128/dense_2978/MatMul/ReadVariableOp2f
1sequential_1128/dense_2979/BiasAdd/ReadVariableOp1sequential_1128/dense_2979/BiasAdd/ReadVariableOp2d
0sequential_1128/dense_2979/MatMul/ReadVariableOp0sequential_1128/dense_2979/MatMul/ReadVariableOp:Y U
'
_output_shapes
:?????????=
*
_user_specified_namedense_2977_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
dense_2977_input9
"serving_default_dense_2977_input:0?????????=>

dense_29790
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
2__inference_sequential_1128_layer_call_fn_34370992
2__inference_sequential_1128_layer_call_fn_34371156
2__inference_sequential_1128_layer_call_fn_34371173
2__inference_sequential_1128_layer_call_fn_34371093?
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
M__inference_sequential_1128_layer_call_and_return_conditional_losses_34371198
M__inference_sequential_1128_layer_call_and_return_conditional_losses_34371223
M__inference_sequential_1128_layer_call_and_return_conditional_losses_34371113
M__inference_sequential_1128_layer_call_and_return_conditional_losses_34371133?
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
#__inference__wrapped_model_34370918dense_2977_input"?
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
#:!==2dense_2977/kernel
:=2dense_2977/bias
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
-__inference_dense_2977_layer_call_fn_34371251?
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
H__inference_dense_2977_layer_call_and_return_conditional_losses_34371262?
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
#:!==2dense_2978/kernel
:=2dense_2978/bias
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
-__inference_dense_2978_layer_call_fn_34371271?
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
H__inference_dense_2978_layer_call_and_return_conditional_losses_34371282?
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
#:!=2dense_2979/kernel
:2dense_2979/bias
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
-__inference_dense_2979_layer_call_fn_34371291?
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
H__inference_dense_2979_layer_call_and_return_conditional_losses_34371301?
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
&__inference_signature_wrapper_34371242dense_2977_input"?
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
(:&==2Adam/dense_2977/kernel/m
": =2Adam/dense_2977/bias/m
(:&==2Adam/dense_2978/kernel/m
": =2Adam/dense_2978/bias/m
(:&=2Adam/dense_2979/kernel/m
": 2Adam/dense_2979/bias/m
(:&==2Adam/dense_2977/kernel/v
": =2Adam/dense_2977/bias/v
(:&==2Adam/dense_2978/kernel/v
": =2Adam/dense_2978/bias/v
(:&=2Adam/dense_2979/kernel/v
": 2Adam/dense_2979/bias/v?
#__inference__wrapped_model_34370918|9?6
/?,
*?'
dense_2977_input?????????=
? "7?4
2

dense_2979$?!

dense_2979??????????
H__inference_dense_2977_layer_call_and_return_conditional_losses_34371262\/?,
%?"
 ?
inputs?????????=
? "%?"
?
0?????????=
? ?
-__inference_dense_2977_layer_call_fn_34371251O/?,
%?"
 ?
inputs?????????=
? "??????????=?
H__inference_dense_2978_layer_call_and_return_conditional_losses_34371282\/?,
%?"
 ?
inputs?????????=
? "%?"
?
0?????????=
? ?
-__inference_dense_2978_layer_call_fn_34371271O/?,
%?"
 ?
inputs?????????=
? "??????????=?
H__inference_dense_2979_layer_call_and_return_conditional_losses_34371301\/?,
%?"
 ?
inputs?????????=
? "%?"
?
0?????????
? ?
-__inference_dense_2979_layer_call_fn_34371291O/?,
%?"
 ?
inputs?????????=
? "???????????
M__inference_sequential_1128_layer_call_and_return_conditional_losses_34371113rA?>
7?4
*?'
dense_2977_input?????????=
p 

 
? "%?"
?
0?????????
? ?
M__inference_sequential_1128_layer_call_and_return_conditional_losses_34371133rA?>
7?4
*?'
dense_2977_input?????????=
p

 
? "%?"
?
0?????????
? ?
M__inference_sequential_1128_layer_call_and_return_conditional_losses_34371198h7?4
-?*
 ?
inputs?????????=
p 

 
? "%?"
?
0?????????
? ?
M__inference_sequential_1128_layer_call_and_return_conditional_losses_34371223h7?4
-?*
 ?
inputs?????????=
p

 
? "%?"
?
0?????????
? ?
2__inference_sequential_1128_layer_call_fn_34370992eA?>
7?4
*?'
dense_2977_input?????????=
p 

 
? "???????????
2__inference_sequential_1128_layer_call_fn_34371093eA?>
7?4
*?'
dense_2977_input?????????=
p

 
? "???????????
2__inference_sequential_1128_layer_call_fn_34371156[7?4
-?*
 ?
inputs?????????=
p 

 
? "???????????
2__inference_sequential_1128_layer_call_fn_34371173[7?4
-?*
 ?
inputs?????????=
p

 
? "???????????
&__inference_signature_wrapper_34371242?M?J
? 
C?@
>
dense_2977_input*?'
dense_2977_input?????????="7?4
2

dense_2979$?!

dense_2979?????????
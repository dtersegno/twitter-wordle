¼
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
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68Í
~
dense_4670/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&&*"
shared_namedense_4670/kernel
w
%dense_4670/kernel/Read/ReadVariableOpReadVariableOpdense_4670/kernel*
_output_shapes

:&&*
dtype0
v
dense_4670/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:&* 
shared_namedense_4670/bias
o
#dense_4670/bias/Read/ReadVariableOpReadVariableOpdense_4670/bias*
_output_shapes
:&*
dtype0
~
dense_4671/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&&*"
shared_namedense_4671/kernel
w
%dense_4671/kernel/Read/ReadVariableOpReadVariableOpdense_4671/kernel*
_output_shapes

:&&*
dtype0
v
dense_4671/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:&* 
shared_namedense_4671/bias
o
#dense_4671/bias/Read/ReadVariableOpReadVariableOpdense_4671/bias*
_output_shapes
:&*
dtype0
~
dense_4672/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&&*"
shared_namedense_4672/kernel
w
%dense_4672/kernel/Read/ReadVariableOpReadVariableOpdense_4672/kernel*
_output_shapes

:&&*
dtype0
v
dense_4672/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:&* 
shared_namedense_4672/bias
o
#dense_4672/bias/Read/ReadVariableOpReadVariableOpdense_4672/bias*
_output_shapes
:&*
dtype0
~
dense_4673/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&*"
shared_namedense_4673/kernel
w
%dense_4673/kernel/Read/ReadVariableOpReadVariableOpdense_4673/kernel*
_output_shapes

:&*
dtype0
v
dense_4673/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_4673/bias
o
#dense_4673/bias/Read/ReadVariableOpReadVariableOpdense_4673/bias*
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
Adam/dense_4670/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&&*)
shared_nameAdam/dense_4670/kernel/m

,Adam/dense_4670/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4670/kernel/m*
_output_shapes

:&&*
dtype0

Adam/dense_4670/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:&*'
shared_nameAdam/dense_4670/bias/m
}
*Adam/dense_4670/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4670/bias/m*
_output_shapes
:&*
dtype0

Adam/dense_4671/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&&*)
shared_nameAdam/dense_4671/kernel/m

,Adam/dense_4671/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4671/kernel/m*
_output_shapes

:&&*
dtype0

Adam/dense_4671/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:&*'
shared_nameAdam/dense_4671/bias/m
}
*Adam/dense_4671/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4671/bias/m*
_output_shapes
:&*
dtype0

Adam/dense_4672/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&&*)
shared_nameAdam/dense_4672/kernel/m

,Adam/dense_4672/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4672/kernel/m*
_output_shapes

:&&*
dtype0

Adam/dense_4672/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:&*'
shared_nameAdam/dense_4672/bias/m
}
*Adam/dense_4672/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4672/bias/m*
_output_shapes
:&*
dtype0

Adam/dense_4673/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&*)
shared_nameAdam/dense_4673/kernel/m

,Adam/dense_4673/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4673/kernel/m*
_output_shapes

:&*
dtype0

Adam/dense_4673/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_4673/bias/m
}
*Adam/dense_4673/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4673/bias/m*
_output_shapes
:*
dtype0

Adam/dense_4670/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&&*)
shared_nameAdam/dense_4670/kernel/v

,Adam/dense_4670/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4670/kernel/v*
_output_shapes

:&&*
dtype0

Adam/dense_4670/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:&*'
shared_nameAdam/dense_4670/bias/v
}
*Adam/dense_4670/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4670/bias/v*
_output_shapes
:&*
dtype0

Adam/dense_4671/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&&*)
shared_nameAdam/dense_4671/kernel/v

,Adam/dense_4671/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4671/kernel/v*
_output_shapes

:&&*
dtype0

Adam/dense_4671/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:&*'
shared_nameAdam/dense_4671/bias/v
}
*Adam/dense_4671/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4671/bias/v*
_output_shapes
:&*
dtype0

Adam/dense_4672/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&&*)
shared_nameAdam/dense_4672/kernel/v

,Adam/dense_4672/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4672/kernel/v*
_output_shapes

:&&*
dtype0

Adam/dense_4672/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:&*'
shared_nameAdam/dense_4672/bias/v
}
*Adam/dense_4672/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4672/bias/v*
_output_shapes
:&*
dtype0

Adam/dense_4673/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&*)
shared_nameAdam/dense_4673/kernel/v

,Adam/dense_4673/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4673/kernel/v*
_output_shapes

:&*
dtype0

Adam/dense_4673/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/dense_4673/bias/v
}
*Adam/dense_4673/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4673/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Õ5
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*5
value5B5 Bü4
è
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses*
¦

&kernel
'bias
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses*
Ô
.iter

/beta_1

0beta_2
	1decay
2learning_ratemRmSmTmUmVmW&mX'mYvZv[v\v]v^v_&v`'va*
<
0
1
2
3
4
5
&6
'7*
<
0
1
2
3
4
5
&6
'7*
* 
°
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

8serving_default* 
a[
VARIABLE_VALUEdense_4670/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_4670/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEdense_4671/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_4671/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEdense_4672/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_4672/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEdense_4673/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEdense_4673/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

&0
'1*

&0
'1*
* 

Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*
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
 
0
1
2
3*

M0*
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
* 
8
	Ntotal
	Ocount
P	variables
Q	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

N0
O1*

P	variables*
~
VARIABLE_VALUEAdam/dense_4670/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_4670/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_4671/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_4671/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_4672/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_4672/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_4673/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_4673/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_4670/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_4670/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_4671/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_4671/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_4672/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_4672/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/dense_4673/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/dense_4673/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

 serving_default_dense_4670_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ&
Ý
StatefulPartitionedCallStatefulPartitionedCall serving_default_dense_4670_inputdense_4670/kerneldense_4670/biasdense_4671/kerneldense_4671/biasdense_4672/kerneldense_4672/biasdense_4673/kerneldense_4673/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 */
f*R(
&__inference_signature_wrapper_68454463
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_4670/kernel/Read/ReadVariableOp#dense_4670/bias/Read/ReadVariableOp%dense_4671/kernel/Read/ReadVariableOp#dense_4671/bias/Read/ReadVariableOp%dense_4672/kernel/Read/ReadVariableOp#dense_4672/bias/Read/ReadVariableOp%dense_4673/kernel/Read/ReadVariableOp#dense_4673/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/dense_4670/kernel/m/Read/ReadVariableOp*Adam/dense_4670/bias/m/Read/ReadVariableOp,Adam/dense_4671/kernel/m/Read/ReadVariableOp*Adam/dense_4671/bias/m/Read/ReadVariableOp,Adam/dense_4672/kernel/m/Read/ReadVariableOp*Adam/dense_4672/bias/m/Read/ReadVariableOp,Adam/dense_4673/kernel/m/Read/ReadVariableOp*Adam/dense_4673/bias/m/Read/ReadVariableOp,Adam/dense_4670/kernel/v/Read/ReadVariableOp*Adam/dense_4670/bias/v/Read/ReadVariableOp,Adam/dense_4671/kernel/v/Read/ReadVariableOp*Adam/dense_4671/bias/v/Read/ReadVariableOp,Adam/dense_4672/kernel/v/Read/ReadVariableOp*Adam/dense_4672/bias/v/Read/ReadVariableOp,Adam/dense_4673/kernel/v/Read/ReadVariableOp*Adam/dense_4673/bias/v/Read/ReadVariableOpConst*,
Tin%
#2!	*
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
!__inference__traced_save_68454658
ª
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_4670/kerneldense_4670/biasdense_4671/kerneldense_4671/biasdense_4672/kerneldense_4672/biasdense_4673/kerneldense_4673/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_4670/kernel/mAdam/dense_4670/bias/mAdam/dense_4671/kernel/mAdam/dense_4671/bias/mAdam/dense_4672/kernel/mAdam/dense_4672/bias/mAdam/dense_4673/kernel/mAdam/dense_4673/bias/mAdam/dense_4670/kernel/vAdam/dense_4670/bias/vAdam/dense_4671/kernel/vAdam/dense_4671/bias/vAdam/dense_4672/kernel/vAdam/dense_4672/bias/vAdam/dense_4673/kernel/vAdam/dense_4673/bias/v*+
Tin$
"2 *
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
$__inference__traced_restore_68454761¤Â
þ
²
M__inference_sequential_1922_layer_call_and_return_conditional_losses_68454328
dense_4670_input%
dense_4670_68454307:&&!
dense_4670_68454309:&%
dense_4671_68454312:&&!
dense_4671_68454314:&%
dense_4672_68454317:&&!
dense_4672_68454319:&%
dense_4673_68454322:&!
dense_4673_68454324:
identity¢"dense_4670/StatefulPartitionedCall¢"dense_4671/StatefulPartitionedCall¢"dense_4672/StatefulPartitionedCall¢"dense_4673/StatefulPartitionedCallj
dense_4670/CastCastdense_4670_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
"dense_4670/StatefulPartitionedCallStatefulPartitionedCalldense_4670/Cast:y:0dense_4670_68454307dense_4670_68454309*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4670_layer_call_and_return_conditional_losses_68454074£
"dense_4671/StatefulPartitionedCallStatefulPartitionedCall+dense_4670/StatefulPartitionedCall:output:0dense_4671_68454312dense_4671_68454314*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4671_layer_call_and_return_conditional_losses_68454091£
"dense_4672/StatefulPartitionedCallStatefulPartitionedCall+dense_4671/StatefulPartitionedCall:output:0dense_4672_68454317dense_4672_68454319*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4672_layer_call_and_return_conditional_losses_68454108£
"dense_4673/StatefulPartitionedCallStatefulPartitionedCall+dense_4672/StatefulPartitionedCall:output:0dense_4673_68454322dense_4673_68454324*
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
H__inference_dense_4673_layer_call_and_return_conditional_losses_68454124z
IdentityIdentity+dense_4673/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
NoOpNoOp#^dense_4670/StatefulPartitionedCall#^dense_4671/StatefulPartitionedCall#^dense_4672/StatefulPartitionedCall#^dense_4673/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ&: : : : : : : : 2H
"dense_4670/StatefulPartitionedCall"dense_4670/StatefulPartitionedCall2H
"dense_4671/StatefulPartitionedCall"dense_4671/StatefulPartitionedCall2H
"dense_4672/StatefulPartitionedCall"dense_4672/StatefulPartitionedCall2H
"dense_4673/StatefulPartitionedCall"dense_4673/StatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
*
_user_specified_namedense_4670_input
î	
Ë
2__inference_sequential_1922_layer_call_fn_68454150
dense_4670_input
unknown:&&
	unknown_0:&
	unknown_1:&&
	unknown_2:&
	unknown_3:&&
	unknown_4:&
	unknown_5:&
	unknown_6:
identity¢StatefulPartitionedCallº
StatefulPartitionedCallStatefulPartitionedCalldense_4670_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_sequential_1922_layer_call_and_return_conditional_losses_68454131o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ&: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
*
_user_specified_namedense_4670_input
Ð	
Á
2__inference_sequential_1922_layer_call_fn_68454376

inputs
unknown:&&
	unknown_0:&
	unknown_1:&&
	unknown_2:&
	unknown_3:&&
	unknown_4:&
	unknown_5:&
	unknown_6:
identity¢StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_sequential_1922_layer_call_and_return_conditional_losses_68454238o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ&: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs
Ë	
ù
H__inference_dense_4673_layer_call_and_return_conditional_losses_68454542

inputs0
matmul_readvariableop_resource:&-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:&*
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
:ÿÿÿÿÿÿÿÿÿ&: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs
î	
Ë
2__inference_sequential_1922_layer_call_fn_68454278
dense_4670_input
unknown:&&
	unknown_0:&
	unknown_1:&&
	unknown_2:&
	unknown_3:&&
	unknown_4:&
	unknown_5:&
	unknown_6:
identity¢StatefulPartitionedCallº
StatefulPartitionedCallStatefulPartitionedCalldense_4670_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_sequential_1922_layer_call_and_return_conditional_losses_68454238o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ&: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
*
_user_specified_namedense_4670_input
à
¨
M__inference_sequential_1922_layer_call_and_return_conditional_losses_68454131

inputs%
dense_4670_68454075:&&!
dense_4670_68454077:&%
dense_4671_68454092:&&!
dense_4671_68454094:&%
dense_4672_68454109:&&!
dense_4672_68454111:&%
dense_4673_68454125:&!
dense_4673_68454127:
identity¢"dense_4670/StatefulPartitionedCall¢"dense_4671/StatefulPartitionedCall¢"dense_4672/StatefulPartitionedCall¢"dense_4673/StatefulPartitionedCall`
dense_4670/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
"dense_4670/StatefulPartitionedCallStatefulPartitionedCalldense_4670/Cast:y:0dense_4670_68454075dense_4670_68454077*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4670_layer_call_and_return_conditional_losses_68454074£
"dense_4671/StatefulPartitionedCallStatefulPartitionedCall+dense_4670/StatefulPartitionedCall:output:0dense_4671_68454092dense_4671_68454094*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4671_layer_call_and_return_conditional_losses_68454091£
"dense_4672/StatefulPartitionedCallStatefulPartitionedCall+dense_4671/StatefulPartitionedCall:output:0dense_4672_68454109dense_4672_68454111*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4672_layer_call_and_return_conditional_losses_68454108£
"dense_4673/StatefulPartitionedCallStatefulPartitionedCall+dense_4672/StatefulPartitionedCall:output:0dense_4673_68454125dense_4673_68454127*
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
H__inference_dense_4673_layer_call_and_return_conditional_losses_68454124z
IdentityIdentity+dense_4673/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
NoOpNoOp#^dense_4670/StatefulPartitionedCall#^dense_4671/StatefulPartitionedCall#^dense_4672/StatefulPartitionedCall#^dense_4673/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ&: : : : : : : : 2H
"dense_4670/StatefulPartitionedCall"dense_4670/StatefulPartitionedCall2H
"dense_4671/StatefulPartitionedCall"dense_4671/StatefulPartitionedCall2H
"dense_4672/StatefulPartitionedCall"dense_4672/StatefulPartitionedCall2H
"dense_4673/StatefulPartitionedCall"dense_4673/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs


ù
H__inference_dense_4670_layer_call_and_return_conditional_losses_68454074

inputs0
matmul_readvariableop_resource:&&-
biasadd_readvariableop_resource:&
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:&&*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:&*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ&: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs
Ê

-__inference_dense_4672_layer_call_fn_68454512

inputs
unknown:&&
	unknown_0:&
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4672_layer_call_and_return_conditional_losses_68454108o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ&: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs
Ê

-__inference_dense_4671_layer_call_fn_68454492

inputs
unknown:&&
	unknown_0:&
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4671_layer_call_and_return_conditional_losses_68454091o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ&: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs
D
¢
!__inference__traced_save_68454658
file_prefix0
,savev2_dense_4670_kernel_read_readvariableop.
*savev2_dense_4670_bias_read_readvariableop0
,savev2_dense_4671_kernel_read_readvariableop.
*savev2_dense_4671_bias_read_readvariableop0
,savev2_dense_4672_kernel_read_readvariableop.
*savev2_dense_4672_bias_read_readvariableop0
,savev2_dense_4673_kernel_read_readvariableop.
*savev2_dense_4673_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_dense_4670_kernel_m_read_readvariableop5
1savev2_adam_dense_4670_bias_m_read_readvariableop7
3savev2_adam_dense_4671_kernel_m_read_readvariableop5
1savev2_adam_dense_4671_bias_m_read_readvariableop7
3savev2_adam_dense_4672_kernel_m_read_readvariableop5
1savev2_adam_dense_4672_bias_m_read_readvariableop7
3savev2_adam_dense_4673_kernel_m_read_readvariableop5
1savev2_adam_dense_4673_bias_m_read_readvariableop7
3savev2_adam_dense_4670_kernel_v_read_readvariableop5
1savev2_adam_dense_4670_bias_v_read_readvariableop7
3savev2_adam_dense_4671_kernel_v_read_readvariableop5
1savev2_adam_dense_4671_bias_v_read_readvariableop7
3savev2_adam_dense_4672_kernel_v_read_readvariableop5
1savev2_adam_dense_4672_bias_v_read_readvariableop7
3savev2_adam_dense_4673_kernel_v_read_readvariableop5
1savev2_adam_dense_4673_bias_v_read_readvariableop
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
: Ã
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*ì
valueâBß B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH­
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_4670_kernel_read_readvariableop*savev2_dense_4670_bias_read_readvariableop,savev2_dense_4671_kernel_read_readvariableop*savev2_dense_4671_bias_read_readvariableop,savev2_dense_4672_kernel_read_readvariableop*savev2_dense_4672_bias_read_readvariableop,savev2_dense_4673_kernel_read_readvariableop*savev2_dense_4673_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_dense_4670_kernel_m_read_readvariableop1savev2_adam_dense_4670_bias_m_read_readvariableop3savev2_adam_dense_4671_kernel_m_read_readvariableop1savev2_adam_dense_4671_bias_m_read_readvariableop3savev2_adam_dense_4672_kernel_m_read_readvariableop1savev2_adam_dense_4672_bias_m_read_readvariableop3savev2_adam_dense_4673_kernel_m_read_readvariableop1savev2_adam_dense_4673_bias_m_read_readvariableop3savev2_adam_dense_4670_kernel_v_read_readvariableop1savev2_adam_dense_4670_bias_v_read_readvariableop3savev2_adam_dense_4671_kernel_v_read_readvariableop1savev2_adam_dense_4671_bias_v_read_readvariableop3savev2_adam_dense_4672_kernel_v_read_readvariableop1savev2_adam_dense_4672_bias_v_read_readvariableop3savev2_adam_dense_4673_kernel_v_read_readvariableop1savev2_adam_dense_4673_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 	
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

identity_1Identity_1:output:0*ç
_input_shapesÕ
Ò: :&&:&:&&:&:&&:&:&:: : : : : : : :&&:&:&&:&:&&:&:&::&&:&:&&:&:&&:&:&:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:&&: 

_output_shapes
:&:$ 

_output_shapes

:&&: 

_output_shapes
:&:$ 

_output_shapes

:&&: 

_output_shapes
:&:$ 

_output_shapes

:&: 

_output_shapes
::	
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
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:&&: 

_output_shapes
:&:$ 

_output_shapes

:&&: 

_output_shapes
:&:$ 

_output_shapes

:&&: 

_output_shapes
:&:$ 

_output_shapes

:&: 

_output_shapes
::$ 

_output_shapes

:&&: 

_output_shapes
:&:$ 

_output_shapes

:&&: 

_output_shapes
:&:$ 

_output_shapes

:&&: 

_output_shapes
:&:$ 

_output_shapes

:&: 

_output_shapes
:: 

_output_shapes
: 


ù
H__inference_dense_4670_layer_call_and_return_conditional_losses_68454483

inputs0
matmul_readvariableop_resource:&&-
biasadd_readvariableop_resource:&
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:&&*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:&*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ&: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs
Ê

-__inference_dense_4673_layer_call_fn_68454532

inputs
unknown:&
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
H__inference_dense_4673_layer_call_and_return_conditional_losses_68454124o
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
:ÿÿÿÿÿÿÿÿÿ&: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs


ù
H__inference_dense_4671_layer_call_and_return_conditional_losses_68454503

inputs0
matmul_readvariableop_resource:&&-
biasadd_readvariableop_resource:&
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:&&*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:&*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ&: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs
õ0
Ä
#__inference__wrapped_model_68454055
dense_4670_inputK
9sequential_1922_dense_4670_matmul_readvariableop_resource:&&H
:sequential_1922_dense_4670_biasadd_readvariableop_resource:&K
9sequential_1922_dense_4671_matmul_readvariableop_resource:&&H
:sequential_1922_dense_4671_biasadd_readvariableop_resource:&K
9sequential_1922_dense_4672_matmul_readvariableop_resource:&&H
:sequential_1922_dense_4672_biasadd_readvariableop_resource:&K
9sequential_1922_dense_4673_matmul_readvariableop_resource:&H
:sequential_1922_dense_4673_biasadd_readvariableop_resource:
identity¢1sequential_1922/dense_4670/BiasAdd/ReadVariableOp¢0sequential_1922/dense_4670/MatMul/ReadVariableOp¢1sequential_1922/dense_4671/BiasAdd/ReadVariableOp¢0sequential_1922/dense_4671/MatMul/ReadVariableOp¢1sequential_1922/dense_4672/BiasAdd/ReadVariableOp¢0sequential_1922/dense_4672/MatMul/ReadVariableOp¢1sequential_1922/dense_4673/BiasAdd/ReadVariableOp¢0sequential_1922/dense_4673/MatMul/ReadVariableOpz
sequential_1922/dense_4670/CastCastdense_4670_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&ª
0sequential_1922/dense_4670/MatMul/ReadVariableOpReadVariableOp9sequential_1922_dense_4670_matmul_readvariableop_resource*
_output_shapes

:&&*
dtype0¼
!sequential_1922/dense_4670/MatMulMatMul#sequential_1922/dense_4670/Cast:y:08sequential_1922/dense_4670/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&¨
1sequential_1922/dense_4670/BiasAdd/ReadVariableOpReadVariableOp:sequential_1922_dense_4670_biasadd_readvariableop_resource*
_output_shapes
:&*
dtype0Ç
"sequential_1922/dense_4670/BiasAddBiasAdd+sequential_1922/dense_4670/MatMul:product:09sequential_1922/dense_4670/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
sequential_1922/dense_4670/ReluRelu+sequential_1922/dense_4670/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&ª
0sequential_1922/dense_4671/MatMul/ReadVariableOpReadVariableOp9sequential_1922_dense_4671_matmul_readvariableop_resource*
_output_shapes

:&&*
dtype0Æ
!sequential_1922/dense_4671/MatMulMatMul-sequential_1922/dense_4670/Relu:activations:08sequential_1922/dense_4671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&¨
1sequential_1922/dense_4671/BiasAdd/ReadVariableOpReadVariableOp:sequential_1922_dense_4671_biasadd_readvariableop_resource*
_output_shapes
:&*
dtype0Ç
"sequential_1922/dense_4671/BiasAddBiasAdd+sequential_1922/dense_4671/MatMul:product:09sequential_1922/dense_4671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
sequential_1922/dense_4671/ReluRelu+sequential_1922/dense_4671/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&ª
0sequential_1922/dense_4672/MatMul/ReadVariableOpReadVariableOp9sequential_1922_dense_4672_matmul_readvariableop_resource*
_output_shapes

:&&*
dtype0Æ
!sequential_1922/dense_4672/MatMulMatMul-sequential_1922/dense_4671/Relu:activations:08sequential_1922/dense_4672/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&¨
1sequential_1922/dense_4672/BiasAdd/ReadVariableOpReadVariableOp:sequential_1922_dense_4672_biasadd_readvariableop_resource*
_output_shapes
:&*
dtype0Ç
"sequential_1922/dense_4672/BiasAddBiasAdd+sequential_1922/dense_4672/MatMul:product:09sequential_1922/dense_4672/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
sequential_1922/dense_4672/ReluRelu+sequential_1922/dense_4672/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&ª
0sequential_1922/dense_4673/MatMul/ReadVariableOpReadVariableOp9sequential_1922_dense_4673_matmul_readvariableop_resource*
_output_shapes

:&*
dtype0Æ
!sequential_1922/dense_4673/MatMulMatMul-sequential_1922/dense_4672/Relu:activations:08sequential_1922/dense_4673/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
1sequential_1922/dense_4673/BiasAdd/ReadVariableOpReadVariableOp:sequential_1922_dense_4673_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ç
"sequential_1922/dense_4673/BiasAddBiasAdd+sequential_1922/dense_4673/MatMul:product:09sequential_1922/dense_4673/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
IdentityIdentity+sequential_1922/dense_4673/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
NoOpNoOp2^sequential_1922/dense_4670/BiasAdd/ReadVariableOp1^sequential_1922/dense_4670/MatMul/ReadVariableOp2^sequential_1922/dense_4671/BiasAdd/ReadVariableOp1^sequential_1922/dense_4671/MatMul/ReadVariableOp2^sequential_1922/dense_4672/BiasAdd/ReadVariableOp1^sequential_1922/dense_4672/MatMul/ReadVariableOp2^sequential_1922/dense_4673/BiasAdd/ReadVariableOp1^sequential_1922/dense_4673/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ&: : : : : : : : 2f
1sequential_1922/dense_4670/BiasAdd/ReadVariableOp1sequential_1922/dense_4670/BiasAdd/ReadVariableOp2d
0sequential_1922/dense_4670/MatMul/ReadVariableOp0sequential_1922/dense_4670/MatMul/ReadVariableOp2f
1sequential_1922/dense_4671/BiasAdd/ReadVariableOp1sequential_1922/dense_4671/BiasAdd/ReadVariableOp2d
0sequential_1922/dense_4671/MatMul/ReadVariableOp0sequential_1922/dense_4671/MatMul/ReadVariableOp2f
1sequential_1922/dense_4672/BiasAdd/ReadVariableOp1sequential_1922/dense_4672/BiasAdd/ReadVariableOp2d
0sequential_1922/dense_4672/MatMul/ReadVariableOp0sequential_1922/dense_4672/MatMul/ReadVariableOp2f
1sequential_1922/dense_4673/BiasAdd/ReadVariableOp1sequential_1922/dense_4673/BiasAdd/ReadVariableOp2d
0sequential_1922/dense_4673/MatMul/ReadVariableOp0sequential_1922/dense_4673/MatMul/ReadVariableOp:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
*
_user_specified_namedense_4670_input
Ë	
ù
H__inference_dense_4673_layer_call_and_return_conditional_losses_68454124

inputs0
matmul_readvariableop_resource:&-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:&*
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
:ÿÿÿÿÿÿÿÿÿ&: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs


ù
H__inference_dense_4672_layer_call_and_return_conditional_losses_68454523

inputs0
matmul_readvariableop_resource:&&-
biasadd_readvariableop_resource:&
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:&&*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:&*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ&: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs
þ
²
M__inference_sequential_1922_layer_call_and_return_conditional_losses_68454303
dense_4670_input%
dense_4670_68454282:&&!
dense_4670_68454284:&%
dense_4671_68454287:&&!
dense_4671_68454289:&%
dense_4672_68454292:&&!
dense_4672_68454294:&%
dense_4673_68454297:&!
dense_4673_68454299:
identity¢"dense_4670/StatefulPartitionedCall¢"dense_4671/StatefulPartitionedCall¢"dense_4672/StatefulPartitionedCall¢"dense_4673/StatefulPartitionedCallj
dense_4670/CastCastdense_4670_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
"dense_4670/StatefulPartitionedCallStatefulPartitionedCalldense_4670/Cast:y:0dense_4670_68454282dense_4670_68454284*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4670_layer_call_and_return_conditional_losses_68454074£
"dense_4671/StatefulPartitionedCallStatefulPartitionedCall+dense_4670/StatefulPartitionedCall:output:0dense_4671_68454287dense_4671_68454289*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4671_layer_call_and_return_conditional_losses_68454091£
"dense_4672/StatefulPartitionedCallStatefulPartitionedCall+dense_4671/StatefulPartitionedCall:output:0dense_4672_68454292dense_4672_68454294*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4672_layer_call_and_return_conditional_losses_68454108£
"dense_4673/StatefulPartitionedCallStatefulPartitionedCall+dense_4672/StatefulPartitionedCall:output:0dense_4673_68454297dense_4673_68454299*
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
H__inference_dense_4673_layer_call_and_return_conditional_losses_68454124z
IdentityIdentity+dense_4673/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
NoOpNoOp#^dense_4670/StatefulPartitionedCall#^dense_4671/StatefulPartitionedCall#^dense_4672/StatefulPartitionedCall#^dense_4673/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ&: : : : : : : : 2H
"dense_4670/StatefulPartitionedCall"dense_4670/StatefulPartitionedCall2H
"dense_4671/StatefulPartitionedCall"dense_4671/StatefulPartitionedCall2H
"dense_4672/StatefulPartitionedCall"dense_4672/StatefulPartitionedCall2H
"dense_4673/StatefulPartitionedCall"dense_4673/StatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
*
_user_specified_namedense_4670_input
ã}

$__inference__traced_restore_68454761
file_prefix4
"assignvariableop_dense_4670_kernel:&&0
"assignvariableop_1_dense_4670_bias:&6
$assignvariableop_2_dense_4671_kernel:&&0
"assignvariableop_3_dense_4671_bias:&6
$assignvariableop_4_dense_4672_kernel:&&0
"assignvariableop_5_dense_4672_bias:&6
$assignvariableop_6_dense_4673_kernel:&0
"assignvariableop_7_dense_4673_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: >
,assignvariableop_15_adam_dense_4670_kernel_m:&&8
*assignvariableop_16_adam_dense_4670_bias_m:&>
,assignvariableop_17_adam_dense_4671_kernel_m:&&8
*assignvariableop_18_adam_dense_4671_bias_m:&>
,assignvariableop_19_adam_dense_4672_kernel_m:&&8
*assignvariableop_20_adam_dense_4672_bias_m:&>
,assignvariableop_21_adam_dense_4673_kernel_m:&8
*assignvariableop_22_adam_dense_4673_bias_m:>
,assignvariableop_23_adam_dense_4670_kernel_v:&&8
*assignvariableop_24_adam_dense_4670_bias_v:&>
,assignvariableop_25_adam_dense_4671_kernel_v:&&8
*assignvariableop_26_adam_dense_4671_bias_v:&>
,assignvariableop_27_adam_dense_4672_kernel_v:&&8
*assignvariableop_28_adam_dense_4672_bias_v:&>
,assignvariableop_29_adam_dense_4673_kernel_v:&8
*assignvariableop_30_adam_dense_4673_bias_v:
identity_32¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Æ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*ì
valueâBß B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH°
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Á
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::*.
dtypes$
"2 	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp"assignvariableop_dense_4670_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_4670_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_4671_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_4671_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp$assignvariableop_4_dense_4672_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_4672_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp$assignvariableop_6_dense_4673_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_4673_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp,assignvariableop_15_adam_dense_4670_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_4670_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp,assignvariableop_17_adam_dense_4671_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_4671_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_dense_4672_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_4672_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_dense_4673_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_4673_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_dense_4670_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_dense_4670_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_dense_4671_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_dense_4671_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp,assignvariableop_27_adam_dense_4672_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_dense_4672_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_dense_4673_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_dense_4673_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ù
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_32IdentityIdentity_31:output:0^NoOp_1*
T0*
_output_shapes
: æ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_32Identity_32:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_30AssignVariableOp_302(
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
þ%
ä
M__inference_sequential_1922_layer_call_and_return_conditional_losses_68454408

inputs;
)dense_4670_matmul_readvariableop_resource:&&8
*dense_4670_biasadd_readvariableop_resource:&;
)dense_4671_matmul_readvariableop_resource:&&8
*dense_4671_biasadd_readvariableop_resource:&;
)dense_4672_matmul_readvariableop_resource:&&8
*dense_4672_biasadd_readvariableop_resource:&;
)dense_4673_matmul_readvariableop_resource:&8
*dense_4673_biasadd_readvariableop_resource:
identity¢!dense_4670/BiasAdd/ReadVariableOp¢ dense_4670/MatMul/ReadVariableOp¢!dense_4671/BiasAdd/ReadVariableOp¢ dense_4671/MatMul/ReadVariableOp¢!dense_4672/BiasAdd/ReadVariableOp¢ dense_4672/MatMul/ReadVariableOp¢!dense_4673/BiasAdd/ReadVariableOp¢ dense_4673/MatMul/ReadVariableOp`
dense_4670/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 dense_4670/MatMul/ReadVariableOpReadVariableOp)dense_4670_matmul_readvariableop_resource*
_output_shapes

:&&*
dtype0
dense_4670/MatMulMatMuldense_4670/Cast:y:0(dense_4670/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
!dense_4670/BiasAdd/ReadVariableOpReadVariableOp*dense_4670_biasadd_readvariableop_resource*
_output_shapes
:&*
dtype0
dense_4670/BiasAddBiasAdddense_4670/MatMul:product:0)dense_4670/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&f
dense_4670/ReluReludense_4670/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 dense_4671/MatMul/ReadVariableOpReadVariableOp)dense_4671_matmul_readvariableop_resource*
_output_shapes

:&&*
dtype0
dense_4671/MatMulMatMuldense_4670/Relu:activations:0(dense_4671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
!dense_4671/BiasAdd/ReadVariableOpReadVariableOp*dense_4671_biasadd_readvariableop_resource*
_output_shapes
:&*
dtype0
dense_4671/BiasAddBiasAdddense_4671/MatMul:product:0)dense_4671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&f
dense_4671/ReluReludense_4671/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 dense_4672/MatMul/ReadVariableOpReadVariableOp)dense_4672_matmul_readvariableop_resource*
_output_shapes

:&&*
dtype0
dense_4672/MatMulMatMuldense_4671/Relu:activations:0(dense_4672/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
!dense_4672/BiasAdd/ReadVariableOpReadVariableOp*dense_4672_biasadd_readvariableop_resource*
_output_shapes
:&*
dtype0
dense_4672/BiasAddBiasAdddense_4672/MatMul:product:0)dense_4672/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&f
dense_4672/ReluReludense_4672/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 dense_4673/MatMul/ReadVariableOpReadVariableOp)dense_4673_matmul_readvariableop_resource*
_output_shapes

:&*
dtype0
dense_4673/MatMulMatMuldense_4672/Relu:activations:0(dense_4673/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_4673/BiasAdd/ReadVariableOpReadVariableOp*dense_4673_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_4673/BiasAddBiasAdddense_4673/MatMul:product:0)dense_4673/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentitydense_4673/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
NoOpNoOp"^dense_4670/BiasAdd/ReadVariableOp!^dense_4670/MatMul/ReadVariableOp"^dense_4671/BiasAdd/ReadVariableOp!^dense_4671/MatMul/ReadVariableOp"^dense_4672/BiasAdd/ReadVariableOp!^dense_4672/MatMul/ReadVariableOp"^dense_4673/BiasAdd/ReadVariableOp!^dense_4673/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ&: : : : : : : : 2F
!dense_4670/BiasAdd/ReadVariableOp!dense_4670/BiasAdd/ReadVariableOp2D
 dense_4670/MatMul/ReadVariableOp dense_4670/MatMul/ReadVariableOp2F
!dense_4671/BiasAdd/ReadVariableOp!dense_4671/BiasAdd/ReadVariableOp2D
 dense_4671/MatMul/ReadVariableOp dense_4671/MatMul/ReadVariableOp2F
!dense_4672/BiasAdd/ReadVariableOp!dense_4672/BiasAdd/ReadVariableOp2D
 dense_4672/MatMul/ReadVariableOp dense_4672/MatMul/ReadVariableOp2F
!dense_4673/BiasAdd/ReadVariableOp!dense_4673/BiasAdd/ReadVariableOp2D
 dense_4673/MatMul/ReadVariableOp dense_4673/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs


ù
H__inference_dense_4671_layer_call_and_return_conditional_losses_68454091

inputs0
matmul_readvariableop_resource:&&-
biasadd_readvariableop_resource:&
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:&&*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:&*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ&: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs
¸	
¿
&__inference_signature_wrapper_68454463
dense_4670_input
unknown:&&
	unknown_0:&
	unknown_1:&&
	unknown_2:&
	unknown_3:&&
	unknown_4:&
	unknown_5:&
	unknown_6:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_4670_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__wrapped_model_68454055o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ&: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
*
_user_specified_namedense_4670_input


ù
H__inference_dense_4672_layer_call_and_return_conditional_losses_68454108

inputs0
matmul_readvariableop_resource:&&-
biasadd_readvariableop_resource:&
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:&&*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:&*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ&: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs
Ê

-__inference_dense_4670_layer_call_fn_68454472

inputs
unknown:&&
	unknown_0:&
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4670_layer_call_and_return_conditional_losses_68454074o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ&: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs
þ%
ä
M__inference_sequential_1922_layer_call_and_return_conditional_losses_68454440

inputs;
)dense_4670_matmul_readvariableop_resource:&&8
*dense_4670_biasadd_readvariableop_resource:&;
)dense_4671_matmul_readvariableop_resource:&&8
*dense_4671_biasadd_readvariableop_resource:&;
)dense_4672_matmul_readvariableop_resource:&&8
*dense_4672_biasadd_readvariableop_resource:&;
)dense_4673_matmul_readvariableop_resource:&8
*dense_4673_biasadd_readvariableop_resource:
identity¢!dense_4670/BiasAdd/ReadVariableOp¢ dense_4670/MatMul/ReadVariableOp¢!dense_4671/BiasAdd/ReadVariableOp¢ dense_4671/MatMul/ReadVariableOp¢!dense_4672/BiasAdd/ReadVariableOp¢ dense_4672/MatMul/ReadVariableOp¢!dense_4673/BiasAdd/ReadVariableOp¢ dense_4673/MatMul/ReadVariableOp`
dense_4670/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 dense_4670/MatMul/ReadVariableOpReadVariableOp)dense_4670_matmul_readvariableop_resource*
_output_shapes

:&&*
dtype0
dense_4670/MatMulMatMuldense_4670/Cast:y:0(dense_4670/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
!dense_4670/BiasAdd/ReadVariableOpReadVariableOp*dense_4670_biasadd_readvariableop_resource*
_output_shapes
:&*
dtype0
dense_4670/BiasAddBiasAdddense_4670/MatMul:product:0)dense_4670/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&f
dense_4670/ReluReludense_4670/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 dense_4671/MatMul/ReadVariableOpReadVariableOp)dense_4671_matmul_readvariableop_resource*
_output_shapes

:&&*
dtype0
dense_4671/MatMulMatMuldense_4670/Relu:activations:0(dense_4671/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
!dense_4671/BiasAdd/ReadVariableOpReadVariableOp*dense_4671_biasadd_readvariableop_resource*
_output_shapes
:&*
dtype0
dense_4671/BiasAddBiasAdddense_4671/MatMul:product:0)dense_4671/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&f
dense_4671/ReluReludense_4671/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 dense_4672/MatMul/ReadVariableOpReadVariableOp)dense_4672_matmul_readvariableop_resource*
_output_shapes

:&&*
dtype0
dense_4672/MatMulMatMuldense_4671/Relu:activations:0(dense_4672/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
!dense_4672/BiasAdd/ReadVariableOpReadVariableOp*dense_4672_biasadd_readvariableop_resource*
_output_shapes
:&*
dtype0
dense_4672/BiasAddBiasAdddense_4672/MatMul:product:0)dense_4672/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&f
dense_4672/ReluReludense_4672/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 dense_4673/MatMul/ReadVariableOpReadVariableOp)dense_4673_matmul_readvariableop_resource*
_output_shapes

:&*
dtype0
dense_4673/MatMulMatMuldense_4672/Relu:activations:0(dense_4673/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_4673/BiasAdd/ReadVariableOpReadVariableOp*dense_4673_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_4673/BiasAddBiasAdddense_4673/MatMul:product:0)dense_4673/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
IdentityIdentitydense_4673/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
NoOpNoOp"^dense_4670/BiasAdd/ReadVariableOp!^dense_4670/MatMul/ReadVariableOp"^dense_4671/BiasAdd/ReadVariableOp!^dense_4671/MatMul/ReadVariableOp"^dense_4672/BiasAdd/ReadVariableOp!^dense_4672/MatMul/ReadVariableOp"^dense_4673/BiasAdd/ReadVariableOp!^dense_4673/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ&: : : : : : : : 2F
!dense_4670/BiasAdd/ReadVariableOp!dense_4670/BiasAdd/ReadVariableOp2D
 dense_4670/MatMul/ReadVariableOp dense_4670/MatMul/ReadVariableOp2F
!dense_4671/BiasAdd/ReadVariableOp!dense_4671/BiasAdd/ReadVariableOp2D
 dense_4671/MatMul/ReadVariableOp dense_4671/MatMul/ReadVariableOp2F
!dense_4672/BiasAdd/ReadVariableOp!dense_4672/BiasAdd/ReadVariableOp2D
 dense_4672/MatMul/ReadVariableOp dense_4672/MatMul/ReadVariableOp2F
!dense_4673/BiasAdd/ReadVariableOp!dense_4673/BiasAdd/ReadVariableOp2D
 dense_4673/MatMul/ReadVariableOp dense_4673/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs
à
¨
M__inference_sequential_1922_layer_call_and_return_conditional_losses_68454238

inputs%
dense_4670_68454217:&&!
dense_4670_68454219:&%
dense_4671_68454222:&&!
dense_4671_68454224:&%
dense_4672_68454227:&&!
dense_4672_68454229:&%
dense_4673_68454232:&!
dense_4673_68454234:
identity¢"dense_4670/StatefulPartitionedCall¢"dense_4671/StatefulPartitionedCall¢"dense_4672/StatefulPartitionedCall¢"dense_4673/StatefulPartitionedCall`
dense_4670/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
"dense_4670/StatefulPartitionedCallStatefulPartitionedCalldense_4670/Cast:y:0dense_4670_68454217dense_4670_68454219*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4670_layer_call_and_return_conditional_losses_68454074£
"dense_4671/StatefulPartitionedCallStatefulPartitionedCall+dense_4670/StatefulPartitionedCall:output:0dense_4671_68454222dense_4671_68454224*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4671_layer_call_and_return_conditional_losses_68454091£
"dense_4672/StatefulPartitionedCallStatefulPartitionedCall+dense_4671/StatefulPartitionedCall:output:0dense_4672_68454227dense_4672_68454229*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dense_4672_layer_call_and_return_conditional_losses_68454108£
"dense_4673/StatefulPartitionedCallStatefulPartitionedCall+dense_4672/StatefulPartitionedCall:output:0dense_4673_68454232dense_4673_68454234*
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
H__inference_dense_4673_layer_call_and_return_conditional_losses_68454124z
IdentityIdentity+dense_4673/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
NoOpNoOp#^dense_4670/StatefulPartitionedCall#^dense_4671/StatefulPartitionedCall#^dense_4672/StatefulPartitionedCall#^dense_4673/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ&: : : : : : : : 2H
"dense_4670/StatefulPartitionedCall"dense_4670/StatefulPartitionedCall2H
"dense_4671/StatefulPartitionedCall"dense_4671/StatefulPartitionedCall2H
"dense_4672/StatefulPartitionedCall"dense_4672/StatefulPartitionedCall2H
"dense_4673/StatefulPartitionedCall"dense_4673/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
_user_specified_nameinputs
Ð	
Á
2__inference_sequential_1922_layer_call_fn_68454355

inputs
unknown:&&
	unknown_0:&
	unknown_1:&&
	unknown_2:&
	unknown_3:&&
	unknown_4:&
	unknown_5:&
	unknown_6:
identity¢StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_sequential_1922_layer_call_and_return_conditional_losses_68454131o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ&: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ&
 
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
dense_4670_input9
"serving_default_dense_4670_input:0ÿÿÿÿÿÿÿÿÿ&>

dense_46730
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:â]

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
»

&kernel
'bias
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
ã
.iter

/beta_1

0beta_2
	1decay
2learning_ratemRmSmTmUmVmW&mX'mYvZv[v\v]v^v_&v`'va"
	optimizer
X
0
1
2
3
4
5
&6
'7"
trackable_list_wrapper
X
0
1
2
3
4
5
&6
'7"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
2__inference_sequential_1922_layer_call_fn_68454150
2__inference_sequential_1922_layer_call_fn_68454355
2__inference_sequential_1922_layer_call_fn_68454376
2__inference_sequential_1922_layer_call_fn_68454278À
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
M__inference_sequential_1922_layer_call_and_return_conditional_losses_68454408
M__inference_sequential_1922_layer_call_and_return_conditional_losses_68454440
M__inference_sequential_1922_layer_call_and_return_conditional_losses_68454303
M__inference_sequential_1922_layer_call_and_return_conditional_losses_68454328À
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
#__inference__wrapped_model_68454055dense_4670_input"
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
8serving_default"
signature_map
#:!&&2dense_4670/kernel
:&2dense_4670/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
×2Ô
-__inference_dense_4670_layer_call_fn_68454472¢
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
H__inference_dense_4670_layer_call_and_return_conditional_losses_68454483¢
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
#:!&&2dense_4671/kernel
:&2dense_4671/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
×2Ô
-__inference_dense_4671_layer_call_fn_68454492¢
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
H__inference_dense_4671_layer_call_and_return_conditional_losses_68454503¢
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
#:!&&2dense_4672/kernel
:&2dense_4672/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
×2Ô
-__inference_dense_4672_layer_call_fn_68454512¢
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
H__inference_dense_4672_layer_call_and_return_conditional_losses_68454523¢
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
#:!&2dense_4673/kernel
:2dense_4673/bias
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
×2Ô
-__inference_dense_4673_layer_call_fn_68454532¢
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
H__inference_dense_4673_layer_call_and_return_conditional_losses_68454542¢
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
<
0
1
2
3"
trackable_list_wrapper
'
M0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÖBÓ
&__inference_signature_wrapper_68454463dense_4670_input"
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
	Ntotal
	Ocount
P	variables
Q	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
N0
O1"
trackable_list_wrapper
-
P	variables"
_generic_user_object
(:&&&2Adam/dense_4670/kernel/m
": &2Adam/dense_4670/bias/m
(:&&&2Adam/dense_4671/kernel/m
": &2Adam/dense_4671/bias/m
(:&&&2Adam/dense_4672/kernel/m
": &2Adam/dense_4672/bias/m
(:&&2Adam/dense_4673/kernel/m
": 2Adam/dense_4673/bias/m
(:&&&2Adam/dense_4670/kernel/v
": &2Adam/dense_4670/bias/v
(:&&&2Adam/dense_4671/kernel/v
": &2Adam/dense_4671/bias/v
(:&&&2Adam/dense_4672/kernel/v
": &2Adam/dense_4672/bias/v
(:&&2Adam/dense_4673/kernel/v
": 2Adam/dense_4673/bias/v¥
#__inference__wrapped_model_68454055~&'9¢6
/¢,
*'
dense_4670_inputÿÿÿÿÿÿÿÿÿ&
ª "7ª4
2

dense_4673$!

dense_4673ÿÿÿÿÿÿÿÿÿ¨
H__inference_dense_4670_layer_call_and_return_conditional_losses_68454483\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ&
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ&
 
-__inference_dense_4670_layer_call_fn_68454472O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ&
ª "ÿÿÿÿÿÿÿÿÿ&¨
H__inference_dense_4671_layer_call_and_return_conditional_losses_68454503\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ&
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ&
 
-__inference_dense_4671_layer_call_fn_68454492O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ&
ª "ÿÿÿÿÿÿÿÿÿ&¨
H__inference_dense_4672_layer_call_and_return_conditional_losses_68454523\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ&
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ&
 
-__inference_dense_4672_layer_call_fn_68454512O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ&
ª "ÿÿÿÿÿÿÿÿÿ&¨
H__inference_dense_4673_layer_call_and_return_conditional_losses_68454542\&'/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ&
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dense_4673_layer_call_fn_68454532O&'/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ&
ª "ÿÿÿÿÿÿÿÿÿÅ
M__inference_sequential_1922_layer_call_and_return_conditional_losses_68454303t&'A¢>
7¢4
*'
dense_4670_inputÿÿÿÿÿÿÿÿÿ&
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Å
M__inference_sequential_1922_layer_call_and_return_conditional_losses_68454328t&'A¢>
7¢4
*'
dense_4670_inputÿÿÿÿÿÿÿÿÿ&
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
M__inference_sequential_1922_layer_call_and_return_conditional_losses_68454408j&'7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ&
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
M__inference_sequential_1922_layer_call_and_return_conditional_losses_68454440j&'7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ&
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
2__inference_sequential_1922_layer_call_fn_68454150g&'A¢>
7¢4
*'
dense_4670_inputÿÿÿÿÿÿÿÿÿ&
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
2__inference_sequential_1922_layer_call_fn_68454278g&'A¢>
7¢4
*'
dense_4670_inputÿÿÿÿÿÿÿÿÿ&
p

 
ª "ÿÿÿÿÿÿÿÿÿ
2__inference_sequential_1922_layer_call_fn_68454355]&'7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ&
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
2__inference_sequential_1922_layer_call_fn_68454376]&'7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ&
p

 
ª "ÿÿÿÿÿÿÿÿÿ½
&__inference_signature_wrapper_68454463&'M¢J
¢ 
Cª@
>
dense_4670_input*'
dense_4670_inputÿÿÿÿÿÿÿÿÿ&"7ª4
2

dense_4673$!

dense_4673ÿÿÿÿÿÿÿÿÿ
Î
ýÑ
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
-
Tanh
x"T
y"T"
Ttype:

2

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.22v2.9.1-132-g18960c44ad38©Ù

Adam/dense_121/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_121/bias/v
{
)Adam/dense_121/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_121/bias/v*
_output_shapes
:*
dtype0

Adam/dense_121/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_121/kernel/v

+Adam/dense_121/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_121/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_120/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_120/bias/v
{
)Adam/dense_120/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_120/bias/v*
_output_shapes
:*
dtype0

Adam/dense_120/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*(
shared_nameAdam/dense_120/kernel/v

+Adam/dense_120/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_120/kernel/v*
_output_shapes

:	*
dtype0

Adam/dense_121/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_121/bias/m
{
)Adam/dense_121/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_121/bias/m*
_output_shapes
:*
dtype0

Adam/dense_121/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_121/kernel/m

+Adam/dense_121/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_121/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_120/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_120/bias/m
{
)Adam/dense_120/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_120/bias/m*
_output_shapes
:*
dtype0

Adam/dense_120/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*(
shared_nameAdam/dense_120/kernel/m

+Adam/dense_120/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_120/kernel/m*
_output_shapes

:	*
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
t
dense_121/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_121/bias
m
"dense_121/bias/Read/ReadVariableOpReadVariableOpdense_121/bias*
_output_shapes
:*
dtype0
|
dense_121/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_121/kernel
u
$dense_121/kernel/Read/ReadVariableOpReadVariableOpdense_121/kernel*
_output_shapes

:*
dtype0
t
dense_120/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_120/bias
m
"dense_120/bias/Read/ReadVariableOpReadVariableOpdense_120/bias*
_output_shapes
:*
dtype0
|
dense_120/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*!
shared_namedense_120/kernel
u
$dense_120/kernel/Read/ReadVariableOpReadVariableOpdense_120/kernel*
_output_shapes

:	*
dtype0

NoOpNoOp
û$
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¶$
value¬$B©$ B¢$

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
 
0
1
2
3*
 
0
1
2
3*

0
1* 
°
non_trainable_variables

layers
 metrics
!layer_regularization_losses
"layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
#trace_0
$trace_1
%trace_2
&trace_3* 
6
'trace_0
(trace_1
)trace_2
*trace_3* 
* 

+iter

,beta_1

-beta_2
	.decay
/learning_ratemLmMmNmOvPvQvRvS*

0serving_default* 

0
1*

0
1*
	
0* 

1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

6trace_0* 

7trace_0* 
`Z
VARIABLE_VALUEdense_120/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_120/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
	
0* 

8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

=trace_0* 

>trace_0* 
`Z
VARIABLE_VALUEdense_121/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_121/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

?trace_0* 

@trace_0* 
* 

0
1*

A0
B1*
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
* 
* 
* 
	
0* 
* 
* 
* 
* 
* 
* 
	
0* 
* 
* 
* 
* 
* 
8
C	variables
D	keras_api
	Etotal
	Fcount*
H
G	variables
H	keras_api
	Itotal
	Jcount
K
_fn_kwargs*

E0
F1*

C	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

I0
J1*

G	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
}
VARIABLE_VALUEAdam/dense_120/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_120/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_121/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_121/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_120/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_120/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_121/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_121/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_dense_120_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ	

StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_120_inputdense_120/kerneldense_120/biasdense_121/kerneldense_121/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_1085039
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¾
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_120/kernel/Read/ReadVariableOp"dense_120/bias/Read/ReadVariableOp$dense_121/kernel/Read/ReadVariableOp"dense_121/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_120/kernel/m/Read/ReadVariableOp)Adam/dense_120/bias/m/Read/ReadVariableOp+Adam/dense_121/kernel/m/Read/ReadVariableOp)Adam/dense_121/bias/m/Read/ReadVariableOp+Adam/dense_120/kernel/v/Read/ReadVariableOp)Adam/dense_120/bias/v/Read/ReadVariableOp+Adam/dense_121/kernel/v/Read/ReadVariableOp)Adam/dense_121/bias/v/Read/ReadVariableOpConst*"
Tin
2	*
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_1085297

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_120/kerneldense_120/biasdense_121/kerneldense_121/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_120/kernel/mAdam/dense_120/bias/mAdam/dense_121/kernel/mAdam/dense_121/bias/mAdam/dense_120/kernel/vAdam/dense_120/bias/vAdam/dense_121/kernel/vAdam/dense_121/bias/v*!
Tin
2*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_1085370¸û
ý$
Ç
J__inference_sequential_60_layer_call_and_return_conditional_losses_1085107

inputs:
(dense_120_matmul_readvariableop_resource:	7
)dense_120_biasadd_readvariableop_resource::
(dense_121_matmul_readvariableop_resource:7
)dense_121_biasadd_readvariableop_resource:
identity¢ dense_120/BiasAdd/ReadVariableOp¢dense_120/MatMul/ReadVariableOp¢2dense_120/kernel/Regularizer/Square/ReadVariableOp¢ dense_121/BiasAdd/ReadVariableOp¢dense_121/MatMul/ReadVariableOp¢2dense_121/kernel/Regularizer/Square/ReadVariableOp
dense_120/MatMul/ReadVariableOpReadVariableOp(dense_120_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0}
dense_120/MatMulMatMulinputs'dense_120/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_120/BiasAdd/ReadVariableOpReadVariableOp)dense_120_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_120/BiasAddBiasAdddense_120/MatMul:product:0(dense_120/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_120/TanhTanhdense_120/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_121/MatMul/ReadVariableOpReadVariableOp(dense_121_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_121/MatMulMatMuldense_120/Tanh:y:0'dense_121/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_121/BiasAdd/ReadVariableOpReadVariableOp)dense_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_121/BiasAddBiasAdddense_121/MatMul:product:0(dense_121/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_121/ReluReludense_121/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2dense_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_120_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0
#dense_120/kernel/Regularizer/SquareSquare:dense_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	s
"dense_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_120/kernel/Regularizer/SumSum'dense_120/kernel/Regularizer/Square:y:0+dense_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#< 
 dense_120/kernel/Regularizer/mulMul+dense_120/kernel/Regularizer/mul/x:output:0)dense_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
2dense_121/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_121_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
#dense_121/kernel/Regularizer/SquareSquare:dense_121/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_121/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_121/kernel/Regularizer/SumSum'dense_121/kernel/Regularizer/Square:y:0+dense_121/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_121/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#< 
 dense_121/kernel/Regularizer/mulMul+dense_121/kernel/Regularizer/mul/x:output:0)dense_121/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: k
IdentityIdentitydense_121/Relu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp!^dense_120/BiasAdd/ReadVariableOp ^dense_120/MatMul/ReadVariableOp3^dense_120/kernel/Regularizer/Square/ReadVariableOp!^dense_121/BiasAdd/ReadVariableOp ^dense_121/MatMul/ReadVariableOp3^dense_121/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : : : 2D
 dense_120/BiasAdd/ReadVariableOp dense_120/BiasAdd/ReadVariableOp2B
dense_120/MatMul/ReadVariableOpdense_120/MatMul/ReadVariableOp2h
2dense_120/kernel/Regularizer/Square/ReadVariableOp2dense_120/kernel/Regularizer/Square/ReadVariableOp2D
 dense_121/BiasAdd/ReadVariableOp dense_121/BiasAdd/ReadVariableOp2B
dense_121/MatMul/ReadVariableOpdense_121/MatMul/ReadVariableOp2h
2dense_121/kernel/Regularizer/Square/ReadVariableOp2dense_121/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
É1
á
 __inference__traced_save_1085297
file_prefix/
+savev2_dense_120_kernel_read_readvariableop-
)savev2_dense_120_bias_read_readvariableop/
+savev2_dense_121_kernel_read_readvariableop-
)savev2_dense_121_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_120_kernel_m_read_readvariableop4
0savev2_adam_dense_120_bias_m_read_readvariableop6
2savev2_adam_dense_121_kernel_m_read_readvariableop4
0savev2_adam_dense_121_bias_m_read_readvariableop6
2savev2_adam_dense_120_kernel_v_read_readvariableop4
0savev2_adam_dense_120_bias_v_read_readvariableop6
2savev2_adam_dense_121_kernel_v_read_readvariableop4
0savev2_adam_dense_121_bias_v_read_readvariableop
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
: »
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ä

valueÚ
B×
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B å
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_120_kernel_read_readvariableop)savev2_dense_120_bias_read_readvariableop+savev2_dense_121_kernel_read_readvariableop)savev2_dense_121_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_120_kernel_m_read_readvariableop0savev2_adam_dense_120_bias_m_read_readvariableop2savev2_adam_dense_121_kernel_m_read_readvariableop0savev2_adam_dense_121_bias_m_read_readvariableop2savev2_adam_dense_120_kernel_v_read_readvariableop0savev2_adam_dense_120_bias_v_read_readvariableop2savev2_adam_dense_121_kernel_v_read_readvariableop0savev2_adam_dense_121_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	
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

identity_1Identity_1:output:0*
_input_shapesx
v: :	:::: : : : : : : : : :	::::	:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:	: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:	: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:	: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
ý
°
J__inference_sequential_60_layer_call_and_return_conditional_losses_1085006
dense_120_input#
dense_120_1084983:	
dense_120_1084985:#
dense_121_1084988:
dense_121_1084990:
identity¢!dense_120/StatefulPartitionedCall¢2dense_120/kernel/Regularizer/Square/ReadVariableOp¢!dense_121/StatefulPartitionedCall¢2dense_121/kernel/Regularizer/Square/ReadVariableOp
!dense_120/StatefulPartitionedCallStatefulPartitionedCalldense_120_inputdense_120_1084983dense_120_1084985*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_120_layer_call_and_return_conditional_losses_1084816
!dense_121/StatefulPartitionedCallStatefulPartitionedCall*dense_120/StatefulPartitionedCall:output:0dense_121_1084988dense_121_1084990*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_121_layer_call_and_return_conditional_losses_1084839
2dense_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_120_1084983*
_output_shapes

:	*
dtype0
#dense_120/kernel/Regularizer/SquareSquare:dense_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	s
"dense_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_120/kernel/Regularizer/SumSum'dense_120/kernel/Regularizer/Square:y:0+dense_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#< 
 dense_120/kernel/Regularizer/mulMul+dense_120/kernel/Regularizer/mul/x:output:0)dense_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
2dense_121/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_121_1084988*
_output_shapes

:*
dtype0
#dense_121/kernel/Regularizer/SquareSquare:dense_121/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_121/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_121/kernel/Regularizer/SumSum'dense_121/kernel/Regularizer/Square:y:0+dense_121/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_121/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#< 
 dense_121/kernel/Regularizer/mulMul+dense_121/kernel/Regularizer/mul/x:output:0)dense_121/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
IdentityIdentity*dense_121/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿø
NoOpNoOp"^dense_120/StatefulPartitionedCall3^dense_120/kernel/Regularizer/Square/ReadVariableOp"^dense_121/StatefulPartitionedCall3^dense_121/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : : : 2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall2h
2dense_120/kernel/Regularizer/Square/ReadVariableOp2dense_120/kernel/Regularizer/Square/ReadVariableOp2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2h
2dense_121/kernel/Regularizer/Square/ReadVariableOp2dense_121/kernel/Regularizer/Square/ReadVariableOp:X T
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
)
_user_specified_namedense_120_input
³
¬
F__inference_dense_120_layer_call_and_return_conditional_losses_1085163

inputs0
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢2dense_120/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2dense_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0
#dense_120/kernel/Regularizer/SquareSquare:dense_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	s
"dense_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_120/kernel/Regularizer/SumSum'dense_120/kernel/Regularizer/Square:y:0+dense_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#< 
 dense_120/kernel/Regularizer/mulMul+dense_120/kernel/Regularizer/mul/x:output:0)dense_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_120/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_120/kernel/Regularizer/Square/ReadVariableOp2dense_120/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
ý
°
J__inference_sequential_60_layer_call_and_return_conditional_losses_1084980
dense_120_input#
dense_120_1084957:	
dense_120_1084959:#
dense_121_1084962:
dense_121_1084964:
identity¢!dense_120/StatefulPartitionedCall¢2dense_120/kernel/Regularizer/Square/ReadVariableOp¢!dense_121/StatefulPartitionedCall¢2dense_121/kernel/Regularizer/Square/ReadVariableOp
!dense_120/StatefulPartitionedCallStatefulPartitionedCalldense_120_inputdense_120_1084957dense_120_1084959*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_120_layer_call_and_return_conditional_losses_1084816
!dense_121/StatefulPartitionedCallStatefulPartitionedCall*dense_120/StatefulPartitionedCall:output:0dense_121_1084962dense_121_1084964*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_121_layer_call_and_return_conditional_losses_1084839
2dense_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_120_1084957*
_output_shapes

:	*
dtype0
#dense_120/kernel/Regularizer/SquareSquare:dense_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	s
"dense_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_120/kernel/Regularizer/SumSum'dense_120/kernel/Regularizer/Square:y:0+dense_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#< 
 dense_120/kernel/Regularizer/mulMul+dense_120/kernel/Regularizer/mul/x:output:0)dense_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
2dense_121/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_121_1084962*
_output_shapes

:*
dtype0
#dense_121/kernel/Regularizer/SquareSquare:dense_121/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_121/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_121/kernel/Regularizer/SumSum'dense_121/kernel/Regularizer/Square:y:0+dense_121/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_121/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#< 
 dense_121/kernel/Regularizer/mulMul+dense_121/kernel/Regularizer/mul/x:output:0)dense_121/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
IdentityIdentity*dense_121/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿø
NoOpNoOp"^dense_120/StatefulPartitionedCall3^dense_120/kernel/Regularizer/Square/ReadVariableOp"^dense_121/StatefulPartitionedCall3^dense_121/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : : : 2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall2h
2dense_120/kernel/Regularizer/Square/ReadVariableOp2dense_120/kernel/Regularizer/Square/ReadVariableOp2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2h
2dense_121/kernel/Regularizer/Square/ReadVariableOp2dense_121/kernel/Regularizer/Square/ReadVariableOp:X T
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
)
_user_specified_namedense_120_input
¢
Ò
/__inference_sequential_60_layer_call_fn_1085064

inputs
unknown:	
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_60_layer_call_and_return_conditional_losses_1084858o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs

Ñ
%__inference_signature_wrapper_1085039
dense_120_input
unknown:	
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCalldense_120_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_1084792o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
)
_user_specified_namedense_120_input
Ê
´
__inference_loss_fn_0_1085200M
;dense_120_kernel_regularizer_square_readvariableop_resource:	
identity¢2dense_120/kernel/Regularizer/Square/ReadVariableOp®
2dense_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_120_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:	*
dtype0
#dense_120/kernel/Regularizer/SquareSquare:dense_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	s
"dense_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_120/kernel/Regularizer/SumSum'dense_120/kernel/Regularizer/Square:y:0+dense_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#< 
 dense_120/kernel/Regularizer/mulMul+dense_120/kernel/Regularizer/mul/x:output:0)dense_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$dense_120/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^dense_120/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_120/kernel/Regularizer/Square/ReadVariableOp2dense_120/kernel/Regularizer/Square/ReadVariableOp
ý$
Ç
J__inference_sequential_60_layer_call_and_return_conditional_losses_1085137

inputs:
(dense_120_matmul_readvariableop_resource:	7
)dense_120_biasadd_readvariableop_resource::
(dense_121_matmul_readvariableop_resource:7
)dense_121_biasadd_readvariableop_resource:
identity¢ dense_120/BiasAdd/ReadVariableOp¢dense_120/MatMul/ReadVariableOp¢2dense_120/kernel/Regularizer/Square/ReadVariableOp¢ dense_121/BiasAdd/ReadVariableOp¢dense_121/MatMul/ReadVariableOp¢2dense_121/kernel/Regularizer/Square/ReadVariableOp
dense_120/MatMul/ReadVariableOpReadVariableOp(dense_120_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0}
dense_120/MatMulMatMulinputs'dense_120/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_120/BiasAdd/ReadVariableOpReadVariableOp)dense_120_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_120/BiasAddBiasAdddense_120/MatMul:product:0(dense_120/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_120/TanhTanhdense_120/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_121/MatMul/ReadVariableOpReadVariableOp(dense_121_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_121/MatMulMatMuldense_120/Tanh:y:0'dense_121/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_121/BiasAdd/ReadVariableOpReadVariableOp)dense_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_121/BiasAddBiasAdddense_121/MatMul:product:0(dense_121/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_121/ReluReludense_121/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2dense_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_120_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0
#dense_120/kernel/Regularizer/SquareSquare:dense_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	s
"dense_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_120/kernel/Regularizer/SumSum'dense_120/kernel/Regularizer/Square:y:0+dense_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#< 
 dense_120/kernel/Regularizer/mulMul+dense_120/kernel/Regularizer/mul/x:output:0)dense_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
2dense_121/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_121_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
#dense_121/kernel/Regularizer/SquareSquare:dense_121/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_121/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_121/kernel/Regularizer/SumSum'dense_121/kernel/Regularizer/Square:y:0+dense_121/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_121/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#< 
 dense_121/kernel/Regularizer/mulMul+dense_121/kernel/Regularizer/mul/x:output:0)dense_121/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: k
IdentityIdentitydense_121/Relu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp!^dense_120/BiasAdd/ReadVariableOp ^dense_120/MatMul/ReadVariableOp3^dense_120/kernel/Regularizer/Square/ReadVariableOp!^dense_121/BiasAdd/ReadVariableOp ^dense_121/MatMul/ReadVariableOp3^dense_121/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : : : 2D
 dense_120/BiasAdd/ReadVariableOp dense_120/BiasAdd/ReadVariableOp2B
dense_120/MatMul/ReadVariableOpdense_120/MatMul/ReadVariableOp2h
2dense_120/kernel/Regularizer/Square/ReadVariableOp2dense_120/kernel/Regularizer/Square/ReadVariableOp2D
 dense_121/BiasAdd/ReadVariableOp dense_121/BiasAdd/ReadVariableOp2B
dense_121/MatMul/ReadVariableOpdense_121/MatMul/ReadVariableOp2h
2dense_121/kernel/Regularizer/Square/ReadVariableOp2dense_121/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
½
¬
F__inference_dense_121_layer_call_and_return_conditional_losses_1085189

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢2dense_121/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2dense_121/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0
#dense_121/kernel/Regularizer/SquareSquare:dense_121/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_121/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_121/kernel/Regularizer/SumSum'dense_121/kernel/Regularizer/Square:y:0+dense_121/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_121/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#< 
 dense_121/kernel/Regularizer/mulMul+dense_121/kernel/Regularizer/mul/x:output:0)dense_121/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_121/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_121/kernel/Regularizer/Square/ReadVariableOp2dense_121/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
¬
F__inference_dense_120_layer_call_and_return_conditional_losses_1084816

inputs0
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢2dense_120/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2dense_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0
#dense_120/kernel/Regularizer/SquareSquare:dense_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	s
"dense_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_120/kernel/Regularizer/SumSum'dense_120/kernel/Regularizer/Square:y:0+dense_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#< 
 dense_120/kernel/Regularizer/mulMul+dense_120/kernel/Regularizer/mul/x:output:0)dense_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_120/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_120/kernel/Regularizer/Square/ReadVariableOp2dense_120/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
â
§
J__inference_sequential_60_layer_call_and_return_conditional_losses_1084858

inputs#
dense_120_1084817:	
dense_120_1084819:#
dense_121_1084840:
dense_121_1084842:
identity¢!dense_120/StatefulPartitionedCall¢2dense_120/kernel/Regularizer/Square/ReadVariableOp¢!dense_121/StatefulPartitionedCall¢2dense_121/kernel/Regularizer/Square/ReadVariableOp÷
!dense_120/StatefulPartitionedCallStatefulPartitionedCallinputsdense_120_1084817dense_120_1084819*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_120_layer_call_and_return_conditional_losses_1084816
!dense_121/StatefulPartitionedCallStatefulPartitionedCall*dense_120/StatefulPartitionedCall:output:0dense_121_1084840dense_121_1084842*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_121_layer_call_and_return_conditional_losses_1084839
2dense_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_120_1084817*
_output_shapes

:	*
dtype0
#dense_120/kernel/Regularizer/SquareSquare:dense_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	s
"dense_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_120/kernel/Regularizer/SumSum'dense_120/kernel/Regularizer/Square:y:0+dense_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#< 
 dense_120/kernel/Regularizer/mulMul+dense_120/kernel/Regularizer/mul/x:output:0)dense_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
2dense_121/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_121_1084840*
_output_shapes

:*
dtype0
#dense_121/kernel/Regularizer/SquareSquare:dense_121/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_121/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_121/kernel/Regularizer/SumSum'dense_121/kernel/Regularizer/Square:y:0+dense_121/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_121/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#< 
 dense_121/kernel/Regularizer/mulMul+dense_121/kernel/Regularizer/mul/x:output:0)dense_121/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
IdentityIdentity*dense_121/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿø
NoOpNoOp"^dense_120/StatefulPartitionedCall3^dense_120/kernel/Regularizer/Square/ReadVariableOp"^dense_121/StatefulPartitionedCall3^dense_121/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : : : 2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall2h
2dense_120/kernel/Regularizer/Square/ReadVariableOp2dense_120/kernel/Regularizer/Square/ReadVariableOp2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2h
2dense_121/kernel/Regularizer/Square/ReadVariableOp2dense_121/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
£U
§
#__inference__traced_restore_1085370
file_prefix3
!assignvariableop_dense_120_kernel:	/
!assignvariableop_1_dense_120_bias:5
#assignvariableop_2_dense_121_kernel:/
!assignvariableop_3_dense_121_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: $
assignvariableop_9_total_1: %
assignvariableop_10_count_1: #
assignvariableop_11_total: #
assignvariableop_12_count: =
+assignvariableop_13_adam_dense_120_kernel_m:	7
)assignvariableop_14_adam_dense_120_bias_m:=
+assignvariableop_15_adam_dense_121_kernel_m:7
)assignvariableop_16_adam_dense_121_bias_m:=
+assignvariableop_17_adam_dense_120_kernel_v:	7
)assignvariableop_18_adam_dense_120_bias_v:=
+assignvariableop_19_adam_dense_121_kernel_v:7
)assignvariableop_20_adam_dense_121_bias_v:
identity_22¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9¾
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ä

valueÚ
B×
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_dense_120_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_120_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_121_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_121_biasIdentity_3:output:0"/device:CPU:0*
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
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_total_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_count_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp+assignvariableop_13_adam_dense_120_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_dense_120_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp+assignvariableop_15_adam_dense_121_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_121_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_dense_120_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_120_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_dense_121_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_121_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202(
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

®
"__inference__wrapped_model_1084792
dense_120_inputH
6sequential_60_dense_120_matmul_readvariableop_resource:	E
7sequential_60_dense_120_biasadd_readvariableop_resource:H
6sequential_60_dense_121_matmul_readvariableop_resource:E
7sequential_60_dense_121_biasadd_readvariableop_resource:
identity¢.sequential_60/dense_120/BiasAdd/ReadVariableOp¢-sequential_60/dense_120/MatMul/ReadVariableOp¢.sequential_60/dense_121/BiasAdd/ReadVariableOp¢-sequential_60/dense_121/MatMul/ReadVariableOp¤
-sequential_60/dense_120/MatMul/ReadVariableOpReadVariableOp6sequential_60_dense_120_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0¢
sequential_60/dense_120/MatMulMatMuldense_120_input5sequential_60/dense_120/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
.sequential_60/dense_120/BiasAdd/ReadVariableOpReadVariableOp7sequential_60_dense_120_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¾
sequential_60/dense_120/BiasAddBiasAdd(sequential_60/dense_120/MatMul:product:06sequential_60/dense_120/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_60/dense_120/TanhTanh(sequential_60/dense_120/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
-sequential_60/dense_121/MatMul/ReadVariableOpReadVariableOp6sequential_60_dense_121_matmul_readvariableop_resource*
_output_shapes

:*
dtype0³
sequential_60/dense_121/MatMulMatMul sequential_60/dense_120/Tanh:y:05sequential_60/dense_121/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
.sequential_60/dense_121/BiasAdd/ReadVariableOpReadVariableOp7sequential_60_dense_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¾
sequential_60/dense_121/BiasAddBiasAdd(sequential_60/dense_121/MatMul:product:06sequential_60/dense_121/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_60/dense_121/ReluRelu(sequential_60/dense_121/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
IdentityIdentity*sequential_60/dense_121/Relu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp/^sequential_60/dense_120/BiasAdd/ReadVariableOp.^sequential_60/dense_120/MatMul/ReadVariableOp/^sequential_60/dense_121/BiasAdd/ReadVariableOp.^sequential_60/dense_121/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : : : 2`
.sequential_60/dense_120/BiasAdd/ReadVariableOp.sequential_60/dense_120/BiasAdd/ReadVariableOp2^
-sequential_60/dense_120/MatMul/ReadVariableOp-sequential_60/dense_120/MatMul/ReadVariableOp2`
.sequential_60/dense_121/BiasAdd/ReadVariableOp.sequential_60/dense_121/BiasAdd/ReadVariableOp2^
-sequential_60/dense_121/MatMul/ReadVariableOp-sequential_60/dense_121/MatMul/ReadVariableOp:X T
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
)
_user_specified_namedense_120_input
Æ

+__inference_dense_121_layer_call_fn_1085172

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_121_layer_call_and_return_conditional_losses_1084839o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
¬
F__inference_dense_121_layer_call_and_return_conditional_losses_1084839

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢2dense_121/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2dense_121/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0
#dense_121/kernel/Regularizer/SquareSquare:dense_121/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_121/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_121/kernel/Regularizer/SumSum'dense_121/kernel/Regularizer/Square:y:0+dense_121/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_121/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#< 
 dense_121/kernel/Regularizer/mulMul+dense_121/kernel/Regularizer/mul/x:output:0)dense_121/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_121/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_121/kernel/Regularizer/Square/ReadVariableOp2dense_121/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
Û
/__inference_sequential_60_layer_call_fn_1084954
dense_120_input
unknown:	
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_120_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_60_layer_call_and_return_conditional_losses_1084930o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
)
_user_specified_namedense_120_input
½
Û
/__inference_sequential_60_layer_call_fn_1084869
dense_120_input
unknown:	
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldense_120_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_60_layer_call_and_return_conditional_losses_1084858o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
)
_user_specified_namedense_120_input
â
§
J__inference_sequential_60_layer_call_and_return_conditional_losses_1084930

inputs#
dense_120_1084907:	
dense_120_1084909:#
dense_121_1084912:
dense_121_1084914:
identity¢!dense_120/StatefulPartitionedCall¢2dense_120/kernel/Regularizer/Square/ReadVariableOp¢!dense_121/StatefulPartitionedCall¢2dense_121/kernel/Regularizer/Square/ReadVariableOp÷
!dense_120/StatefulPartitionedCallStatefulPartitionedCallinputsdense_120_1084907dense_120_1084909*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_120_layer_call_and_return_conditional_losses_1084816
!dense_121/StatefulPartitionedCallStatefulPartitionedCall*dense_120/StatefulPartitionedCall:output:0dense_121_1084912dense_121_1084914*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_121_layer_call_and_return_conditional_losses_1084839
2dense_120/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_120_1084907*
_output_shapes

:	*
dtype0
#dense_120/kernel/Regularizer/SquareSquare:dense_120/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:	s
"dense_120/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_120/kernel/Regularizer/SumSum'dense_120/kernel/Regularizer/Square:y:0+dense_120/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_120/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#< 
 dense_120/kernel/Regularizer/mulMul+dense_120/kernel/Regularizer/mul/x:output:0)dense_120/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 
2dense_121/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_121_1084912*
_output_shapes

:*
dtype0
#dense_121/kernel/Regularizer/SquareSquare:dense_121/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_121/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_121/kernel/Regularizer/SumSum'dense_121/kernel/Regularizer/Square:y:0+dense_121/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_121/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#< 
 dense_121/kernel/Regularizer/mulMul+dense_121/kernel/Regularizer/mul/x:output:0)dense_121/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
IdentityIdentity*dense_121/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿø
NoOpNoOp"^dense_120/StatefulPartitionedCall3^dense_120/kernel/Regularizer/Square/ReadVariableOp"^dense_121/StatefulPartitionedCall3^dense_121/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : : : 2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall2h
2dense_120/kernel/Regularizer/Square/ReadVariableOp2dense_120/kernel/Regularizer/Square/ReadVariableOp2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2h
2dense_121/kernel/Regularizer/Square/ReadVariableOp2dense_121/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
¢
Ò
/__inference_sequential_60_layer_call_fn_1085077

inputs
unknown:	
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_60_layer_call_and_return_conditional_losses_1084930o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
Æ

+__inference_dense_120_layer_call_fn_1085146

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_120_layer_call_and_return_conditional_losses_1084816o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
Ê
´
__inference_loss_fn_1_1085211M
;dense_121_kernel_regularizer_square_readvariableop_resource:
identity¢2dense_121/kernel/Regularizer/Square/ReadVariableOp®
2dense_121/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_121_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:*
dtype0
#dense_121/kernel/Regularizer/SquareSquare:dense_121/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_121/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_121/kernel/Regularizer/SumSum'dense_121/kernel/Regularizer/Square:y:0+dense_121/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_121/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#< 
 dense_121/kernel/Regularizer/mulMul+dense_121/kernel/Regularizer/mul/x:output:0)dense_121/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$dense_121/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^dense_121/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_121/kernel/Regularizer/Square/ReadVariableOp2dense_121/kernel/Regularizer/Square/ReadVariableOp"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¼
serving_default¨
K
dense_120_input8
!serving_default_dense_120_input:0ÿÿÿÿÿÿÿÿÿ	=
	dense_1210
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ûc
´
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_sequential
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Ê
non_trainable_variables

layers
 metrics
!layer_regularization_losses
"layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ò
#trace_0
$trace_1
%trace_2
&trace_32
/__inference_sequential_60_layer_call_fn_1084869
/__inference_sequential_60_layer_call_fn_1085064
/__inference_sequential_60_layer_call_fn_1085077
/__inference_sequential_60_layer_call_fn_1084954À
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
 z#trace_0z$trace_1z%trace_2z&trace_3
Þ
'trace_0
(trace_1
)trace_2
*trace_32ó
J__inference_sequential_60_layer_call_and_return_conditional_losses_1085107
J__inference_sequential_60_layer_call_and_return_conditional_losses_1085137
J__inference_sequential_60_layer_call_and_return_conditional_losses_1084980
J__inference_sequential_60_layer_call_and_return_conditional_losses_1085006À
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
 z'trace_0z(trace_1z)trace_2z*trace_3
ÕBÒ
"__inference__wrapped_model_1084792dense_120_input"
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

+iter

,beta_1

-beta_2
	.decay
/learning_ratemLmMmNmOvPvQvRvS"
	optimizer
,
0serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ï
6trace_02Ò
+__inference_dense_120_layer_call_fn_1085146¢
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
 z6trace_0

7trace_02í
F__inference_dense_120_layer_call_and_return_conditional_losses_1085163¢
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
 z7trace_0
": 	2dense_120/kernel
:2dense_120/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ï
=trace_02Ò
+__inference_dense_121_layer_call_fn_1085172¢
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
 z=trace_0

>trace_02í
F__inference_dense_121_layer_call_and_return_conditional_losses_1085189¢
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
 z>trace_0
": 2dense_121/kernel
:2dense_121/bias
Î
?trace_02±
__inference_loss_fn_0_1085200
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ z?trace_0
Î
@trace_02±
__inference_loss_fn_1_1085211
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ z@trace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
/__inference_sequential_60_layer_call_fn_1084869dense_120_input"À
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
Bþ
/__inference_sequential_60_layer_call_fn_1085064inputs"À
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
Bþ
/__inference_sequential_60_layer_call_fn_1085077inputs"À
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
B
/__inference_sequential_60_layer_call_fn_1084954dense_120_input"À
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
B
J__inference_sequential_60_layer_call_and_return_conditional_losses_1085107inputs"À
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
B
J__inference_sequential_60_layer_call_and_return_conditional_losses_1085137inputs"À
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
¥B¢
J__inference_sequential_60_layer_call_and_return_conditional_losses_1084980dense_120_input"À
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
¥B¢
J__inference_sequential_60_layer_call_and_return_conditional_losses_1085006dense_120_input"À
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÔBÑ
%__inference_signature_wrapper_1085039dense_120_input"
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
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
ßBÜ
+__inference_dense_120_layer_call_fn_1085146inputs"¢
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
úB÷
F__inference_dense_120_layer_call_and_return_conditional_losses_1085163inputs"¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
ßBÜ
+__inference_dense_121_layer_call_fn_1085172inputs"¢
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
úB÷
F__inference_dense_121_layer_call_and_return_conditional_losses_1085189inputs"¢
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
´B±
__inference_loss_fn_0_1085200"
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
´B±
__inference_loss_fn_1_1085211"
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
N
C	variables
D	keras_api
	Etotal
	Fcount"
_tf_keras_metric
^
G	variables
H	keras_api
	Itotal
	Jcount
K
_fn_kwargs"
_tf_keras_metric
.
E0
F1"
trackable_list_wrapper
-
C	variables"
_generic_user_object
:  (2total
:  (2count
.
I0
J1"
trackable_list_wrapper
-
G	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
':%	2Adam/dense_120/kernel/m
!:2Adam/dense_120/bias/m
':%2Adam/dense_121/kernel/m
!:2Adam/dense_121/bias/m
':%	2Adam/dense_120/kernel/v
!:2Adam/dense_120/bias/v
':%2Adam/dense_121/kernel/v
!:2Adam/dense_121/bias/v
"__inference__wrapped_model_1084792w8¢5
.¢+
)&
dense_120_inputÿÿÿÿÿÿÿÿÿ	
ª "5ª2
0
	dense_121# 
	dense_121ÿÿÿÿÿÿÿÿÿ¦
F__inference_dense_120_layer_call_and_return_conditional_losses_1085163\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dense_120_layer_call_fn_1085146O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ¦
F__inference_dense_121_layer_call_and_return_conditional_losses_1085189\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dense_121_layer_call_fn_1085172O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ<
__inference_loss_fn_0_1085200¢

¢ 
ª " <
__inference_loss_fn_1_1085211¢

¢ 
ª " ½
J__inference_sequential_60_layer_call_and_return_conditional_losses_1084980o@¢=
6¢3
)&
dense_120_inputÿÿÿÿÿÿÿÿÿ	
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ½
J__inference_sequential_60_layer_call_and_return_conditional_losses_1085006o@¢=
6¢3
)&
dense_120_inputÿÿÿÿÿÿÿÿÿ	
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
J__inference_sequential_60_layer_call_and_return_conditional_losses_1085107f7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
J__inference_sequential_60_layer_call_and_return_conditional_losses_1085137f7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_sequential_60_layer_call_fn_1084869b@¢=
6¢3
)&
dense_120_inputÿÿÿÿÿÿÿÿÿ	
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_60_layer_call_fn_1084954b@¢=
6¢3
)&
dense_120_inputÿÿÿÿÿÿÿÿÿ	
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_60_layer_call_fn_1085064Y7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_60_layer_call_fn_1085077Y7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "ÿÿÿÿÿÿÿÿÿ´
%__inference_signature_wrapper_1085039K¢H
¢ 
Aª>
<
dense_120_input)&
dense_120_inputÿÿÿÿÿÿÿÿÿ	"5ª2
0
	dense_121# 
	dense_121ÿÿÿÿÿÿÿÿÿ
эИ
гў
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
└
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
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
√
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
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.9.22v2.9.1-132-g18960c44ad38зо
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
Ж
conv2d_transpose_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_7/bias

+conv2d_transpose_7/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_7/bias*
_output_shapes
:*
dtype0
Ч
conv2d_transpose_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:yА**
shared_nameconv2d_transpose_7/kernel
Р
-conv2d_transpose_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_7/kernel*'
_output_shapes
:yА*
dtype0
е
&batch_normalization_11/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&batch_normalization_11/moving_variance
Ю
:batch_normalization_11/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_11/moving_variance*
_output_shapes	
:А*
dtype0
Э
"batch_normalization_11/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"batch_normalization_11/moving_mean
Ц
6batch_normalization_11/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_11/moving_mean*
_output_shapes	
:А*
dtype0
П
batch_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_11/beta
И
/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_11/beta*
_output_shapes	
:А*
dtype0
С
batch_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_namebatch_normalization_11/gamma
К
0batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_11/gamma*
_output_shapes	
:А*
dtype0
З
conv2d_transpose_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameconv2d_transpose_6/bias
А
+conv2d_transpose_6/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_6/bias*
_output_shapes	
:А*
dtype0
Ш
conv2d_transpose_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА**
shared_nameconv2d_transpose_6/kernel
С
-conv2d_transpose_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_6/kernel*(
_output_shapes
:АА*
dtype0
е
&batch_normalization_10/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&batch_normalization_10/moving_variance
Ю
:batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*
_output_shapes	
:А*
dtype0
Э
"batch_normalization_10/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"batch_normalization_10/moving_mean
Ц
6batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
_output_shapes	
:А*
dtype0
П
batch_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_10/beta
И
/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_10/beta*
_output_shapes	
:А*
dtype0
С
batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_namebatch_normalization_10/gamma
К
0batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_10/gamma*
_output_shapes	
:А*
dtype0
s
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_6/bias
l
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes	
:А*
dtype0
Д
conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА* 
shared_nameconv2d_6/kernel
}
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*(
_output_shapes
:АА*
dtype0
г
%batch_normalization_9/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*6
shared_name'%batch_normalization_9/moving_variance
Ь
9batch_normalization_9/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_9/moving_variance*
_output_shapes	
:А*
dtype0
Ы
!batch_normalization_9/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*2
shared_name#!batch_normalization_9/moving_mean
Ф
5batch_normalization_9/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_9/moving_mean*
_output_shapes	
:А*
dtype0
Н
batch_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_namebatch_normalization_9/beta
Ж
.batch_normalization_9/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_9/beta*
_output_shapes	
:А*
dtype0
П
batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_9/gamma
И
/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_9/gamma*
_output_shapes	
:А*
dtype0
y
first_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*!
shared_namefirst_layer/bias
r
$first_layer/bias/Read/ReadVariableOpReadVariableOpfirst_layer/bias*
_output_shapes	
:А*
dtype0
К
first_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ЕА*#
shared_namefirst_layer/kernel
Г
&first_layer/kernel/Read/ReadVariableOpReadVariableOpfirst_layer/kernel*(
_output_shapes
:ЕА*
dtype0

NoOpNoOp
ИS
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*├R
value╣RB╢R BпR
Т
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
╚
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
е
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses
$_random_generator* 
╒
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses
+axis
	,gamma
-beta
.moving_mean
/moving_variance*
╚
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias
 8_jit_compiled_convolution_op*
е
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses
?_random_generator* 
╒
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
Faxis
	Ggamma
Hbeta
Imoving_mean
Jmoving_variance*
╚
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias
 S_jit_compiled_convolution_op*
е
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Z_random_generator* 
╒
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
aaxis
	bgamma
cbeta
dmoving_mean
emoving_variance*
╚
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

lkernel
mbias
 n_jit_compiled_convolution_op*
О
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses* 
Ъ
0
1
,2
-3
.4
/5
66
77
G8
H9
I10
J11
Q12
R13
b14
c15
d16
e17
l18
m19*
j
0
1
,2
-3
64
75
G6
H7
Q8
R9
b10
c11
l12
m13*
* 
░
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ztrace_0
{trace_1
|trace_2
}trace_3* 
8
~trace_0
trace_1
Аtrace_2
Бtrace_3* 
* 
* 

Вserving_default* 

0
1*

0
1*
* 
Ш
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Иtrace_0* 

Йtrace_0* 
b\
VARIABLE_VALUEfirst_layer/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEfirst_layer/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 

Пtrace_0
Рtrace_1* 

Сtrace_0
Тtrace_1* 
* 
 
,0
-1
.2
/3*

,0
-1*
* 
Ш
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*

Шtrace_0
Щtrace_1* 

Ъtrace_0
Ыtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_9/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_9/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_9/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_9/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

60
71*

60
71*
* 
Ш
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

бtrace_0* 

вtrace_0* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses* 

иtrace_0
йtrace_1* 

кtrace_0
лtrace_1* 
* 
 
G0
H1
I2
J3*

G0
H1*
* 
Ш
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
░layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*

▒trace_0
▓trace_1* 

│trace_0
┤trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_10/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_10/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_10/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_10/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

Q0
R1*

Q0
R1*
* 
Ш
╡non_trainable_variables
╢layers
╖metrics
 ╕layer_regularization_losses
╣layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

║trace_0* 

╗trace_0* 
ic
VARIABLE_VALUEconv2d_transpose_6/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEconv2d_transpose_6/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses* 

┴trace_0
┬trace_1* 

├trace_0
─trace_1* 
* 
 
b0
c1
d2
e3*

b0
c1*
* 
Ш
┼non_trainable_variables
╞layers
╟metrics
 ╚layer_regularization_losses
╔layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*

╩trace_0
╦trace_1* 

╠trace_0
═trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_11/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_11/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_11/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_11/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

l0
m1*

l0
m1*
* 
Ш
╬non_trainable_variables
╧layers
╨metrics
 ╤layer_regularization_losses
╥layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*

╙trace_0* 

╘trace_0* 
ic
VARIABLE_VALUEconv2d_transpose_7/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEconv2d_transpose_7/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
╒non_trainable_variables
╓layers
╫metrics
 ╪layer_regularization_losses
┘layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses* 

┌trace_0* 

█trace_0* 
.
.0
/1
I2
J3
d4
e5*
R
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
10*

▄0*
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
* 
* 
* 
* 

.0
/1*
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
* 

I0
J1*
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
* 

d0
e1*
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
▌	variables
▐	keras_api

▀total

рcount*

▀0
р1*

▌	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
Ц
!serving_default_first_layer_inputPlaceholder*0
_output_shapes
:         Е*
dtype0*%
shape:         Е
й
StatefulPartitionedCallStatefulPartitionedCall!serving_default_first_layer_inputfirst_layer/kernelfirst_layer/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_varianceconv2d_6/kernelconv2d_6/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_varianceconv2d_transpose_6/kernelconv2d_transpose_6/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_varianceconv2d_transpose_7/kernelconv2d_transpose_7/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         y*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference_signature_wrapper_7060
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
┤

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&first_layer/kernel/Read/ReadVariableOp$first_layer/bias/Read/ReadVariableOp/batch_normalization_9/gamma/Read/ReadVariableOp.batch_normalization_9/beta/Read/ReadVariableOp5batch_normalization_9/moving_mean/Read/ReadVariableOp9batch_normalization_9/moving_variance/Read/ReadVariableOp#conv2d_6/kernel/Read/ReadVariableOp!conv2d_6/bias/Read/ReadVariableOp0batch_normalization_10/gamma/Read/ReadVariableOp/batch_normalization_10/beta/Read/ReadVariableOp6batch_normalization_10/moving_mean/Read/ReadVariableOp:batch_normalization_10/moving_variance/Read/ReadVariableOp-conv2d_transpose_6/kernel/Read/ReadVariableOp+conv2d_transpose_6/bias/Read/ReadVariableOp0batch_normalization_11/gamma/Read/ReadVariableOp/batch_normalization_11/beta/Read/ReadVariableOp6batch_normalization_11/moving_mean/Read/ReadVariableOp:batch_normalization_11/moving_variance/Read/ReadVariableOp-conv2d_transpose_7/kernel/Read/ReadVariableOp+conv2d_transpose_7/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*#
Tin
2*
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
GPU 2J 8В *&
f!R
__inference__traced_save_7966
ў
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamefirst_layer/kernelfirst_layer/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_varianceconv2d_6/kernelconv2d_6/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_varianceconv2d_transpose_6/kernelconv2d_transpose_6/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_varianceconv2d_transpose_7/kernelconv2d_transpose_7/biastotalcount*"
Tin
2*
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
GPU 2J 8В *)
f$R"
 __inference__traced_restore_8042╝Р
Х	
╘
5__inference_batch_normalization_10_layer_call_fn_7619

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_6266К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
О
■
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7566

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╣

b
C__inference_dropout_9_layer_call_and_return_conditional_losses_6700

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Х	
╙
4__inference_batch_normalization_9_layer_call_fn_7497

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_6171К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
┴
E
)__inference_dropout_11_layer_call_fn_7707

inputs
identity╕
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_11_layer_call_and_return_conditional_losses_6521i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Х
├
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7791

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
║

c
D__inference_dropout_11_layer_call_and_return_conditional_losses_7729

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╘
_
C__inference_softmax_3_layer_call_and_return_conditional_losses_7877

inputs
identityF
RankConst*
_output_shapes
: *
dtype0*
value	B :H
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :G
Sub/yConst*
_output_shapes
: *
dtype0*
value	B :L
SubSubRank_1:output:0Sub/y:output:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/limitConst*
_output_shapes
: *
dtype0*
value	B :M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :l
rangeRangerange/start:output:0range/limit:output:0range/delta:output:0*
_output_shapes
:O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B :O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :c
range_1Rangerange_1/start:output:0Sub:z:0range_1/delta:output:0*
_output_shapes
: N
concat/values_1PackSub:z:0*
N*
T0*
_output_shapes
:Y
concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : м
concatConcatV2range:output:0concat/values_1:output:0range_1:output:0concat/values_3:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:i
	transpose	Transposeinputsconcat:output:0*
T0*/
_output_shapes
:         y[
SoftmaxSoftmaxtranspose:y:0*
T0*/
_output_shapes
:         yI
Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :P
Sub_1SubRank_1:output:0Sub_1/y:output:0*
T0*
_output_shapes
: O
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :O
range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :t
range_2Rangerange_2/start:output:0range_2/limit:output:0range_2/delta:output:0*
_output_shapes
:O
range_3/startConst*
_output_shapes
: *
dtype0*
value	B :O
range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :e
range_3Rangerange_3/start:output:0	Sub_1:z:0range_3/delta:output:0*
_output_shapes
: R
concat_1/values_1Pack	Sub_1:z:0*
N*
T0*
_output_shapes
:[
concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╢
concat_1ConcatV2range_2:output:0concat_1/values_1:output:0range_3:output:0concat_1/values_3:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:x
transpose_1	TransposeSoftmax:softmax:0concat_1:output:0*
T0*/
_output_shapes
:         y_
IdentityIdentitytranspose_1:y:0*
T0*/
_output_shapes
:         y"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         y:W S
/
_output_shapes
:         y
 
_user_specified_nameinputs
┴
E
)__inference_dropout_10_layer_call_fn_7571

inputs
identity╕
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_10_layer_call_and_return_conditional_losses_6500i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
█
Я
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_6348

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
С
a
(__inference_dropout_9_layer_call_fn_7467

inputs
identityИвStatefulPartitionedCall╟
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_9_layer_call_and_return_conditional_losses_6700x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
·
a
C__inference_dropout_9_layer_call_and_return_conditional_losses_6467

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╞
з
1__inference_conv2d_transpose_7_layer_call_fn_7800

inputs"
unknown:yА
	unknown_0:
identityИвStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_6431Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╦>
я

F__inference_sequential_3_layer_call_and_return_conditional_losses_7013
first_layer_input,
first_layer_6961:ЕА
first_layer_6963:	А)
batch_normalization_9_6967:	А)
batch_normalization_9_6969:	А)
batch_normalization_9_6971:	А)
batch_normalization_9_6973:	А)
conv2d_6_6976:АА
conv2d_6_6978:	А*
batch_normalization_10_6982:	А*
batch_normalization_10_6984:	А*
batch_normalization_10_6986:	А*
batch_normalization_10_6988:	А3
conv2d_transpose_6_6991:АА&
conv2d_transpose_6_6993:	А*
batch_normalization_11_6997:	А*
batch_normalization_11_6999:	А*
batch_normalization_11_7001:	А*
batch_normalization_11_7003:	А2
conv2d_transpose_7_7006:yА%
conv2d_transpose_7_7008:
identityИв.batch_normalization_10/StatefulPartitionedCallв.batch_normalization_11/StatefulPartitionedCallв-batch_normalization_9/StatefulPartitionedCallв conv2d_6/StatefulPartitionedCallв*conv2d_transpose_6/StatefulPartitionedCallв*conv2d_transpose_7/StatefulPartitionedCallв"dropout_10/StatefulPartitionedCallв"dropout_11/StatefulPartitionedCallв!dropout_9/StatefulPartitionedCallв#first_layer/StatefulPartitionedCallК
#first_layer/StatefulPartitionedCallStatefulPartitionedCallfirst_layer_inputfirst_layer_6961first_layer_6963*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_first_layer_layer_call_and_return_conditional_losses_6456ў
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall,first_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_9_layer_call_and_return_conditional_losses_6700Е
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0batch_normalization_9_6967batch_normalization_9_6969batch_normalization_9_6971batch_normalization_9_6973*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_6202г
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0conv2d_6_6976conv2d_6_6978*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_6489Ъ
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0"^dropout_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_10_layer_call_and_return_conditional_losses_6667М
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0batch_normalization_10_6982batch_normalization_10_6984batch_normalization_10_6986batch_normalization_10_6988*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_6266╠
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0conv2d_transpose_6_6991conv2d_transpose_6_6993*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_6319е
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_6/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_11_layer_call_and_return_conditional_losses_6644М
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0batch_normalization_11_6997batch_normalization_11_6999batch_normalization_11_7001batch_normalization_11_7003*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_6379╦
*conv2d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0conv2d_transpose_7_7006conv2d_transpose_7_7008*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         y*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_6431э
softmax_3/PartitionedCallPartitionedCall3conv2d_transpose_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         y* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_softmax_3_layer_call_and_return_conditional_losses_6572y
IdentityIdentity"softmax_3/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         yщ
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall+^conv2d_transpose_6/StatefulPartitionedCall+^conv2d_transpose_7/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall$^first_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:         Е: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2X
*conv2d_transpose_7/StatefulPartitionedCall*conv2d_transpose_7/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall2J
#first_layer/StatefulPartitionedCall#first_layer/StatefulPartitionedCall:c _
0
_output_shapes
:         Е
+
_user_specified_namefirst_layer_input
ч9
Ў	
F__inference_sequential_3_layer_call_and_return_conditional_losses_6575

inputs,
first_layer_6457:ЕА
first_layer_6459:	А)
batch_normalization_9_6469:	А)
batch_normalization_9_6471:	А)
batch_normalization_9_6473:	А)
batch_normalization_9_6475:	А)
conv2d_6_6490:АА
conv2d_6_6492:	А*
batch_normalization_10_6502:	А*
batch_normalization_10_6504:	А*
batch_normalization_10_6506:	А*
batch_normalization_10_6508:	А3
conv2d_transpose_6_6511:АА&
conv2d_transpose_6_6513:	А*
batch_normalization_11_6523:	А*
batch_normalization_11_6525:	А*
batch_normalization_11_6527:	А*
batch_normalization_11_6529:	А2
conv2d_transpose_7_6532:yА%
conv2d_transpose_7_6534:
identityИв.batch_normalization_10/StatefulPartitionedCallв.batch_normalization_11/StatefulPartitionedCallв-batch_normalization_9/StatefulPartitionedCallв conv2d_6/StatefulPartitionedCallв*conv2d_transpose_6/StatefulPartitionedCallв*conv2d_transpose_7/StatefulPartitionedCallв#first_layer/StatefulPartitionedCall 
#first_layer/StatefulPartitionedCallStatefulPartitionedCallinputsfirst_layer_6457first_layer_6459*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_first_layer_layer_call_and_return_conditional_losses_6456ч
dropout_9/PartitionedCallPartitionedCall,first_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_9_layer_call_and_return_conditional_losses_6467 
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0batch_normalization_9_6469batch_normalization_9_6471batch_normalization_9_6473batch_normalization_9_6475*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_6171г
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0conv2d_6_6490conv2d_6_6492*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_6489ц
dropout_10/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_10_layer_call_and_return_conditional_losses_6500Ж
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0batch_normalization_10_6502batch_normalization_10_6504batch_normalization_10_6506batch_normalization_10_6508*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_6235╠
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0conv2d_transpose_6_6511conv2d_transpose_6_6513*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_6319Ё
dropout_11/PartitionedCallPartitionedCall3conv2d_transpose_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_11_layer_call_and_return_conditional_losses_6521Ж
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0batch_normalization_11_6523batch_normalization_11_6525batch_normalization_11_6527batch_normalization_11_6529*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_6348╦
*conv2d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0conv2d_transpose_7_6532conv2d_transpose_7_6534*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         y*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_6431э
softmax_3/PartitionedCallPartitionedCall3conv2d_transpose_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         y* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_softmax_3_layer_call_and_return_conditional_losses_6572y
IdentityIdentity"softmax_3/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         y√
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall+^conv2d_transpose_6/StatefulPartitionedCall+^conv2d_transpose_7/StatefulPartitionedCall$^first_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:         Е: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2X
*conv2d_transpose_7/StatefulPartitionedCall*conv2d_transpose_7/StatefulPartitionedCall2J
#first_layer/StatefulPartitionedCall#first_layer/StatefulPartitionedCall:X T
0
_output_shapes
:         Е
 
_user_specified_nameinputs
к>
ф

F__inference_sequential_3_layer_call_and_return_conditional_losses_6815

inputs,
first_layer_6763:ЕА
first_layer_6765:	А)
batch_normalization_9_6769:	А)
batch_normalization_9_6771:	А)
batch_normalization_9_6773:	А)
batch_normalization_9_6775:	А)
conv2d_6_6778:АА
conv2d_6_6780:	А*
batch_normalization_10_6784:	А*
batch_normalization_10_6786:	А*
batch_normalization_10_6788:	А*
batch_normalization_10_6790:	А3
conv2d_transpose_6_6793:АА&
conv2d_transpose_6_6795:	А*
batch_normalization_11_6799:	А*
batch_normalization_11_6801:	А*
batch_normalization_11_6803:	А*
batch_normalization_11_6805:	А2
conv2d_transpose_7_6808:yА%
conv2d_transpose_7_6810:
identityИв.batch_normalization_10/StatefulPartitionedCallв.batch_normalization_11/StatefulPartitionedCallв-batch_normalization_9/StatefulPartitionedCallв conv2d_6/StatefulPartitionedCallв*conv2d_transpose_6/StatefulPartitionedCallв*conv2d_transpose_7/StatefulPartitionedCallв"dropout_10/StatefulPartitionedCallв"dropout_11/StatefulPartitionedCallв!dropout_9/StatefulPartitionedCallв#first_layer/StatefulPartitionedCall 
#first_layer/StatefulPartitionedCallStatefulPartitionedCallinputsfirst_layer_6763first_layer_6765*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_first_layer_layer_call_and_return_conditional_losses_6456ў
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall,first_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_9_layer_call_and_return_conditional_losses_6700Е
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0batch_normalization_9_6769batch_normalization_9_6771batch_normalization_9_6773batch_normalization_9_6775*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_6202г
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0conv2d_6_6778conv2d_6_6780*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_6489Ъ
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0"^dropout_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_10_layer_call_and_return_conditional_losses_6667М
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0batch_normalization_10_6784batch_normalization_10_6786batch_normalization_10_6788batch_normalization_10_6790*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_6266╠
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0conv2d_transpose_6_6793conv2d_transpose_6_6795*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_6319е
"dropout_11/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_6/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_11_layer_call_and_return_conditional_losses_6644М
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall+dropout_11/StatefulPartitionedCall:output:0batch_normalization_11_6799batch_normalization_11_6801batch_normalization_11_6803batch_normalization_11_6805*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_6379╦
*conv2d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0conv2d_transpose_7_6808conv2d_transpose_7_6810*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         y*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_6431э
softmax_3/PartitionedCallPartitionedCall3conv2d_transpose_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         y* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_softmax_3_layer_call_and_return_conditional_losses_6572y
IdentityIdentity"softmax_3/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         yщ
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall+^conv2d_transpose_6/StatefulPartitionedCall+^conv2d_transpose_7/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall#^dropout_11/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall$^first_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:         Е: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2X
*conv2d_transpose_7/StatefulPartitionedCall*conv2d_transpose_7/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2H
"dropout_11/StatefulPartitionedCall"dropout_11/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall2J
#first_layer/StatefulPartitionedCall#first_layer/StatefulPartitionedCall:X T
0
_output_shapes
:         Е
 
_user_specified_nameinputs
Ж
е
+__inference_sequential_3_layer_call_fn_7150

inputs#
unknown:ЕА
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
	unknown_3:	А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:	А
	unknown_8:	А
	unknown_9:	А

unknown_10:	А&

unknown_11:АА

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А%

unknown_17:yА

unknown_18:
identityИвStatefulPartitionedCall╨
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         y*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_6815w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         y`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:         Е: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         Е
 
_user_specified_nameinputs
█
Я
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7637

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
У	
╙
4__inference_batch_normalization_9_layer_call_fn_7510

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_6202К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
√
b
D__inference_dropout_11_layer_call_and_return_conditional_losses_6521

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
║

c
D__inference_dropout_10_layer_call_and_return_conditional_losses_6667

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
О
■
B__inference_conv2d_6_layer_call_and_return_conditional_losses_6489

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
М
е
+__inference_sequential_3_layer_call_fn_7105

inputs#
unknown:ЕА
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
	unknown_3:	А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:	А
	unknown_8:	А
	unknown_9:	А

unknown_10:	А&

unknown_11:АА

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А%

unknown_17:yА

unknown_18:
identityИвStatefulPartitionedCall╓
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         y*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_6575w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         y`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:         Е: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         Е
 
_user_specified_nameinputs
С
Б
E__inference_first_layer_layer_call_and_return_conditional_losses_6456

inputs:
conv2d_readvariableop_resource:ЕА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ЕА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         Е: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         Е
 
_user_specified_nameinputs
╜6
с

__inference__traced_save_7966
file_prefix1
-savev2_first_layer_kernel_read_readvariableop/
+savev2_first_layer_bias_read_readvariableop:
6savev2_batch_normalization_9_gamma_read_readvariableop9
5savev2_batch_normalization_9_beta_read_readvariableop@
<savev2_batch_normalization_9_moving_mean_read_readvariableopD
@savev2_batch_normalization_9_moving_variance_read_readvariableop.
*savev2_conv2d_6_kernel_read_readvariableop,
(savev2_conv2d_6_bias_read_readvariableop;
7savev2_batch_normalization_10_gamma_read_readvariableop:
6savev2_batch_normalization_10_beta_read_readvariableopA
=savev2_batch_normalization_10_moving_mean_read_readvariableopE
Asavev2_batch_normalization_10_moving_variance_read_readvariableop8
4savev2_conv2d_transpose_6_kernel_read_readvariableop6
2savev2_conv2d_transpose_6_bias_read_readvariableop;
7savev2_batch_normalization_11_gamma_read_readvariableop:
6savev2_batch_normalization_11_beta_read_readvariableopA
=savev2_batch_normalization_11_moving_mean_read_readvariableopE
Asavev2_batch_normalization_11_moving_variance_read_readvariableop8
4savev2_conv2d_transpose_7_kernel_read_readvariableop6
2savev2_conv2d_transpose_7_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: я

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ш

valueО
BЛ
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЫ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B х

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_first_layer_kernel_read_readvariableop+savev2_first_layer_bias_read_readvariableop6savev2_batch_normalization_9_gamma_read_readvariableop5savev2_batch_normalization_9_beta_read_readvariableop<savev2_batch_normalization_9_moving_mean_read_readvariableop@savev2_batch_normalization_9_moving_variance_read_readvariableop*savev2_conv2d_6_kernel_read_readvariableop(savev2_conv2d_6_bias_read_readvariableop7savev2_batch_normalization_10_gamma_read_readvariableop6savev2_batch_normalization_10_beta_read_readvariableop=savev2_batch_normalization_10_moving_mean_read_readvariableopAsavev2_batch_normalization_10_moving_variance_read_readvariableop4savev2_conv2d_transpose_6_kernel_read_readvariableop2savev2_conv2d_transpose_6_bias_read_readvariableop7savev2_batch_normalization_11_gamma_read_readvariableop6savev2_batch_normalization_11_beta_read_readvariableop=savev2_batch_normalization_11_moving_mean_read_readvariableopAsavev2_batch_normalization_11_moving_variance_read_readvariableop4savev2_conv2d_transpose_7_kernel_read_readvariableop2savev2_conv2d_transpose_7_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *%
dtypes
2Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*█
_input_shapes╔
╞: :ЕА:А:А:А:А:А:АА:А:А:А:А:А:АА:А:А:А:А:А:yА:: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:.*
(
_output_shapes
:ЕА:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:!	

_output_shapes	
:А:!


_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:-)
'
_output_shapes
:yА: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
И:
Б

F__inference_sequential_3_layer_call_and_return_conditional_losses_6958
first_layer_input,
first_layer_6906:ЕА
first_layer_6908:	А)
batch_normalization_9_6912:	А)
batch_normalization_9_6914:	А)
batch_normalization_9_6916:	А)
batch_normalization_9_6918:	А)
conv2d_6_6921:АА
conv2d_6_6923:	А*
batch_normalization_10_6927:	А*
batch_normalization_10_6929:	А*
batch_normalization_10_6931:	А*
batch_normalization_10_6933:	А3
conv2d_transpose_6_6936:АА&
conv2d_transpose_6_6938:	А*
batch_normalization_11_6942:	А*
batch_normalization_11_6944:	А*
batch_normalization_11_6946:	А*
batch_normalization_11_6948:	А2
conv2d_transpose_7_6951:yА%
conv2d_transpose_7_6953:
identityИв.batch_normalization_10/StatefulPartitionedCallв.batch_normalization_11/StatefulPartitionedCallв-batch_normalization_9/StatefulPartitionedCallв conv2d_6/StatefulPartitionedCallв*conv2d_transpose_6/StatefulPartitionedCallв*conv2d_transpose_7/StatefulPartitionedCallв#first_layer/StatefulPartitionedCallК
#first_layer/StatefulPartitionedCallStatefulPartitionedCallfirst_layer_inputfirst_layer_6906first_layer_6908*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_first_layer_layer_call_and_return_conditional_losses_6456ч
dropout_9/PartitionedCallPartitionedCall,first_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_9_layer_call_and_return_conditional_losses_6467 
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0batch_normalization_9_6912batch_normalization_9_6914batch_normalization_9_6916batch_normalization_9_6918*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_6171г
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0conv2d_6_6921conv2d_6_6923*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_6489ц
dropout_10/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_10_layer_call_and_return_conditional_losses_6500Ж
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0batch_normalization_10_6927batch_normalization_10_6929batch_normalization_10_6931batch_normalization_10_6933*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_6235╠
*conv2d_transpose_6/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0conv2d_transpose_6_6936conv2d_transpose_6_6938*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_6319Ё
dropout_11/PartitionedCallPartitionedCall3conv2d_transpose_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_11_layer_call_and_return_conditional_losses_6521Ж
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall#dropout_11/PartitionedCall:output:0batch_normalization_11_6942batch_normalization_11_6944batch_normalization_11_6946batch_normalization_11_6948*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_6348╦
*conv2d_transpose_7/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0conv2d_transpose_7_6951conv2d_transpose_7_6953*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         y*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_6431э
softmax_3/PartitionedCallPartitionedCall3conv2d_transpose_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         y* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_softmax_3_layer_call_and_return_conditional_losses_6572y
IdentityIdentity"softmax_3/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         y√
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall+^conv2d_transpose_6/StatefulPartitionedCall+^conv2d_transpose_7/StatefulPartitionedCall$^first_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:         Е: : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2X
*conv2d_transpose_6/StatefulPartitionedCall*conv2d_transpose_6/StatefulPartitionedCall2X
*conv2d_transpose_7/StatefulPartitionedCall*conv2d_transpose_7/StatefulPartitionedCall2J
#first_layer/StatefulPartitionedCall#first_layer/StatefulPartitionedCall:c _
0
_output_shapes
:         Е
+
_user_specified_namefirst_layer_input
╘
_
C__inference_softmax_3_layer_call_and_return_conditional_losses_6572

inputs
identityF
RankConst*
_output_shapes
: *
dtype0*
value	B :H
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :G
Sub/yConst*
_output_shapes
: *
dtype0*
value	B :L
SubSubRank_1:output:0Sub/y:output:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/limitConst*
_output_shapes
: *
dtype0*
value	B :M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :l
rangeRangerange/start:output:0range/limit:output:0range/delta:output:0*
_output_shapes
:O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B :O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :c
range_1Rangerange_1/start:output:0Sub:z:0range_1/delta:output:0*
_output_shapes
: N
concat/values_1PackSub:z:0*
N*
T0*
_output_shapes
:Y
concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : м
concatConcatV2range:output:0concat/values_1:output:0range_1:output:0concat/values_3:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:i
	transpose	Transposeinputsconcat:output:0*
T0*/
_output_shapes
:         y[
SoftmaxSoftmaxtranspose:y:0*
T0*/
_output_shapes
:         yI
Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :P
Sub_1SubRank_1:output:0Sub_1/y:output:0*
T0*
_output_shapes
: O
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :O
range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :t
range_2Rangerange_2/start:output:0range_2/limit:output:0range_2/delta:output:0*
_output_shapes
:O
range_3/startConst*
_output_shapes
: *
dtype0*
value	B :O
range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :e
range_3Rangerange_3/start:output:0	Sub_1:z:0range_3/delta:output:0*
_output_shapes
: R
concat_1/values_1Pack	Sub_1:z:0*
N*
T0*
_output_shapes
:[
concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╢
concat_1ConcatV2range_2:output:0concat_1/values_1:output:0range_3:output:0concat_1/values_3:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:x
transpose_1	TransposeSoftmax:softmax:0concat_1:output:0*
T0*/
_output_shapes
:         y_
IdentityIdentitytranspose_1:y:0*
T0*/
_output_shapes
:         y"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         y:W S
/
_output_shapes
:         y
 
_user_specified_nameinputs
√
b
D__inference_dropout_11_layer_call_and_return_conditional_losses_7717

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
█
Я
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7773

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Х
├
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_6379

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
√
b
D__inference_dropout_10_layer_call_and_return_conditional_losses_7581

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╩
й
1__inference_conv2d_transpose_6_layer_call_fn_7664

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_6319К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
є
в
*__inference_first_layer_layer_call_fn_7446

inputs#
unknown:ЕА
	unknown_0:	А
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_first_layer_layer_call_and_return_conditional_losses_6456x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         Е: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         Е
 
_user_specified_nameinputs
╣

b
C__inference_dropout_9_layer_call_and_return_conditional_losses_7484

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
b
)__inference_dropout_10_layer_call_fn_7576

inputs
identityИвStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_10_layer_call_and_return_conditional_losses_6667x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Г#
Ъ
L__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_7837

inputsC
(conv2d_transpose_readvariableop_resource:yА-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B : F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :xL
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskС
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:yА*
dtype0▌
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
·#
Ь
L__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_6319

inputsD
(conv2d_transpose_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B : F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B : L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аy
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskТ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0▐
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,                           А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ъ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,                           Аk
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,                           А|
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,                           АБ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
┌
Ю
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_6171

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
з
░
+__inference_sequential_3_layer_call_fn_6903
first_layer_input#
unknown:ЕА
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
	unknown_3:	А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:	А
	unknown_8:	А
	unknown_9:	А

unknown_10:	А&

unknown_11:АА

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А%

unknown_17:yА

unknown_18:
identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallfirst_layer_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         y*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_6815w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         y`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:         Е: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
0
_output_shapes
:         Е
+
_user_specified_namefirst_layer_input
Ф
┬
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7546

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Ф
┬
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_6202

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
·
a
C__inference_dropout_9_layer_call_and_return_conditional_losses_7472

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
b
)__inference_dropout_11_layer_call_fn_7712

inputs
identityИвStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_11_layer_call_and_return_conditional_losses_6644x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
║

c
D__inference_dropout_10_layer_call_and_return_conditional_losses_7593

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
█
Я
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_6235

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
н
░
+__inference_sequential_3_layer_call_fn_6618
first_layer_input#
unknown:ЕА
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
	unknown_3:	А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:	А
	unknown_8:	А
	unknown_9:	А

unknown_10:	А&

unknown_11:АА

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А%

unknown_17:yА

unknown_18:
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallfirst_layer_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         y*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_sequential_3_layer_call_and_return_conditional_losses_6575w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         y`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:         Е: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
0
_output_shapes
:         Е
+
_user_specified_namefirst_layer_input
╜╜
З
__inference__wrapped_model_6149
first_layer_inputS
7sequential_3_first_layer_conv2d_readvariableop_resource:ЕАG
8sequential_3_first_layer_biasadd_readvariableop_resource:	АI
:sequential_3_batch_normalization_9_readvariableop_resource:	АK
<sequential_3_batch_normalization_9_readvariableop_1_resource:	АZ
Ksequential_3_batch_normalization_9_fusedbatchnormv3_readvariableop_resource:	А\
Msequential_3_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource:	АP
4sequential_3_conv2d_6_conv2d_readvariableop_resource:ААD
5sequential_3_conv2d_6_biasadd_readvariableop_resource:	АJ
;sequential_3_batch_normalization_10_readvariableop_resource:	АL
=sequential_3_batch_normalization_10_readvariableop_1_resource:	А[
Lsequential_3_batch_normalization_10_fusedbatchnormv3_readvariableop_resource:	А]
Nsequential_3_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource:	Аd
Hsequential_3_conv2d_transpose_6_conv2d_transpose_readvariableop_resource:ААN
?sequential_3_conv2d_transpose_6_biasadd_readvariableop_resource:	АJ
;sequential_3_batch_normalization_11_readvariableop_resource:	АL
=sequential_3_batch_normalization_11_readvariableop_1_resource:	А[
Lsequential_3_batch_normalization_11_fusedbatchnormv3_readvariableop_resource:	А]
Nsequential_3_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource:	Аc
Hsequential_3_conv2d_transpose_7_conv2d_transpose_readvariableop_resource:yАM
?sequential_3_conv2d_transpose_7_biasadd_readvariableop_resource:
identityИвCsequential_3/batch_normalization_10/FusedBatchNormV3/ReadVariableOpвEsequential_3/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1в2sequential_3/batch_normalization_10/ReadVariableOpв4sequential_3/batch_normalization_10/ReadVariableOp_1вCsequential_3/batch_normalization_11/FusedBatchNormV3/ReadVariableOpвEsequential_3/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1в2sequential_3/batch_normalization_11/ReadVariableOpв4sequential_3/batch_normalization_11/ReadVariableOp_1вBsequential_3/batch_normalization_9/FusedBatchNormV3/ReadVariableOpвDsequential_3/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1в1sequential_3/batch_normalization_9/ReadVariableOpв3sequential_3/batch_normalization_9/ReadVariableOp_1в,sequential_3/conv2d_6/BiasAdd/ReadVariableOpв+sequential_3/conv2d_6/Conv2D/ReadVariableOpв6sequential_3/conv2d_transpose_6/BiasAdd/ReadVariableOpв?sequential_3/conv2d_transpose_6/conv2d_transpose/ReadVariableOpв6sequential_3/conv2d_transpose_7/BiasAdd/ReadVariableOpв?sequential_3/conv2d_transpose_7/conv2d_transpose/ReadVariableOpв/sequential_3/first_layer/BiasAdd/ReadVariableOpв.sequential_3/first_layer/Conv2D/ReadVariableOp░
.sequential_3/first_layer/Conv2D/ReadVariableOpReadVariableOp7sequential_3_first_layer_conv2d_readvariableop_resource*(
_output_shapes
:ЕА*
dtype0╪
sequential_3/first_layer/Conv2DConv2Dfirst_layer_input6sequential_3/first_layer/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
е
/sequential_3/first_layer/BiasAdd/ReadVariableOpReadVariableOp8sequential_3_first_layer_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╔
 sequential_3/first_layer/BiasAddBiasAdd(sequential_3/first_layer/Conv2D:output:07sequential_3/first_layer/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЛ
sequential_3/first_layer/ReluRelu)sequential_3/first_layer/BiasAdd:output:0*
T0*0
_output_shapes
:         АУ
sequential_3/dropout_9/IdentityIdentity+sequential_3/first_layer/Relu:activations:0*
T0*0
_output_shapes
:         Ай
1sequential_3/batch_normalization_9/ReadVariableOpReadVariableOp:sequential_3_batch_normalization_9_readvariableop_resource*
_output_shapes	
:А*
dtype0н
3sequential_3/batch_normalization_9/ReadVariableOp_1ReadVariableOp<sequential_3_batch_normalization_9_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╦
Bsequential_3/batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_3_batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╧
Dsequential_3/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_3_batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0М
3sequential_3/batch_normalization_9/FusedBatchNormV3FusedBatchNormV3(sequential_3/dropout_9/Identity:output:09sequential_3/batch_normalization_9/ReadVariableOp:value:0;sequential_3/batch_normalization_9/ReadVariableOp_1:value:0Jsequential_3/batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_3/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( к
+sequential_3/conv2d_6/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0°
sequential_3/conv2d_6/Conv2DConv2D7sequential_3/batch_normalization_9/FusedBatchNormV3:y:03sequential_3/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Я
,sequential_3/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0└
sequential_3/conv2d_6/BiasAddBiasAdd%sequential_3/conv2d_6/Conv2D:output:04sequential_3/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЕ
sequential_3/conv2d_6/ReluRelu&sequential_3/conv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:         АС
 sequential_3/dropout_10/IdentityIdentity(sequential_3/conv2d_6/Relu:activations:0*
T0*0
_output_shapes
:         Ал
2sequential_3/batch_normalization_10/ReadVariableOpReadVariableOp;sequential_3_batch_normalization_10_readvariableop_resource*
_output_shapes	
:А*
dtype0п
4sequential_3/batch_normalization_10/ReadVariableOp_1ReadVariableOp=sequential_3_batch_normalization_10_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
Csequential_3/batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_3_batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╤
Esequential_3/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_3_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Т
4sequential_3/batch_normalization_10/FusedBatchNormV3FusedBatchNormV3)sequential_3/dropout_10/Identity:output:0:sequential_3/batch_normalization_10/ReadVariableOp:value:0<sequential_3/batch_normalization_10/ReadVariableOp_1:value:0Ksequential_3/batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0Msequential_3/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( Н
%sequential_3/conv2d_transpose_6/ShapeShape8sequential_3/batch_normalization_10/FusedBatchNormV3:y:0*
T0*
_output_shapes
:}
3sequential_3/conv2d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_3/conv2d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_3/conv2d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-sequential_3/conv2d_transpose_6/strided_sliceStridedSlice.sequential_3/conv2d_transpose_6/Shape:output:0<sequential_3/conv2d_transpose_6/strided_slice/stack:output:0>sequential_3/conv2d_transpose_6/strided_slice/stack_1:output:0>sequential_3/conv2d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_3/conv2d_transpose_6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_3/conv2d_transpose_6/stack/2Const*
_output_shapes
: *
dtype0*
value	B :j
'sequential_3/conv2d_transpose_6/stack/3Const*
_output_shapes
: *
dtype0*
value
B :Ай
%sequential_3/conv2d_transpose_6/stackPack6sequential_3/conv2d_transpose_6/strided_slice:output:00sequential_3/conv2d_transpose_6/stack/1:output:00sequential_3/conv2d_transpose_6/stack/2:output:00sequential_3/conv2d_transpose_6/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_3/conv2d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Б
7sequential_3/conv2d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Б
7sequential_3/conv2d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
/sequential_3/conv2d_transpose_6/strided_slice_1StridedSlice.sequential_3/conv2d_transpose_6/stack:output:0>sequential_3/conv2d_transpose_6/strided_slice_1/stack:output:0@sequential_3/conv2d_transpose_6/strided_slice_1/stack_1:output:0@sequential_3/conv2d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╥
?sequential_3/conv2d_transpose_6/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_3_conv2d_transpose_6_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0▐
0sequential_3/conv2d_transpose_6/conv2d_transposeConv2DBackpropInput.sequential_3/conv2d_transpose_6/stack:output:0Gsequential_3/conv2d_transpose_6/conv2d_transpose/ReadVariableOp:value:08sequential_3/batch_normalization_10/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
│
6sequential_3/conv2d_transpose_6/BiasAdd/ReadVariableOpReadVariableOp?sequential_3_conv2d_transpose_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ш
'sequential_3/conv2d_transpose_6/BiasAddBiasAdd9sequential_3/conv2d_transpose_6/conv2d_transpose:output:0>sequential_3/conv2d_transpose_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЩ
$sequential_3/conv2d_transpose_6/ReluRelu0sequential_3/conv2d_transpose_6/BiasAdd:output:0*
T0*0
_output_shapes
:         АЫ
 sequential_3/dropout_11/IdentityIdentity2sequential_3/conv2d_transpose_6/Relu:activations:0*
T0*0
_output_shapes
:         Ал
2sequential_3/batch_normalization_11/ReadVariableOpReadVariableOp;sequential_3_batch_normalization_11_readvariableop_resource*
_output_shapes	
:А*
dtype0п
4sequential_3/batch_normalization_11/ReadVariableOp_1ReadVariableOp=sequential_3_batch_normalization_11_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
Csequential_3/batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_3_batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╤
Esequential_3/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_3_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Т
4sequential_3/batch_normalization_11/FusedBatchNormV3FusedBatchNormV3)sequential_3/dropout_11/Identity:output:0:sequential_3/batch_normalization_11/ReadVariableOp:value:0<sequential_3/batch_normalization_11/ReadVariableOp_1:value:0Ksequential_3/batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0Msequential_3/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( Н
%sequential_3/conv2d_transpose_7/ShapeShape8sequential_3/batch_normalization_11/FusedBatchNormV3:y:0*
T0*
_output_shapes
:}
3sequential_3/conv2d_transpose_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_3/conv2d_transpose_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_3/conv2d_transpose_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-sequential_3/conv2d_transpose_7/strided_sliceStridedSlice.sequential_3/conv2d_transpose_7/Shape:output:0<sequential_3/conv2d_transpose_7/strided_slice/stack:output:0>sequential_3/conv2d_transpose_7/strided_slice/stack_1:output:0>sequential_3/conv2d_transpose_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'sequential_3/conv2d_transpose_7/stack/1Const*
_output_shapes
: *
dtype0*
value	B :i
'sequential_3/conv2d_transpose_7/stack/2Const*
_output_shapes
: *
dtype0*
value	B :yi
'sequential_3/conv2d_transpose_7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :й
%sequential_3/conv2d_transpose_7/stackPack6sequential_3/conv2d_transpose_7/strided_slice:output:00sequential_3/conv2d_transpose_7/stack/1:output:00sequential_3/conv2d_transpose_7/stack/2:output:00sequential_3/conv2d_transpose_7/stack/3:output:0*
N*
T0*
_output_shapes
:
5sequential_3/conv2d_transpose_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Б
7sequential_3/conv2d_transpose_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Б
7sequential_3/conv2d_transpose_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:∙
/sequential_3/conv2d_transpose_7/strided_slice_1StridedSlice.sequential_3/conv2d_transpose_7/stack:output:0>sequential_3/conv2d_transpose_7/strided_slice_1/stack:output:0@sequential_3/conv2d_transpose_7/strided_slice_1/stack_1:output:0@sequential_3/conv2d_transpose_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╤
?sequential_3/conv2d_transpose_7/conv2d_transpose/ReadVariableOpReadVariableOpHsequential_3_conv2d_transpose_7_conv2d_transpose_readvariableop_resource*'
_output_shapes
:yА*
dtype0▌
0sequential_3/conv2d_transpose_7/conv2d_transposeConv2DBackpropInput.sequential_3/conv2d_transpose_7/stack:output:0Gsequential_3/conv2d_transpose_7/conv2d_transpose/ReadVariableOp:value:08sequential_3/batch_normalization_11/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         y*
paddingVALID*
strides
▓
6sequential_3/conv2d_transpose_7/BiasAdd/ReadVariableOpReadVariableOp?sequential_3_conv2d_transpose_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ч
'sequential_3/conv2d_transpose_7/BiasAddBiasAdd9sequential_3/conv2d_transpose_7/conv2d_transpose:output:0>sequential_3/conv2d_transpose_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         y]
sequential_3/softmax_3/RankConst*
_output_shapes
: *
dtype0*
value	B :_
sequential_3/softmax_3/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :^
sequential_3/softmax_3/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :С
sequential_3/softmax_3/SubSub&sequential_3/softmax_3/Rank_1:output:0%sequential_3/softmax_3/Sub/y:output:0*
T0*
_output_shapes
: d
"sequential_3/softmax_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : d
"sequential_3/softmax_3/range/limitConst*
_output_shapes
: *
dtype0*
value	B :d
"sequential_3/softmax_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :╚
sequential_3/softmax_3/rangeRange+sequential_3/softmax_3/range/start:output:0+sequential_3/softmax_3/range/limit:output:0+sequential_3/softmax_3/range/delta:output:0*
_output_shapes
:f
$sequential_3/softmax_3/range_1/startConst*
_output_shapes
: *
dtype0*
value	B :f
$sequential_3/softmax_3/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :┐
sequential_3/softmax_3/range_1Range-sequential_3/softmax_3/range_1/start:output:0sequential_3/softmax_3/Sub:z:0-sequential_3/softmax_3/range_1/delta:output:0*
_output_shapes
: |
&sequential_3/softmax_3/concat/values_1Packsequential_3/softmax_3/Sub:z:0*
N*
T0*
_output_shapes
:p
&sequential_3/softmax_3/concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:d
"sequential_3/softmax_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╢
sequential_3/softmax_3/concatConcatV2%sequential_3/softmax_3/range:output:0/sequential_3/softmax_3/concat/values_1:output:0'sequential_3/softmax_3/range_1:output:0/sequential_3/softmax_3/concat/values_3:output:0+sequential_3/softmax_3/concat/axis:output:0*
N*
T0*
_output_shapes
:┴
 sequential_3/softmax_3/transpose	Transpose0sequential_3/conv2d_transpose_7/BiasAdd:output:0&sequential_3/softmax_3/concat:output:0*
T0*/
_output_shapes
:         yЙ
sequential_3/softmax_3/SoftmaxSoftmax$sequential_3/softmax_3/transpose:y:0*
T0*/
_output_shapes
:         y`
sequential_3/softmax_3/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :Х
sequential_3/softmax_3/Sub_1Sub&sequential_3/softmax_3/Rank_1:output:0'sequential_3/softmax_3/Sub_1/y:output:0*
T0*
_output_shapes
: f
$sequential_3/softmax_3/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : f
$sequential_3/softmax_3/range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :f
$sequential_3/softmax_3/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :╨
sequential_3/softmax_3/range_2Range-sequential_3/softmax_3/range_2/start:output:0-sequential_3/softmax_3/range_2/limit:output:0-sequential_3/softmax_3/range_2/delta:output:0*
_output_shapes
:f
$sequential_3/softmax_3/range_3/startConst*
_output_shapes
: *
dtype0*
value	B :f
$sequential_3/softmax_3/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :┴
sequential_3/softmax_3/range_3Range-sequential_3/softmax_3/range_3/start:output:0 sequential_3/softmax_3/Sub_1:z:0-sequential_3/softmax_3/range_3/delta:output:0*
_output_shapes
: А
(sequential_3/softmax_3/concat_1/values_1Pack sequential_3/softmax_3/Sub_1:z:0*
N*
T0*
_output_shapes
:r
(sequential_3/softmax_3/concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:f
$sequential_3/softmax_3/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : └
sequential_3/softmax_3/concat_1ConcatV2'sequential_3/softmax_3/range_2:output:01sequential_3/softmax_3/concat_1/values_1:output:0'sequential_3/softmax_3/range_3:output:01sequential_3/softmax_3/concat_1/values_3:output:0-sequential_3/softmax_3/concat_1/axis:output:0*
N*
T0*
_output_shapes
:╜
"sequential_3/softmax_3/transpose_1	Transpose(sequential_3/softmax_3/Softmax:softmax:0(sequential_3/softmax_3/concat_1:output:0*
T0*/
_output_shapes
:         y}
IdentityIdentity&sequential_3/softmax_3/transpose_1:y:0^NoOp*
T0*/
_output_shapes
:         yц	
NoOpNoOpD^sequential_3/batch_normalization_10/FusedBatchNormV3/ReadVariableOpF^sequential_3/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_13^sequential_3/batch_normalization_10/ReadVariableOp5^sequential_3/batch_normalization_10/ReadVariableOp_1D^sequential_3/batch_normalization_11/FusedBatchNormV3/ReadVariableOpF^sequential_3/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_13^sequential_3/batch_normalization_11/ReadVariableOp5^sequential_3/batch_normalization_11/ReadVariableOp_1C^sequential_3/batch_normalization_9/FusedBatchNormV3/ReadVariableOpE^sequential_3/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12^sequential_3/batch_normalization_9/ReadVariableOp4^sequential_3/batch_normalization_9/ReadVariableOp_1-^sequential_3/conv2d_6/BiasAdd/ReadVariableOp,^sequential_3/conv2d_6/Conv2D/ReadVariableOp7^sequential_3/conv2d_transpose_6/BiasAdd/ReadVariableOp@^sequential_3/conv2d_transpose_6/conv2d_transpose/ReadVariableOp7^sequential_3/conv2d_transpose_7/BiasAdd/ReadVariableOp@^sequential_3/conv2d_transpose_7/conv2d_transpose/ReadVariableOp0^sequential_3/first_layer/BiasAdd/ReadVariableOp/^sequential_3/first_layer/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:         Е: : : : : : : : : : : : : : : : : : : : 2К
Csequential_3/batch_normalization_10/FusedBatchNormV3/ReadVariableOpCsequential_3/batch_normalization_10/FusedBatchNormV3/ReadVariableOp2О
Esequential_3/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1Esequential_3/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12h
2sequential_3/batch_normalization_10/ReadVariableOp2sequential_3/batch_normalization_10/ReadVariableOp2l
4sequential_3/batch_normalization_10/ReadVariableOp_14sequential_3/batch_normalization_10/ReadVariableOp_12К
Csequential_3/batch_normalization_11/FusedBatchNormV3/ReadVariableOpCsequential_3/batch_normalization_11/FusedBatchNormV3/ReadVariableOp2О
Esequential_3/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1Esequential_3/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12h
2sequential_3/batch_normalization_11/ReadVariableOp2sequential_3/batch_normalization_11/ReadVariableOp2l
4sequential_3/batch_normalization_11/ReadVariableOp_14sequential_3/batch_normalization_11/ReadVariableOp_12И
Bsequential_3/batch_normalization_9/FusedBatchNormV3/ReadVariableOpBsequential_3/batch_normalization_9/FusedBatchNormV3/ReadVariableOp2М
Dsequential_3/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1Dsequential_3/batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12f
1sequential_3/batch_normalization_9/ReadVariableOp1sequential_3/batch_normalization_9/ReadVariableOp2j
3sequential_3/batch_normalization_9/ReadVariableOp_13sequential_3/batch_normalization_9/ReadVariableOp_12\
,sequential_3/conv2d_6/BiasAdd/ReadVariableOp,sequential_3/conv2d_6/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_6/Conv2D/ReadVariableOp+sequential_3/conv2d_6/Conv2D/ReadVariableOp2p
6sequential_3/conv2d_transpose_6/BiasAdd/ReadVariableOp6sequential_3/conv2d_transpose_6/BiasAdd/ReadVariableOp2В
?sequential_3/conv2d_transpose_6/conv2d_transpose/ReadVariableOp?sequential_3/conv2d_transpose_6/conv2d_transpose/ReadVariableOp2p
6sequential_3/conv2d_transpose_7/BiasAdd/ReadVariableOp6sequential_3/conv2d_transpose_7/BiasAdd/ReadVariableOp2В
?sequential_3/conv2d_transpose_7/conv2d_transpose/ReadVariableOp?sequential_3/conv2d_transpose_7/conv2d_transpose/ReadVariableOp2b
/sequential_3/first_layer/BiasAdd/ReadVariableOp/sequential_3/first_layer/BiasAdd/ReadVariableOp2`
.sequential_3/first_layer/Conv2D/ReadVariableOp.sequential_3/first_layer/Conv2D/ReadVariableOp:c _
0
_output_shapes
:         Е
+
_user_specified_namefirst_layer_input
Х
├
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7655

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╗
D
(__inference_softmax_3_layer_call_fn_7842

inputs
identity╢
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         y* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_softmax_3_layer_call_and_return_conditional_losses_6572h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         y"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         y:W S
/
_output_shapes
:         y
 
_user_specified_nameinputs
в╦
П
F__inference_sequential_3_layer_call_and_return_conditional_losses_7437

inputsF
*first_layer_conv2d_readvariableop_resource:ЕА:
+first_layer_biasadd_readvariableop_resource:	А<
-batch_normalization_9_readvariableop_resource:	А>
/batch_normalization_9_readvariableop_1_resource:	АM
>batch_normalization_9_fusedbatchnormv3_readvariableop_resource:	АO
@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource:	АC
'conv2d_6_conv2d_readvariableop_resource:АА7
(conv2d_6_biasadd_readvariableop_resource:	А=
.batch_normalization_10_readvariableop_resource:	А?
0batch_normalization_10_readvariableop_1_resource:	АN
?batch_normalization_10_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource:	АW
;conv2d_transpose_6_conv2d_transpose_readvariableop_resource:ААA
2conv2d_transpose_6_biasadd_readvariableop_resource:	А=
.batch_normalization_11_readvariableop_resource:	А?
0batch_normalization_11_readvariableop_1_resource:	АN
?batch_normalization_11_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource:	АV
;conv2d_transpose_7_conv2d_transpose_readvariableop_resource:yА@
2conv2d_transpose_7_biasadd_readvariableop_resource:
identityИв%batch_normalization_10/AssignNewValueв'batch_normalization_10/AssignNewValue_1в6batch_normalization_10/FusedBatchNormV3/ReadVariableOpв8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_10/ReadVariableOpв'batch_normalization_10/ReadVariableOp_1в%batch_normalization_11/AssignNewValueв'batch_normalization_11/AssignNewValue_1в6batch_normalization_11/FusedBatchNormV3/ReadVariableOpв8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_11/ReadVariableOpв'batch_normalization_11/ReadVariableOp_1в$batch_normalization_9/AssignNewValueв&batch_normalization_9/AssignNewValue_1в5batch_normalization_9/FusedBatchNormV3/ReadVariableOpв7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_9/ReadVariableOpв&batch_normalization_9/ReadVariableOp_1вconv2d_6/BiasAdd/ReadVariableOpвconv2d_6/Conv2D/ReadVariableOpв)conv2d_transpose_6/BiasAdd/ReadVariableOpв2conv2d_transpose_6/conv2d_transpose/ReadVariableOpв)conv2d_transpose_7/BiasAdd/ReadVariableOpв2conv2d_transpose_7/conv2d_transpose/ReadVariableOpв"first_layer/BiasAdd/ReadVariableOpв!first_layer/Conv2D/ReadVariableOpЦ
!first_layer/Conv2D/ReadVariableOpReadVariableOp*first_layer_conv2d_readvariableop_resource*(
_output_shapes
:ЕА*
dtype0│
first_layer/Conv2DConv2Dinputs)first_layer/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Л
"first_layer/BiasAdd/ReadVariableOpReadVariableOp+first_layer_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0в
first_layer/BiasAddBiasAddfirst_layer/Conv2D:output:0*first_layer/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аq
first_layer/ReluRelufirst_layer/BiasAdd:output:0*
T0*0
_output_shapes
:         А\
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Щ
dropout_9/dropout/MulMulfirst_layer/Relu:activations:0 dropout_9/dropout/Const:output:0*
T0*0
_output_shapes
:         Аe
dropout_9/dropout/ShapeShapefirst_layer/Relu:activations:0*
T0*
_output_shapes
:й
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0e
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>═
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АМ
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         АР
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*0
_output_shapes
:         АП
$batch_normalization_9/ReadVariableOpReadVariableOp-batch_normalization_9_readvariableop_resource*
_output_shapes	
:А*
dtype0У
&batch_normalization_9/ReadVariableOp_1ReadVariableOp/batch_normalization_9_readvariableop_1_resource*
_output_shapes	
:А*
dtype0▒
5batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╡
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╠
&batch_normalization_9/FusedBatchNormV3FusedBatchNormV3dropout_9/dropout/Mul_1:z:0,batch_normalization_9/ReadVariableOp:value:0.batch_normalization_9/ReadVariableOp_1:value:0=batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<Ю
$batch_normalization_9/AssignNewValueAssignVariableOp>batch_normalization_9_fusedbatchnormv3_readvariableop_resource3batch_normalization_9/FusedBatchNormV3:batch_mean:06^batch_normalization_9/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(и
&batch_normalization_9/AssignNewValue_1AssignVariableOp@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_9/FusedBatchNormV3:batch_variance:08^batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(Р
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╤
conv2d_6/Conv2DConv2D*batch_normalization_9/FusedBatchNormV3:y:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Е
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аk
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:         А]
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Ш
dropout_10/dropout/MulMulconv2d_6/Relu:activations:0!dropout_10/dropout/Const:output:0*
T0*0
_output_shapes
:         Аc
dropout_10/dropout/ShapeShapeconv2d_6/Relu:activations:0*
T0*
_output_shapes
:л
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0f
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╨
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АО
dropout_10/dropout/CastCast#dropout_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         АУ
dropout_10/dropout/Mul_1Muldropout_10/dropout/Mul:z:0dropout_10/dropout/Cast:y:0*
T0*0
_output_shapes
:         АС
%batch_normalization_10/ReadVariableOpReadVariableOp.batch_normalization_10_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
'batch_normalization_10/ReadVariableOp_1ReadVariableOp0batch_normalization_10_readvariableop_1_resource*
_output_shapes	
:А*
dtype0│
6batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╥
'batch_normalization_10/FusedBatchNormV3FusedBatchNormV3dropout_10/dropout/Mul_1:z:0-batch_normalization_10/ReadVariableOp:value:0/batch_normalization_10/ReadVariableOp_1:value:0>batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<в
%batch_normalization_10/AssignNewValueAssignVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource4batch_normalization_10/FusedBatchNormV3:batch_mean:07^batch_normalization_10/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(м
'batch_normalization_10/AssignNewValue_1AssignVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_10/FusedBatchNormV3:batch_variance:09^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(s
conv2d_transpose_6/ShapeShape+batch_normalization_10/FusedBatchNormV3:y:0*
T0*
_output_shapes
:p
&conv2d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 conv2d_transpose_6/strided_sliceStridedSlice!conv2d_transpose_6/Shape:output:0/conv2d_transpose_6/strided_slice/stack:output:01conv2d_transpose_6/strided_slice/stack_1:output:01conv2d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_6/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_6/stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аш
conv2d_transpose_6/stackPack)conv2d_transpose_6/strided_slice:output:0#conv2d_transpose_6/stack/1:output:0#conv2d_transpose_6/stack/2:output:0#conv2d_transpose_6/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╕
"conv2d_transpose_6/strided_slice_1StridedSlice!conv2d_transpose_6/stack:output:01conv2d_transpose_6/strided_slice_1/stack:output:03conv2d_transpose_6/strided_slice_1/stack_1:output:03conv2d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╕
2conv2d_transpose_6/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_6_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0к
#conv2d_transpose_6/conv2d_transposeConv2DBackpropInput!conv2d_transpose_6/stack:output:0:conv2d_transpose_6/conv2d_transpose/ReadVariableOp:value:0+batch_normalization_10/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Щ
)conv2d_transpose_6/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┴
conv2d_transpose_6/BiasAddBiasAdd,conv2d_transpose_6/conv2d_transpose:output:01conv2d_transpose_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А
conv2d_transpose_6/ReluRelu#conv2d_transpose_6/BiasAdd:output:0*
T0*0
_output_shapes
:         А]
dropout_11/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?в
dropout_11/dropout/MulMul%conv2d_transpose_6/Relu:activations:0!dropout_11/dropout/Const:output:0*
T0*0
_output_shapes
:         Аm
dropout_11/dropout/ShapeShape%conv2d_transpose_6/Relu:activations:0*
T0*
_output_shapes
:л
/dropout_11/dropout/random_uniform/RandomUniformRandomUniform!dropout_11/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0f
!dropout_11/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╨
dropout_11/dropout/GreaterEqualGreaterEqual8dropout_11/dropout/random_uniform/RandomUniform:output:0*dropout_11/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АО
dropout_11/dropout/CastCast#dropout_11/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         АУ
dropout_11/dropout/Mul_1Muldropout_11/dropout/Mul:z:0dropout_11/dropout/Cast:y:0*
T0*0
_output_shapes
:         АС
%batch_normalization_11/ReadVariableOpReadVariableOp.batch_normalization_11_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
'batch_normalization_11/ReadVariableOp_1ReadVariableOp0batch_normalization_11_readvariableop_1_resource*
_output_shapes	
:А*
dtype0│
6batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╥
'batch_normalization_11/FusedBatchNormV3FusedBatchNormV3dropout_11/dropout/Mul_1:z:0-batch_normalization_11/ReadVariableOp:value:0/batch_normalization_11/ReadVariableOp_1:value:0>batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<в
%batch_normalization_11/AssignNewValueAssignVariableOp?batch_normalization_11_fusedbatchnormv3_readvariableop_resource4batch_normalization_11/FusedBatchNormV3:batch_mean:07^batch_normalization_11/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(м
'batch_normalization_11/AssignNewValue_1AssignVariableOpAbatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_11/FusedBatchNormV3:batch_variance:09^batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(s
conv2d_transpose_7/ShapeShape+batch_normalization_11/FusedBatchNormV3:y:0*
T0*
_output_shapes
:p
&conv2d_transpose_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 conv2d_transpose_7/strided_sliceStridedSlice!conv2d_transpose_7/Shape:output:0/conv2d_transpose_7/strided_slice/stack:output:01conv2d_transpose_7/strided_slice/stack_1:output:01conv2d_transpose_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_7/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_7/stack/2Const*
_output_shapes
: *
dtype0*
value	B :y\
conv2d_transpose_7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :ш
conv2d_transpose_7/stackPack)conv2d_transpose_7/strided_slice:output:0#conv2d_transpose_7/stack/1:output:0#conv2d_transpose_7/stack/2:output:0#conv2d_transpose_7/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╕
"conv2d_transpose_7/strided_slice_1StridedSlice!conv2d_transpose_7/stack:output:01conv2d_transpose_7/strided_slice_1/stack:output:03conv2d_transpose_7/strided_slice_1/stack_1:output:03conv2d_transpose_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╖
2conv2d_transpose_7/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_7_conv2d_transpose_readvariableop_resource*'
_output_shapes
:yА*
dtype0й
#conv2d_transpose_7/conv2d_transposeConv2DBackpropInput!conv2d_transpose_7/stack:output:0:conv2d_transpose_7/conv2d_transpose/ReadVariableOp:value:0+batch_normalization_11/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         y*
paddingVALID*
strides
Ш
)conv2d_transpose_7/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0└
conv2d_transpose_7/BiasAddBiasAdd,conv2d_transpose_7/conv2d_transpose:output:01conv2d_transpose_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         yP
softmax_3/RankConst*
_output_shapes
: *
dtype0*
value	B :R
softmax_3/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :Q
softmax_3/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :j
softmax_3/SubSubsoftmax_3/Rank_1:output:0softmax_3/Sub/y:output:0*
T0*
_output_shapes
: W
softmax_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : W
softmax_3/range/limitConst*
_output_shapes
: *
dtype0*
value	B :W
softmax_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :Ф
softmax_3/rangeRangesoftmax_3/range/start:output:0softmax_3/range/limit:output:0softmax_3/range/delta:output:0*
_output_shapes
:Y
softmax_3/range_1/startConst*
_output_shapes
: *
dtype0*
value	B :Y
softmax_3/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :Л
softmax_3/range_1Range softmax_3/range_1/start:output:0softmax_3/Sub:z:0 softmax_3/range_1/delta:output:0*
_output_shapes
: b
softmax_3/concat/values_1Packsoftmax_3/Sub:z:0*
N*
T0*
_output_shapes
:c
softmax_3/concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:W
softmax_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ш
softmax_3/concatConcatV2softmax_3/range:output:0"softmax_3/concat/values_1:output:0softmax_3/range_1:output:0"softmax_3/concat/values_3:output:0softmax_3/concat/axis:output:0*
N*
T0*
_output_shapes
:Ъ
softmax_3/transpose	Transpose#conv2d_transpose_7/BiasAdd:output:0softmax_3/concat:output:0*
T0*/
_output_shapes
:         yo
softmax_3/SoftmaxSoftmaxsoftmax_3/transpose:y:0*
T0*/
_output_shapes
:         yS
softmax_3/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :n
softmax_3/Sub_1Subsoftmax_3/Rank_1:output:0softmax_3/Sub_1/y:output:0*
T0*
_output_shapes
: Y
softmax_3/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : Y
softmax_3/range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :Y
softmax_3/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :Ь
softmax_3/range_2Range softmax_3/range_2/start:output:0 softmax_3/range_2/limit:output:0 softmax_3/range_2/delta:output:0*
_output_shapes
:Y
softmax_3/range_3/startConst*
_output_shapes
: *
dtype0*
value	B :Y
softmax_3/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :Н
softmax_3/range_3Range softmax_3/range_3/start:output:0softmax_3/Sub_1:z:0 softmax_3/range_3/delta:output:0*
_output_shapes
: f
softmax_3/concat_1/values_1Packsoftmax_3/Sub_1:z:0*
N*
T0*
_output_shapes
:e
softmax_3/concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:Y
softmax_3/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Є
softmax_3/concat_1ConcatV2softmax_3/range_2:output:0$softmax_3/concat_1/values_1:output:0softmax_3/range_3:output:0$softmax_3/concat_1/values_3:output:0 softmax_3/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ц
softmax_3/transpose_1	Transposesoftmax_3/Softmax:softmax:0softmax_3/concat_1:output:0*
T0*/
_output_shapes
:         yp
IdentityIdentitysoftmax_3/transpose_1:y:0^NoOp*
T0*/
_output_shapes
:         y╓	
NoOpNoOp&^batch_normalization_10/AssignNewValue(^batch_normalization_10/AssignNewValue_17^batch_normalization_10/FusedBatchNormV3/ReadVariableOp9^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_10/ReadVariableOp(^batch_normalization_10/ReadVariableOp_1&^batch_normalization_11/AssignNewValue(^batch_normalization_11/AssignNewValue_17^batch_normalization_11/FusedBatchNormV3/ReadVariableOp9^batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_11/ReadVariableOp(^batch_normalization_11/ReadVariableOp_1%^batch_normalization_9/AssignNewValue'^batch_normalization_9/AssignNewValue_16^batch_normalization_9/FusedBatchNormV3/ReadVariableOp8^batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_9/ReadVariableOp'^batch_normalization_9/ReadVariableOp_1 ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp*^conv2d_transpose_6/BiasAdd/ReadVariableOp3^conv2d_transpose_6/conv2d_transpose/ReadVariableOp*^conv2d_transpose_7/BiasAdd/ReadVariableOp3^conv2d_transpose_7/conv2d_transpose/ReadVariableOp#^first_layer/BiasAdd/ReadVariableOp"^first_layer/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:         Е: : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_10/AssignNewValue%batch_normalization_10/AssignNewValue2R
'batch_normalization_10/AssignNewValue_1'batch_normalization_10/AssignNewValue_12p
6batch_normalization_10/FusedBatchNormV3/ReadVariableOp6batch_normalization_10/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_18batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_10/ReadVariableOp%batch_normalization_10/ReadVariableOp2R
'batch_normalization_10/ReadVariableOp_1'batch_normalization_10/ReadVariableOp_12N
%batch_normalization_11/AssignNewValue%batch_normalization_11/AssignNewValue2R
'batch_normalization_11/AssignNewValue_1'batch_normalization_11/AssignNewValue_12p
6batch_normalization_11/FusedBatchNormV3/ReadVariableOp6batch_normalization_11/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_18batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_11/ReadVariableOp%batch_normalization_11/ReadVariableOp2R
'batch_normalization_11/ReadVariableOp_1'batch_normalization_11/ReadVariableOp_12L
$batch_normalization_9/AssignNewValue$batch_normalization_9/AssignNewValue2P
&batch_normalization_9/AssignNewValue_1&batch_normalization_9/AssignNewValue_12n
5batch_normalization_9/FusedBatchNormV3/ReadVariableOp5batch_normalization_9/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_17batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_9/ReadVariableOp$batch_normalization_9/ReadVariableOp2P
&batch_normalization_9/ReadVariableOp_1&batch_normalization_9/ReadVariableOp_12B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2V
)conv2d_transpose_6/BiasAdd/ReadVariableOp)conv2d_transpose_6/BiasAdd/ReadVariableOp2h
2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_7/BiasAdd/ReadVariableOp)conv2d_transpose_7/BiasAdd/ReadVariableOp2h
2conv2d_transpose_7/conv2d_transpose/ReadVariableOp2conv2d_transpose_7/conv2d_transpose/ReadVariableOp2H
"first_layer/BiasAdd/ReadVariableOp"first_layer/BiasAdd/ReadVariableOp2F
!first_layer/Conv2D/ReadVariableOp!first_layer/Conv2D/ReadVariableOp:X T
0
_output_shapes
:         Е
 
_user_specified_nameinputs
э
Я
'__inference_conv2d_6_layer_call_fn_7555

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_6_layer_call_and_return_conditional_losses_6489x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ц[
К
 __inference__traced_restore_8042
file_prefix?
#assignvariableop_first_layer_kernel:ЕА2
#assignvariableop_1_first_layer_bias:	А=
.assignvariableop_2_batch_normalization_9_gamma:	А<
-assignvariableop_3_batch_normalization_9_beta:	АC
4assignvariableop_4_batch_normalization_9_moving_mean:	АG
8assignvariableop_5_batch_normalization_9_moving_variance:	А>
"assignvariableop_6_conv2d_6_kernel:АА/
 assignvariableop_7_conv2d_6_bias:	А>
/assignvariableop_8_batch_normalization_10_gamma:	А=
.assignvariableop_9_batch_normalization_10_beta:	АE
6assignvariableop_10_batch_normalization_10_moving_mean:	АI
:assignvariableop_11_batch_normalization_10_moving_variance:	АI
-assignvariableop_12_conv2d_transpose_6_kernel:АА:
+assignvariableop_13_conv2d_transpose_6_bias:	А?
0assignvariableop_14_batch_normalization_11_gamma:	А>
/assignvariableop_15_batch_normalization_11_beta:	АE
6assignvariableop_16_batch_normalization_11_moving_mean:	АI
:assignvariableop_17_batch_normalization_11_moving_variance:	АH
-assignvariableop_18_conv2d_transpose_7_kernel:yА9
+assignvariableop_19_conv2d_transpose_7_bias:#
assignvariableop_20_total: #
assignvariableop_21_count: 
identity_23ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9Є

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ш

valueО
BЛ
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЮ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B С
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOpAssignVariableOp#assignvariableop_first_layer_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_1AssignVariableOp#assignvariableop_1_first_layer_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_9_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_3AssignVariableOp-assignvariableop_3_batch_normalization_9_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_9_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_5AssignVariableOp8assignvariableop_5_batch_normalization_9_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_6_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_6_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_10_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_10_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_10_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_10_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_12AssignVariableOp-assignvariableop_12_conv2d_transpose_6_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_13AssignVariableOp+assignvariableop_13_conv2d_transpose_6_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_11_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_11_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_11_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_11_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_18AssignVariableOp-assignvariableop_18_conv2d_transpose_7_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_19AssignVariableOp+assignvariableop_19_conv2d_transpose_7_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 │
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_23IdentityIdentity_22:output:0^NoOp_1*
T0*
_output_shapes
: а
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_23Identity_23:output:0*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_21AssignVariableOp_212(
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
┐
D
(__inference_dropout_9_layer_call_fn_7462

inputs
identity╖
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_9_layer_call_and_return_conditional_losses_6467i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ч	
╘
5__inference_batch_normalization_11_layer_call_fn_7742

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_6348К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Ч	
╘
5__inference_batch_normalization_10_layer_call_fn_7606

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_6235К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
║

c
D__inference_dropout_11_layer_call_and_return_conditional_losses_6644

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:         Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Г#
Ъ
L__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_6431

inputsC
(conv2d_transpose_readvariableop_resource:yА-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B : F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B :xL
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskС
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:yА*
dtype0▌
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           Б
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Х	
╘
5__inference_batch_normalization_11_layer_call_fn_7755

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_6379К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
С
Б
E__inference_first_layer_layer_call_and_return_conditional_losses_7457

inputs:
conv2d_readvariableop_resource:ЕА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ЕА*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         Е: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         Е
 
_user_specified_nameinputs
·#
Ь
L__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_7702

inputsD
(conv2d_transpose_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: G
add/yConst*
_output_shapes
: *
dtype0*
value	B : F
addAddV2mul:z:0add/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
add_1/yConst*
_output_shapes
: *
dtype0*
value	B : L
add_1AddV2	mul_1:z:0add_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аy
stackPackstrided_slice:output:0add:z:0	add_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskТ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0▐
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,                           А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ъ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,                           Аk
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,                           А|
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,                           АБ
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
¤
з
"__inference_signature_wrapper_7060
first_layer_input#
unknown:ЕА
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
	unknown_3:	А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:	А
	unknown_8:	А
	unknown_9:	А

unknown_10:	А&

unknown_11:АА

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А%

unknown_17:yА

unknown_18:
identityИвStatefulPartitionedCall║
StatefulPartitionedCallStatefulPartitionedCallfirst_layer_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         y*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__wrapped_model_6149w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         y`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:         Е: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
0
_output_shapes
:         Е
+
_user_specified_namefirst_layer_input
┌
Ю
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7528

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
√
b
D__inference_dropout_10_layer_call_and_return_conditional_losses_6500

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Х
├
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_6266

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╘Э
Ы
F__inference_sequential_3_layer_call_and_return_conditional_losses_7283

inputsF
*first_layer_conv2d_readvariableop_resource:ЕА:
+first_layer_biasadd_readvariableop_resource:	А<
-batch_normalization_9_readvariableop_resource:	А>
/batch_normalization_9_readvariableop_1_resource:	АM
>batch_normalization_9_fusedbatchnormv3_readvariableop_resource:	АO
@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource:	АC
'conv2d_6_conv2d_readvariableop_resource:АА7
(conv2d_6_biasadd_readvariableop_resource:	А=
.batch_normalization_10_readvariableop_resource:	А?
0batch_normalization_10_readvariableop_1_resource:	АN
?batch_normalization_10_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource:	АW
;conv2d_transpose_6_conv2d_transpose_readvariableop_resource:ААA
2conv2d_transpose_6_biasadd_readvariableop_resource:	А=
.batch_normalization_11_readvariableop_resource:	А?
0batch_normalization_11_readvariableop_1_resource:	АN
?batch_normalization_11_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource:	АV
;conv2d_transpose_7_conv2d_transpose_readvariableop_resource:yА@
2conv2d_transpose_7_biasadd_readvariableop_resource:
identityИв6batch_normalization_10/FusedBatchNormV3/ReadVariableOpв8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_10/ReadVariableOpв'batch_normalization_10/ReadVariableOp_1в6batch_normalization_11/FusedBatchNormV3/ReadVariableOpв8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_11/ReadVariableOpв'batch_normalization_11/ReadVariableOp_1в5batch_normalization_9/FusedBatchNormV3/ReadVariableOpв7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_9/ReadVariableOpв&batch_normalization_9/ReadVariableOp_1вconv2d_6/BiasAdd/ReadVariableOpвconv2d_6/Conv2D/ReadVariableOpв)conv2d_transpose_6/BiasAdd/ReadVariableOpв2conv2d_transpose_6/conv2d_transpose/ReadVariableOpв)conv2d_transpose_7/BiasAdd/ReadVariableOpв2conv2d_transpose_7/conv2d_transpose/ReadVariableOpв"first_layer/BiasAdd/ReadVariableOpв!first_layer/Conv2D/ReadVariableOpЦ
!first_layer/Conv2D/ReadVariableOpReadVariableOp*first_layer_conv2d_readvariableop_resource*(
_output_shapes
:ЕА*
dtype0│
first_layer/Conv2DConv2Dinputs)first_layer/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Л
"first_layer/BiasAdd/ReadVariableOpReadVariableOp+first_layer_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0в
first_layer/BiasAddBiasAddfirst_layer/Conv2D:output:0*first_layer/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аq
first_layer/ReluRelufirst_layer/BiasAdd:output:0*
T0*0
_output_shapes
:         Аy
dropout_9/IdentityIdentityfirst_layer/Relu:activations:0*
T0*0
_output_shapes
:         АП
$batch_normalization_9/ReadVariableOpReadVariableOp-batch_normalization_9_readvariableop_resource*
_output_shapes	
:А*
dtype0У
&batch_normalization_9/ReadVariableOp_1ReadVariableOp/batch_normalization_9_readvariableop_1_resource*
_output_shapes	
:А*
dtype0▒
5batch_normalization_9/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_9_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╡
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_9_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╛
&batch_normalization_9/FusedBatchNormV3FusedBatchNormV3dropout_9/Identity:output:0,batch_normalization_9/ReadVariableOp:value:0.batch_normalization_9/ReadVariableOp_1:value:0=batch_normalization_9/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( Р
conv2d_6/Conv2D/ReadVariableOpReadVariableOp'conv2d_6_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╤
conv2d_6/Conv2DConv2D*batch_normalization_9/FusedBatchNormV3:y:0&conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Е
conv2d_6/BiasAdd/ReadVariableOpReadVariableOp(conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_6/BiasAddBiasAddconv2d_6/Conv2D:output:0'conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аk
conv2d_6/ReluReluconv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:         Аw
dropout_10/IdentityIdentityconv2d_6/Relu:activations:0*
T0*0
_output_shapes
:         АС
%batch_normalization_10/ReadVariableOpReadVariableOp.batch_normalization_10_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
'batch_normalization_10/ReadVariableOp_1ReadVariableOp0batch_normalization_10_readvariableop_1_resource*
_output_shapes	
:А*
dtype0│
6batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0─
'batch_normalization_10/FusedBatchNormV3FusedBatchNormV3dropout_10/Identity:output:0-batch_normalization_10/ReadVariableOp:value:0/batch_normalization_10/ReadVariableOp_1:value:0>batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( s
conv2d_transpose_6/ShapeShape+batch_normalization_10/FusedBatchNormV3:y:0*
T0*
_output_shapes
:p
&conv2d_transpose_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 conv2d_transpose_6/strided_sliceStridedSlice!conv2d_transpose_6/Shape:output:0/conv2d_transpose_6/strided_slice/stack:output:01conv2d_transpose_6/strided_slice/stack_1:output:01conv2d_transpose_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_6/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_6/stack/2Const*
_output_shapes
: *
dtype0*
value	B :]
conv2d_transpose_6/stack/3Const*
_output_shapes
: *
dtype0*
value
B :Аш
conv2d_transpose_6/stackPack)conv2d_transpose_6/strided_slice:output:0#conv2d_transpose_6/stack/1:output:0#conv2d_transpose_6/stack/2:output:0#conv2d_transpose_6/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╕
"conv2d_transpose_6/strided_slice_1StridedSlice!conv2d_transpose_6/stack:output:01conv2d_transpose_6/strided_slice_1/stack:output:03conv2d_transpose_6/strided_slice_1/stack_1:output:03conv2d_transpose_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╕
2conv2d_transpose_6/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_6_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype0к
#conv2d_transpose_6/conv2d_transposeConv2DBackpropInput!conv2d_transpose_6/stack:output:0:conv2d_transpose_6/conv2d_transpose/ReadVariableOp:value:0+batch_normalization_10/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:         А*
paddingVALID*
strides
Щ
)conv2d_transpose_6/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┴
conv2d_transpose_6/BiasAddBiasAdd,conv2d_transpose_6/conv2d_transpose:output:01conv2d_transpose_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А
conv2d_transpose_6/ReluRelu#conv2d_transpose_6/BiasAdd:output:0*
T0*0
_output_shapes
:         АБ
dropout_11/IdentityIdentity%conv2d_transpose_6/Relu:activations:0*
T0*0
_output_shapes
:         АС
%batch_normalization_11/ReadVariableOpReadVariableOp.batch_normalization_11_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
'batch_normalization_11/ReadVariableOp_1ReadVariableOp0batch_normalization_11_readvariableop_1_resource*
_output_shapes	
:А*
dtype0│
6batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╖
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0─
'batch_normalization_11/FusedBatchNormV3FusedBatchNormV3dropout_11/Identity:output:0-batch_normalization_11/ReadVariableOp:value:0/batch_normalization_11/ReadVariableOp_1:value:0>batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         А:А:А:А:А:*
epsilon%oГ:*
is_training( s
conv2d_transpose_7/ShapeShape+batch_normalization_11/FusedBatchNormV3:y:0*
T0*
_output_shapes
:p
&conv2d_transpose_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:░
 conv2d_transpose_7/strided_sliceStridedSlice!conv2d_transpose_7/Shape:output:0/conv2d_transpose_7/strided_slice/stack:output:01conv2d_transpose_7/strided_slice/stack_1:output:01conv2d_transpose_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_7/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_7/stack/2Const*
_output_shapes
: *
dtype0*
value	B :y\
conv2d_transpose_7/stack/3Const*
_output_shapes
: *
dtype0*
value	B :ш
conv2d_transpose_7/stackPack)conv2d_transpose_7/strided_slice:output:0#conv2d_transpose_7/stack/1:output:0#conv2d_transpose_7/stack/2:output:0#conv2d_transpose_7/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╕
"conv2d_transpose_7/strided_slice_1StridedSlice!conv2d_transpose_7/stack:output:01conv2d_transpose_7/strided_slice_1/stack:output:03conv2d_transpose_7/strided_slice_1/stack_1:output:03conv2d_transpose_7/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╖
2conv2d_transpose_7/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_7_conv2d_transpose_readvariableop_resource*'
_output_shapes
:yА*
dtype0й
#conv2d_transpose_7/conv2d_transposeConv2DBackpropInput!conv2d_transpose_7/stack:output:0:conv2d_transpose_7/conv2d_transpose/ReadVariableOp:value:0+batch_normalization_11/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         y*
paddingVALID*
strides
Ш
)conv2d_transpose_7/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0└
conv2d_transpose_7/BiasAddBiasAdd,conv2d_transpose_7/conv2d_transpose:output:01conv2d_transpose_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         yP
softmax_3/RankConst*
_output_shapes
: *
dtype0*
value	B :R
softmax_3/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :Q
softmax_3/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :j
softmax_3/SubSubsoftmax_3/Rank_1:output:0softmax_3/Sub/y:output:0*
T0*
_output_shapes
: W
softmax_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : W
softmax_3/range/limitConst*
_output_shapes
: *
dtype0*
value	B :W
softmax_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :Ф
softmax_3/rangeRangesoftmax_3/range/start:output:0softmax_3/range/limit:output:0softmax_3/range/delta:output:0*
_output_shapes
:Y
softmax_3/range_1/startConst*
_output_shapes
: *
dtype0*
value	B :Y
softmax_3/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :Л
softmax_3/range_1Range softmax_3/range_1/start:output:0softmax_3/Sub:z:0 softmax_3/range_1/delta:output:0*
_output_shapes
: b
softmax_3/concat/values_1Packsoftmax_3/Sub:z:0*
N*
T0*
_output_shapes
:c
softmax_3/concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:W
softmax_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ш
softmax_3/concatConcatV2softmax_3/range:output:0"softmax_3/concat/values_1:output:0softmax_3/range_1:output:0"softmax_3/concat/values_3:output:0softmax_3/concat/axis:output:0*
N*
T0*
_output_shapes
:Ъ
softmax_3/transpose	Transpose#conv2d_transpose_7/BiasAdd:output:0softmax_3/concat:output:0*
T0*/
_output_shapes
:         yo
softmax_3/SoftmaxSoftmaxsoftmax_3/transpose:y:0*
T0*/
_output_shapes
:         yS
softmax_3/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :n
softmax_3/Sub_1Subsoftmax_3/Rank_1:output:0softmax_3/Sub_1/y:output:0*
T0*
_output_shapes
: Y
softmax_3/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : Y
softmax_3/range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :Y
softmax_3/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :Ь
softmax_3/range_2Range softmax_3/range_2/start:output:0 softmax_3/range_2/limit:output:0 softmax_3/range_2/delta:output:0*
_output_shapes
:Y
softmax_3/range_3/startConst*
_output_shapes
: *
dtype0*
value	B :Y
softmax_3/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :Н
softmax_3/range_3Range softmax_3/range_3/start:output:0softmax_3/Sub_1:z:0 softmax_3/range_3/delta:output:0*
_output_shapes
: f
softmax_3/concat_1/values_1Packsoftmax_3/Sub_1:z:0*
N*
T0*
_output_shapes
:e
softmax_3/concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:Y
softmax_3/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Є
softmax_3/concat_1ConcatV2softmax_3/range_2:output:0$softmax_3/concat_1/values_1:output:0softmax_3/range_3:output:0$softmax_3/concat_1/values_3:output:0 softmax_3/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ц
softmax_3/transpose_1	Transposesoftmax_3/Softmax:softmax:0softmax_3/concat_1:output:0*
T0*/
_output_shapes
:         yp
IdentityIdentitysoftmax_3/transpose_1:y:0^NoOp*
T0*/
_output_shapes
:         yт
NoOpNoOp7^batch_normalization_10/FusedBatchNormV3/ReadVariableOp9^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_10/ReadVariableOp(^batch_normalization_10/ReadVariableOp_17^batch_normalization_11/FusedBatchNormV3/ReadVariableOp9^batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_11/ReadVariableOp(^batch_normalization_11/ReadVariableOp_16^batch_normalization_9/FusedBatchNormV3/ReadVariableOp8^batch_normalization_9/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_9/ReadVariableOp'^batch_normalization_9/ReadVariableOp_1 ^conv2d_6/BiasAdd/ReadVariableOp^conv2d_6/Conv2D/ReadVariableOp*^conv2d_transpose_6/BiasAdd/ReadVariableOp3^conv2d_transpose_6/conv2d_transpose/ReadVariableOp*^conv2d_transpose_7/BiasAdd/ReadVariableOp3^conv2d_transpose_7/conv2d_transpose/ReadVariableOp#^first_layer/BiasAdd/ReadVariableOp"^first_layer/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D:         Е: : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_10/FusedBatchNormV3/ReadVariableOp6batch_normalization_10/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_18batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_10/ReadVariableOp%batch_normalization_10/ReadVariableOp2R
'batch_normalization_10/ReadVariableOp_1'batch_normalization_10/ReadVariableOp_12p
6batch_normalization_11/FusedBatchNormV3/ReadVariableOp6batch_normalization_11/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_18batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_11/ReadVariableOp%batch_normalization_11/ReadVariableOp2R
'batch_normalization_11/ReadVariableOp_1'batch_normalization_11/ReadVariableOp_12n
5batch_normalization_9/FusedBatchNormV3/ReadVariableOp5batch_normalization_9/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_9/FusedBatchNormV3/ReadVariableOp_17batch_normalization_9/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_9/ReadVariableOp$batch_normalization_9/ReadVariableOp2P
&batch_normalization_9/ReadVariableOp_1&batch_normalization_9/ReadVariableOp_12B
conv2d_6/BiasAdd/ReadVariableOpconv2d_6/BiasAdd/ReadVariableOp2@
conv2d_6/Conv2D/ReadVariableOpconv2d_6/Conv2D/ReadVariableOp2V
)conv2d_transpose_6/BiasAdd/ReadVariableOp)conv2d_transpose_6/BiasAdd/ReadVariableOp2h
2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2conv2d_transpose_6/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_7/BiasAdd/ReadVariableOp)conv2d_transpose_7/BiasAdd/ReadVariableOp2h
2conv2d_transpose_7/conv2d_transpose/ReadVariableOp2conv2d_transpose_7/conv2d_transpose/ReadVariableOp2H
"first_layer/BiasAdd/ReadVariableOp"first_layer/BiasAdd/ReadVariableOp2F
!first_layer/Conv2D/ReadVariableOp!first_layer/Conv2D/ReadVariableOp:X T
0
_output_shapes
:         Е
 
_user_specified_nameinputs"┐L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╤
serving_default╜
X
first_layer_inputC
#serving_default_first_layer_input:0         ЕE
	softmax_38
StatefulPartitionedCall:0         ytensorflow/serving/predict:Х╜
м
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
▌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
╝
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses
$_random_generator"
_tf_keras_layer
ъ
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses
+axis
	,gamma
-beta
.moving_mean
/moving_variance"
_tf_keras_layer
▌
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias
 8_jit_compiled_convolution_op"
_tf_keras_layer
╝
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
ъ
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
Faxis
	Ggamma
Hbeta
Imoving_mean
Jmoving_variance"
_tf_keras_layer
▌
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias
 S_jit_compiled_convolution_op"
_tf_keras_layer
╝
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
Z_random_generator"
_tf_keras_layer
ъ
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
aaxis
	bgamma
cbeta
dmoving_mean
emoving_variance"
_tf_keras_layer
▌
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

lkernel
mbias
 n_jit_compiled_convolution_op"
_tf_keras_layer
е
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
╢
0
1
,2
-3
.4
/5
66
77
G8
H9
I10
J11
Q12
R13
b14
c15
d16
e17
l18
m19"
trackable_list_wrapper
Ж
0
1
,2
-3
64
75
G6
H7
Q8
R9
b10
c11
l12
m13"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
т
ztrace_0
{trace_1
|trace_2
}trace_32ў
+__inference_sequential_3_layer_call_fn_6618
+__inference_sequential_3_layer_call_fn_7105
+__inference_sequential_3_layer_call_fn_7150
+__inference_sequential_3_layer_call_fn_6903└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zztrace_0z{trace_1z|trace_2z}trace_3
╥
~trace_0
trace_1
Аtrace_2
Бtrace_32у
F__inference_sequential_3_layer_call_and_return_conditional_losses_7283
F__inference_sequential_3_layer_call_and_return_conditional_losses_7437
F__inference_sequential_3_layer_call_and_return_conditional_losses_6958
F__inference_sequential_3_layer_call_and_return_conditional_losses_7013└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z~trace_0ztrace_1zАtrace_2zБtrace_3
╘B╤
__inference__wrapped_model_6149first_layer_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
"
	optimizer
-
Вserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ё
Иtrace_02╤
*__inference_first_layer_layer_call_fn_7446в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zИtrace_0
Л
Йtrace_02ь
E__inference_first_layer_layer_call_and_return_conditional_losses_7457в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЙtrace_0
.:,ЕА2first_layer/kernel
:А2first_layer/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
╞
Пtrace_0
Рtrace_12Л
(__inference_dropout_9_layer_call_fn_7462
(__inference_dropout_9_layer_call_fn_7467┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zПtrace_0zРtrace_1
№
Сtrace_0
Тtrace_12┴
C__inference_dropout_9_layer_call_and_return_conditional_losses_7472
C__inference_dropout_9_layer_call_and_return_conditional_losses_7484┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zСtrace_0zТtrace_1
"
_generic_user_object
<
,0
-1
.2
/3"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
▐
Шtrace_0
Щtrace_12г
4__inference_batch_normalization_9_layer_call_fn_7497
4__inference_batch_normalization_9_layer_call_fn_7510┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zШtrace_0zЩtrace_1
Ф
Ъtrace_0
Ыtrace_12┘
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7528
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7546┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zЪtrace_0zЫtrace_1
 "
trackable_list_wrapper
*:(А2batch_normalization_9/gamma
):'А2batch_normalization_9/beta
2:0А (2!batch_normalization_9/moving_mean
6:4А (2%batch_normalization_9/moving_variance
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
э
бtrace_02╬
'__inference_conv2d_6_layer_call_fn_7555в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zбtrace_0
И
вtrace_02щ
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7566в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zвtrace_0
+:)АА2conv2d_6/kernel
:А2conv2d_6/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
╚
иtrace_0
йtrace_12Н
)__inference_dropout_10_layer_call_fn_7571
)__inference_dropout_10_layer_call_fn_7576┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zиtrace_0zйtrace_1
■
кtrace_0
лtrace_12├
D__inference_dropout_10_layer_call_and_return_conditional_losses_7581
D__inference_dropout_10_layer_call_and_return_conditional_losses_7593┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zкtrace_0zлtrace_1
"
_generic_user_object
<
G0
H1
I2
J3"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
░layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
р
▒trace_0
▓trace_12е
5__inference_batch_normalization_10_layer_call_fn_7606
5__inference_batch_normalization_10_layer_call_fn_7619┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z▒trace_0z▓trace_1
Ц
│trace_0
┤trace_12█
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7637
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7655┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z│trace_0z┤trace_1
 "
trackable_list_wrapper
+:)А2batch_normalization_10/gamma
*:(А2batch_normalization_10/beta
3:1А (2"batch_normalization_10/moving_mean
7:5А (2&batch_normalization_10/moving_variance
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╡non_trainable_variables
╢layers
╖metrics
 ╕layer_regularization_losses
╣layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
ў
║trace_02╪
1__inference_conv2d_transpose_6_layer_call_fn_7664в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z║trace_0
Т
╗trace_02є
L__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_7702в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╗trace_0
5:3АА2conv2d_transpose_6/kernel
&:$А2conv2d_transpose_6/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
╚
┴trace_0
┬trace_12Н
)__inference_dropout_11_layer_call_fn_7707
)__inference_dropout_11_layer_call_fn_7712┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z┴trace_0z┬trace_1
■
├trace_0
─trace_12├
D__inference_dropout_11_layer_call_and_return_conditional_losses_7717
D__inference_dropout_11_layer_call_and_return_conditional_losses_7729┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z├trace_0z─trace_1
"
_generic_user_object
<
b0
c1
d2
e3"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┼non_trainable_variables
╞layers
╟metrics
 ╚layer_regularization_losses
╔layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
р
╩trace_0
╦trace_12е
5__inference_batch_normalization_11_layer_call_fn_7742
5__inference_batch_normalization_11_layer_call_fn_7755┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z╩trace_0z╦trace_1
Ц
╠trace_0
═trace_12█
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7773
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7791┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z╠trace_0z═trace_1
 "
trackable_list_wrapper
+:)А2batch_normalization_11/gamma
*:(А2batch_normalization_11/beta
3:1А (2"batch_normalization_11/moving_mean
7:5А (2&batch_normalization_11/moving_variance
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╬non_trainable_variables
╧layers
╨metrics
 ╤layer_regularization_losses
╥layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
ў
╙trace_02╪
1__inference_conv2d_transpose_7_layer_call_fn_7800в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╙trace_0
Т
╘trace_02є
L__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_7837в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╘trace_0
4:2yА2conv2d_transpose_7/kernel
%:#2conv2d_transpose_7/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╒non_trainable_variables
╓layers
╫metrics
 ╪layer_regularization_losses
┘layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
√
┌trace_02▄
(__inference_softmax_3_layer_call_fn_7842п
ж▓в
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsв

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┌trace_0
Ц
█trace_02ў
C__inference_softmax_3_layer_call_and_return_conditional_losses_7877п
ж▓в
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsв

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z█trace_0
J
.0
/1
I2
J3
d4
e5"
trackable_list_wrapper
n
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
10"
trackable_list_wrapper
(
▄0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ИBЕ
+__inference_sequential_3_layer_call_fn_6618first_layer_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
¤B·
+__inference_sequential_3_layer_call_fn_7105inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
¤B·
+__inference_sequential_3_layer_call_fn_7150inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ИBЕ
+__inference_sequential_3_layer_call_fn_6903first_layer_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ШBХ
F__inference_sequential_3_layer_call_and_return_conditional_losses_7283inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ШBХ
F__inference_sequential_3_layer_call_and_return_conditional_losses_7437inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
гBа
F__inference_sequential_3_layer_call_and_return_conditional_losses_6958first_layer_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
гBа
F__inference_sequential_3_layer_call_and_return_conditional_losses_7013first_layer_input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╙B╨
"__inference_signature_wrapper_7060first_layer_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▐B█
*__inference_first_layer_layer_call_fn_7446inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_first_layer_layer_call_and_return_conditional_losses_7457inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
юBы
(__inference_dropout_9_layer_call_fn_7462inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
юBы
(__inference_dropout_9_layer_call_fn_7467inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЙBЖ
C__inference_dropout_9_layer_call_and_return_conditional_losses_7472inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЙBЖ
C__inference_dropout_9_layer_call_and_return_conditional_losses_7484inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
·Bў
4__inference_batch_normalization_9_layer_call_fn_7497inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
·Bў
4__inference_batch_normalization_9_layer_call_fn_7510inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ХBТ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7528inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ХBТ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7546inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
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
█B╪
'__inference_conv2d_6_layer_call_fn_7555inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЎBє
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7566inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
яBь
)__inference_dropout_10_layer_call_fn_7571inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
яBь
)__inference_dropout_10_layer_call_fn_7576inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
КBЗ
D__inference_dropout_10_layer_call_and_return_conditional_losses_7581inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
КBЗ
D__inference_dropout_10_layer_call_and_return_conditional_losses_7593inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
√B°
5__inference_batch_normalization_10_layer_call_fn_7606inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
√B°
5__inference_batch_normalization_10_layer_call_fn_7619inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЦBУ
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7637inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЦBУ
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7655inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
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
хBт
1__inference_conv2d_transpose_6_layer_call_fn_7664inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_7702inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
яBь
)__inference_dropout_11_layer_call_fn_7707inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
яBь
)__inference_dropout_11_layer_call_fn_7712inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
КBЗ
D__inference_dropout_11_layer_call_and_return_conditional_losses_7717inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
КBЗ
D__inference_dropout_11_layer_call_and_return_conditional_losses_7729inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
√B°
5__inference_batch_normalization_11_layer_call_fn_7742inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
√B°
5__inference_batch_normalization_11_layer_call_fn_7755inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЦBУ
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7773inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЦBУ
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7791inputs"┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
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
хBт
1__inference_conv2d_transpose_7_layer_call_fn_7800inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
L__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_7837inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
щBц
(__inference_softmax_3_layer_call_fn_7842inputs"п
ж▓в
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsв

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ДBБ
C__inference_softmax_3_layer_call_and_return_conditional_losses_7877inputs"п
ж▓в
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsв

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
▌	variables
▐	keras_api

▀total

рcount"
_tf_keras_metric
0
▀0
р1"
trackable_list_wrapper
.
▌	variables"
_generic_user_object
:  (2total
:  (2count╛
__inference__wrapped_model_6149Ъ,-./67GHIJQRbcdelmCв@
9в6
4К1
first_layer_input         Е
к "=к:
8
	softmax_3+К(
	softmax_3         yэ
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7637ШGHIJNвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ э
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7655ШGHIJNвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ┼
5__inference_batch_normalization_10_layer_call_fn_7606ЛGHIJNвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А┼
5__inference_batch_normalization_10_layer_call_fn_7619ЛGHIJNвK
DвA
;К8
inputs,                           А
p
к "3К0,                           Аэ
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7773ШbcdeNвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ э
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7791ШbcdeNвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ┼
5__inference_batch_normalization_11_layer_call_fn_7742ЛbcdeNвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А┼
5__inference_batch_normalization_11_layer_call_fn_7755ЛbcdeNвK
DвA
;К8
inputs,                           А
p
к "3К0,                           Аь
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7528Ш,-./NвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ ь
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7546Ш,-./NвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ─
4__inference_batch_normalization_9_layer_call_fn_7497Л,-./NвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А─
4__inference_batch_normalization_9_layer_call_fn_7510Л,-./NвK
DвA
;К8
inputs,                           А
p
к "3К0,                           А┤
B__inference_conv2d_6_layer_call_and_return_conditional_losses_7566n678в5
.в+
)К&
inputs         А
к ".в+
$К!
0         А
Ъ М
'__inference_conv2d_6_layer_call_fn_7555a678в5
.в+
)К&
inputs         А
к "!К         Ау
L__inference_conv2d_transpose_6_layer_call_and_return_conditional_losses_7702ТQRJвG
@в=
;К8
inputs,                           А
к "@в=
6К3
0,                           А
Ъ ╗
1__inference_conv2d_transpose_6_layer_call_fn_7664ЕQRJвG
@в=
;К8
inputs,                           А
к "3К0,                           Ат
L__inference_conv2d_transpose_7_layer_call_and_return_conditional_losses_7837СlmJвG
@в=
;К8
inputs,                           А
к "?в<
5К2
0+                           
Ъ ║
1__inference_conv2d_transpose_7_layer_call_fn_7800ДlmJвG
@в=
;К8
inputs,                           А
к "2К/+                           ╢
D__inference_dropout_10_layer_call_and_return_conditional_losses_7581n<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ ╢
D__inference_dropout_10_layer_call_and_return_conditional_losses_7593n<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ О
)__inference_dropout_10_layer_call_fn_7571a<в9
2в/
)К&
inputs         А
p 
к "!К         АО
)__inference_dropout_10_layer_call_fn_7576a<в9
2в/
)К&
inputs         А
p
к "!К         А╢
D__inference_dropout_11_layer_call_and_return_conditional_losses_7717n<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ ╢
D__inference_dropout_11_layer_call_and_return_conditional_losses_7729n<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ О
)__inference_dropout_11_layer_call_fn_7707a<в9
2в/
)К&
inputs         А
p 
к "!К         АО
)__inference_dropout_11_layer_call_fn_7712a<в9
2в/
)К&
inputs         А
p
к "!К         А╡
C__inference_dropout_9_layer_call_and_return_conditional_losses_7472n<в9
2в/
)К&
inputs         А
p 
к ".в+
$К!
0         А
Ъ ╡
C__inference_dropout_9_layer_call_and_return_conditional_losses_7484n<в9
2в/
)К&
inputs         А
p
к ".в+
$К!
0         А
Ъ Н
(__inference_dropout_9_layer_call_fn_7462a<в9
2в/
)К&
inputs         А
p 
к "!К         АН
(__inference_dropout_9_layer_call_fn_7467a<в9
2в/
)К&
inputs         А
p
к "!К         А╖
E__inference_first_layer_layer_call_and_return_conditional_losses_7457n8в5
.в+
)К&
inputs         Е
к ".в+
$К!
0         А
Ъ П
*__inference_first_layer_layer_call_fn_7446a8в5
.в+
)К&
inputs         Е
к "!К         А▌
F__inference_sequential_3_layer_call_and_return_conditional_losses_6958Т,-./67GHIJQRbcdelmKвH
Aв>
4К1
first_layer_input         Е
p 

 
к "-в*
#К 
0         y
Ъ ▌
F__inference_sequential_3_layer_call_and_return_conditional_losses_7013Т,-./67GHIJQRbcdelmKвH
Aв>
4К1
first_layer_input         Е
p

 
к "-в*
#К 
0         y
Ъ ╥
F__inference_sequential_3_layer_call_and_return_conditional_losses_7283З,-./67GHIJQRbcdelm@в=
6в3
)К&
inputs         Е
p 

 
к "-в*
#К 
0         y
Ъ ╥
F__inference_sequential_3_layer_call_and_return_conditional_losses_7437З,-./67GHIJQRbcdelm@в=
6в3
)К&
inputs         Е
p

 
к "-в*
#К 
0         y
Ъ ╡
+__inference_sequential_3_layer_call_fn_6618Е,-./67GHIJQRbcdelmKвH
Aв>
4К1
first_layer_input         Е
p 

 
к " К         y╡
+__inference_sequential_3_layer_call_fn_6903Е,-./67GHIJQRbcdelmKвH
Aв>
4К1
first_layer_input         Е
p

 
к " К         yй
+__inference_sequential_3_layer_call_fn_7105z,-./67GHIJQRbcdelm@в=
6в3
)К&
inputs         Е
p 

 
к " К         yй
+__inference_sequential_3_layer_call_fn_7150z,-./67GHIJQRbcdelm@в=
6в3
)К&
inputs         Е
p

 
к " К         y╓
"__inference_signature_wrapper_7060п,-./67GHIJQRbcdelmXвU
в 
NкK
I
first_layer_input4К1
first_layer_input         Е"=к:
8
	softmax_3+К(
	softmax_3         y│
C__inference_softmax_3_layer_call_and_return_conditional_losses_7877l;в8
1в.
(К%
inputs         y

 
к "-в*
#К 
0         y
Ъ Л
(__inference_softmax_3_layer_call_fn_7842_;в8
1в.
(К%
inputs         y

 
к " К         y
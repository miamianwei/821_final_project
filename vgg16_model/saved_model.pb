??"
??
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
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
?
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*
shared_nameconv2d/kernel
y
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*(
_output_shapes
:??*
dtype0
o
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d/bias
h
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes	
:?*
dtype0
?
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@* 
shared_nameconv2d_1/kernel
|
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*'
_output_shapes
:?@*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	?d*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:d*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:d*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
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
?
block1_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock1_conv1/kernel
?
'block1_conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel*&
_output_shapes
:@*
dtype0
z
block1_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv1/bias
s
%block1_conv1/bias/Read/ReadVariableOpReadVariableOpblock1_conv1/bias*
_output_shapes
:@*
dtype0
?
block1_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameblock1_conv2/kernel
?
'block1_conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel*&
_output_shapes
:@@*
dtype0
z
block1_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv2/bias
s
%block1_conv2/bias/Read/ReadVariableOpReadVariableOpblock1_conv2/bias*
_output_shapes
:@*
dtype0
?
block2_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*$
shared_nameblock2_conv1/kernel
?
'block2_conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel*'
_output_shapes
:@?*
dtype0
{
block2_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock2_conv1/bias
t
%block2_conv1/bias/Read/ReadVariableOpReadVariableOpblock2_conv1/bias*
_output_shapes	
:?*
dtype0
?
block2_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock2_conv2/kernel
?
'block2_conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel*(
_output_shapes
:??*
dtype0
{
block2_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock2_conv2/bias
t
%block2_conv2/bias/Read/ReadVariableOpReadVariableOpblock2_conv2/bias*
_output_shapes	
:?*
dtype0
?
block3_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock3_conv1/kernel
?
'block3_conv1/kernel/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel*(
_output_shapes
:??*
dtype0
{
block3_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock3_conv1/bias
t
%block3_conv1/bias/Read/ReadVariableOpReadVariableOpblock3_conv1/bias*
_output_shapes	
:?*
dtype0
?
block3_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock3_conv2/kernel
?
'block3_conv2/kernel/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel*(
_output_shapes
:??*
dtype0
{
block3_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock3_conv2/bias
t
%block3_conv2/bias/Read/ReadVariableOpReadVariableOpblock3_conv2/bias*
_output_shapes	
:?*
dtype0
?
block3_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock3_conv3/kernel
?
'block3_conv3/kernel/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel*(
_output_shapes
:??*
dtype0
{
block3_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock3_conv3/bias
t
%block3_conv3/bias/Read/ReadVariableOpReadVariableOpblock3_conv3/bias*
_output_shapes	
:?*
dtype0
?
block4_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock4_conv1/kernel
?
'block4_conv1/kernel/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel*(
_output_shapes
:??*
dtype0
{
block4_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock4_conv1/bias
t
%block4_conv1/bias/Read/ReadVariableOpReadVariableOpblock4_conv1/bias*
_output_shapes	
:?*
dtype0
?
block4_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock4_conv2/kernel
?
'block4_conv2/kernel/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel*(
_output_shapes
:??*
dtype0
{
block4_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock4_conv2/bias
t
%block4_conv2/bias/Read/ReadVariableOpReadVariableOpblock4_conv2/bias*
_output_shapes	
:?*
dtype0
?
block4_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock4_conv3/kernel
?
'block4_conv3/kernel/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel*(
_output_shapes
:??*
dtype0
{
block4_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock4_conv3/bias
t
%block4_conv3/bias/Read/ReadVariableOpReadVariableOpblock4_conv3/bias*
_output_shapes	
:?*
dtype0
?
block5_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock5_conv1/kernel
?
'block5_conv1/kernel/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel*(
_output_shapes
:??*
dtype0
{
block5_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock5_conv1/bias
t
%block5_conv1/bias/Read/ReadVariableOpReadVariableOpblock5_conv1/bias*
_output_shapes	
:?*
dtype0
?
block5_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock5_conv2/kernel
?
'block5_conv2/kernel/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel*(
_output_shapes
:??*
dtype0
{
block5_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock5_conv2/bias
t
%block5_conv2/bias/Read/ReadVariableOpReadVariableOpblock5_conv2/bias*
_output_shapes	
:?*
dtype0
?
block5_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*$
shared_nameblock5_conv3/kernel
?
'block5_conv3/kernel/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel*(
_output_shapes
:??*
dtype0
{
block5_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameblock5_conv3/bias
t
%block5_conv3/bias/Read/ReadVariableOpReadVariableOpblock5_conv3/bias*
_output_shapes	
:?*
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
u
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nametrue_positives
n
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes	
:?*
dtype0
u
true_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:?*
dtype0
w
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_namefalse_positives
p
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes	
:?*
dtype0
w
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_namefalse_negatives
p
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes	
:?*
dtype0
l
conf_mtxVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_name
conf_mtx
e
conf_mtx/Read/ReadVariableOpReadVariableOpconf_mtx*
_output_shapes

:*
dtype0
x
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_1
q
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes
:*
dtype0
z
false_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namefalse_positives_1
s
%false_positives_1/Read/ReadVariableOpReadVariableOpfalse_positives_1*
_output_shapes
:*
dtype0
z
false_negatives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namefalse_negatives_1
s
%false_negatives_1/Read/ReadVariableOpReadVariableOpfalse_negatives_1*
_output_shapes
:*
dtype0
?
weights_intermediateVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameweights_intermediate
y
(weights_intermediate/Read/ReadVariableOpReadVariableOpweights_intermediate*
_output_shapes
:*
dtype0
?
Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*%
shared_nameAdam/conv2d/kernel/m
?
(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*(
_output_shapes
:??*
dtype0
}
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/conv2d/bias/m
v
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*'
shared_nameAdam/conv2d_1/kernel/m
?
*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*'
_output_shapes
:?@*
dtype0
?
Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	?d*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:d*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*%
shared_nameAdam/conv2d/kernel/v
?
(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*(
_output_shapes
:??*
dtype0
}
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/conv2d/bias/v
v
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*'
shared_nameAdam/conv2d_1/kernel/v
?
*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*'
_output_shapes
:?@*
dtype0
?
Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	?d*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:d*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? Bކ
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
layer_with_weights-5
layer-8
layer_with_weights-6
layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
layer-18
 	variables
!trainable_variables
"regularization_losses
#	keras_api
h

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
h

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
R
0	variables
1trainable_variables
2regularization_losses
3	keras_api
h

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
h

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
?
@iter

Abeta_1

Bbeta_2
	Cdecay
Dlearning_rate$m?%m?*m?+m?4m?5m?:m?;m?$v?%v?*v?+v?4v?5v?:v?;v?
?
E0
F1
G2
H3
I4
J5
K6
L7
M8
N9
O10
P11
Q12
R13
S14
T15
U16
V17
W18
X19
Y20
Z21
[22
\23
]24
^25
$26
%27
*28
+29
430
531
:32
;33
8
$0
%1
*2
+3
44
55
:6
;7
 
?
_layer_metrics
`non_trainable_variables
alayer_regularization_losses
	variables

blayers
	trainable_variables

regularization_losses
cmetrics
 
 
h

Ekernel
Fbias
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h

Gkernel
Hbias
h	variables
itrainable_variables
jregularization_losses
k	keras_api
R
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
h

Ikernel
Jbias
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
h

Kkernel
Lbias
t	variables
utrainable_variables
vregularization_losses
w	keras_api
R
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
h

Mkernel
Nbias
|	variables
}trainable_variables
~regularization_losses
	keras_api
l

Okernel
Pbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

Qkernel
Rbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

Skernel
Tbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

Ukernel
Vbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

Wkernel
Xbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

Ykernel
Zbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

[kernel
\bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

]kernel
^bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
E0
F1
G2
H3
I4
J5
K6
L7
M8
N9
O10
P11
Q12
R13
S14
T15
U16
V17
W18
X19
Y20
Z21
[22
\23
]24
^25
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
 	variables
?layers
!trainable_variables
"regularization_losses
?metrics
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
&	variables
'trainable_variables
(regularization_losses
?metrics
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1

*0
+1
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
,	variables
-trainable_variables
.regularization_losses
?metrics
 
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
0	variables
1trainable_variables
2regularization_losses
?metrics
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

40
51

40
51
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
6	variables
7trainable_variables
8regularization_losses
?metrics
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

:0
;1

:0
;1
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
<	variables
=trainable_variables
>regularization_losses
?metrics
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
OM
VARIABLE_VALUEblock1_conv1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock1_conv1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock1_conv2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock1_conv2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock2_conv1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock2_conv1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock2_conv2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock2_conv2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock3_conv1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock3_conv1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock3_conv2/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock3_conv2/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock3_conv3/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock3_conv3/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv1/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv1/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv2/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv2/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv3/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv3/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv1/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv1/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv2/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv2/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv3/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv3/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE
 
?
E0
F1
G2
H3
I4
J5
K6
L7
M8
N9
O10
P11
Q12
R13
S14
T15
U16
V17
W18
X19
Y20
Z21
[22
\23
]24
^25
 
*
0
1
2
3
4
5
(
?0
?1
?2
?3
?4

E0
F1
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
d	variables
etrainable_variables
fregularization_losses
?metrics

G0
H1
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
h	variables
itrainable_variables
jregularization_losses
?metrics
 
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
l	variables
mtrainable_variables
nregularization_losses
?metrics

I0
J1
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
p	variables
qtrainable_variables
rregularization_losses
?metrics

K0
L1
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
t	variables
utrainable_variables
vregularization_losses
?metrics
 
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
x	variables
ytrainable_variables
zregularization_losses
?metrics

M0
N1
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
|	variables
}trainable_variables
~regularization_losses
?metrics

O0
P1
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics

Q0
R1
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics
 
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics

S0
T1
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics

U0
V1
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics

W0
X1
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics
 
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics

Y0
Z1
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics

[0
\1
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics

]0
^1
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics
 
 
 
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics
 
?
E0
F1
G2
H3
I4
J5
K6
L7
M8
N9
O10
P11
Q12
R13
S14
T15
U16
V17
W18
X19
Y20
Z21
[22
\23
]24
^25
 
?
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
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
v
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api
/
?conf_mtx
?	variables
?	keras_api
?
?
init_shape
?true_positives
?false_positives
?false_negatives
?weights_intermediate
?	variables
?	keras_api
 

E0
F1
 
 
 
 

G0
H1
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
I0
J1
 
 
 
 

K0
L1
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
M0
N1
 
 
 
 

O0
P1
 
 
 
 

Q0
R1
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
S0
T1
 
 
 
 

U0
V1
 
 
 
 

W0
X1
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
Y0
Z1
 
 
 
 

[0
\1
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
a_
VARIABLE_VALUEtrue_positives=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_positives>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?	variables
US
VARIABLE_VALUEconf_mtx7keras_api/metrics/3/conf_mtx/.ATTRIBUTES/VARIABLE_VALUE

?0

?	variables
 
ca
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/4/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEfalse_positives_1>keras_api/metrics/4/false_positives/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEfalse_negatives_1>keras_api/metrics/4/false_negatives/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEweights_intermediateCkeras_api/metrics/4/weights_intermediate/.ATTRIBUTES/VARIABLE_VALUE
 
?0
?1
?2
?3

?	variables
|z
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_vgg16_inputPlaceholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_vgg16_inputblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_51204
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp'block1_conv1/kernel/Read/ReadVariableOp%block1_conv1/bias/Read/ReadVariableOp'block1_conv2/kernel/Read/ReadVariableOp%block1_conv2/bias/Read/ReadVariableOp'block2_conv1/kernel/Read/ReadVariableOp%block2_conv1/bias/Read/ReadVariableOp'block2_conv2/kernel/Read/ReadVariableOp%block2_conv2/bias/Read/ReadVariableOp'block3_conv1/kernel/Read/ReadVariableOp%block3_conv1/bias/Read/ReadVariableOp'block3_conv2/kernel/Read/ReadVariableOp%block3_conv2/bias/Read/ReadVariableOp'block3_conv3/kernel/Read/ReadVariableOp%block3_conv3/bias/Read/ReadVariableOp'block4_conv1/kernel/Read/ReadVariableOp%block4_conv1/bias/Read/ReadVariableOp'block4_conv2/kernel/Read/ReadVariableOp%block4_conv2/bias/Read/ReadVariableOp'block4_conv3/kernel/Read/ReadVariableOp%block4_conv3/bias/Read/ReadVariableOp'block5_conv1/kernel/Read/ReadVariableOp%block5_conv1/bias/Read/ReadVariableOp'block5_conv2/kernel/Read/ReadVariableOp%block5_conv2/bias/Read/ReadVariableOp'block5_conv3/kernel/Read/ReadVariableOp%block5_conv3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp"true_positives/Read/ReadVariableOp"true_negatives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOpconf_mtx/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp%false_positives_1/Read/ReadVariableOp%false_negatives_1/Read/ReadVariableOp(weights_intermediate/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*Q
TinJ
H2F	*
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
GPU2*0J 8? *'
f"R 
__inference__traced_save_52502
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biastotalcounttotal_1count_1true_positivestrue_negativesfalse_positivesfalse_negativesconf_mtxtrue_positives_1false_positives_1false_negatives_1weights_intermediateAdam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*P
TinI
G2E*
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
GPU2*0J 8? **
f%R#
!__inference__traced_restore_52716??
?

?
G__inference_block4_conv2_layer_call_and_return_conditional_losses_52186

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
+__inference__update_multi_class_model_48821

y_true

y_pred 
assignaddvariableop_resource
identity??AssignAddVariableOp?ReadVariableOp?/confusion_matrix/assert_less/Assert/AssertGuard?1confusion_matrix/assert_less_1/Assert/AssertGuard?Iconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard?Kconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuardf
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :2
ArgMax/dimensionk
ArgMaxArgMaxy_trueArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????2
ArgMax?
PartitionedCallPartitionedCally_pred*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *&
f!R
__inference__cast_ypred_486182
PartitionedCall?
PartitionedCall_1PartitionedCallArgMax:output:0*
Tin
2	*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__safe_squeeze_486392
PartitionedCall_1?
PartitionedCall_2PartitionedCallPartitionedCall:output:0*
Tin
2	*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__safe_squeeze_486602
PartitionedCall_2?
2confusion_matrix/remove_squeezable_dimensions/RankRankPartitionedCall_2:output:0*
T0	*
_output_shapes
: 24
2confusion_matrix/remove_squeezable_dimensions/Rank?
4confusion_matrix/remove_squeezable_dimensions/Rank_1RankPartitionedCall_1:output:0*
T0	*
_output_shapes
: 26
4confusion_matrix/remove_squeezable_dimensions/Rank_1?
1confusion_matrix/remove_squeezable_dimensions/subSub;confusion_matrix/remove_squeezable_dimensions/Rank:output:0=confusion_matrix/remove_squeezable_dimensions/Rank_1:output:0*
T0*
_output_shapes
: 23
1confusion_matrix/remove_squeezable_dimensions/sub?
5confusion_matrix/remove_squeezable_dimensions/Equal/xConst*
_output_shapes
: *
dtype0*
value	B :27
5confusion_matrix/remove_squeezable_dimensions/Equal/x?
3confusion_matrix/remove_squeezable_dimensions/EqualEqual>confusion_matrix/remove_squeezable_dimensions/Equal/x:output:05confusion_matrix/remove_squeezable_dimensions/sub:z:0*
T0*
_output_shapes
: 25
3confusion_matrix/remove_squeezable_dimensions/Equal?
2confusion_matrix/remove_squeezable_dimensions/condStatelessIf7confusion_matrix/remove_squeezable_dimensions/Equal:z:0PartitionedCall_2:output:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
:* 
_read_only_resource_inputs
 *Q
else_branchBR@
>confusion_matrix_remove_squeezable_dimensions_cond_false_48668*
output_shapes
:*P
then_branchAR?
=confusion_matrix_remove_squeezable_dimensions_cond_true_4866724
2confusion_matrix/remove_squeezable_dimensions/cond?
;confusion_matrix/remove_squeezable_dimensions/cond/IdentityIdentity;confusion_matrix/remove_squeezable_dimensions/cond:output:0*
T0	*
_output_shapes
:2=
;confusion_matrix/remove_squeezable_dimensions/cond/Identity?
7confusion_matrix/remove_squeezable_dimensions/Equal_1/xConst*
_output_shapes
: *
dtype0*
valueB :
?????????29
7confusion_matrix/remove_squeezable_dimensions/Equal_1/x?
5confusion_matrix/remove_squeezable_dimensions/Equal_1Equal@confusion_matrix/remove_squeezable_dimensions/Equal_1/x:output:05confusion_matrix/remove_squeezable_dimensions/sub:z:0*
T0*
_output_shapes
: 27
5confusion_matrix/remove_squeezable_dimensions/Equal_1?
4confusion_matrix/remove_squeezable_dimensions/cond_1StatelessIf9confusion_matrix/remove_squeezable_dimensions/Equal_1:z:0PartitionedCall_1:output:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
:* 
_read_only_resource_inputs
 *S
else_branchDRB
@confusion_matrix_remove_squeezable_dimensions_cond_1_false_48681*
output_shapes
:*R
then_branchCRA
?confusion_matrix_remove_squeezable_dimensions_cond_1_true_4868026
4confusion_matrix/remove_squeezable_dimensions/cond_1?
=confusion_matrix/remove_squeezable_dimensions/cond_1/IdentityIdentity=confusion_matrix/remove_squeezable_dimensions/cond_1:output:0*
T0	*
_output_shapes
:2?
=confusion_matrix/remove_squeezable_dimensions/cond_1/Identity?
*confusion_matrix/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2,
*confusion_matrix/assert_non_negative/Const?
@confusion_matrix/assert_non_negative/assert_less_equal/LessEqual	LessEqual3confusion_matrix/assert_non_negative/Const:output:0Fconfusion_matrix/remove_squeezable_dimensions/cond_1/Identity:output:0*
T0	*
_output_shapes
:2B
@confusion_matrix/assert_non_negative/assert_less_equal/LessEqual?
;confusion_matrix/assert_non_negative/assert_less_equal/RankRankDconfusion_matrix/assert_non_negative/assert_less_equal/LessEqual:z:0*
T0
*
_output_shapes
: 2=
;confusion_matrix/assert_non_negative/assert_less_equal/Rank?
Bconfusion_matrix/assert_non_negative/assert_less_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2D
Bconfusion_matrix/assert_non_negative/assert_less_equal/range/start?
Bconfusion_matrix/assert_non_negative/assert_less_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2D
Bconfusion_matrix/assert_non_negative/assert_less_equal/range/delta?
<confusion_matrix/assert_non_negative/assert_less_equal/rangeRangeKconfusion_matrix/assert_non_negative/assert_less_equal/range/start:output:0Dconfusion_matrix/assert_non_negative/assert_less_equal/Rank:output:0Kconfusion_matrix/assert_non_negative/assert_less_equal/range/delta:output:0*#
_output_shapes
:?????????2>
<confusion_matrix/assert_non_negative/assert_less_equal/range?
:confusion_matrix/assert_non_negative/assert_less_equal/AllAllDconfusion_matrix/assert_non_negative/assert_less_equal/LessEqual:z:0Econfusion_matrix/assert_non_negative/assert_less_equal/range:output:0*
_output_shapes
: 2<
:confusion_matrix/assert_non_negative/assert_less_equal/All?
Cconfusion_matrix/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*2
value)B' B!`labels` contains negative values2E
Cconfusion_matrix/assert_non_negative/assert_less_equal/Assert/Const?
Econfusion_matrix/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2G
Econfusion_matrix/assert_non_negative/assert_less_equal/Assert/Const_1?
Econfusion_matrix/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*W
valueNBL BFx (confusion_matrix/remove_squeezable_dimensions/cond_1/Identity:0) = 2G
Econfusion_matrix/assert_non_negative/assert_less_equal/Assert/Const_2?
Iconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuardIfCconfusion_matrix/assert_non_negative/assert_less_equal/All:output:0Cconfusion_matrix/assert_non_negative/assert_less_equal/All:output:0Fconfusion_matrix/remove_squeezable_dimensions/cond_1/Identity:output:0*
Tcond0
*
Tin
2
	*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *h
else_branchYRW
Uconfusion_matrix_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_48702*
output_shapes
: *g
then_branchXRV
Tconfusion_matrix_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_487012K
Iconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard?
Rconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentityRconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 2T
Rconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity?
#confusion_matrix/control_dependencyIdentityFconfusion_matrix/remove_squeezable_dimensions/cond_1/Identity:output:0S^confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity*
T0	*P
_classF
DBloc:@confusion_matrix/remove_squeezable_dimensions/cond_1/Identity*
_output_shapes
:2%
#confusion_matrix/control_dependency?
,confusion_matrix/assert_non_negative_1/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 2.
,confusion_matrix/assert_non_negative_1/Const?
Bconfusion_matrix/assert_non_negative_1/assert_less_equal/LessEqual	LessEqual5confusion_matrix/assert_non_negative_1/Const:output:0Dconfusion_matrix/remove_squeezable_dimensions/cond/Identity:output:0*
T0	*
_output_shapes
:2D
Bconfusion_matrix/assert_non_negative_1/assert_less_equal/LessEqual?
=confusion_matrix/assert_non_negative_1/assert_less_equal/RankRankFconfusion_matrix/assert_non_negative_1/assert_less_equal/LessEqual:z:0*
T0
*
_output_shapes
: 2?
=confusion_matrix/assert_non_negative_1/assert_less_equal/Rank?
Dconfusion_matrix/assert_non_negative_1/assert_less_equal/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2F
Dconfusion_matrix/assert_non_negative_1/assert_less_equal/range/start?
Dconfusion_matrix/assert_non_negative_1/assert_less_equal/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2F
Dconfusion_matrix/assert_non_negative_1/assert_less_equal/range/delta?
>confusion_matrix/assert_non_negative_1/assert_less_equal/rangeRangeMconfusion_matrix/assert_non_negative_1/assert_less_equal/range/start:output:0Fconfusion_matrix/assert_non_negative_1/assert_less_equal/Rank:output:0Mconfusion_matrix/assert_non_negative_1/assert_less_equal/range/delta:output:0*#
_output_shapes
:?????????2@
>confusion_matrix/assert_non_negative_1/assert_less_equal/range?
<confusion_matrix/assert_non_negative_1/assert_less_equal/AllAllFconfusion_matrix/assert_non_negative_1/assert_less_equal/LessEqual:z:0Gconfusion_matrix/assert_non_negative_1/assert_less_equal/range:output:0*
_output_shapes
: 2>
<confusion_matrix/assert_non_negative_1/assert_less_equal/All?
Econfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*7
value.B, B&`predictions` contains negative values2G
Econfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/Const?
Gconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2I
Gconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/Const_1?
Gconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*U
valueLBJ BDx (confusion_matrix/remove_squeezable_dimensions/cond/Identity:0) = 2I
Gconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/Const_2?
Kconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuardIfEconfusion_matrix/assert_non_negative_1/assert_less_equal/All:output:0Econfusion_matrix/assert_non_negative_1/assert_less_equal/All:output:0Dconfusion_matrix/remove_squeezable_dimensions/cond/Identity:output:0J^confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
	*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *j
else_branch[RY
Wconfusion_matrix_assert_non_negative_1_assert_less_equal_Assert_AssertGuard_false_48730*
output_shapes
: *i
then_branchZRX
Vconfusion_matrix_assert_non_negative_1_assert_less_equal_Assert_AssertGuard_true_487292M
Kconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard?
Tconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/IdentityIdentityTconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 2V
Tconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity?
%confusion_matrix/control_dependency_1IdentityDconfusion_matrix/remove_squeezable_dimensions/cond/Identity:output:0U^confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity*
T0	*N
_classD
B@loc:@confusion_matrix/remove_squeezable_dimensions/cond/Identity*
_output_shapes
:2'
%confusion_matrix/control_dependency_1t
confusion_matrix/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2
confusion_matrix/Cast/x?
confusion_matrix/CastCast confusion_matrix/Cast/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
confusion_matrix/Cast?
!confusion_matrix/assert_less/LessLess,confusion_matrix/control_dependency:output:0confusion_matrix/Cast:y:0*
T0	*
_output_shapes
:2#
!confusion_matrix/assert_less/Less?
!confusion_matrix/assert_less/RankRank%confusion_matrix/assert_less/Less:z:0*
T0
*
_output_shapes
: 2#
!confusion_matrix/assert_less/Rank?
(confusion_matrix/assert_less/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2*
(confusion_matrix/assert_less/range/start?
(confusion_matrix/assert_less/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2*
(confusion_matrix/assert_less/range/delta?
"confusion_matrix/assert_less/rangeRange1confusion_matrix/assert_less/range/start:output:0*confusion_matrix/assert_less/Rank:output:01confusion_matrix/assert_less/range/delta:output:0*#
_output_shapes
:?????????2$
"confusion_matrix/assert_less/range?
 confusion_matrix/assert_less/AllAll%confusion_matrix/assert_less/Less:z:0+confusion_matrix/assert_less/range:output:0*
_output_shapes
: 2"
 confusion_matrix/assert_less/All?
)confusion_matrix/assert_less/Assert/ConstConst*
_output_shapes
: *
dtype0*&
valueB B`labels` out of bound2+
)confusion_matrix/assert_less/Assert/Const?
+confusion_matrix/assert_less/Assert/Const_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*Condition x < y did not hold element-wise:2-
+confusion_matrix/assert_less/Assert/Const_1?
+confusion_matrix/assert_less/Assert/Const_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (confusion_matrix/control_dependency:0) = 2-
+confusion_matrix/assert_less/Assert/Const_2?
+confusion_matrix/assert_less/Assert/Const_3Const*
_output_shapes
: *
dtype0*/
value&B$ By (confusion_matrix/Cast:0) = 2-
+confusion_matrix/assert_less/Assert/Const_3?
/confusion_matrix/assert_less/Assert/AssertGuardIf)confusion_matrix/assert_less/All:output:0)confusion_matrix/assert_less/All:output:0,confusion_matrix/control_dependency:output:0confusion_matrix/Cast:y:0L^confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *N
else_branch?R=
;confusion_matrix_assert_less_Assert_AssertGuard_false_48760*
output_shapes
: *M
then_branch>R<
:confusion_matrix_assert_less_Assert_AssertGuard_true_4875921
/confusion_matrix/assert_less/Assert/AssertGuard?
8confusion_matrix/assert_less/Assert/AssertGuard/IdentityIdentity8confusion_matrix/assert_less/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 2:
8confusion_matrix/assert_less/Assert/AssertGuard/Identity?
%confusion_matrix/control_dependency_2Identity,confusion_matrix/control_dependency:output:09^confusion_matrix/assert_less/Assert/AssertGuard/Identity*
T0	*P
_classF
DBloc:@confusion_matrix/remove_squeezable_dimensions/cond_1/Identity*
_output_shapes
:2'
%confusion_matrix/control_dependency_2?
#confusion_matrix/assert_less_1/LessLess.confusion_matrix/control_dependency_1:output:0confusion_matrix/Cast:y:0*
T0	*
_output_shapes
:2%
#confusion_matrix/assert_less_1/Less?
#confusion_matrix/assert_less_1/RankRank'confusion_matrix/assert_less_1/Less:z:0*
T0
*
_output_shapes
: 2%
#confusion_matrix/assert_less_1/Rank?
*confusion_matrix/assert_less_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2,
*confusion_matrix/assert_less_1/range/start?
*confusion_matrix/assert_less_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2,
*confusion_matrix/assert_less_1/range/delta?
$confusion_matrix/assert_less_1/rangeRange3confusion_matrix/assert_less_1/range/start:output:0,confusion_matrix/assert_less_1/Rank:output:03confusion_matrix/assert_less_1/range/delta:output:0*#
_output_shapes
:?????????2&
$confusion_matrix/assert_less_1/range?
"confusion_matrix/assert_less_1/AllAll'confusion_matrix/assert_less_1/Less:z:0-confusion_matrix/assert_less_1/range:output:0*
_output_shapes
: 2$
"confusion_matrix/assert_less_1/All?
+confusion_matrix/assert_less_1/Assert/ConstConst*
_output_shapes
: *
dtype0*+
value"B  B`predictions` out of bound2-
+confusion_matrix/assert_less_1/Assert/Const?
-confusion_matrix/assert_less_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*Condition x < y did not hold element-wise:2/
-confusion_matrix/assert_less_1/Assert/Const_1?
-confusion_matrix/assert_less_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (confusion_matrix/control_dependency_1:0) = 2/
-confusion_matrix/assert_less_1/Assert/Const_2?
-confusion_matrix/assert_less_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*/
value&B$ By (confusion_matrix/Cast:0) = 2/
-confusion_matrix/assert_less_1/Assert/Const_3?
1confusion_matrix/assert_less_1/Assert/AssertGuardIf+confusion_matrix/assert_less_1/All:output:0+confusion_matrix/assert_less_1/All:output:0.confusion_matrix/control_dependency_1:output:0confusion_matrix/Cast:y:00^confusion_matrix/assert_less/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *P
else_branchAR?
=confusion_matrix_assert_less_1_Assert_AssertGuard_false_48791*
output_shapes
: *O
then_branch@R>
<confusion_matrix_assert_less_1_Assert_AssertGuard_true_4879023
1confusion_matrix/assert_less_1/Assert/AssertGuard?
:confusion_matrix/assert_less_1/Assert/AssertGuard/IdentityIdentity:confusion_matrix/assert_less_1/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 2<
:confusion_matrix/assert_less_1/Assert/AssertGuard/Identity?
%confusion_matrix/control_dependency_3Identity.confusion_matrix/control_dependency_1:output:0;^confusion_matrix/assert_less_1/Assert/AssertGuard/Identity*
T0	*N
_classD
B@loc:@confusion_matrix/remove_squeezable_dimensions/cond/Identity*
_output_shapes
:2'
%confusion_matrix/control_dependency_3?
confusion_matrix/stackConst*
_output_shapes
:*
dtype0*
valueB"      2
confusion_matrix/stack?
confusion_matrix/stack_1Pack.confusion_matrix/control_dependency_2:output:0.confusion_matrix/control_dependency_3:output:0*
N*
T0	*
_output_shapes
:*

axis2
confusion_matrix/stack_1?
 confusion_matrix/ones_like/ShapeShape.confusion_matrix/control_dependency_3:output:0*
T0	*#
_output_shapes
:?????????2"
 confusion_matrix/ones_like/Shape?
 confusion_matrix/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 confusion_matrix/ones_like/Const?
confusion_matrix/ones_likeFill)confusion_matrix/ones_like/Shape:output:0)confusion_matrix/ones_like/Const:output:0*
T0*
_output_shapes
:2
confusion_matrix/ones_like?
confusion_matrix/Cast_1Castconfusion_matrix/stack:output:0*

DstT0	*

SrcT0*
_output_shapes
:2
confusion_matrix/Cast_1?
confusion_matrix/ScatterNd	ScatterNd!confusion_matrix/stack_1:output:0#confusion_matrix/ones_like:output:0confusion_matrix/Cast_1:y:0*
T0*
Tindices0	*
_output_shapes

:2
confusion_matrix/ScatterNd?
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resource#confusion_matrix/ScatterNd:output:0*
_output_shapes
 *
dtype02
AssignAddVariableOp?
ReadVariableOpReadVariableOpassignaddvariableop_resource^AssignAddVariableOp*
_output_shapes

:*
dtype02
ReadVariableOp?
IdentityIdentityReadVariableOp:value:0^AssignAddVariableOp^ReadVariableOp0^confusion_matrix/assert_less/Assert/AssertGuard2^confusion_matrix/assert_less_1/Assert/AssertGuardJ^confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuardL^confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard*
T0*
_output_shapes

:2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:??????????????????:?????????:2*
AssignAddVariableOpAssignAddVariableOp2 
ReadVariableOpReadVariableOp2b
/confusion_matrix/assert_less/Assert/AssertGuard/confusion_matrix/assert_less/Assert/AssertGuard2f
1confusion_matrix/assert_less_1/Assert/AssertGuard1confusion_matrix/assert_less_1/Assert/AssertGuard2?
Iconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuardIconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard2?
Kconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuardKconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard:X T
0
_output_shapes
:??????????????????
 
_user_specified_namey_true:OK
'
_output_shapes
:?????????
 
_user_specified_namey_pred
?X
?	
@__inference_vgg16_layer_call_and_return_conditional_losses_50260

inputs
block1_conv1_50189
block1_conv1_50191
block1_conv2_50194
block1_conv2_50196
block2_conv1_50200
block2_conv1_50202
block2_conv2_50205
block2_conv2_50207
block3_conv1_50211
block3_conv1_50213
block3_conv2_50216
block3_conv2_50218
block3_conv3_50221
block3_conv3_50223
block4_conv1_50227
block4_conv1_50229
block4_conv2_50232
block4_conv2_50234
block4_conv3_50237
block4_conv3_50239
block5_conv1_50243
block5_conv1_50245
block5_conv2_50248
block5_conv2_50250
block5_conv3_50253
block5_conv3_50255
identity??$block1_conv1/StatefulPartitionedCall?$block1_conv2/StatefulPartitionedCall?$block2_conv1/StatefulPartitionedCall?$block2_conv2/StatefulPartitionedCall?$block3_conv1/StatefulPartitionedCall?$block3_conv2/StatefulPartitionedCall?$block3_conv3/StatefulPartitionedCall?$block4_conv1/StatefulPartitionedCall?$block4_conv2/StatefulPartitionedCall?$block4_conv3/StatefulPartitionedCall?$block5_conv1/StatefulPartitionedCall?$block5_conv2/StatefulPartitionedCall?$block5_conv3/StatefulPartitionedCall?
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_50189block1_conv1_50191*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_497632&
$block1_conv1/StatefulPartitionedCall?
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_50194block1_conv2_50196*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_497902&
$block1_conv2/StatefulPartitionedCall?
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_496942
block1_pool/PartitionedCall?
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_50200block2_conv1_50202*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????pp?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_498182&
$block2_conv1/StatefulPartitionedCall?
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_50205block2_conv2_50207*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????pp?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_498452&
$block2_conv2/StatefulPartitionedCall?
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_497062
block2_pool/PartitionedCall?
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_50211block3_conv1_50213*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_498732&
$block3_conv1/StatefulPartitionedCall?
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_50216block3_conv2_50218*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_499002&
$block3_conv2/StatefulPartitionedCall?
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_50221block3_conv3_50223*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_499272&
$block3_conv3/StatefulPartitionedCall?
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_497182
block3_pool/PartitionedCall?
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_50227block4_conv1_50229*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_499552&
$block4_conv1/StatefulPartitionedCall?
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_50232block4_conv2_50234*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_499822&
$block4_conv2/StatefulPartitionedCall?
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_50237block4_conv3_50239*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_500092&
$block4_conv3/StatefulPartitionedCall?
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_497302
block4_pool/PartitionedCall?
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_50243block5_conv1_50245*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_500372&
$block5_conv1/StatefulPartitionedCall?
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_50248block5_conv2_50250*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_500642&
$block5_conv2/StatefulPartitionedCall?
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_50253block5_conv3_50255*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_500912&
$block5_conv3/StatefulPartitionedCall?
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_497422
block5_pool/PartitionedCall?
IdentityIdentity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
C__inference_conv2d_1_layer_call_and_return_conditional_losses_50655

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
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
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
 __inference__wrapped_model_49688
vgg16_input@
<sequential_vgg16_block1_conv1_conv2d_readvariableop_resourceA
=sequential_vgg16_block1_conv1_biasadd_readvariableop_resource@
<sequential_vgg16_block1_conv2_conv2d_readvariableop_resourceA
=sequential_vgg16_block1_conv2_biasadd_readvariableop_resource@
<sequential_vgg16_block2_conv1_conv2d_readvariableop_resourceA
=sequential_vgg16_block2_conv1_biasadd_readvariableop_resource@
<sequential_vgg16_block2_conv2_conv2d_readvariableop_resourceA
=sequential_vgg16_block2_conv2_biasadd_readvariableop_resource@
<sequential_vgg16_block3_conv1_conv2d_readvariableop_resourceA
=sequential_vgg16_block3_conv1_biasadd_readvariableop_resource@
<sequential_vgg16_block3_conv2_conv2d_readvariableop_resourceA
=sequential_vgg16_block3_conv2_biasadd_readvariableop_resource@
<sequential_vgg16_block3_conv3_conv2d_readvariableop_resourceA
=sequential_vgg16_block3_conv3_biasadd_readvariableop_resource@
<sequential_vgg16_block4_conv1_conv2d_readvariableop_resourceA
=sequential_vgg16_block4_conv1_biasadd_readvariableop_resource@
<sequential_vgg16_block4_conv2_conv2d_readvariableop_resourceA
=sequential_vgg16_block4_conv2_biasadd_readvariableop_resource@
<sequential_vgg16_block4_conv3_conv2d_readvariableop_resourceA
=sequential_vgg16_block4_conv3_biasadd_readvariableop_resource@
<sequential_vgg16_block5_conv1_conv2d_readvariableop_resourceA
=sequential_vgg16_block5_conv1_biasadd_readvariableop_resource@
<sequential_vgg16_block5_conv2_conv2d_readvariableop_resourceA
=sequential_vgg16_block5_conv2_biasadd_readvariableop_resource@
<sequential_vgg16_block5_conv3_conv2d_readvariableop_resourceA
=sequential_vgg16_block5_conv3_biasadd_readvariableop_resource4
0sequential_conv2d_conv2d_readvariableop_resource5
1sequential_conv2d_biasadd_readvariableop_resource6
2sequential_conv2d_1_conv2d_readvariableop_resource7
3sequential_conv2d_1_biasadd_readvariableop_resource3
/sequential_dense_matmul_readvariableop_resource4
0sequential_dense_biasadd_readvariableop_resource5
1sequential_dense_1_matmul_readvariableop_resource6
2sequential_dense_1_biasadd_readvariableop_resource
identity??(sequential/conv2d/BiasAdd/ReadVariableOp?'sequential/conv2d/Conv2D/ReadVariableOp?*sequential/conv2d_1/BiasAdd/ReadVariableOp?)sequential/conv2d_1/Conv2D/ReadVariableOp?'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?)sequential/dense_1/BiasAdd/ReadVariableOp?(sequential/dense_1/MatMul/ReadVariableOp?4sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOp?3sequential/vgg16/block1_conv1/Conv2D/ReadVariableOp?4sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOp?3sequential/vgg16/block1_conv2/Conv2D/ReadVariableOp?4sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOp?3sequential/vgg16/block2_conv1/Conv2D/ReadVariableOp?4sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOp?3sequential/vgg16/block2_conv2/Conv2D/ReadVariableOp?4sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOp?3sequential/vgg16/block3_conv1/Conv2D/ReadVariableOp?4sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOp?3sequential/vgg16/block3_conv2/Conv2D/ReadVariableOp?4sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOp?3sequential/vgg16/block3_conv3/Conv2D/ReadVariableOp?4sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOp?3sequential/vgg16/block4_conv1/Conv2D/ReadVariableOp?4sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOp?3sequential/vgg16/block4_conv2/Conv2D/ReadVariableOp?4sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOp?3sequential/vgg16/block4_conv3/Conv2D/ReadVariableOp?4sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOp?3sequential/vgg16/block5_conv1/Conv2D/ReadVariableOp?4sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOp?3sequential/vgg16/block5_conv2/Conv2D/ReadVariableOp?4sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOp?3sequential/vgg16/block5_conv3/Conv2D/ReadVariableOp?
3sequential/vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype025
3sequential/vgg16/block1_conv1/Conv2D/ReadVariableOp?
$sequential/vgg16/block1_conv1/Conv2DConv2Dvgg16_input;sequential/vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2&
$sequential/vgg16/block1_conv1/Conv2D?
4sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype026
4sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOp?
%sequential/vgg16/block1_conv1/BiasAddBiasAdd-sequential/vgg16/block1_conv1/Conv2D:output:0<sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2'
%sequential/vgg16/block1_conv1/BiasAdd?
"sequential/vgg16/block1_conv1/ReluRelu.sequential/vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@2$
"sequential/vgg16/block1_conv1/Relu?
3sequential/vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype025
3sequential/vgg16/block1_conv2/Conv2D/ReadVariableOp?
$sequential/vgg16/block1_conv2/Conv2DConv2D0sequential/vgg16/block1_conv1/Relu:activations:0;sequential/vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2&
$sequential/vgg16/block1_conv2/Conv2D?
4sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype026
4sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOp?
%sequential/vgg16/block1_conv2/BiasAddBiasAdd-sequential/vgg16/block1_conv2/Conv2D:output:0<sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2'
%sequential/vgg16/block1_conv2/BiasAdd?
"sequential/vgg16/block1_conv2/ReluRelu.sequential/vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@2$
"sequential/vgg16/block1_conv2/Relu?
$sequential/vgg16/block1_pool/MaxPoolMaxPool0sequential/vgg16/block1_conv2/Relu:activations:0*/
_output_shapes
:?????????pp@*
ksize
*
paddingVALID*
strides
2&
$sequential/vgg16/block1_pool/MaxPool?
3sequential/vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype025
3sequential/vgg16/block2_conv1/Conv2D/ReadVariableOp?
$sequential/vgg16/block2_conv1/Conv2DConv2D-sequential/vgg16/block1_pool/MaxPool:output:0;sequential/vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?*
paddingSAME*
strides
2&
$sequential/vgg16/block2_conv1/Conv2D?
4sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOp?
%sequential/vgg16/block2_conv1/BiasAddBiasAdd-sequential/vgg16/block2_conv1/Conv2D:output:0<sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?2'
%sequential/vgg16/block2_conv1/BiasAdd?
"sequential/vgg16/block2_conv1/ReluRelu.sequential/vgg16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????pp?2$
"sequential/vgg16/block2_conv1/Relu?
3sequential/vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype025
3sequential/vgg16/block2_conv2/Conv2D/ReadVariableOp?
$sequential/vgg16/block2_conv2/Conv2DConv2D0sequential/vgg16/block2_conv1/Relu:activations:0;sequential/vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?*
paddingSAME*
strides
2&
$sequential/vgg16/block2_conv2/Conv2D?
4sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOp?
%sequential/vgg16/block2_conv2/BiasAddBiasAdd-sequential/vgg16/block2_conv2/Conv2D:output:0<sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?2'
%sequential/vgg16/block2_conv2/BiasAdd?
"sequential/vgg16/block2_conv2/ReluRelu.sequential/vgg16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????pp?2$
"sequential/vgg16/block2_conv2/Relu?
$sequential/vgg16/block2_pool/MaxPoolMaxPool0sequential/vgg16/block2_conv2/Relu:activations:0*0
_output_shapes
:?????????88?*
ksize
*
paddingVALID*
strides
2&
$sequential/vgg16/block2_pool/MaxPool?
3sequential/vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype025
3sequential/vgg16/block3_conv1/Conv2D/ReadVariableOp?
$sequential/vgg16/block3_conv1/Conv2DConv2D-sequential/vgg16/block2_pool/MaxPool:output:0;sequential/vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2&
$sequential/vgg16/block3_conv1/Conv2D?
4sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOp?
%sequential/vgg16/block3_conv1/BiasAddBiasAdd-sequential/vgg16/block3_conv1/Conv2D:output:0<sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2'
%sequential/vgg16/block3_conv1/BiasAdd?
"sequential/vgg16/block3_conv1/ReluRelu.sequential/vgg16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2$
"sequential/vgg16/block3_conv1/Relu?
3sequential/vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype025
3sequential/vgg16/block3_conv2/Conv2D/ReadVariableOp?
$sequential/vgg16/block3_conv2/Conv2DConv2D0sequential/vgg16/block3_conv1/Relu:activations:0;sequential/vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2&
$sequential/vgg16/block3_conv2/Conv2D?
4sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOp?
%sequential/vgg16/block3_conv2/BiasAddBiasAdd-sequential/vgg16/block3_conv2/Conv2D:output:0<sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2'
%sequential/vgg16/block3_conv2/BiasAdd?
"sequential/vgg16/block3_conv2/ReluRelu.sequential/vgg16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2$
"sequential/vgg16/block3_conv2/Relu?
3sequential/vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype025
3sequential/vgg16/block3_conv3/Conv2D/ReadVariableOp?
$sequential/vgg16/block3_conv3/Conv2DConv2D0sequential/vgg16/block3_conv2/Relu:activations:0;sequential/vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2&
$sequential/vgg16/block3_conv3/Conv2D?
4sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOp?
%sequential/vgg16/block3_conv3/BiasAddBiasAdd-sequential/vgg16/block3_conv3/Conv2D:output:0<sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2'
%sequential/vgg16/block3_conv3/BiasAdd?
"sequential/vgg16/block3_conv3/ReluRelu.sequential/vgg16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2$
"sequential/vgg16/block3_conv3/Relu?
$sequential/vgg16/block3_pool/MaxPoolMaxPool0sequential/vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2&
$sequential/vgg16/block3_pool/MaxPool?
3sequential/vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype025
3sequential/vgg16/block4_conv1/Conv2D/ReadVariableOp?
$sequential/vgg16/block4_conv1/Conv2DConv2D-sequential/vgg16/block3_pool/MaxPool:output:0;sequential/vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2&
$sequential/vgg16/block4_conv1/Conv2D?
4sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOp?
%sequential/vgg16/block4_conv1/BiasAddBiasAdd-sequential/vgg16/block4_conv1/Conv2D:output:0<sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2'
%sequential/vgg16/block4_conv1/BiasAdd?
"sequential/vgg16/block4_conv1/ReluRelu.sequential/vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2$
"sequential/vgg16/block4_conv1/Relu?
3sequential/vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype025
3sequential/vgg16/block4_conv2/Conv2D/ReadVariableOp?
$sequential/vgg16/block4_conv2/Conv2DConv2D0sequential/vgg16/block4_conv1/Relu:activations:0;sequential/vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2&
$sequential/vgg16/block4_conv2/Conv2D?
4sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOp?
%sequential/vgg16/block4_conv2/BiasAddBiasAdd-sequential/vgg16/block4_conv2/Conv2D:output:0<sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2'
%sequential/vgg16/block4_conv2/BiasAdd?
"sequential/vgg16/block4_conv2/ReluRelu.sequential/vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2$
"sequential/vgg16/block4_conv2/Relu?
3sequential/vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype025
3sequential/vgg16/block4_conv3/Conv2D/ReadVariableOp?
$sequential/vgg16/block4_conv3/Conv2DConv2D0sequential/vgg16/block4_conv2/Relu:activations:0;sequential/vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2&
$sequential/vgg16/block4_conv3/Conv2D?
4sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOp?
%sequential/vgg16/block4_conv3/BiasAddBiasAdd-sequential/vgg16/block4_conv3/Conv2D:output:0<sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2'
%sequential/vgg16/block4_conv3/BiasAdd?
"sequential/vgg16/block4_conv3/ReluRelu.sequential/vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2$
"sequential/vgg16/block4_conv3/Relu?
$sequential/vgg16/block4_pool/MaxPoolMaxPool0sequential/vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2&
$sequential/vgg16/block4_pool/MaxPool?
3sequential/vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype025
3sequential/vgg16/block5_conv1/Conv2D/ReadVariableOp?
$sequential/vgg16/block5_conv1/Conv2DConv2D-sequential/vgg16/block4_pool/MaxPool:output:0;sequential/vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2&
$sequential/vgg16/block5_conv1/Conv2D?
4sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOp?
%sequential/vgg16/block5_conv1/BiasAddBiasAdd-sequential/vgg16/block5_conv1/Conv2D:output:0<sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2'
%sequential/vgg16/block5_conv1/BiasAdd?
"sequential/vgg16/block5_conv1/ReluRelu.sequential/vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2$
"sequential/vgg16/block5_conv1/Relu?
3sequential/vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype025
3sequential/vgg16/block5_conv2/Conv2D/ReadVariableOp?
$sequential/vgg16/block5_conv2/Conv2DConv2D0sequential/vgg16/block5_conv1/Relu:activations:0;sequential/vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2&
$sequential/vgg16/block5_conv2/Conv2D?
4sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOp?
%sequential/vgg16/block5_conv2/BiasAddBiasAdd-sequential/vgg16/block5_conv2/Conv2D:output:0<sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2'
%sequential/vgg16/block5_conv2/BiasAdd?
"sequential/vgg16/block5_conv2/ReluRelu.sequential/vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2$
"sequential/vgg16/block5_conv2/Relu?
3sequential/vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp<sequential_vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype025
3sequential/vgg16/block5_conv3/Conv2D/ReadVariableOp?
$sequential/vgg16/block5_conv3/Conv2DConv2D0sequential/vgg16/block5_conv2/Relu:activations:0;sequential/vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2&
$sequential/vgg16/block5_conv3/Conv2D?
4sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp=sequential_vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype026
4sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOp?
%sequential/vgg16/block5_conv3/BiasAddBiasAdd-sequential/vgg16/block5_conv3/Conv2D:output:0<sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2'
%sequential/vgg16/block5_conv3/BiasAdd?
"sequential/vgg16/block5_conv3/ReluRelu.sequential/vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2$
"sequential/vgg16/block5_conv3/Relu?
$sequential/vgg16/block5_pool/MaxPoolMaxPool0sequential/vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2&
$sequential/vgg16/block5_pool/MaxPool?
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02)
'sequential/conv2d/Conv2D/ReadVariableOp?
sequential/conv2d/Conv2DConv2D-sequential/vgg16/block5_pool/MaxPool:output:0/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
sequential/conv2d/Conv2D?
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(sequential/conv2d/BiasAdd/ReadVariableOp?
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
sequential/conv2d/BiasAdd?
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential/conv2d/Relu?
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02+
)sequential/conv2d_1/Conv2D/ReadVariableOp?
sequential/conv2d_1/Conv2DConv2D$sequential/conv2d/Relu:activations:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
sequential/conv2d_1/Conv2D?
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*sequential/conv2d_1/BiasAdd/ReadVariableOp?
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
sequential/conv2d_1/BiasAdd?
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
sequential/conv2d_1/Relu?
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
sequential/flatten/Const?
sequential/flatten/ReshapeReshape&sequential/conv2d_1/Relu:activations:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential/flatten/Reshape?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02(
&sequential/dense/MatMul/ReadVariableOp?
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
sequential/dense/MatMul?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
sequential/dense/BiasAdd?
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
sequential/dense/Relu?
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp?
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense_1/MatMul?
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOp?
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential/dense_1/BiasAdd?
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
sequential/dense_1/Softmax?
IdentityIdentity$sequential/dense_1/Softmax:softmax:0)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp5^sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOp4^sequential/vgg16/block1_conv1/Conv2D/ReadVariableOp5^sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOp4^sequential/vgg16/block1_conv2/Conv2D/ReadVariableOp5^sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOp4^sequential/vgg16/block2_conv1/Conv2D/ReadVariableOp5^sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOp4^sequential/vgg16/block2_conv2/Conv2D/ReadVariableOp5^sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOp4^sequential/vgg16/block3_conv1/Conv2D/ReadVariableOp5^sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOp4^sequential/vgg16/block3_conv2/Conv2D/ReadVariableOp5^sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOp4^sequential/vgg16/block3_conv3/Conv2D/ReadVariableOp5^sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOp4^sequential/vgg16/block4_conv1/Conv2D/ReadVariableOp5^sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOp4^sequential/vgg16/block4_conv2/Conv2D/ReadVariableOp5^sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOp4^sequential/vgg16/block4_conv3/Conv2D/ReadVariableOp5^sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOp4^sequential/vgg16/block5_conv1/Conv2D/ReadVariableOp5^sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOp4^sequential/vgg16/block5_conv2/Conv2D/ReadVariableOp5^sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOp4^sequential/vgg16/block5_conv3/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2l
4sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOp4sequential/vgg16/block1_conv1/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block1_conv1/Conv2D/ReadVariableOp3sequential/vgg16/block1_conv1/Conv2D/ReadVariableOp2l
4sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOp4sequential/vgg16/block1_conv2/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block1_conv2/Conv2D/ReadVariableOp3sequential/vgg16/block1_conv2/Conv2D/ReadVariableOp2l
4sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOp4sequential/vgg16/block2_conv1/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block2_conv1/Conv2D/ReadVariableOp3sequential/vgg16/block2_conv1/Conv2D/ReadVariableOp2l
4sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOp4sequential/vgg16/block2_conv2/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block2_conv2/Conv2D/ReadVariableOp3sequential/vgg16/block2_conv2/Conv2D/ReadVariableOp2l
4sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOp4sequential/vgg16/block3_conv1/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block3_conv1/Conv2D/ReadVariableOp3sequential/vgg16/block3_conv1/Conv2D/ReadVariableOp2l
4sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOp4sequential/vgg16/block3_conv2/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block3_conv2/Conv2D/ReadVariableOp3sequential/vgg16/block3_conv2/Conv2D/ReadVariableOp2l
4sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOp4sequential/vgg16/block3_conv3/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block3_conv3/Conv2D/ReadVariableOp3sequential/vgg16/block3_conv3/Conv2D/ReadVariableOp2l
4sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOp4sequential/vgg16/block4_conv1/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block4_conv1/Conv2D/ReadVariableOp3sequential/vgg16/block4_conv1/Conv2D/ReadVariableOp2l
4sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOp4sequential/vgg16/block4_conv2/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block4_conv2/Conv2D/ReadVariableOp3sequential/vgg16/block4_conv2/Conv2D/ReadVariableOp2l
4sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOp4sequential/vgg16/block4_conv3/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block4_conv3/Conv2D/ReadVariableOp3sequential/vgg16/block4_conv3/Conv2D/ReadVariableOp2l
4sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOp4sequential/vgg16/block5_conv1/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block5_conv1/Conv2D/ReadVariableOp3sequential/vgg16/block5_conv1/Conv2D/ReadVariableOp2l
4sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOp4sequential/vgg16/block5_conv2/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block5_conv2/Conv2D/ReadVariableOp3sequential/vgg16/block5_conv2/Conv2D/ReadVariableOp2l
4sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOp4sequential/vgg16/block5_conv3/BiasAdd/ReadVariableOp2j
3sequential/vgg16/block5_conv3/Conv2D/ReadVariableOp3sequential/vgg16/block5_conv3/Conv2D/ReadVariableOp:^ Z
1
_output_shapes
:???????????
%
_user_specified_namevgg16_input
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_51334

inputs5
1vgg16_block1_conv1_conv2d_readvariableop_resource6
2vgg16_block1_conv1_biasadd_readvariableop_resource5
1vgg16_block1_conv2_conv2d_readvariableop_resource6
2vgg16_block1_conv2_biasadd_readvariableop_resource5
1vgg16_block2_conv1_conv2d_readvariableop_resource6
2vgg16_block2_conv1_biasadd_readvariableop_resource5
1vgg16_block2_conv2_conv2d_readvariableop_resource6
2vgg16_block2_conv2_biasadd_readvariableop_resource5
1vgg16_block3_conv1_conv2d_readvariableop_resource6
2vgg16_block3_conv1_biasadd_readvariableop_resource5
1vgg16_block3_conv2_conv2d_readvariableop_resource6
2vgg16_block3_conv2_biasadd_readvariableop_resource5
1vgg16_block3_conv3_conv2d_readvariableop_resource6
2vgg16_block3_conv3_biasadd_readvariableop_resource5
1vgg16_block4_conv1_conv2d_readvariableop_resource6
2vgg16_block4_conv1_biasadd_readvariableop_resource5
1vgg16_block4_conv2_conv2d_readvariableop_resource6
2vgg16_block4_conv2_biasadd_readvariableop_resource5
1vgg16_block4_conv3_conv2d_readvariableop_resource6
2vgg16_block4_conv3_biasadd_readvariableop_resource5
1vgg16_block5_conv1_conv2d_readvariableop_resource6
2vgg16_block5_conv1_biasadd_readvariableop_resource5
1vgg16_block5_conv2_conv2d_readvariableop_resource6
2vgg16_block5_conv2_biasadd_readvariableop_resource5
1vgg16_block5_conv3_conv2d_readvariableop_resource6
2vgg16_block5_conv3_biasadd_readvariableop_resource)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?)vgg16/block1_conv1/BiasAdd/ReadVariableOp?(vgg16/block1_conv1/Conv2D/ReadVariableOp?)vgg16/block1_conv2/BiasAdd/ReadVariableOp?(vgg16/block1_conv2/Conv2D/ReadVariableOp?)vgg16/block2_conv1/BiasAdd/ReadVariableOp?(vgg16/block2_conv1/Conv2D/ReadVariableOp?)vgg16/block2_conv2/BiasAdd/ReadVariableOp?(vgg16/block2_conv2/Conv2D/ReadVariableOp?)vgg16/block3_conv1/BiasAdd/ReadVariableOp?(vgg16/block3_conv1/Conv2D/ReadVariableOp?)vgg16/block3_conv2/BiasAdd/ReadVariableOp?(vgg16/block3_conv2/Conv2D/ReadVariableOp?)vgg16/block3_conv3/BiasAdd/ReadVariableOp?(vgg16/block3_conv3/Conv2D/ReadVariableOp?)vgg16/block4_conv1/BiasAdd/ReadVariableOp?(vgg16/block4_conv1/Conv2D/ReadVariableOp?)vgg16/block4_conv2/BiasAdd/ReadVariableOp?(vgg16/block4_conv2/Conv2D/ReadVariableOp?)vgg16/block4_conv3/BiasAdd/ReadVariableOp?(vgg16/block4_conv3/Conv2D/ReadVariableOp?)vgg16/block5_conv1/BiasAdd/ReadVariableOp?(vgg16/block5_conv1/Conv2D/ReadVariableOp?)vgg16/block5_conv2/BiasAdd/ReadVariableOp?(vgg16/block5_conv2/Conv2D/ReadVariableOp?)vgg16/block5_conv3/BiasAdd/ReadVariableOp?(vgg16/block5_conv3/Conv2D/ReadVariableOp?
(vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02*
(vgg16/block1_conv1/Conv2D/ReadVariableOp?
vgg16/block1_conv1/Conv2DConv2Dinputs0vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
vgg16/block1_conv1/Conv2D?
)vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg16/block1_conv1/BiasAdd/ReadVariableOp?
vgg16/block1_conv1/BiasAddBiasAdd"vgg16/block1_conv1/Conv2D:output:01vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2
vgg16/block1_conv1/BiasAdd?
vgg16/block1_conv1/ReluRelu#vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
vgg16/block1_conv1/Relu?
(vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02*
(vgg16/block1_conv2/Conv2D/ReadVariableOp?
vgg16/block1_conv2/Conv2DConv2D%vgg16/block1_conv1/Relu:activations:00vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
vgg16/block1_conv2/Conv2D?
)vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg16/block1_conv2/BiasAdd/ReadVariableOp?
vgg16/block1_conv2/BiasAddBiasAdd"vgg16/block1_conv2/Conv2D:output:01vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2
vgg16/block1_conv2/BiasAdd?
vgg16/block1_conv2/ReluRelu#vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
vgg16/block1_conv2/Relu?
vgg16/block1_pool/MaxPoolMaxPool%vgg16/block1_conv2/Relu:activations:0*/
_output_shapes
:?????????pp@*
ksize
*
paddingVALID*
strides
2
vgg16/block1_pool/MaxPool?
(vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02*
(vgg16/block2_conv1/Conv2D/ReadVariableOp?
vgg16/block2_conv1/Conv2DConv2D"vgg16/block1_pool/MaxPool:output:00vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?*
paddingSAME*
strides
2
vgg16/block2_conv1/Conv2D?
)vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block2_conv1/BiasAdd/ReadVariableOp?
vgg16/block2_conv1/BiasAddBiasAdd"vgg16/block2_conv1/Conv2D:output:01vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?2
vgg16/block2_conv1/BiasAdd?
vgg16/block2_conv1/ReluRelu#vgg16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????pp?2
vgg16/block2_conv1/Relu?
(vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block2_conv2/Conv2D/ReadVariableOp?
vgg16/block2_conv2/Conv2DConv2D%vgg16/block2_conv1/Relu:activations:00vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?*
paddingSAME*
strides
2
vgg16/block2_conv2/Conv2D?
)vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block2_conv2/BiasAdd/ReadVariableOp?
vgg16/block2_conv2/BiasAddBiasAdd"vgg16/block2_conv2/Conv2D:output:01vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?2
vgg16/block2_conv2/BiasAdd?
vgg16/block2_conv2/ReluRelu#vgg16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????pp?2
vgg16/block2_conv2/Relu?
vgg16/block2_pool/MaxPoolMaxPool%vgg16/block2_conv2/Relu:activations:0*0
_output_shapes
:?????????88?*
ksize
*
paddingVALID*
strides
2
vgg16/block2_pool/MaxPool?
(vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block3_conv1/Conv2D/ReadVariableOp?
vgg16/block3_conv1/Conv2DConv2D"vgg16/block2_pool/MaxPool:output:00vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2
vgg16/block3_conv1/Conv2D?
)vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block3_conv1/BiasAdd/ReadVariableOp?
vgg16/block3_conv1/BiasAddBiasAdd"vgg16/block3_conv1/Conv2D:output:01vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2
vgg16/block3_conv1/BiasAdd?
vgg16/block3_conv1/ReluRelu#vgg16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2
vgg16/block3_conv1/Relu?
(vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block3_conv2/Conv2D/ReadVariableOp?
vgg16/block3_conv2/Conv2DConv2D%vgg16/block3_conv1/Relu:activations:00vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2
vgg16/block3_conv2/Conv2D?
)vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block3_conv2/BiasAdd/ReadVariableOp?
vgg16/block3_conv2/BiasAddBiasAdd"vgg16/block3_conv2/Conv2D:output:01vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2
vgg16/block3_conv2/BiasAdd?
vgg16/block3_conv2/ReluRelu#vgg16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2
vgg16/block3_conv2/Relu?
(vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block3_conv3/Conv2D/ReadVariableOp?
vgg16/block3_conv3/Conv2DConv2D%vgg16/block3_conv2/Relu:activations:00vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2
vgg16/block3_conv3/Conv2D?
)vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block3_conv3/BiasAdd/ReadVariableOp?
vgg16/block3_conv3/BiasAddBiasAdd"vgg16/block3_conv3/Conv2D:output:01vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2
vgg16/block3_conv3/BiasAdd?
vgg16/block3_conv3/ReluRelu#vgg16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2
vgg16/block3_conv3/Relu?
vgg16/block3_pool/MaxPoolMaxPool%vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
vgg16/block3_pool/MaxPool?
(vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block4_conv1/Conv2D/ReadVariableOp?
vgg16/block4_conv1/Conv2DConv2D"vgg16/block3_pool/MaxPool:output:00vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg16/block4_conv1/Conv2D?
)vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block4_conv1/BiasAdd/ReadVariableOp?
vgg16/block4_conv1/BiasAddBiasAdd"vgg16/block4_conv1/Conv2D:output:01vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg16/block4_conv1/BiasAdd?
vgg16/block4_conv1/ReluRelu#vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg16/block4_conv1/Relu?
(vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block4_conv2/Conv2D/ReadVariableOp?
vgg16/block4_conv2/Conv2DConv2D%vgg16/block4_conv1/Relu:activations:00vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg16/block4_conv2/Conv2D?
)vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block4_conv2/BiasAdd/ReadVariableOp?
vgg16/block4_conv2/BiasAddBiasAdd"vgg16/block4_conv2/Conv2D:output:01vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg16/block4_conv2/BiasAdd?
vgg16/block4_conv2/ReluRelu#vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg16/block4_conv2/Relu?
(vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block4_conv3/Conv2D/ReadVariableOp?
vgg16/block4_conv3/Conv2DConv2D%vgg16/block4_conv2/Relu:activations:00vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg16/block4_conv3/Conv2D?
)vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block4_conv3/BiasAdd/ReadVariableOp?
vgg16/block4_conv3/BiasAddBiasAdd"vgg16/block4_conv3/Conv2D:output:01vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg16/block4_conv3/BiasAdd?
vgg16/block4_conv3/ReluRelu#vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg16/block4_conv3/Relu?
vgg16/block4_pool/MaxPoolMaxPool%vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
vgg16/block4_pool/MaxPool?
(vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block5_conv1/Conv2D/ReadVariableOp?
vgg16/block5_conv1/Conv2DConv2D"vgg16/block4_pool/MaxPool:output:00vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg16/block5_conv1/Conv2D?
)vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block5_conv1/BiasAdd/ReadVariableOp?
vgg16/block5_conv1/BiasAddBiasAdd"vgg16/block5_conv1/Conv2D:output:01vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg16/block5_conv1/BiasAdd?
vgg16/block5_conv1/ReluRelu#vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg16/block5_conv1/Relu?
(vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block5_conv2/Conv2D/ReadVariableOp?
vgg16/block5_conv2/Conv2DConv2D%vgg16/block5_conv1/Relu:activations:00vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg16/block5_conv2/Conv2D?
)vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block5_conv2/BiasAdd/ReadVariableOp?
vgg16/block5_conv2/BiasAddBiasAdd"vgg16/block5_conv2/Conv2D:output:01vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg16/block5_conv2/BiasAdd?
vgg16/block5_conv2/ReluRelu#vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg16/block5_conv2/Relu?
(vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block5_conv3/Conv2D/ReadVariableOp?
vgg16/block5_conv3/Conv2DConv2D%vgg16/block5_conv2/Relu:activations:00vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg16/block5_conv3/Conv2D?
)vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block5_conv3/BiasAdd/ReadVariableOp?
vgg16/block5_conv3/BiasAddBiasAdd"vgg16/block5_conv3/Conv2D:output:01vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg16/block5_conv3/BiasAdd?
vgg16/block5_conv3/ReluRelu#vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg16/block5_conv3/Relu?
vgg16/block5_pool/MaxPoolMaxPool%vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
vgg16/block5_pool/MaxPool?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2D"vgg16/block5_pool/MaxPool:output:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d/BiasAddv
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d/Relu?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_1/Reluo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
flatten/Const?
flatten/ReshapeReshapeconv2d_1/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2

dense/Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1/Softmax?
IdentityIdentitydense_1/Softmax:softmax:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*^vgg16/block1_conv1/BiasAdd/ReadVariableOp)^vgg16/block1_conv1/Conv2D/ReadVariableOp*^vgg16/block1_conv2/BiasAdd/ReadVariableOp)^vgg16/block1_conv2/Conv2D/ReadVariableOp*^vgg16/block2_conv1/BiasAdd/ReadVariableOp)^vgg16/block2_conv1/Conv2D/ReadVariableOp*^vgg16/block2_conv2/BiasAdd/ReadVariableOp)^vgg16/block2_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv1/BiasAdd/ReadVariableOp)^vgg16/block3_conv1/Conv2D/ReadVariableOp*^vgg16/block3_conv2/BiasAdd/ReadVariableOp)^vgg16/block3_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv3/BiasAdd/ReadVariableOp)^vgg16/block3_conv3/Conv2D/ReadVariableOp*^vgg16/block4_conv1/BiasAdd/ReadVariableOp)^vgg16/block4_conv1/Conv2D/ReadVariableOp*^vgg16/block4_conv2/BiasAdd/ReadVariableOp)^vgg16/block4_conv2/Conv2D/ReadVariableOp*^vgg16/block4_conv3/BiasAdd/ReadVariableOp)^vgg16/block4_conv3/Conv2D/ReadVariableOp*^vgg16/block5_conv1/BiasAdd/ReadVariableOp)^vgg16/block5_conv1/Conv2D/ReadVariableOp*^vgg16/block5_conv2/BiasAdd/ReadVariableOp)^vgg16/block5_conv2/Conv2D/ReadVariableOp*^vgg16/block5_conv3/BiasAdd/ReadVariableOp)^vgg16/block5_conv3/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2V
)vgg16/block1_conv1/BiasAdd/ReadVariableOp)vgg16/block1_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv1/Conv2D/ReadVariableOp(vgg16/block1_conv1/Conv2D/ReadVariableOp2V
)vgg16/block1_conv2/BiasAdd/ReadVariableOp)vgg16/block1_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv2/Conv2D/ReadVariableOp(vgg16/block1_conv2/Conv2D/ReadVariableOp2V
)vgg16/block2_conv1/BiasAdd/ReadVariableOp)vgg16/block2_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv1/Conv2D/ReadVariableOp(vgg16/block2_conv1/Conv2D/ReadVariableOp2V
)vgg16/block2_conv2/BiasAdd/ReadVariableOp)vgg16/block2_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv2/Conv2D/ReadVariableOp(vgg16/block2_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv1/BiasAdd/ReadVariableOp)vgg16/block3_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv1/Conv2D/ReadVariableOp(vgg16/block3_conv1/Conv2D/ReadVariableOp2V
)vgg16/block3_conv2/BiasAdd/ReadVariableOp)vgg16/block3_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv2/Conv2D/ReadVariableOp(vgg16/block3_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv3/BiasAdd/ReadVariableOp)vgg16/block3_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv3/Conv2D/ReadVariableOp(vgg16/block3_conv3/Conv2D/ReadVariableOp2V
)vgg16/block4_conv1/BiasAdd/ReadVariableOp)vgg16/block4_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv1/Conv2D/ReadVariableOp(vgg16/block4_conv1/Conv2D/ReadVariableOp2V
)vgg16/block4_conv2/BiasAdd/ReadVariableOp)vgg16/block4_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv2/Conv2D/ReadVariableOp(vgg16/block4_conv2/Conv2D/ReadVariableOp2V
)vgg16/block4_conv3/BiasAdd/ReadVariableOp)vgg16/block4_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv3/Conv2D/ReadVariableOp(vgg16/block4_conv3/Conv2D/ReadVariableOp2V
)vgg16/block5_conv1/BiasAdd/ReadVariableOp)vgg16/block5_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv1/Conv2D/ReadVariableOp(vgg16/block5_conv1/Conv2D/ReadVariableOp2V
)vgg16/block5_conv2/BiasAdd/ReadVariableOp)vgg16/block5_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv2/Conv2D/ReadVariableOp(vgg16/block5_conv2/Conv2D/ReadVariableOp2V
)vgg16/block5_conv3/BiasAdd/ReadVariableOp)vgg16/block5_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv3/Conv2D/ReadVariableOp(vgg16/block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_51986

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

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
?
6
__inference__safe_squeeze_48660
y	
identity	C
SqueezeSqueezey*
T0	*
_output_shapes
:2	
SqueezeG
RankRankSqueeze:output:0*
T0	*
_output_shapes
: 2
RankT
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/yy
EqualEqualRank:output:0Equal/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
Equal?
condStatelessIf	Equal:z:0Squeeze:output:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
:* 
_read_only_resource_inputs
 *#
else_branchR
cond_false_48648*
output_shapes
:*"
then_branchR
cond_true_486472
cond\
cond/IdentityIdentitycond:output:0*
T0	*
_output_shapes
:2
cond/Identity[
IdentityIdentitycond/Identity:output:0*
T0	*
_output_shapes
:2

Identity"
identityIdentity:output:0*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namey
?
;
cond_false_48540
cond_cast_y_pred
cond_identity	q
	cond/CastCastcond_cast_y_pred*

DstT0	*

SrcT0*'
_output_shapes
:?????????2
	cond/Castk
cond/IdentityIdentitycond/Cast:y:0*
T0	*'
_output_shapes
:?????????2
cond/Identity"'
cond_identitycond/Identity:output:0*&
_input_shapes
:?????????:- )
'
_output_shapes
:?????????
?X
?	
@__inference_vgg16_layer_call_and_return_conditional_losses_50391

inputs
block1_conv1_50320
block1_conv1_50322
block1_conv2_50325
block1_conv2_50327
block2_conv1_50331
block2_conv1_50333
block2_conv2_50336
block2_conv2_50338
block3_conv1_50342
block3_conv1_50344
block3_conv2_50347
block3_conv2_50349
block3_conv3_50352
block3_conv3_50354
block4_conv1_50358
block4_conv1_50360
block4_conv2_50363
block4_conv2_50365
block4_conv3_50368
block4_conv3_50370
block5_conv1_50374
block5_conv1_50376
block5_conv2_50379
block5_conv2_50381
block5_conv3_50384
block5_conv3_50386
identity??$block1_conv1/StatefulPartitionedCall?$block1_conv2/StatefulPartitionedCall?$block2_conv1/StatefulPartitionedCall?$block2_conv2/StatefulPartitionedCall?$block3_conv1/StatefulPartitionedCall?$block3_conv2/StatefulPartitionedCall?$block3_conv3/StatefulPartitionedCall?$block4_conv1/StatefulPartitionedCall?$block4_conv2/StatefulPartitionedCall?$block4_conv3/StatefulPartitionedCall?$block5_conv1/StatefulPartitionedCall?$block5_conv2/StatefulPartitionedCall?$block5_conv3/StatefulPartitionedCall?
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_50320block1_conv1_50322*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_497632&
$block1_conv1/StatefulPartitionedCall?
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_50325block1_conv2_50327*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_497902&
$block1_conv2/StatefulPartitionedCall?
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_496942
block1_pool/PartitionedCall?
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_50331block2_conv1_50333*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????pp?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_498182&
$block2_conv1/StatefulPartitionedCall?
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_50336block2_conv2_50338*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????pp?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_498452&
$block2_conv2/StatefulPartitionedCall?
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_497062
block2_pool/PartitionedCall?
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_50342block3_conv1_50344*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_498732&
$block3_conv1/StatefulPartitionedCall?
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_50347block3_conv2_50349*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_499002&
$block3_conv2/StatefulPartitionedCall?
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_50352block3_conv3_50354*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_499272&
$block3_conv3/StatefulPartitionedCall?
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_497182
block3_pool/PartitionedCall?
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_50358block4_conv1_50360*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_499552&
$block4_conv1/StatefulPartitionedCall?
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_50363block4_conv2_50365*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_499822&
$block4_conv2/StatefulPartitionedCall?
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_50368block4_conv3_50370*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_500092&
$block4_conv3/StatefulPartitionedCall?
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_497302
block4_pool/PartitionedCall?
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_50374block5_conv1_50376*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_500372&
$block5_conv1/StatefulPartitionedCall?
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_50379block5_conv2_50381*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_500642&
$block5_conv2/StatefulPartitionedCall?
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_50384block5_conv3_50386*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_500912&
$block5_conv3/StatefulPartitionedCall?
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_497422
block5_pool/PartitionedCall?
IdentityIdentity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
G
+__inference_block1_pool_layer_call_fn_49700

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
GPU2*0J 8? *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_496942
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
?
G
+__inference_block3_pool_layer_call_fn_49724

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
GPU2*0J 8? *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_497182
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
G__inference_block5_conv2_layer_call_and_return_conditional_losses_52246

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?$
?
E__inference_sequential_layer_call_and_return_conditional_losses_50899

inputs
vgg16_50824
vgg16_50826
vgg16_50828
vgg16_50830
vgg16_50832
vgg16_50834
vgg16_50836
vgg16_50838
vgg16_50840
vgg16_50842
vgg16_50844
vgg16_50846
vgg16_50848
vgg16_50850
vgg16_50852
vgg16_50854
vgg16_50856
vgg16_50858
vgg16_50860
vgg16_50862
vgg16_50864
vgg16_50866
vgg16_50868
vgg16_50870
vgg16_50872
vgg16_50874
conv2d_50877
conv2d_50879
conv2d_1_50882
conv2d_1_50884
dense_50888
dense_50890
dense_1_50893
dense_1_50895
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?vgg16/StatefulPartitionedCall?
vgg16/StatefulPartitionedCallStatefulPartitionedCallinputsvgg16_50824vgg16_50826vgg16_50828vgg16_50830vgg16_50832vgg16_50834vgg16_50836vgg16_50838vgg16_50840vgg16_50842vgg16_50844vgg16_50846vgg16_50848vgg16_50850vgg16_50852vgg16_50854vgg16_50856vgg16_50858vgg16_50860vgg16_50862vgg16_50864vgg16_50866vgg16_50868vgg16_50870vgg16_50872vgg16_50874*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_502602
vgg16/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCall&vgg16/StatefulPartitionedCall:output:0conv2d_50877conv2d_50879*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_506282 
conv2d/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_50882conv2d_1_50884*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_506552"
 conv2d_1/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_506772
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_50888dense_50890*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_506962
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_50893dense_1_50895*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_507232!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
G__inference_block5_conv1_layer_call_and_return_conditional_losses_50037

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_block2_pool_layer_call_fn_49712

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
GPU2*0J 8? *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_497062
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
?
#__inference_signature_wrapper_51204
vgg16_input
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

unknown_32
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallvgg16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_496882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:???????????
%
_user_specified_namevgg16_input
?

?
G__inference_block3_conv1_layer_call_and_return_conditional_losses_52106

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????88?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????88?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????88?
 
_user_specified_nameinputs
?
?
,__inference_block4_conv2_layer_call_fn_52195

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
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_499822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_block5_conv1_layer_call_and_return_conditional_losses_52226

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_block4_conv2_layer_call_and_return_conditional_losses_49982

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_block5_conv1_layer_call_fn_52235

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
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_500372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_block2_conv1_layer_call_and_return_conditional_losses_52066

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
:?????????pp?*
paddingSAME*
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
:?????????pp?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????pp?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????pp?2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????pp@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????pp@
 
_user_specified_nameinputs
?
6
__inference__safe_squeeze_48593
y	
identity	C
SqueezeSqueezey*
T0	*
_output_shapes
:2	
SqueezeG
RankRankSqueeze:output:0*
T0	*
_output_shapes
: 2
RankT
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/yy
EqualEqualRank:output:0Equal/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
Equal?
condStatelessIf	Equal:z:0Squeeze:output:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
:* 
_read_only_resource_inputs
 *#
else_branchR
cond_false_48581*
output_shapes
:*"
then_branchR
cond_true_485802
cond\
cond/IdentityIdentitycond:output:0*
T0	*
_output_shapes
:2
cond/Identity[
IdentityIdentitycond/Identity:output:0*
T0	*
_output_shapes
:2

Identity"
identityIdentity:output:0*"
_input_shapes
:?????????:F B
#
_output_shapes
:?????????

_user_specified_namey
?

?
G__inference_block4_conv1_layer_call_and_return_conditional_losses_49955

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
<
cond_true_48604
cond_argmax_y_pred
cond_identity	y
cond/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
cond/ArgMax/dimension?
cond/ArgMaxArgMaxcond_argmax_y_predcond/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????2
cond/ArgMaxn
cond/IdentityIdentitycond/ArgMax:output:0*
T0	*#
_output_shapes
:?????????2
cond/Identity"'
cond_identitycond/Identity:output:0*&
_input_shapes
:?????????:- )
'
_output_shapes
:?????????
?
?
Tconfusion_matrix_assert_non_negative_assert_less_equal_Assert_AssertGuard_true_48701?
?confusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_identity_confusion_matrix_assert_non_negative_assert_less_equal_all
Y
Uconfusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_placeholder	X
Tconfusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
?
Nconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2P
Nconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp?
Rconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity?confusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_identity_confusion_matrix_assert_non_negative_assert_less_equal_allO^confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2T
Rconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity?
Tconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1Identity[confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2V
Tconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1"?
Tconfusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_identity_1]confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*
_input_shapes
: :: 

_output_shapes
: :

_output_shapes
:
?
?
=confusion_matrix_assert_less_1_Assert_AssertGuard_false_48791_
[confusion_matrix_assert_less_1_assert_assertguard_assert_confusion_matrix_assert_less_1_all
b
^confusion_matrix_assert_less_1_assert_assertguard_assert_confusion_matrix_control_dependency_1	R
Nconfusion_matrix_assert_less_1_assert_assertguard_assert_confusion_matrix_cast	@
<confusion_matrix_assert_less_1_assert_assertguard_identity_1
??8confusion_matrix/assert_less_1/Assert/AssertGuard/Assert?
?confusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*+
value"B  B`predictions` out of bound2A
?confusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_0?
?confusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*Condition x < y did not hold element-wise:2A
?confusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_1?
?confusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*?
value6B4 B.x (confusion_matrix/control_dependency_1:0) = 2A
?confusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_2?
?confusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*/
value&B$ By (confusion_matrix/Cast:0) = 2A
?confusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_4?
8confusion_matrix/assert_less_1/Assert/AssertGuard/AssertAssert[confusion_matrix_assert_less_1_assert_assertguard_assert_confusion_matrix_assert_less_1_allHconfusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_0:output:0Hconfusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_1:output:0Hconfusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_2:output:0^confusion_matrix_assert_less_1_assert_assertguard_assert_confusion_matrix_control_dependency_1Hconfusion_matrix/assert_less_1/Assert/AssertGuard/Assert/data_4:output:0Nconfusion_matrix_assert_less_1_assert_assertguard_assert_confusion_matrix_cast*
T

2		*
_output_shapes
 2:
8confusion_matrix/assert_less_1/Assert/AssertGuard/Assert?
:confusion_matrix/assert_less_1/Assert/AssertGuard/IdentityIdentity[confusion_matrix_assert_less_1_assert_assertguard_assert_confusion_matrix_assert_less_1_all9^confusion_matrix/assert_less_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2<
:confusion_matrix/assert_less_1/Assert/AssertGuard/Identity?
<confusion_matrix/assert_less_1/Assert/AssertGuard/Identity_1IdentityCconfusion_matrix/assert_less_1/Assert/AssertGuard/Identity:output:09^confusion_matrix/assert_less_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2>
<confusion_matrix/assert_less_1/Assert/AssertGuard/Identity_1"?
<confusion_matrix_assert_less_1_assert_assertguard_identity_1Econfusion_matrix/assert_less_1/Assert/AssertGuard/Identity_1:output:0*
_input_shapes

: :: 2t
8confusion_matrix/assert_less_1/Assert/AssertGuard/Assert8confusion_matrix/assert_less_1/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
::

_output_shapes
: 
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_51970

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?X
?	
@__inference_vgg16_layer_call_and_return_conditional_losses_50109
input_1
block1_conv1_49774
block1_conv1_49776
block1_conv2_49801
block1_conv2_49803
block2_conv1_49829
block2_conv1_49831
block2_conv2_49856
block2_conv2_49858
block3_conv1_49884
block3_conv1_49886
block3_conv2_49911
block3_conv2_49913
block3_conv3_49938
block3_conv3_49940
block4_conv1_49966
block4_conv1_49968
block4_conv2_49993
block4_conv2_49995
block4_conv3_50020
block4_conv3_50022
block5_conv1_50048
block5_conv1_50050
block5_conv2_50075
block5_conv2_50077
block5_conv3_50102
block5_conv3_50104
identity??$block1_conv1/StatefulPartitionedCall?$block1_conv2/StatefulPartitionedCall?$block2_conv1/StatefulPartitionedCall?$block2_conv2/StatefulPartitionedCall?$block3_conv1/StatefulPartitionedCall?$block3_conv2/StatefulPartitionedCall?$block3_conv3/StatefulPartitionedCall?$block4_conv1/StatefulPartitionedCall?$block4_conv2/StatefulPartitionedCall?$block4_conv3/StatefulPartitionedCall?$block5_conv1/StatefulPartitionedCall?$block5_conv2/StatefulPartitionedCall?$block5_conv3/StatefulPartitionedCall?
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1block1_conv1_49774block1_conv1_49776*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_497632&
$block1_conv1/StatefulPartitionedCall?
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_49801block1_conv2_49803*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_497902&
$block1_conv2/StatefulPartitionedCall?
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_496942
block1_pool/PartitionedCall?
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_49829block2_conv1_49831*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????pp?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_498182&
$block2_conv1/StatefulPartitionedCall?
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_49856block2_conv2_49858*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????pp?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_498452&
$block2_conv2/StatefulPartitionedCall?
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_497062
block2_pool/PartitionedCall?
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_49884block3_conv1_49886*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_498732&
$block3_conv1/StatefulPartitionedCall?
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_49911block3_conv2_49913*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_499002&
$block3_conv2/StatefulPartitionedCall?
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_49938block3_conv3_49940*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_499272&
$block3_conv3/StatefulPartitionedCall?
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_497182
block3_pool/PartitionedCall?
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_49966block4_conv1_49968*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_499552&
$block4_conv1/StatefulPartitionedCall?
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_49993block4_conv2_49995*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_499822&
$block4_conv2/StatefulPartitionedCall?
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_50020block4_conv3_50022*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_500092&
$block4_conv3/StatefulPartitionedCall?
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_497302
block4_pool/PartitionedCall?
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_50048block5_conv1_50050*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_500372&
$block5_conv1/StatefulPartitionedCall?
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_50075block5_conv2_50077*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_500642&
$block5_conv2/StatefulPartitionedCall?
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_50102block5_conv3_50104*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_500912&
$block5_conv3/StatefulPartitionedCall?
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_497422
block5_pool/PartitionedCall?
IdentityIdentity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
?
,__inference_block3_conv3_layer_call_fn_52155

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
:?????????88?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_499272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????88?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????88?::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????88?
 
_user_specified_nameinputs
?

?
G__inference_block3_conv2_layer_call_and_return_conditional_losses_52126

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????88?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????88?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????88?
 
_user_specified_nameinputs
?
?
%__inference_vgg16_layer_call_fn_51867

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

unknown_24
identity??StatefulPartitionedCall?
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_502602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
G__inference_block1_conv2_layer_call_and_return_conditional_losses_49790

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
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
?
@
cond_false_48561
cond_identity_squeeze	
cond_identity	d
cond/IdentityIdentitycond_identity_squeeze*
T0	*
_output_shapes
:2
cond/Identity"'
cond_identitycond/Identity:output:0*
_input_shapes
:: 

_output_shapes
:
?

?
<confusion_matrix_assert_less_1_Assert_AssertGuard_true_48790a
]confusion_matrix_assert_less_1_assert_assertguard_identity_confusion_matrix_assert_less_1_all
A
=confusion_matrix_assert_less_1_assert_assertguard_placeholder	C
?confusion_matrix_assert_less_1_assert_assertguard_placeholder_1	@
<confusion_matrix_assert_less_1_assert_assertguard_identity_1
?
6confusion_matrix/assert_less_1/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 28
6confusion_matrix/assert_less_1/Assert/AssertGuard/NoOp?
:confusion_matrix/assert_less_1/Assert/AssertGuard/IdentityIdentity]confusion_matrix_assert_less_1_assert_assertguard_identity_confusion_matrix_assert_less_1_all7^confusion_matrix/assert_less_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2<
:confusion_matrix/assert_less_1/Assert/AssertGuard/Identity?
<confusion_matrix/assert_less_1/Assert/AssertGuard/Identity_1IdentityCconfusion_matrix/assert_less_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2>
<confusion_matrix/assert_less_1/Assert/AssertGuard/Identity_1"?
<confusion_matrix_assert_less_1_assert_assertguard_identity_1Econfusion_matrix/assert_less_1/Assert/AssertGuard/Identity_1:output:0*
_input_shapes

: :: : 

_output_shapes
: :

_output_shapes
::

_output_shapes
: 
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_50696

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

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
?
?
,__inference_block1_conv1_layer_call_fn_52035

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
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_497632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
A
cond_true_48647
cond_expanddims_squeeze	
cond_identity	l
cond/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
cond/ExpandDims/dim?
cond/ExpandDims
ExpandDimscond_expanddims_squeezecond/ExpandDims/dim:output:0*
T0	*
_output_shapes
:2
cond/ExpandDimsg
cond/IdentityIdentitycond/ExpandDims:output:0*
T0	*
_output_shapes
:2
cond/Identity"'
cond_identitycond/Identity:output:0*
_input_shapes
:: 

_output_shapes
:
?

?
C__inference_conv2d_1_layer_call_and_return_conditional_losses_51955

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
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
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_block1_conv1_layer_call_and_return_conditional_losses_49763

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
G__inference_block2_conv2_layer_call_and_return_conditional_losses_52086

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
:?????????pp?*
paddingSAME*
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
:?????????pp?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????pp?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????pp?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????pp?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????pp?
 
_user_specified_nameinputs
?

?
G__inference_block4_conv1_layer_call_and_return_conditional_losses_52166

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?$
?
E__inference_sequential_layer_call_and_return_conditional_losses_51050

inputs
vgg16_50975
vgg16_50977
vgg16_50979
vgg16_50981
vgg16_50983
vgg16_50985
vgg16_50987
vgg16_50989
vgg16_50991
vgg16_50993
vgg16_50995
vgg16_50997
vgg16_50999
vgg16_51001
vgg16_51003
vgg16_51005
vgg16_51007
vgg16_51009
vgg16_51011
vgg16_51013
vgg16_51015
vgg16_51017
vgg16_51019
vgg16_51021
vgg16_51023
vgg16_51025
conv2d_51028
conv2d_51030
conv2d_1_51033
conv2d_1_51035
dense_51039
dense_51041
dense_1_51044
dense_1_51046
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?vgg16/StatefulPartitionedCall?
vgg16/StatefulPartitionedCallStatefulPartitionedCallinputsvgg16_50975vgg16_50977vgg16_50979vgg16_50981vgg16_50983vgg16_50985vgg16_50987vgg16_50989vgg16_50991vgg16_50993vgg16_50995vgg16_50997vgg16_50999vgg16_51001vgg16_51003vgg16_51005vgg16_51007vgg16_51009vgg16_51011vgg16_51013vgg16_51015vgg16_51017vgg16_51019vgg16_51021vgg16_51023vgg16_51025*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_503912
vgg16/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCall&vgg16/StatefulPartitionedCall:output:0conv2d_51028conv2d_51030*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_506282 
conv2d/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_51033conv2d_1_51035*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_506552"
 conv2d_1/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_506772
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_51039dense_51041*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_506962
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_51044dense_1_51046*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_507232!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
{
&__inference_conv2d_layer_call_fn_51944

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
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_506282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_block1_conv1_layer_call_and_return_conditional_losses_52026

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
G
+__inference_block4_pool_layer_call_fn_49736

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
GPU2*0J 8? *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_497302
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
?
G
+__inference_block5_pool_layer_call_fn_49748

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
GPU2*0J 8? *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_497422
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
??
?
@__inference_vgg16_layer_call_and_return_conditional_losses_51810

inputs/
+block1_conv1_conv2d_readvariableop_resource0
,block1_conv1_biasadd_readvariableop_resource/
+block1_conv2_conv2d_readvariableop_resource0
,block1_conv2_biasadd_readvariableop_resource/
+block2_conv1_conv2d_readvariableop_resource0
,block2_conv1_biasadd_readvariableop_resource/
+block2_conv2_conv2d_readvariableop_resource0
,block2_conv2_biasadd_readvariableop_resource/
+block3_conv1_conv2d_readvariableop_resource0
,block3_conv1_biasadd_readvariableop_resource/
+block3_conv2_conv2d_readvariableop_resource0
,block3_conv2_biasadd_readvariableop_resource/
+block3_conv3_conv2d_readvariableop_resource0
,block3_conv3_biasadd_readvariableop_resource/
+block4_conv1_conv2d_readvariableop_resource0
,block4_conv1_biasadd_readvariableop_resource/
+block4_conv2_conv2d_readvariableop_resource0
,block4_conv2_biasadd_readvariableop_resource/
+block4_conv3_conv2d_readvariableop_resource0
,block4_conv3_biasadd_readvariableop_resource/
+block5_conv1_conv2d_readvariableop_resource0
,block5_conv1_biasadd_readvariableop_resource/
+block5_conv2_conv2d_readvariableop_resource0
,block5_conv2_biasadd_readvariableop_resource/
+block5_conv3_conv2d_readvariableop_resource0
,block5_conv3_biasadd_readvariableop_resource
identity??#block1_conv1/BiasAdd/ReadVariableOp?"block1_conv1/Conv2D/ReadVariableOp?#block1_conv2/BiasAdd/ReadVariableOp?"block1_conv2/Conv2D/ReadVariableOp?#block2_conv1/BiasAdd/ReadVariableOp?"block2_conv1/Conv2D/ReadVariableOp?#block2_conv2/BiasAdd/ReadVariableOp?"block2_conv2/Conv2D/ReadVariableOp?#block3_conv1/BiasAdd/ReadVariableOp?"block3_conv1/Conv2D/ReadVariableOp?#block3_conv2/BiasAdd/ReadVariableOp?"block3_conv2/Conv2D/ReadVariableOp?#block3_conv3/BiasAdd/ReadVariableOp?"block3_conv3/Conv2D/ReadVariableOp?#block4_conv1/BiasAdd/ReadVariableOp?"block4_conv1/Conv2D/ReadVariableOp?#block4_conv2/BiasAdd/ReadVariableOp?"block4_conv2/Conv2D/ReadVariableOp?#block4_conv3/BiasAdd/ReadVariableOp?"block4_conv3/Conv2D/ReadVariableOp?#block5_conv1/BiasAdd/ReadVariableOp?"block5_conv1/Conv2D/ReadVariableOp?#block5_conv2/BiasAdd/ReadVariableOp?"block5_conv2/Conv2D/ReadVariableOp?#block5_conv3/BiasAdd/ReadVariableOp?"block5_conv3/Conv2D/ReadVariableOp?
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"block1_conv1/Conv2D/ReadVariableOp?
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
block1_conv1/Conv2D?
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv1/BiasAdd/ReadVariableOp?
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2
block1_conv1/BiasAdd?
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
block1_conv1/Relu?
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"block1_conv2/Conv2D/ReadVariableOp?
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
block1_conv2/Conv2D?
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv2/BiasAdd/ReadVariableOp?
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2
block1_conv2/BiasAdd?
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
block1_conv2/Relu?
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:?????????pp@*
ksize
*
paddingVALID*
strides
2
block1_pool/MaxPool?
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02$
"block2_conv1/Conv2D/ReadVariableOp?
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?*
paddingSAME*
strides
2
block2_conv1/Conv2D?
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block2_conv1/BiasAdd/ReadVariableOp?
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?2
block2_conv1/BiasAdd?
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????pp?2
block2_conv1/Relu?
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block2_conv2/Conv2D/ReadVariableOp?
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?*
paddingSAME*
strides
2
block2_conv2/Conv2D?
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block2_conv2/BiasAdd/ReadVariableOp?
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?2
block2_conv2/BiasAdd?
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????pp?2
block2_conv2/Relu?
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:?????????88?*
ksize
*
paddingVALID*
strides
2
block2_pool/MaxPool?
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block3_conv1/Conv2D/ReadVariableOp?
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2
block3_conv1/Conv2D?
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block3_conv1/BiasAdd/ReadVariableOp?
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2
block3_conv1/BiasAdd?
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2
block3_conv1/Relu?
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block3_conv2/Conv2D/ReadVariableOp?
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2
block3_conv2/Conv2D?
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block3_conv2/BiasAdd/ReadVariableOp?
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2
block3_conv2/BiasAdd?
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2
block3_conv2/Relu?
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block3_conv3/Conv2D/ReadVariableOp?
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2
block3_conv3/Conv2D?
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block3_conv3/BiasAdd/ReadVariableOp?
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2
block3_conv3/BiasAdd?
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2
block3_conv3/Relu?
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
block3_pool/MaxPool?
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block4_conv1/Conv2D/ReadVariableOp?
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block4_conv1/Conv2D?
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block4_conv1/BiasAdd/ReadVariableOp?
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block4_conv1/BiasAdd?
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block4_conv1/Relu?
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block4_conv2/Conv2D/ReadVariableOp?
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block4_conv2/Conv2D?
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block4_conv2/BiasAdd/ReadVariableOp?
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block4_conv2/BiasAdd?
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block4_conv2/Relu?
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block4_conv3/Conv2D/ReadVariableOp?
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block4_conv3/Conv2D?
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block4_conv3/BiasAdd/ReadVariableOp?
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block4_conv3/BiasAdd?
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block4_conv3/Relu?
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
block4_pool/MaxPool?
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block5_conv1/Conv2D/ReadVariableOp?
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block5_conv1/Conv2D?
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block5_conv1/BiasAdd/ReadVariableOp?
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block5_conv1/BiasAdd?
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block5_conv1/Relu?
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block5_conv2/Conv2D/ReadVariableOp?
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block5_conv2/Conv2D?
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block5_conv2/BiasAdd/ReadVariableOp?
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block5_conv2/BiasAdd?
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block5_conv2/Relu?
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block5_conv3/Conv2D/ReadVariableOp?
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block5_conv3/Conv2D?
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block5_conv3/BiasAdd/ReadVariableOp?
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block5_conv3/BiasAdd?
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block5_conv3/Relu?
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
block5_pool/MaxPool?
IdentityIdentityblock5_pool/MaxPool:output:0$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
G__inference_block2_conv1_layer_call_and_return_conditional_losses_49818

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
:?????????pp?*
paddingSAME*
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
:?????????pp?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????pp?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????pp?2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????pp@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????pp@
 
_user_specified_nameinputs
?
?
Vconfusion_matrix_assert_non_negative_1_assert_less_equal_Assert_AssertGuard_true_48729?
?confusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_identity_confusion_matrix_assert_non_negative_1_assert_less_equal_all
[
Wconfusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_placeholder	Z
Vconfusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_identity_1
?
Pconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2R
Pconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/NoOp?
Tconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/IdentityIdentity?confusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_identity_confusion_matrix_assert_non_negative_1_assert_less_equal_allQ^confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2V
Tconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity?
Vconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity_1Identity]confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2X
Vconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity_1"?
Vconfusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_identity_1_confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*
_input_shapes
: :: 

_output_shapes
: :

_output_shapes
:
?

?
G__inference_block3_conv1_layer_call_and_return_conditional_losses_49873

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????88?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????88?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????88?
 
_user_specified_nameinputs
?}
?
__inference__traced_save_52502
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop2
.savev2_block1_conv1_kernel_read_readvariableop0
,savev2_block1_conv1_bias_read_readvariableop2
.savev2_block1_conv2_kernel_read_readvariableop0
,savev2_block1_conv2_bias_read_readvariableop2
.savev2_block2_conv1_kernel_read_readvariableop0
,savev2_block2_conv1_bias_read_readvariableop2
.savev2_block2_conv2_kernel_read_readvariableop0
,savev2_block2_conv2_bias_read_readvariableop2
.savev2_block3_conv1_kernel_read_readvariableop0
,savev2_block3_conv1_bias_read_readvariableop2
.savev2_block3_conv2_kernel_read_readvariableop0
,savev2_block3_conv2_bias_read_readvariableop2
.savev2_block3_conv3_kernel_read_readvariableop0
,savev2_block3_conv3_bias_read_readvariableop2
.savev2_block4_conv1_kernel_read_readvariableop0
,savev2_block4_conv1_bias_read_readvariableop2
.savev2_block4_conv2_kernel_read_readvariableop0
,savev2_block4_conv2_bias_read_readvariableop2
.savev2_block4_conv3_kernel_read_readvariableop0
,savev2_block4_conv3_bias_read_readvariableop2
.savev2_block5_conv1_kernel_read_readvariableop0
,savev2_block5_conv1_bias_read_readvariableop2
.savev2_block5_conv2_kernel_read_readvariableop0
,savev2_block5_conv2_bias_read_readvariableop2
.savev2_block5_conv3_kernel_read_readvariableop0
,savev2_block5_conv3_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop-
)savev2_true_positives_read_readvariableop-
)savev2_true_negatives_read_readvariableop.
*savev2_false_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop'
#savev2_conf_mtx_read_readvariableop/
+savev2_true_positives_1_read_readvariableop0
,savev2_false_positives_1_read_readvariableop0
,savev2_false_negatives_1_read_readvariableop3
/savev2_weights_intermediate_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*?
value?B?EB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB7keras_api/metrics/3/conf_mtx/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/4/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/4/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/4/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBCkeras_api/metrics/4/weights_intermediate/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*?
value?B?EB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop.savev2_block1_conv1_kernel_read_readvariableop,savev2_block1_conv1_bias_read_readvariableop.savev2_block1_conv2_kernel_read_readvariableop,savev2_block1_conv2_bias_read_readvariableop.savev2_block2_conv1_kernel_read_readvariableop,savev2_block2_conv1_bias_read_readvariableop.savev2_block2_conv2_kernel_read_readvariableop,savev2_block2_conv2_bias_read_readvariableop.savev2_block3_conv1_kernel_read_readvariableop,savev2_block3_conv1_bias_read_readvariableop.savev2_block3_conv2_kernel_read_readvariableop,savev2_block3_conv2_bias_read_readvariableop.savev2_block3_conv3_kernel_read_readvariableop,savev2_block3_conv3_bias_read_readvariableop.savev2_block4_conv1_kernel_read_readvariableop,savev2_block4_conv1_bias_read_readvariableop.savev2_block4_conv2_kernel_read_readvariableop,savev2_block4_conv2_bias_read_readvariableop.savev2_block4_conv3_kernel_read_readvariableop,savev2_block4_conv3_bias_read_readvariableop.savev2_block5_conv1_kernel_read_readvariableop,savev2_block5_conv1_bias_read_readvariableop.savev2_block5_conv2_kernel_read_readvariableop,savev2_block5_conv2_bias_read_readvariableop.savev2_block5_conv3_kernel_read_readvariableop,savev2_block5_conv3_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop)savev2_true_positives_read_readvariableop)savev2_true_negatives_read_readvariableop*savev2_false_positives_read_readvariableop*savev2_false_negatives_read_readvariableop#savev2_conf_mtx_read_readvariableop+savev2_true_positives_1_read_readvariableop,savev2_false_positives_1_read_readvariableop,savev2_false_negatives_1_read_readvariableop/savev2_weights_intermediate_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *S
dtypesI
G2E	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :??:?:?@:@:	?d:d:d:: : : : : :@:@:@@:@:@?:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?:??:?: : : : :?:?:?:?::::::??:?:?@:@:	?d:d:d::??:?:?@:@:	?d:d:d:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:.*
(
_output_shapes
:??:!

_output_shapes	
:?:-)
'
_output_shapes
:?@: 

_output_shapes
:@:%!

_output_shapes
:	?d: 

_output_shapes
:d:$ 

_output_shapes

:d: 

_output_shapes
::	
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
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:. *
(
_output_shapes
:??:!!

_output_shapes	
:?:."*
(
_output_shapes
:??:!#

_output_shapes	
:?:.$*
(
_output_shapes
:??:!%

_output_shapes	
:?:.&*
(
_output_shapes
:??:!'

_output_shapes	
:?:(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :!,
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
:?:$0 

_output_shapes

:: 1

_output_shapes
:: 2

_output_shapes
:: 3

_output_shapes
:: 4

_output_shapes
::.5*
(
_output_shapes
:??:!6

_output_shapes	
:?:-7)
'
_output_shapes
:?@: 8

_output_shapes
:@:%9!

_output_shapes
:	?d: :

_output_shapes
:d:$; 

_output_shapes

:d: <

_output_shapes
::.=*
(
_output_shapes
:??:!>

_output_shapes	
:?:-?)
'
_output_shapes
:?@: @

_output_shapes
:@:%A!

_output_shapes
:	?d: B

_output_shapes
:d:$C 

_output_shapes

:d: D

_output_shapes
::E

_output_shapes
: 
ѓ
?"
!__inference__traced_restore_52716
file_prefix"
assignvariableop_conv2d_kernel"
assignvariableop_1_conv2d_bias&
"assignvariableop_2_conv2d_1_kernel$
 assignvariableop_3_conv2d_1_bias#
assignvariableop_4_dense_kernel!
assignvariableop_5_dense_bias%
!assignvariableop_6_dense_1_kernel#
assignvariableop_7_dense_1_bias 
assignvariableop_8_adam_iter"
assignvariableop_9_adam_beta_1#
assignvariableop_10_adam_beta_2"
assignvariableop_11_adam_decay*
&assignvariableop_12_adam_learning_rate+
'assignvariableop_13_block1_conv1_kernel)
%assignvariableop_14_block1_conv1_bias+
'assignvariableop_15_block1_conv2_kernel)
%assignvariableop_16_block1_conv2_bias+
'assignvariableop_17_block2_conv1_kernel)
%assignvariableop_18_block2_conv1_bias+
'assignvariableop_19_block2_conv2_kernel)
%assignvariableop_20_block2_conv2_bias+
'assignvariableop_21_block3_conv1_kernel)
%assignvariableop_22_block3_conv1_bias+
'assignvariableop_23_block3_conv2_kernel)
%assignvariableop_24_block3_conv2_bias+
'assignvariableop_25_block3_conv3_kernel)
%assignvariableop_26_block3_conv3_bias+
'assignvariableop_27_block4_conv1_kernel)
%assignvariableop_28_block4_conv1_bias+
'assignvariableop_29_block4_conv2_kernel)
%assignvariableop_30_block4_conv2_bias+
'assignvariableop_31_block4_conv3_kernel)
%assignvariableop_32_block4_conv3_bias+
'assignvariableop_33_block5_conv1_kernel)
%assignvariableop_34_block5_conv1_bias+
'assignvariableop_35_block5_conv2_kernel)
%assignvariableop_36_block5_conv2_bias+
'assignvariableop_37_block5_conv3_kernel)
%assignvariableop_38_block5_conv3_bias
assignvariableop_39_total
assignvariableop_40_count
assignvariableop_41_total_1
assignvariableop_42_count_1&
"assignvariableop_43_true_positives&
"assignvariableop_44_true_negatives'
#assignvariableop_45_false_positives'
#assignvariableop_46_false_negatives 
assignvariableop_47_conf_mtx(
$assignvariableop_48_true_positives_1)
%assignvariableop_49_false_positives_1)
%assignvariableop_50_false_negatives_1,
(assignvariableop_51_weights_intermediate,
(assignvariableop_52_adam_conv2d_kernel_m*
&assignvariableop_53_adam_conv2d_bias_m.
*assignvariableop_54_adam_conv2d_1_kernel_m,
(assignvariableop_55_adam_conv2d_1_bias_m+
'assignvariableop_56_adam_dense_kernel_m)
%assignvariableop_57_adam_dense_bias_m-
)assignvariableop_58_adam_dense_1_kernel_m+
'assignvariableop_59_adam_dense_1_bias_m,
(assignvariableop_60_adam_conv2d_kernel_v*
&assignvariableop_61_adam_conv2d_bias_v.
*assignvariableop_62_adam_conv2d_1_kernel_v,
(assignvariableop_63_adam_conv2d_1_bias_v+
'assignvariableop_64_adam_dense_kernel_v)
%assignvariableop_65_adam_dense_bias_v-
)assignvariableop_66_adam_dense_1_kernel_v+
'assignvariableop_67_adam_dense_1_bias_v
identity_69??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*?
value?B?EB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB7keras_api/metrics/3/conf_mtx/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/4/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/4/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/4/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBCkeras_api/metrics/4/weights_intermediate/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*?
value?B?EB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*S
dtypesI
G2E	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp'assignvariableop_13_block1_conv1_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp%assignvariableop_14_block1_conv1_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp'assignvariableop_15_block1_conv2_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp%assignvariableop_16_block1_conv2_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp'assignvariableop_17_block2_conv1_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_block2_conv1_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp'assignvariableop_19_block2_conv2_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp%assignvariableop_20_block2_conv2_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp'assignvariableop_21_block3_conv1_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp%assignvariableop_22_block3_conv1_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp'assignvariableop_23_block3_conv2_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp%assignvariableop_24_block3_conv2_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp'assignvariableop_25_block3_conv3_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp%assignvariableop_26_block3_conv3_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp'assignvariableop_27_block4_conv1_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp%assignvariableop_28_block4_conv1_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp'assignvariableop_29_block4_conv2_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp%assignvariableop_30_block4_conv2_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp'assignvariableop_31_block4_conv3_kernelIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp%assignvariableop_32_block4_conv3_biasIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp'assignvariableop_33_block5_conv1_kernelIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp%assignvariableop_34_block5_conv1_biasIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp'assignvariableop_35_block5_conv2_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp%assignvariableop_36_block5_conv2_biasIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp'assignvariableop_37_block5_conv3_kernelIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp%assignvariableop_38_block5_conv3_biasIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOpassignvariableop_39_totalIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOpassignvariableop_40_countIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOpassignvariableop_41_total_1Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOpassignvariableop_42_count_1Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp"assignvariableop_43_true_positivesIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp"assignvariableop_44_true_negativesIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp#assignvariableop_45_false_positivesIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp#assignvariableop_46_false_negativesIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOpassignvariableop_47_conf_mtxIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp$assignvariableop_48_true_positives_1Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp%assignvariableop_49_false_positives_1Identity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp%assignvariableop_50_false_negatives_1Identity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp(assignvariableop_51_weights_intermediateIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_conv2d_kernel_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp&assignvariableop_53_adam_conv2d_bias_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp*assignvariableop_54_adam_conv2d_1_kernel_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp(assignvariableop_55_adam_conv2d_1_bias_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp'assignvariableop_56_adam_dense_kernel_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp%assignvariableop_57_adam_dense_bias_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_dense_1_kernel_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp'assignvariableop_59_adam_dense_1_bias_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_conv2d_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp&assignvariableop_61_adam_conv2d_bias_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp*assignvariableop_62_adam_conv2d_1_kernel_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp(assignvariableop_63_adam_conv2d_1_bias_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp'assignvariableop_64_adam_dense_kernel_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp%assignvariableop_65_adam_dense_bias_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp)assignvariableop_66_adam_dense_1_kernel_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp'assignvariableop_67_adam_dense_1_bias_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_679
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_68Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_68?
Identity_69IdentityIdentity_68:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_69"#
identity_69Identity_69:output:0*?
_input_shapes?
?: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_67AssignVariableOp_672(
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
G__inference_block4_conv3_layer_call_and_return_conditional_losses_50009

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
@
cond_false_48581
cond_identity_squeeze	
cond_identity	d
cond/IdentityIdentitycond_identity_squeeze*
T0	*
_output_shapes
:2
cond/Identity"'
cond_identitycond/Identity:output:0*
_input_shapes
:: 

_output_shapes
:
?
<
cond_true_48539
cond_argmax_y_pred
cond_identity	y
cond/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
cond/ArgMax/dimension?
cond/ArgMaxArgMaxcond_argmax_y_predcond/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????2
cond/ArgMaxn
cond/IdentityIdentitycond/ArgMax:output:0*
T0	*#
_output_shapes
:?????????2
cond/Identity"'
cond_identitycond/Identity:output:0*&
_input_shapes
:?????????:- )
'
_output_shapes
:?????????
?
?
,__inference_block1_conv2_layer_call_fn_52055

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
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_497902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????@::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
?
?
*__inference_sequential_layer_call_fn_51537

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

unknown_32
identity??StatefulPartitionedCall?
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
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_508992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
6
__inference__safe_squeeze_48639
y	
identity	C
SqueezeSqueezey*
T0	*
_output_shapes
:2	
SqueezeG
RankRankSqueeze:output:0*
T0	*
_output_shapes
: 2
RankT
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/yy
EqualEqualRank:output:0Equal/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
Equal?
condStatelessIf	Equal:z:0Squeeze:output:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
:* 
_read_only_resource_inputs
 *#
else_branchR
cond_false_48627*
output_shapes
:*"
then_branchR
cond_true_486262
cond\
cond/IdentityIdentitycond:output:0*
T0	*
_output_shapes
:2
cond/Identity[
IdentityIdentitycond/Identity:output:0*
T0	*
_output_shapes
:2

Identity"
identityIdentity:output:0*"
_input_shapes
:?????????:F B
#
_output_shapes
:?????????

_user_specified_namey
?
?
;confusion_matrix_assert_less_Assert_AssertGuard_false_48760[
Wconfusion_matrix_assert_less_assert_assertguard_assert_confusion_matrix_assert_less_all
^
Zconfusion_matrix_assert_less_assert_assertguard_assert_confusion_matrix_control_dependency	P
Lconfusion_matrix_assert_less_assert_assertguard_assert_confusion_matrix_cast	>
:confusion_matrix_assert_less_assert_assertguard_identity_1
??6confusion_matrix/assert_less/Assert/AssertGuard/Assert?
=confusion_matrix/assert_less/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*&
valueB B`labels` out of bound2?
=confusion_matrix/assert_less/Assert/AssertGuard/Assert/data_0?
=confusion_matrix/assert_less/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*;
value2B0 B*Condition x < y did not hold element-wise:2?
=confusion_matrix/assert_less/Assert/AssertGuard/Assert/data_1?
=confusion_matrix/assert_less/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*=
value4B2 B,x (confusion_matrix/control_dependency:0) = 2?
=confusion_matrix/assert_less/Assert/AssertGuard/Assert/data_2?
=confusion_matrix/assert_less/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*/
value&B$ By (confusion_matrix/Cast:0) = 2?
=confusion_matrix/assert_less/Assert/AssertGuard/Assert/data_4?
6confusion_matrix/assert_less/Assert/AssertGuard/AssertAssertWconfusion_matrix_assert_less_assert_assertguard_assert_confusion_matrix_assert_less_allFconfusion_matrix/assert_less/Assert/AssertGuard/Assert/data_0:output:0Fconfusion_matrix/assert_less/Assert/AssertGuard/Assert/data_1:output:0Fconfusion_matrix/assert_less/Assert/AssertGuard/Assert/data_2:output:0Zconfusion_matrix_assert_less_assert_assertguard_assert_confusion_matrix_control_dependencyFconfusion_matrix/assert_less/Assert/AssertGuard/Assert/data_4:output:0Lconfusion_matrix_assert_less_assert_assertguard_assert_confusion_matrix_cast*
T

2		*
_output_shapes
 28
6confusion_matrix/assert_less/Assert/AssertGuard/Assert?
8confusion_matrix/assert_less/Assert/AssertGuard/IdentityIdentityWconfusion_matrix_assert_less_assert_assertguard_assert_confusion_matrix_assert_less_all7^confusion_matrix/assert_less/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2:
8confusion_matrix/assert_less/Assert/AssertGuard/Identity?
:confusion_matrix/assert_less/Assert/AssertGuard/Identity_1IdentityAconfusion_matrix/assert_less/Assert/AssertGuard/Identity:output:07^confusion_matrix/assert_less/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2<
:confusion_matrix/assert_less/Assert/AssertGuard/Identity_1"?
:confusion_matrix_assert_less_assert_assertguard_identity_1Cconfusion_matrix/assert_less/Assert/AssertGuard/Identity_1:output:0*
_input_shapes

: :: 2p
6confusion_matrix/assert_less/Assert/AssertGuard/Assert6confusion_matrix/assert_less/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
::

_output_shapes
: 
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_50723

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
}
(__inference_conv2d_1_layer_call_fn_51964

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
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_506552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_block5_conv2_layer_call_fn_52255

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
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_500642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_block2_conv2_layer_call_fn_52095

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
:?????????pp?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_498452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????pp?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????pp?::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????pp?
 
_user_specified_nameinputs
?
|
'__inference_dense_1_layer_call_fn_52015

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
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_507232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????d::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
9
__inference__cast_ypred_48618

y_pred
identity	N
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankX
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B :2
	Greater/ya
GreaterGreaterRank:output:0Greater/y:output:0*
T0*
_output_shapes
: 2	
Greater?
condStatelessIfGreater:z:0y_pred*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
:* 
_read_only_resource_inputs
 *#
else_branchR
cond_false_48605*
output_shapes
:*"
then_branchR
cond_true_486042
cond\
cond/IdentityIdentitycond:output:0*
T0	*
_output_shapes
:2
cond/Identity[
IdentityIdentitycond/Identity:output:0*
T0	*
_output_shapes
:2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_namey_pred
?
b
F__inference_block2_pool_layer_call_and_return_conditional_losses_49706

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
?
?
@confusion_matrix_remove_squeezable_dimensions_cond_1_false_48681S
Oconfusion_matrix_remove_squeezable_dimensions_cond_1_identity_partitionedcall_1	A
=confusion_matrix_remove_squeezable_dimensions_cond_1_identity	?
=confusion_matrix/remove_squeezable_dimensions/cond_1/IdentityIdentityOconfusion_matrix_remove_squeezable_dimensions_cond_1_identity_partitionedcall_1*
T0	*
_output_shapes
:2?
=confusion_matrix/remove_squeezable_dimensions/cond_1/Identity"?
=confusion_matrix_remove_squeezable_dimensions_cond_1_identityFconfusion_matrix/remove_squeezable_dimensions/cond_1/Identity:output:0*
_input_shapes
:: 

_output_shapes
:
?
?
%__inference_vgg16_layer_call_fn_50315
input_1
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

unknown_24
identity??StatefulPartitionedCall?
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_502602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
?
%__inference_vgg16_layer_call_fn_50446
input_1
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

unknown_24
identity??StatefulPartitionedCall?
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_503912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
b
F__inference_block4_pool_layer_call_and_return_conditional_losses_49730

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

?
:confusion_matrix_assert_less_Assert_AssertGuard_true_48759]
Yconfusion_matrix_assert_less_assert_assertguard_identity_confusion_matrix_assert_less_all
?
;confusion_matrix_assert_less_assert_assertguard_placeholder	A
=confusion_matrix_assert_less_assert_assertguard_placeholder_1	>
:confusion_matrix_assert_less_assert_assertguard_identity_1
?
4confusion_matrix/assert_less/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 26
4confusion_matrix/assert_less/Assert/AssertGuard/NoOp?
8confusion_matrix/assert_less/Assert/AssertGuard/IdentityIdentityYconfusion_matrix_assert_less_assert_assertguard_identity_confusion_matrix_assert_less_all5^confusion_matrix/assert_less/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2:
8confusion_matrix/assert_less/Assert/AssertGuard/Identity?
:confusion_matrix/assert_less/Assert/AssertGuard/Identity_1IdentityAconfusion_matrix/assert_less/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2<
:confusion_matrix/assert_less/Assert/AssertGuard/Identity_1"?
:confusion_matrix_assert_less_assert_assertguard_identity_1Cconfusion_matrix/assert_less/Assert/AssertGuard/Identity_1:output:0*
_input_shapes

: :: : 

_output_shapes
: :

_output_shapes
::

_output_shapes
: 
?
b
F__inference_block5_pool_layer_call_and_return_conditional_losses_49742

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

?
A__inference_conv2d_layer_call_and_return_conditional_losses_51935

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
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
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
z
%__inference_dense_layer_call_fn_51995

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
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_506962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_block1_conv2_layer_call_and_return_conditional_losses_52046

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
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:???????????@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
?
?
,__inference_block3_conv2_layer_call_fn_52135

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
:?????????88?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_499002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????88?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????88?::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????88?
 
_user_specified_nameinputs
?
?
=confusion_matrix_remove_squeezable_dimensions_cond_true_48667P
Lconfusion_matrix_remove_squeezable_dimensions_cond_squeeze_partitionedcall_2	?
;confusion_matrix_remove_squeezable_dimensions_cond_identity	?
:confusion_matrix/remove_squeezable_dimensions/cond/SqueezeSqueezeLconfusion_matrix_remove_squeezable_dimensions_cond_squeeze_partitionedcall_2*
T0	*
_output_shapes
:*
squeeze_dims

?????????2<
:confusion_matrix/remove_squeezable_dimensions/cond/Squeeze?
;confusion_matrix/remove_squeezable_dimensions/cond/IdentityIdentityCconfusion_matrix/remove_squeezable_dimensions/cond/Squeeze:output:0*
T0	*
_output_shapes
:2=
;confusion_matrix/remove_squeezable_dimensions/cond/Identity"?
;confusion_matrix_remove_squeezable_dimensions_cond_identityDconfusion_matrix/remove_squeezable_dimensions/cond/Identity:output:0*
_input_shapes
:: 

_output_shapes
:
?
?
%__inference_vgg16_layer_call_fn_51924

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

unknown_24
identity??StatefulPartitionedCall?
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_503912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
6
__inference__safe_squeeze_48573
y	
identity	C
SqueezeSqueezey*
T0	*
_output_shapes
:2	
SqueezeG
RankRankSqueeze:output:0*
T0	*
_output_shapes
: 2
RankT
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/yy
EqualEqualRank:output:0Equal/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
Equal?
condStatelessIf	Equal:z:0Squeeze:output:0*
Tcond0
*
Tin
2	*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
:* 
_read_only_resource_inputs
 *#
else_branchR
cond_false_48561*
output_shapes
:*"
then_branchR
cond_true_485602
cond\
cond/IdentityIdentitycond:output:0*
T0	*
_output_shapes
:2
cond/Identity[
IdentityIdentitycond/Identity:output:0*
T0	*
_output_shapes
:2

Identity"
identityIdentity:output:0*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namey
?
?
,__inference_block2_conv1_layer_call_fn_52075

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
:?????????pp?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_498182
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????pp?2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????pp@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????pp@
 
_user_specified_nameinputs
?
b
F__inference_block1_pool_layer_call_and_return_conditional_losses_49694

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
?
*__inference_sequential_layer_call_fn_50970
vgg16_input
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

unknown_32
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallvgg16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_508992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:???????????
%
_user_specified_namevgg16_input
?

?
G__inference_block5_conv2_layer_call_and_return_conditional_losses_50064

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_51464

inputs5
1vgg16_block1_conv1_conv2d_readvariableop_resource6
2vgg16_block1_conv1_biasadd_readvariableop_resource5
1vgg16_block1_conv2_conv2d_readvariableop_resource6
2vgg16_block1_conv2_biasadd_readvariableop_resource5
1vgg16_block2_conv1_conv2d_readvariableop_resource6
2vgg16_block2_conv1_biasadd_readvariableop_resource5
1vgg16_block2_conv2_conv2d_readvariableop_resource6
2vgg16_block2_conv2_biasadd_readvariableop_resource5
1vgg16_block3_conv1_conv2d_readvariableop_resource6
2vgg16_block3_conv1_biasadd_readvariableop_resource5
1vgg16_block3_conv2_conv2d_readvariableop_resource6
2vgg16_block3_conv2_biasadd_readvariableop_resource5
1vgg16_block3_conv3_conv2d_readvariableop_resource6
2vgg16_block3_conv3_biasadd_readvariableop_resource5
1vgg16_block4_conv1_conv2d_readvariableop_resource6
2vgg16_block4_conv1_biasadd_readvariableop_resource5
1vgg16_block4_conv2_conv2d_readvariableop_resource6
2vgg16_block4_conv2_biasadd_readvariableop_resource5
1vgg16_block4_conv3_conv2d_readvariableop_resource6
2vgg16_block4_conv3_biasadd_readvariableop_resource5
1vgg16_block5_conv1_conv2d_readvariableop_resource6
2vgg16_block5_conv1_biasadd_readvariableop_resource5
1vgg16_block5_conv2_conv2d_readvariableop_resource6
2vgg16_block5_conv2_biasadd_readvariableop_resource5
1vgg16_block5_conv3_conv2d_readvariableop_resource6
2vgg16_block5_conv3_biasadd_readvariableop_resource)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity??conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?)vgg16/block1_conv1/BiasAdd/ReadVariableOp?(vgg16/block1_conv1/Conv2D/ReadVariableOp?)vgg16/block1_conv2/BiasAdd/ReadVariableOp?(vgg16/block1_conv2/Conv2D/ReadVariableOp?)vgg16/block2_conv1/BiasAdd/ReadVariableOp?(vgg16/block2_conv1/Conv2D/ReadVariableOp?)vgg16/block2_conv2/BiasAdd/ReadVariableOp?(vgg16/block2_conv2/Conv2D/ReadVariableOp?)vgg16/block3_conv1/BiasAdd/ReadVariableOp?(vgg16/block3_conv1/Conv2D/ReadVariableOp?)vgg16/block3_conv2/BiasAdd/ReadVariableOp?(vgg16/block3_conv2/Conv2D/ReadVariableOp?)vgg16/block3_conv3/BiasAdd/ReadVariableOp?(vgg16/block3_conv3/Conv2D/ReadVariableOp?)vgg16/block4_conv1/BiasAdd/ReadVariableOp?(vgg16/block4_conv1/Conv2D/ReadVariableOp?)vgg16/block4_conv2/BiasAdd/ReadVariableOp?(vgg16/block4_conv2/Conv2D/ReadVariableOp?)vgg16/block4_conv3/BiasAdd/ReadVariableOp?(vgg16/block4_conv3/Conv2D/ReadVariableOp?)vgg16/block5_conv1/BiasAdd/ReadVariableOp?(vgg16/block5_conv1/Conv2D/ReadVariableOp?)vgg16/block5_conv2/BiasAdd/ReadVariableOp?(vgg16/block5_conv2/Conv2D/ReadVariableOp?)vgg16/block5_conv3/BiasAdd/ReadVariableOp?(vgg16/block5_conv3/Conv2D/ReadVariableOp?
(vgg16/block1_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02*
(vgg16/block1_conv1/Conv2D/ReadVariableOp?
vgg16/block1_conv1/Conv2DConv2Dinputs0vgg16/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
vgg16/block1_conv1/Conv2D?
)vgg16/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg16/block1_conv1/BiasAdd/ReadVariableOp?
vgg16/block1_conv1/BiasAddBiasAdd"vgg16/block1_conv1/Conv2D:output:01vgg16/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2
vgg16/block1_conv1/BiasAdd?
vgg16/block1_conv1/ReluRelu#vgg16/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
vgg16/block1_conv1/Relu?
(vgg16/block1_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02*
(vgg16/block1_conv2/Conv2D/ReadVariableOp?
vgg16/block1_conv2/Conv2DConv2D%vgg16/block1_conv1/Relu:activations:00vgg16/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
vgg16/block1_conv2/Conv2D?
)vgg16/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg16/block1_conv2/BiasAdd/ReadVariableOp?
vgg16/block1_conv2/BiasAddBiasAdd"vgg16/block1_conv2/Conv2D:output:01vgg16/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2
vgg16/block1_conv2/BiasAdd?
vgg16/block1_conv2/ReluRelu#vgg16/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
vgg16/block1_conv2/Relu?
vgg16/block1_pool/MaxPoolMaxPool%vgg16/block1_conv2/Relu:activations:0*/
_output_shapes
:?????????pp@*
ksize
*
paddingVALID*
strides
2
vgg16/block1_pool/MaxPool?
(vgg16/block2_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02*
(vgg16/block2_conv1/Conv2D/ReadVariableOp?
vgg16/block2_conv1/Conv2DConv2D"vgg16/block1_pool/MaxPool:output:00vgg16/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?*
paddingSAME*
strides
2
vgg16/block2_conv1/Conv2D?
)vgg16/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block2_conv1/BiasAdd/ReadVariableOp?
vgg16/block2_conv1/BiasAddBiasAdd"vgg16/block2_conv1/Conv2D:output:01vgg16/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?2
vgg16/block2_conv1/BiasAdd?
vgg16/block2_conv1/ReluRelu#vgg16/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????pp?2
vgg16/block2_conv1/Relu?
(vgg16/block2_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block2_conv2/Conv2D/ReadVariableOp?
vgg16/block2_conv2/Conv2DConv2D%vgg16/block2_conv1/Relu:activations:00vgg16/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?*
paddingSAME*
strides
2
vgg16/block2_conv2/Conv2D?
)vgg16/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block2_conv2/BiasAdd/ReadVariableOp?
vgg16/block2_conv2/BiasAddBiasAdd"vgg16/block2_conv2/Conv2D:output:01vgg16/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?2
vgg16/block2_conv2/BiasAdd?
vgg16/block2_conv2/ReluRelu#vgg16/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????pp?2
vgg16/block2_conv2/Relu?
vgg16/block2_pool/MaxPoolMaxPool%vgg16/block2_conv2/Relu:activations:0*0
_output_shapes
:?????????88?*
ksize
*
paddingVALID*
strides
2
vgg16/block2_pool/MaxPool?
(vgg16/block3_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block3_conv1/Conv2D/ReadVariableOp?
vgg16/block3_conv1/Conv2DConv2D"vgg16/block2_pool/MaxPool:output:00vgg16/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2
vgg16/block3_conv1/Conv2D?
)vgg16/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block3_conv1/BiasAdd/ReadVariableOp?
vgg16/block3_conv1/BiasAddBiasAdd"vgg16/block3_conv1/Conv2D:output:01vgg16/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2
vgg16/block3_conv1/BiasAdd?
vgg16/block3_conv1/ReluRelu#vgg16/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2
vgg16/block3_conv1/Relu?
(vgg16/block3_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block3_conv2/Conv2D/ReadVariableOp?
vgg16/block3_conv2/Conv2DConv2D%vgg16/block3_conv1/Relu:activations:00vgg16/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2
vgg16/block3_conv2/Conv2D?
)vgg16/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block3_conv2/BiasAdd/ReadVariableOp?
vgg16/block3_conv2/BiasAddBiasAdd"vgg16/block3_conv2/Conv2D:output:01vgg16/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2
vgg16/block3_conv2/BiasAdd?
vgg16/block3_conv2/ReluRelu#vgg16/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2
vgg16/block3_conv2/Relu?
(vgg16/block3_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block3_conv3/Conv2D/ReadVariableOp?
vgg16/block3_conv3/Conv2DConv2D%vgg16/block3_conv2/Relu:activations:00vgg16/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2
vgg16/block3_conv3/Conv2D?
)vgg16/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block3_conv3/BiasAdd/ReadVariableOp?
vgg16/block3_conv3/BiasAddBiasAdd"vgg16/block3_conv3/Conv2D:output:01vgg16/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2
vgg16/block3_conv3/BiasAdd?
vgg16/block3_conv3/ReluRelu#vgg16/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2
vgg16/block3_conv3/Relu?
vgg16/block3_pool/MaxPoolMaxPool%vgg16/block3_conv3/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
vgg16/block3_pool/MaxPool?
(vgg16/block4_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block4_conv1/Conv2D/ReadVariableOp?
vgg16/block4_conv1/Conv2DConv2D"vgg16/block3_pool/MaxPool:output:00vgg16/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg16/block4_conv1/Conv2D?
)vgg16/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block4_conv1/BiasAdd/ReadVariableOp?
vgg16/block4_conv1/BiasAddBiasAdd"vgg16/block4_conv1/Conv2D:output:01vgg16/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg16/block4_conv1/BiasAdd?
vgg16/block4_conv1/ReluRelu#vgg16/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg16/block4_conv1/Relu?
(vgg16/block4_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block4_conv2/Conv2D/ReadVariableOp?
vgg16/block4_conv2/Conv2DConv2D%vgg16/block4_conv1/Relu:activations:00vgg16/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg16/block4_conv2/Conv2D?
)vgg16/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block4_conv2/BiasAdd/ReadVariableOp?
vgg16/block4_conv2/BiasAddBiasAdd"vgg16/block4_conv2/Conv2D:output:01vgg16/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg16/block4_conv2/BiasAdd?
vgg16/block4_conv2/ReluRelu#vgg16/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg16/block4_conv2/Relu?
(vgg16/block4_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block4_conv3/Conv2D/ReadVariableOp?
vgg16/block4_conv3/Conv2DConv2D%vgg16/block4_conv2/Relu:activations:00vgg16/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg16/block4_conv3/Conv2D?
)vgg16/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block4_conv3/BiasAdd/ReadVariableOp?
vgg16/block4_conv3/BiasAddBiasAdd"vgg16/block4_conv3/Conv2D:output:01vgg16/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg16/block4_conv3/BiasAdd?
vgg16/block4_conv3/ReluRelu#vgg16/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg16/block4_conv3/Relu?
vgg16/block4_pool/MaxPoolMaxPool%vgg16/block4_conv3/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
vgg16/block4_pool/MaxPool?
(vgg16/block5_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block5_conv1/Conv2D/ReadVariableOp?
vgg16/block5_conv1/Conv2DConv2D"vgg16/block4_pool/MaxPool:output:00vgg16/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg16/block5_conv1/Conv2D?
)vgg16/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block5_conv1/BiasAdd/ReadVariableOp?
vgg16/block5_conv1/BiasAddBiasAdd"vgg16/block5_conv1/Conv2D:output:01vgg16/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg16/block5_conv1/BiasAdd?
vgg16/block5_conv1/ReluRelu#vgg16/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg16/block5_conv1/Relu?
(vgg16/block5_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block5_conv2/Conv2D/ReadVariableOp?
vgg16/block5_conv2/Conv2DConv2D%vgg16/block5_conv1/Relu:activations:00vgg16/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg16/block5_conv2/Conv2D?
)vgg16/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block5_conv2/BiasAdd/ReadVariableOp?
vgg16/block5_conv2/BiasAddBiasAdd"vgg16/block5_conv2/Conv2D:output:01vgg16/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg16/block5_conv2/BiasAdd?
vgg16/block5_conv2/ReluRelu#vgg16/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg16/block5_conv2/Relu?
(vgg16/block5_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg16_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02*
(vgg16/block5_conv3/Conv2D/ReadVariableOp?
vgg16/block5_conv3/Conv2DConv2D%vgg16/block5_conv2/Relu:activations:00vgg16/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
vgg16/block5_conv3/Conv2D?
)vgg16/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg16_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)vgg16/block5_conv3/BiasAdd/ReadVariableOp?
vgg16/block5_conv3/BiasAddBiasAdd"vgg16/block5_conv3/Conv2D:output:01vgg16/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
vgg16/block5_conv3/BiasAdd?
vgg16/block5_conv3/ReluRelu#vgg16/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
vgg16/block5_conv3/Relu?
vgg16/block5_pool/MaxPoolMaxPool%vgg16/block5_conv3/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
vgg16/block5_pool/MaxPool?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2D"vgg16/block5_pool/MaxPool:output:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingVALID*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
conv2d/BiasAddv
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
conv2d/Relu?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dconv2d/Relu:activations:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingVALID*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
conv2d_1/BiasAdd{
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
conv2d_1/Reluo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
flatten/Const?
flatten/ReshapeReshapeconv2d_1/Relu:activations:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2

dense/Relu?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1/Softmax?
IdentityIdentitydense_1/Softmax:softmax:0^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*^vgg16/block1_conv1/BiasAdd/ReadVariableOp)^vgg16/block1_conv1/Conv2D/ReadVariableOp*^vgg16/block1_conv2/BiasAdd/ReadVariableOp)^vgg16/block1_conv2/Conv2D/ReadVariableOp*^vgg16/block2_conv1/BiasAdd/ReadVariableOp)^vgg16/block2_conv1/Conv2D/ReadVariableOp*^vgg16/block2_conv2/BiasAdd/ReadVariableOp)^vgg16/block2_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv1/BiasAdd/ReadVariableOp)^vgg16/block3_conv1/Conv2D/ReadVariableOp*^vgg16/block3_conv2/BiasAdd/ReadVariableOp)^vgg16/block3_conv2/Conv2D/ReadVariableOp*^vgg16/block3_conv3/BiasAdd/ReadVariableOp)^vgg16/block3_conv3/Conv2D/ReadVariableOp*^vgg16/block4_conv1/BiasAdd/ReadVariableOp)^vgg16/block4_conv1/Conv2D/ReadVariableOp*^vgg16/block4_conv2/BiasAdd/ReadVariableOp)^vgg16/block4_conv2/Conv2D/ReadVariableOp*^vgg16/block4_conv3/BiasAdd/ReadVariableOp)^vgg16/block4_conv3/Conv2D/ReadVariableOp*^vgg16/block5_conv1/BiasAdd/ReadVariableOp)^vgg16/block5_conv1/Conv2D/ReadVariableOp*^vgg16/block5_conv2/BiasAdd/ReadVariableOp)^vgg16/block5_conv2/Conv2D/ReadVariableOp*^vgg16/block5_conv3/BiasAdd/ReadVariableOp)^vgg16/block5_conv3/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2V
)vgg16/block1_conv1/BiasAdd/ReadVariableOp)vgg16/block1_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv1/Conv2D/ReadVariableOp(vgg16/block1_conv1/Conv2D/ReadVariableOp2V
)vgg16/block1_conv2/BiasAdd/ReadVariableOp)vgg16/block1_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block1_conv2/Conv2D/ReadVariableOp(vgg16/block1_conv2/Conv2D/ReadVariableOp2V
)vgg16/block2_conv1/BiasAdd/ReadVariableOp)vgg16/block2_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv1/Conv2D/ReadVariableOp(vgg16/block2_conv1/Conv2D/ReadVariableOp2V
)vgg16/block2_conv2/BiasAdd/ReadVariableOp)vgg16/block2_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block2_conv2/Conv2D/ReadVariableOp(vgg16/block2_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv1/BiasAdd/ReadVariableOp)vgg16/block3_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv1/Conv2D/ReadVariableOp(vgg16/block3_conv1/Conv2D/ReadVariableOp2V
)vgg16/block3_conv2/BiasAdd/ReadVariableOp)vgg16/block3_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv2/Conv2D/ReadVariableOp(vgg16/block3_conv2/Conv2D/ReadVariableOp2V
)vgg16/block3_conv3/BiasAdd/ReadVariableOp)vgg16/block3_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block3_conv3/Conv2D/ReadVariableOp(vgg16/block3_conv3/Conv2D/ReadVariableOp2V
)vgg16/block4_conv1/BiasAdd/ReadVariableOp)vgg16/block4_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv1/Conv2D/ReadVariableOp(vgg16/block4_conv1/Conv2D/ReadVariableOp2V
)vgg16/block4_conv2/BiasAdd/ReadVariableOp)vgg16/block4_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv2/Conv2D/ReadVariableOp(vgg16/block4_conv2/Conv2D/ReadVariableOp2V
)vgg16/block4_conv3/BiasAdd/ReadVariableOp)vgg16/block4_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block4_conv3/Conv2D/ReadVariableOp(vgg16/block4_conv3/Conv2D/ReadVariableOp2V
)vgg16/block5_conv1/BiasAdd/ReadVariableOp)vgg16/block5_conv1/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv1/Conv2D/ReadVariableOp(vgg16/block5_conv1/Conv2D/ReadVariableOp2V
)vgg16/block5_conv2/BiasAdd/ReadVariableOp)vgg16/block5_conv2/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv2/Conv2D/ReadVariableOp(vgg16/block5_conv2/Conv2D/ReadVariableOp2V
)vgg16/block5_conv3/BiasAdd/ReadVariableOp)vgg16/block5_conv3/BiasAdd/ReadVariableOp2T
(vgg16/block5_conv3/Conv2D/ReadVariableOp(vgg16/block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
b
F__inference_block3_pool_layer_call_and_return_conditional_losses_49718

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
?
C
'__inference_flatten_layer_call_fn_51975

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
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_506772
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
>confusion_matrix_remove_squeezable_dimensions_cond_false_48668Q
Mconfusion_matrix_remove_squeezable_dimensions_cond_identity_partitionedcall_2	?
;confusion_matrix_remove_squeezable_dimensions_cond_identity	?
;confusion_matrix/remove_squeezable_dimensions/cond/IdentityIdentityMconfusion_matrix_remove_squeezable_dimensions_cond_identity_partitionedcall_2*
T0	*
_output_shapes
:2=
;confusion_matrix/remove_squeezable_dimensions/cond/Identity"?
;confusion_matrix_remove_squeezable_dimensions_cond_identityDconfusion_matrix/remove_squeezable_dimensions/cond/Identity:output:0*
_input_shapes
:: 

_output_shapes
:
?
?
*__inference_sequential_layer_call_fn_51121
vgg16_input
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

unknown_32
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallvgg16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_510502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:???????????
%
_user_specified_namevgg16_input
?$
?
E__inference_sequential_layer_call_and_return_conditional_losses_50818
vgg16_input
vgg16_50743
vgg16_50745
vgg16_50747
vgg16_50749
vgg16_50751
vgg16_50753
vgg16_50755
vgg16_50757
vgg16_50759
vgg16_50761
vgg16_50763
vgg16_50765
vgg16_50767
vgg16_50769
vgg16_50771
vgg16_50773
vgg16_50775
vgg16_50777
vgg16_50779
vgg16_50781
vgg16_50783
vgg16_50785
vgg16_50787
vgg16_50789
vgg16_50791
vgg16_50793
conv2d_50796
conv2d_50798
conv2d_1_50801
conv2d_1_50803
dense_50807
dense_50809
dense_1_50812
dense_1_50814
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?vgg16/StatefulPartitionedCall?
vgg16/StatefulPartitionedCallStatefulPartitionedCallvgg16_inputvgg16_50743vgg16_50745vgg16_50747vgg16_50749vgg16_50751vgg16_50753vgg16_50755vgg16_50757vgg16_50759vgg16_50761vgg16_50763vgg16_50765vgg16_50767vgg16_50769vgg16_50771vgg16_50773vgg16_50775vgg16_50777vgg16_50779vgg16_50781vgg16_50783vgg16_50785vgg16_50787vgg16_50789vgg16_50791vgg16_50793*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_503912
vgg16/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCall&vgg16/StatefulPartitionedCall:output:0conv2d_50796conv2d_50798*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_506282 
conv2d/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_50801conv2d_1_50803*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_506552"
 conv2d_1/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_506772
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_50807dense_50809*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_506962
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_50812dense_1_50814*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_507232!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:^ Z
1
_output_shapes
:???????????
%
_user_specified_namevgg16_input
?
?
,__inference_block4_conv3_layer_call_fn_52215

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
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_500092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_block5_conv3_layer_call_and_return_conditional_losses_52266

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
A
cond_true_48580
cond_expanddims_squeeze	
cond_identity	l
cond/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
cond/ExpandDims/dim?
cond/ExpandDims
ExpandDimscond_expanddims_squeezecond/ExpandDims/dim:output:0*
T0	*
_output_shapes
:2
cond/ExpandDimsg
cond/IdentityIdentitycond/ExpandDims:output:0*
T0	*
_output_shapes
:2
cond/Identity"'
cond_identitycond/Identity:output:0*
_input_shapes
:: 

_output_shapes
:
?
?
?confusion_matrix_remove_squeezable_dimensions_cond_1_true_48680R
Nconfusion_matrix_remove_squeezable_dimensions_cond_1_squeeze_partitionedcall_1	A
=confusion_matrix_remove_squeezable_dimensions_cond_1_identity	?
<confusion_matrix/remove_squeezable_dimensions/cond_1/SqueezeSqueezeNconfusion_matrix_remove_squeezable_dimensions_cond_1_squeeze_partitionedcall_1*
T0	*
_output_shapes
:*
squeeze_dims

?????????2>
<confusion_matrix/remove_squeezable_dimensions/cond_1/Squeeze?
=confusion_matrix/remove_squeezable_dimensions/cond_1/IdentityIdentityEconfusion_matrix/remove_squeezable_dimensions/cond_1/Squeeze:output:0*
T0	*
_output_shapes
:2?
=confusion_matrix/remove_squeezable_dimensions/cond_1/Identity"?
=confusion_matrix_remove_squeezable_dimensions_cond_1_identityFconfusion_matrix/remove_squeezable_dimensions/cond_1/Identity:output:0*
_input_shapes
:: 

_output_shapes
:
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_52006

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
G__inference_block5_conv3_layer_call_and_return_conditional_losses_50091

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_sequential_layer_call_fn_51610

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

unknown_32
identity??StatefulPartitionedCall?
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
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_510502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
,__inference_block5_conv3_layer_call_fn_52275

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
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_500912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_block2_conv2_layer_call_and_return_conditional_losses_49845

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
:?????????pp?*
paddingSAME*
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
:?????????pp?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????pp?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????pp?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????pp?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????pp?
 
_user_specified_nameinputs
?

?
G__inference_block4_conv3_layer_call_and_return_conditional_losses_52206

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Wconfusion_matrix_assert_non_negative_1_assert_less_equal_Assert_AssertGuard_false_48730?
?confusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_assert_confusion_matrix_assert_non_negative_1_assert_less_equal_all
?
?confusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_assert_confusion_matrix_remove_squeezable_dimensions_cond_identity	Z
Vconfusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_identity_1
??Rconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert?
Yconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*7
value.B, B&`predictions` contains negative values2[
Yconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0?
Yconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2[
Yconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1?
Yconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*U
valueLBJ BDx (confusion_matrix/remove_squeezable_dimensions/cond/Identity:0) = 2[
Yconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2?
Rconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/AssertAssert?confusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_assert_confusion_matrix_assert_non_negative_1_assert_less_equal_allbconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0:output:0bconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1:output:0bconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2:output:0?confusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_assert_confusion_matrix_remove_squeezable_dimensions_cond_identity*
T
2	*
_output_shapes
 2T
Rconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert?
Tconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/IdentityIdentity?confusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_assert_confusion_matrix_assert_non_negative_1_assert_less_equal_allS^confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2V
Tconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity?
Vconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity_1Identity]confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity:output:0S^confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2X
Vconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity_1"?
Vconfusion_matrix_assert_non_negative_1_assert_less_equal_assert_assertguard_identity_1_confusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*
_input_shapes
: :2?
Rconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/AssertRconfusion_matrix/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
:
?
A
cond_true_48560
cond_expanddims_squeeze	
cond_identity	l
cond/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
cond/ExpandDims/dim?
cond/ExpandDims
ExpandDimscond_expanddims_squeezecond/ExpandDims/dim:output:0*
T0	*
_output_shapes
:2
cond/ExpandDimsg
cond/IdentityIdentitycond/ExpandDims:output:0*
T0	*
_output_shapes
:2
cond/Identity"'
cond_identitycond/Identity:output:0*
_input_shapes
:: 

_output_shapes
:
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_50677

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
@
cond_false_48627
cond_identity_squeeze	
cond_identity	d
cond/IdentityIdentitycond_identity_squeeze*
T0	*
_output_shapes
:2
cond/Identity"'
cond_identitycond/Identity:output:0*
_input_shapes
:: 

_output_shapes
:
?X
?	
@__inference_vgg16_layer_call_and_return_conditional_losses_50183
input_1
block1_conv1_50112
block1_conv1_50114
block1_conv2_50117
block1_conv2_50119
block2_conv1_50123
block2_conv1_50125
block2_conv2_50128
block2_conv2_50130
block3_conv1_50134
block3_conv1_50136
block3_conv2_50139
block3_conv2_50141
block3_conv3_50144
block3_conv3_50146
block4_conv1_50150
block4_conv1_50152
block4_conv2_50155
block4_conv2_50157
block4_conv3_50160
block4_conv3_50162
block5_conv1_50166
block5_conv1_50168
block5_conv2_50171
block5_conv2_50173
block5_conv3_50176
block5_conv3_50178
identity??$block1_conv1/StatefulPartitionedCall?$block1_conv2/StatefulPartitionedCall?$block2_conv1/StatefulPartitionedCall?$block2_conv2/StatefulPartitionedCall?$block3_conv1/StatefulPartitionedCall?$block3_conv2/StatefulPartitionedCall?$block3_conv3/StatefulPartitionedCall?$block4_conv1/StatefulPartitionedCall?$block4_conv2/StatefulPartitionedCall?$block4_conv3/StatefulPartitionedCall?$block5_conv1/StatefulPartitionedCall?$block5_conv2/StatefulPartitionedCall?$block5_conv3/StatefulPartitionedCall?
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_1block1_conv1_50112block1_conv1_50114*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_497632&
$block1_conv1/StatefulPartitionedCall?
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_50117block1_conv2_50119*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_497902&
$block1_conv2/StatefulPartitionedCall?
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????pp@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_496942
block1_pool/PartitionedCall?
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_50123block2_conv1_50125*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????pp?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_498182&
$block2_conv1/StatefulPartitionedCall?
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_50128block2_conv2_50130*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????pp?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_498452&
$block2_conv2/StatefulPartitionedCall?
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_497062
block2_pool/PartitionedCall?
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_50134block3_conv1_50136*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_498732&
$block3_conv1/StatefulPartitionedCall?
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_50139block3_conv2_50141*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_499002&
$block3_conv2/StatefulPartitionedCall?
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_50144block3_conv3_50146*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????88?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_499272&
$block3_conv3/StatefulPartitionedCall?
block3_pool/PartitionedCallPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_497182
block3_pool/PartitionedCall?
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_50150block4_conv1_50152*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_499552&
$block4_conv1/StatefulPartitionedCall?
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_50155block4_conv2_50157*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_499822&
$block4_conv2/StatefulPartitionedCall?
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_50160block4_conv3_50162*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_500092&
$block4_conv3/StatefulPartitionedCall?
block4_pool/PartitionedCallPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_497302
block4_pool/PartitionedCall?
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_50166block5_conv1_50168*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_500372&
$block5_conv1/StatefulPartitionedCall?
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_50171block5_conv2_50173*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_500642&
$block5_conv2/StatefulPartitionedCall?
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_50176block5_conv3_50178*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_500912&
$block5_conv3/StatefulPartitionedCall?
block5_pool/PartitionedCallPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_497422
block5_pool/PartitionedCall?
IdentityIdentity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
;
cond_false_48605
cond_cast_y_pred
cond_identity	q
	cond/CastCastcond_cast_y_pred*

DstT0	*

SrcT0*'
_output_shapes
:?????????2
	cond/Castk
cond/IdentityIdentitycond/Cast:y:0*
T0	*'
_output_shapes
:?????????2
cond/Identity"'
cond_identitycond/Identity:output:0*&
_input_shapes
:?????????:- )
'
_output_shapes
:?????????
?

?
A__inference_conv2d_layer_call_and_return_conditional_losses_50628

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
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
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_block3_conv2_layer_call_and_return_conditional_losses_49900

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????88?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????88?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????88?
 
_user_specified_nameinputs
?$
?
E__inference_sequential_layer_call_and_return_conditional_losses_50740
vgg16_input
vgg16_50564
vgg16_50566
vgg16_50568
vgg16_50570
vgg16_50572
vgg16_50574
vgg16_50576
vgg16_50578
vgg16_50580
vgg16_50582
vgg16_50584
vgg16_50586
vgg16_50588
vgg16_50590
vgg16_50592
vgg16_50594
vgg16_50596
vgg16_50598
vgg16_50600
vgg16_50602
vgg16_50604
vgg16_50606
vgg16_50608
vgg16_50610
vgg16_50612
vgg16_50614
conv2d_50639
conv2d_50641
conv2d_1_50666
conv2d_1_50668
dense_50707
dense_50709
dense_1_50734
dense_1_50736
identity??conv2d/StatefulPartitionedCall? conv2d_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?vgg16/StatefulPartitionedCall?
vgg16/StatefulPartitionedCallStatefulPartitionedCallvgg16_inputvgg16_50564vgg16_50566vgg16_50568vgg16_50570vgg16_50572vgg16_50574vgg16_50576vgg16_50578vgg16_50580vgg16_50582vgg16_50584vgg16_50586vgg16_50588vgg16_50590vgg16_50592vgg16_50594vgg16_50596vgg16_50598vgg16_50600vgg16_50602vgg16_50604vgg16_50606vgg16_50608vgg16_50610vgg16_50612vgg16_50614*&
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*<
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_vgg16_layer_call_and_return_conditional_losses_502602
vgg16/StatefulPartitionedCall?
conv2d/StatefulPartitionedCallStatefulPartitionedCall&vgg16/StatefulPartitionedCall:output:0conv2d_50639conv2d_50641*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_506282 
conv2d/StatefulPartitionedCall?
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0conv2d_1_50666conv2d_1_50668*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_506552"
 conv2d_1/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_506772
flatten/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_50707dense_50709*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_506962
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_50734dense_1_50736*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_507232!
dense_1/StatefulPartitionedCall?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^vgg16/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::::::::::2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2>
vgg16/StatefulPartitionedCallvgg16/StatefulPartitionedCall:^ Z
1
_output_shapes
:???????????
%
_user_specified_namevgg16_input
?
A
cond_true_48626
cond_expanddims_squeeze	
cond_identity	l
cond/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
cond/ExpandDims/dim?
cond/ExpandDims
ExpandDimscond_expanddims_squeezecond/ExpandDims/dim:output:0*
T0	*
_output_shapes
:2
cond/ExpandDimsg
cond/IdentityIdentitycond/ExpandDims:output:0*
T0	*
_output_shapes
:2
cond/Identity"'
cond_identitycond/Identity:output:0*
_input_shapes
:: 

_output_shapes
:
?
@
cond_false_48648
cond_identity_squeeze	
cond_identity	d
cond/IdentityIdentitycond_identity_squeeze*
T0	*
_output_shapes
:2
cond/Identity"'
cond_identitycond/Identity:output:0*
_input_shapes
:: 

_output_shapes
:
?

?
G__inference_block3_conv3_layer_call_and_return_conditional_losses_49927

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????88?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????88?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????88?
 
_user_specified_nameinputs
?
?
,__inference_block3_conv1_layer_call_fn_52115

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
:?????????88?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_498732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????88?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????88?::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????88?
 
_user_specified_nameinputs
??
?
@__inference_vgg16_layer_call_and_return_conditional_losses_51710

inputs/
+block1_conv1_conv2d_readvariableop_resource0
,block1_conv1_biasadd_readvariableop_resource/
+block1_conv2_conv2d_readvariableop_resource0
,block1_conv2_biasadd_readvariableop_resource/
+block2_conv1_conv2d_readvariableop_resource0
,block2_conv1_biasadd_readvariableop_resource/
+block2_conv2_conv2d_readvariableop_resource0
,block2_conv2_biasadd_readvariableop_resource/
+block3_conv1_conv2d_readvariableop_resource0
,block3_conv1_biasadd_readvariableop_resource/
+block3_conv2_conv2d_readvariableop_resource0
,block3_conv2_biasadd_readvariableop_resource/
+block3_conv3_conv2d_readvariableop_resource0
,block3_conv3_biasadd_readvariableop_resource/
+block4_conv1_conv2d_readvariableop_resource0
,block4_conv1_biasadd_readvariableop_resource/
+block4_conv2_conv2d_readvariableop_resource0
,block4_conv2_biasadd_readvariableop_resource/
+block4_conv3_conv2d_readvariableop_resource0
,block4_conv3_biasadd_readvariableop_resource/
+block5_conv1_conv2d_readvariableop_resource0
,block5_conv1_biasadd_readvariableop_resource/
+block5_conv2_conv2d_readvariableop_resource0
,block5_conv2_biasadd_readvariableop_resource/
+block5_conv3_conv2d_readvariableop_resource0
,block5_conv3_biasadd_readvariableop_resource
identity??#block1_conv1/BiasAdd/ReadVariableOp?"block1_conv1/Conv2D/ReadVariableOp?#block1_conv2/BiasAdd/ReadVariableOp?"block1_conv2/Conv2D/ReadVariableOp?#block2_conv1/BiasAdd/ReadVariableOp?"block2_conv1/Conv2D/ReadVariableOp?#block2_conv2/BiasAdd/ReadVariableOp?"block2_conv2/Conv2D/ReadVariableOp?#block3_conv1/BiasAdd/ReadVariableOp?"block3_conv1/Conv2D/ReadVariableOp?#block3_conv2/BiasAdd/ReadVariableOp?"block3_conv2/Conv2D/ReadVariableOp?#block3_conv3/BiasAdd/ReadVariableOp?"block3_conv3/Conv2D/ReadVariableOp?#block4_conv1/BiasAdd/ReadVariableOp?"block4_conv1/Conv2D/ReadVariableOp?#block4_conv2/BiasAdd/ReadVariableOp?"block4_conv2/Conv2D/ReadVariableOp?#block4_conv3/BiasAdd/ReadVariableOp?"block4_conv3/Conv2D/ReadVariableOp?#block5_conv1/BiasAdd/ReadVariableOp?"block5_conv1/Conv2D/ReadVariableOp?#block5_conv2/BiasAdd/ReadVariableOp?"block5_conv2/Conv2D/ReadVariableOp?#block5_conv3/BiasAdd/ReadVariableOp?"block5_conv3/Conv2D/ReadVariableOp?
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"block1_conv1/Conv2D/ReadVariableOp?
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
block1_conv1/Conv2D?
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv1/BiasAdd/ReadVariableOp?
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2
block1_conv1/BiasAdd?
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
block1_conv1/Relu?
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"block1_conv2/Conv2D/ReadVariableOp?
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
2
block1_conv2/Conv2D?
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv2/BiasAdd/ReadVariableOp?
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@2
block1_conv2/BiasAdd?
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@2
block1_conv2/Relu?
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:?????????pp@*
ksize
*
paddingVALID*
strides
2
block1_pool/MaxPool?
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype02$
"block2_conv1/Conv2D/ReadVariableOp?
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?*
paddingSAME*
strides
2
block2_conv1/Conv2D?
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block2_conv1/BiasAdd/ReadVariableOp?
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?2
block2_conv1/BiasAdd?
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????pp?2
block2_conv1/Relu?
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block2_conv2/Conv2D/ReadVariableOp?
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?*
paddingSAME*
strides
2
block2_conv2/Conv2D?
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block2_conv2/BiasAdd/ReadVariableOp?
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????pp?2
block2_conv2/BiasAdd?
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????pp?2
block2_conv2/Relu?
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:?????????88?*
ksize
*
paddingVALID*
strides
2
block2_pool/MaxPool?
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block3_conv1/Conv2D/ReadVariableOp?
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2
block3_conv1/Conv2D?
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block3_conv1/BiasAdd/ReadVariableOp?
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2
block3_conv1/BiasAdd?
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2
block3_conv1/Relu?
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block3_conv2/Conv2D/ReadVariableOp?
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2
block3_conv2/Conv2D?
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block3_conv2/BiasAdd/ReadVariableOp?
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2
block3_conv2/BiasAdd?
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2
block3_conv2/Relu?
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block3_conv3/Conv2D/ReadVariableOp?
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2
block3_conv3/Conv2D?
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block3_conv3/BiasAdd/ReadVariableOp?
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2
block3_conv3/BiasAdd?
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2
block3_conv3/Relu?
block3_pool/MaxPoolMaxPoolblock3_conv3/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
block3_pool/MaxPool?
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block4_conv1/Conv2D/ReadVariableOp?
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block4_conv1/Conv2D?
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block4_conv1/BiasAdd/ReadVariableOp?
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block4_conv1/BiasAdd?
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block4_conv1/Relu?
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block4_conv2/Conv2D/ReadVariableOp?
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block4_conv2/Conv2D?
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block4_conv2/BiasAdd/ReadVariableOp?
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block4_conv2/BiasAdd?
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block4_conv2/Relu?
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block4_conv3/Conv2D/ReadVariableOp?
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block4_conv3/Conv2D?
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block4_conv3/BiasAdd/ReadVariableOp?
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block4_conv3/BiasAdd?
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block4_conv3/Relu?
block4_pool/MaxPoolMaxPoolblock4_conv3/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
block4_pool/MaxPool?
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block5_conv1/Conv2D/ReadVariableOp?
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block5_conv1/Conv2D?
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block5_conv1/BiasAdd/ReadVariableOp?
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block5_conv1/BiasAdd?
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block5_conv1/Relu?
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block5_conv2/Conv2D/ReadVariableOp?
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block5_conv2/Conv2D?
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block5_conv2/BiasAdd/ReadVariableOp?
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block5_conv2/BiasAdd?
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block5_conv2/Relu?
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02$
"block5_conv3/Conv2D/ReadVariableOp?
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
2
block5_conv3/Conv2D?
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#block5_conv3/BiasAdd/ReadVariableOp?
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
block5_conv3/BiasAdd?
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
block5_conv3/Relu?
block5_pool/MaxPoolMaxPoolblock5_conv3/Relu:activations:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
2
block5_pool/MaxPool?
IdentityIdentityblock5_pool/MaxPool:output:0$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:???????????::::::::::::::::::::::::::2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
G__inference_block3_conv3_layer_call_and_return_conditional_losses_52146

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????88?2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????88?2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????88?2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:?????????88?::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????88?
 
_user_specified_nameinputs
?
?
,__inference_block4_conv1_layer_call_fn_52175

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
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_499552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
9
__inference__cast_ypred_48553

y_pred
identity	N
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankX
	Greater/yConst*
_output_shapes
: *
dtype0*
value	B :2
	Greater/ya
GreaterGreaterRank:output:0Greater/y:output:0*
T0*
_output_shapes
: 2	
Greater?
condStatelessIfGreater:z:0y_pred*
Tcond0
*
Tin
2*
Tout
2	*
_lower_using_switch_merge(*
_output_shapes
:* 
_read_only_resource_inputs
 *#
else_branchR
cond_false_48540*
output_shapes
:*"
then_branchR
cond_true_485392
cond\
cond/IdentityIdentitycond:output:0*
T0	*
_output_shapes
:2
cond/Identity[
IdentityIdentitycond/Identity:output:0*
T0	*
_output_shapes
:2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_namey_pred
?
?
Uconfusion_matrix_assert_non_negative_assert_less_equal_Assert_AssertGuard_false_48702?
?confusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_assert_confusion_matrix_assert_non_negative_assert_less_equal_all
?
?confusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_assert_confusion_matrix_remove_squeezable_dimensions_cond_1_identity	X
Tconfusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_identity_1
??Pconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert?
Wconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*2
value)B' B!`labels` contains negative values2Y
Wconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0?
Wconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:2Y
Wconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1?
Wconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*W
valueNBL BFx (confusion_matrix/remove_squeezable_dimensions/cond_1/Identity:0) = 2Y
Wconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2?
Pconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertAssert?confusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_assert_confusion_matrix_assert_non_negative_assert_less_equal_all`confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0:output:0`confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1:output:0`confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2:output:0?confusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_assert_confusion_matrix_remove_squeezable_dimensions_cond_1_identity*
T
2	*
_output_shapes
 2R
Pconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert?
Rconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/IdentityIdentity?confusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_assert_confusion_matrix_assert_non_negative_assert_less_equal_allQ^confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2T
Rconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity?
Tconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1Identity[confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity:output:0Q^confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2V
Tconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1"?
Tconfusion_matrix_assert_non_negative_assert_less_equal_assert_assertguard_identity_1]confusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Identity_1:output:0*
_input_shapes
: :2?
Pconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertPconfusion_matrix/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
:"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
vgg16_input>
serving_default_vgg16_input:0???????????;
dense_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
??
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
?_default_save_signature
+?&call_and_return_all_conditional_losses
?__call__"ލ
_tf_keras_sequential??{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "vgg16_input"}}, {"class_name": "Functional", "config": {"name": "vgg16", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["block5_pool", 0, 0]]}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 4, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 224, 224, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "vgg16_input"}}, {"class_name": "Functional", "config": {"name": "vgg16", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["block5_pool", 0, 0]]}}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 4, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}, {"class_name": "AUC", "config": {"name": "auc", "dtype": "float32", "num_thresholds": 200, "curve": "ROC", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593], "multi_label": false, "label_weights": null}}, {"class_name": "Addons>CohenKappa", "config": {"name": "cohen_kappa", "dtype": "float32", "num_classes": 4, "weightage": null, "sparse_labels": false, "regression": false}}, {"class_name": "Addons>F1Score", "config": {"name": "f1_score", "dtype": "float32", "num_classes": 4, "average": null, "threshold": null}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
??
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
layer_with_weights-5
layer-8
layer_with_weights-6
layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer_with_weights-11
layer-16
layer_with_weights-12
layer-17
layer-18
 	variables
!trainable_variables
"regularization_losses
#	keras_api
+?&call_and_return_all_conditional_losses
?__call__"??
_tf_keras_network??{"class_name": "Functional", "name": "vgg16", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "vgg16", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["block5_pool", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 224, 224, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "vgg16", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["block5_pool", 0, 0]]}}}
?	

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 7, 512]}}
?	

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5, 5, 128]}}
?
0	variables
1trainable_variables
2regularization_losses
3	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 576}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 576]}}
?

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 4, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?
@iter

Abeta_1

Bbeta_2
	Cdecay
Dlearning_rate$m?%m?*m?+m?4m?5m?:m?;m?$v?%v?*v?+v?4v?5v?:v?;v?"
	optimizer
?
E0
F1
G2
H3
I4
J5
K6
L7
M8
N9
O10
P11
Q12
R13
S14
T15
U16
V17
W18
X19
Y20
Z21
[22
\23
]24
^25
$26
%27
*28
+29
430
531
:32
;33"
trackable_list_wrapper
X
$0
%1
*2
+3
44
55
:6
;7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
_layer_metrics
`non_trainable_variables
alayer_regularization_losses
	variables

blayers
	trainable_variables

regularization_losses
cmetrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 224, 224, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
?	

Ekernel
Fbias
d	variables
etrainable_variables
fregularization_losses
g	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block1_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 224, 224, 3]}}
?


Gkernel
Hbias
h	variables
itrainable_variables
jregularization_losses
k	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block1_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 224, 224, 64]}}
?
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "block1_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?


Ikernel
Jbias
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block2_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 112, 112, 64]}}
?


Kkernel
Lbias
t	variables
utrainable_variables
vregularization_losses
w	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block2_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 112, 112, 128]}}
?
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "block2_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?


Mkernel
Nbias
|	variables
}trainable_variables
~regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block3_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 56, 56, 128]}}
?


Okernel
Pbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block3_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 56, 56, 256]}}
?


Qkernel
Rbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block3_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 56, 56, 256]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "block3_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?


Skernel
Tbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block4_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 256]}}
?


Ukernel
Vbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block4_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 512]}}
?


Wkernel
Xbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block4_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 512]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "block4_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?


Ykernel
Zbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block5_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 512]}}
?


[kernel
\bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block5_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 512]}}
?


]kernel
^bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "block5_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 512]}}
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "block5_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
E0
F1
G2
H3
I4
J5
K6
L7
M8
N9
O10
P11
Q12
R13
S14
T15
U16
V17
W18
X19
Y20
Z21
[22
\23
]24
^25"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
 	variables
?layers
!trainable_variables
"regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'??2conv2d/kernel
:?2conv2d/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
&	variables
'trainable_variables
(regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(?@2conv2d_1/kernel
:@2conv2d_1/bias
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
,	variables
-trainable_variables
.regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
0	variables
1trainable_variables
2regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	?d2dense/kernel
:d2
dense/bias
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
6	variables
7trainable_variables
8regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :d2dense_1/kernel
:2dense_1/bias
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
<	variables
=trainable_variables
>regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+@2block1_conv1/kernel
:@2block1_conv1/bias
-:+@@2block1_conv2/kernel
:@2block1_conv2/bias
.:,@?2block2_conv1/kernel
 :?2block2_conv1/bias
/:-??2block2_conv2/kernel
 :?2block2_conv2/bias
/:-??2block3_conv1/kernel
 :?2block3_conv1/bias
/:-??2block3_conv2/kernel
 :?2block3_conv2/bias
/:-??2block3_conv3/kernel
 :?2block3_conv3/bias
/:-??2block4_conv1/kernel
 :?2block4_conv1/bias
/:-??2block4_conv2/kernel
 :?2block4_conv2/bias
/:-??2block4_conv3/kernel
 :?2block4_conv3/bias
/:-??2block5_conv1/kernel
 :?2block5_conv1/bias
/:-??2block5_conv2/kernel
 :?2block5_conv2/bias
/:-??2block5_conv3/kernel
 :?2block5_conv3/bias
 "
trackable_dict_wrapper
?
E0
F1
G2
H3
I4
J5
K6
L7
M8
N9
O10
P11
Q12
R13
S14
T15
U16
V17
W18
X19
Y20
Z21
[22
\23
]24
^25"
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
H
?0
?1
?2
?3
?4"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
d	variables
etrainable_variables
fregularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
h	variables
itrainable_variables
jregularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
l	variables
mtrainable_variables
nregularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
p	variables
qtrainable_variables
rregularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
t	variables
utrainable_variables
vregularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
x	variables
ytrainable_variables
zregularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
|	variables
}trainable_variables
~regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics
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
?layer_metrics
?non_trainable_variables
 ?layer_regularization_losses
?layers
?	variables
?trainable_variables
?regularization_losses
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
?
E0
F1
G2
H3
I4
J5
K6
L7
M8
N9
O10
P11
Q12
R13
S14
T15
U16
V17
W18
X19
Y20
Z21
[22
\23
]24
^25"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18"
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
?"
?true_positives
?true_negatives
?false_positives
?false_negatives
?	variables
?	keras_api"?!
_tf_keras_metric?!{"class_name": "AUC", "name": "auc", "dtype": "float32", "config": {"name": "auc", "dtype": "float32", "num_thresholds": 200, "curve": "ROC", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593], "multi_label": false, "label_weights": null}}
?
?conf_mtx
?	variables
?	keras_api
?_cast_ypred
?_safe_squeeze
?_update
?_update_multi_class_model"?
_tf_keras_metric?{"class_name": "Addons>CohenKappa", "name": "cohen_kappa", "dtype": "float32", "config": {"name": "cohen_kappa", "dtype": "float32", "num_classes": 4, "weightage": null, "sparse_labels": false, "regression": false}}
?
?
init_shape
?true_positives
?false_positives
?false_negatives
?weights_intermediate
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Addons>F1Score", "name": "f1_score", "dtype": "float32", "config": {"name": "f1_score", "dtype": "float32", "num_classes": 4, "average": null, "threshold": null}}
 "
trackable_dict_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
G0
H1"
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
.
K0
L1"
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
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
Q0
R1"
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
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
W0
X1"
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
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
]0
^1"
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
:? (2true_positives
:? (2true_negatives
 :? (2false_positives
 :? (2false_negatives
@
?0
?1
?2
?3"
trackable_list_wrapper
.
?	variables"
_generic_user_object
: (2conf_mtx
(
?0"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
: (2false_negatives
$:" (2weights_intermediate
@
?0
?1
?2
?3"
trackable_list_wrapper
.
?	variables"
_generic_user_object
.:,??2Adam/conv2d/kernel/m
:?2Adam/conv2d/bias/m
/:-?@2Adam/conv2d_1/kernel/m
 :@2Adam/conv2d_1/bias/m
$:"	?d2Adam/dense/kernel/m
:d2Adam/dense/bias/m
%:#d2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
.:,??2Adam/conv2d/kernel/v
:?2Adam/conv2d/bias/v
/:-?@2Adam/conv2d_1/kernel/v
 :@2Adam/conv2d_1/bias/v
$:"	?d2Adam/dense/kernel/v
:d2Adam/dense/bias/v
%:#d2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
?2?
 __inference__wrapped_model_49688?
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
annotations? *4?1
/?,
vgg16_input???????????
?2?
E__inference_sequential_layer_call_and_return_conditional_losses_50818
E__inference_sequential_layer_call_and_return_conditional_losses_51464
E__inference_sequential_layer_call_and_return_conditional_losses_51334
E__inference_sequential_layer_call_and_return_conditional_losses_50740?
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
?2?
*__inference_sequential_layer_call_fn_51537
*__inference_sequential_layer_call_fn_50970
*__inference_sequential_layer_call_fn_51610
*__inference_sequential_layer_call_fn_51121?
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
?2?
@__inference_vgg16_layer_call_and_return_conditional_losses_51810
@__inference_vgg16_layer_call_and_return_conditional_losses_50183
@__inference_vgg16_layer_call_and_return_conditional_losses_51710
@__inference_vgg16_layer_call_and_return_conditional_losses_50109?
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
?2?
%__inference_vgg16_layer_call_fn_51867
%__inference_vgg16_layer_call_fn_51924
%__inference_vgg16_layer_call_fn_50315
%__inference_vgg16_layer_call_fn_50446?
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
A__inference_conv2d_layer_call_and_return_conditional_losses_51935?
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
&__inference_conv2d_layer_call_fn_51944?
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
C__inference_conv2d_1_layer_call_and_return_conditional_losses_51955?
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
(__inference_conv2d_1_layer_call_fn_51964?
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
B__inference_flatten_layer_call_and_return_conditional_losses_51970?
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
'__inference_flatten_layer_call_fn_51975?
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
@__inference_dense_layer_call_and_return_conditional_losses_51986?
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
%__inference_dense_layer_call_fn_51995?
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
B__inference_dense_1_layer_call_and_return_conditional_losses_52006?
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
'__inference_dense_1_layer_call_fn_52015?
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
#__inference_signature_wrapper_51204vgg16_input"?
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
?2?
G__inference_block1_conv1_layer_call_and_return_conditional_losses_52026?
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
,__inference_block1_conv1_layer_call_fn_52035?
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
G__inference_block1_conv2_layer_call_and_return_conditional_losses_52046?
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
,__inference_block1_conv2_layer_call_fn_52055?
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
F__inference_block1_pool_layer_call_and_return_conditional_losses_49694?
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
+__inference_block1_pool_layer_call_fn_49700?
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
G__inference_block2_conv1_layer_call_and_return_conditional_losses_52066?
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
,__inference_block2_conv1_layer_call_fn_52075?
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
G__inference_block2_conv2_layer_call_and_return_conditional_losses_52086?
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
,__inference_block2_conv2_layer_call_fn_52095?
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
F__inference_block2_pool_layer_call_and_return_conditional_losses_49706?
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
+__inference_block2_pool_layer_call_fn_49712?
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
G__inference_block3_conv1_layer_call_and_return_conditional_losses_52106?
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
,__inference_block3_conv1_layer_call_fn_52115?
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
G__inference_block3_conv2_layer_call_and_return_conditional_losses_52126?
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
,__inference_block3_conv2_layer_call_fn_52135?
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
G__inference_block3_conv3_layer_call_and_return_conditional_losses_52146?
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
,__inference_block3_conv3_layer_call_fn_52155?
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
F__inference_block3_pool_layer_call_and_return_conditional_losses_49718?
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
+__inference_block3_pool_layer_call_fn_49724?
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
G__inference_block4_conv1_layer_call_and_return_conditional_losses_52166?
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
,__inference_block4_conv1_layer_call_fn_52175?
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
G__inference_block4_conv2_layer_call_and_return_conditional_losses_52186?
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
,__inference_block4_conv2_layer_call_fn_52195?
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
G__inference_block4_conv3_layer_call_and_return_conditional_losses_52206?
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
,__inference_block4_conv3_layer_call_fn_52215?
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
F__inference_block4_pool_layer_call_and_return_conditional_losses_49730?
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
+__inference_block4_pool_layer_call_fn_49736?
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
G__inference_block5_conv1_layer_call_and_return_conditional_losses_52226?
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
,__inference_block5_conv1_layer_call_fn_52235?
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
G__inference_block5_conv2_layer_call_and_return_conditional_losses_52246?
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
,__inference_block5_conv2_layer_call_fn_52255?
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
G__inference_block5_conv3_layer_call_and_return_conditional_losses_52266?
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
,__inference_block5_conv3_layer_call_fn_52275?
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
F__inference_block5_pool_layer_call_and_return_conditional_losses_49742?
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
+__inference_block5_pool_layer_call_fn_49748?
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
__inference__cast_ypred_48553?
???
FullArgSpec
args?
jself
jy_pred
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
__inference__safe_squeeze_48593
__inference__safe_squeeze_48573?
???
FullArgSpec
args?
jself
jy
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
+__inference__update_multi_class_model_48821?
???
FullArgSpec8
args0?-
jself
jy_true
jy_pred
jsample_weight
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ]
__inference__cast_ypred_48553</?,
%?"
 ?
y_pred?????????
? "	?	K
__inference__safe_squeeze_48573(?
?
?	
y	
? "	?	V
__inference__safe_squeeze_485933&?#
?
?
y?????????	
? "	?	?
+__inference__update_multi_class_model_48821u?^?[
T?Q
)?&
y_true??????????????????
 ?
y_pred?????????

 
? "??
 __inference__wrapped_model_49688?"EFGHIJKLMNOPQRSTUVWXYZ[\]^$%*+45:;>?;
4?1
/?,
vgg16_input???????????
? "1?.
,
dense_1!?
dense_1??????????
G__inference_block1_conv1_layer_call_and_return_conditional_losses_52026pEF9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????@
? ?
,__inference_block1_conv1_layer_call_fn_52035cEF9?6
/?,
*?'
inputs???????????
? ""????????????@?
G__inference_block1_conv2_layer_call_and_return_conditional_losses_52046pGH9?6
/?,
*?'
inputs???????????@
? "/?,
%?"
0???????????@
? ?
,__inference_block1_conv2_layer_call_fn_52055cGH9?6
/?,
*?'
inputs???????????@
? ""????????????@?
F__inference_block1_pool_layer_call_and_return_conditional_losses_49694?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
+__inference_block1_pool_layer_call_fn_49700?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
G__inference_block2_conv1_layer_call_and_return_conditional_losses_52066mIJ7?4
-?*
(?%
inputs?????????pp@
? ".?+
$?!
0?????????pp?
? ?
,__inference_block2_conv1_layer_call_fn_52075`IJ7?4
-?*
(?%
inputs?????????pp@
? "!??????????pp??
G__inference_block2_conv2_layer_call_and_return_conditional_losses_52086nKL8?5
.?+
)?&
inputs?????????pp?
? ".?+
$?!
0?????????pp?
? ?
,__inference_block2_conv2_layer_call_fn_52095aKL8?5
.?+
)?&
inputs?????????pp?
? "!??????????pp??
F__inference_block2_pool_layer_call_and_return_conditional_losses_49706?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
+__inference_block2_pool_layer_call_fn_49712?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
G__inference_block3_conv1_layer_call_and_return_conditional_losses_52106nMN8?5
.?+
)?&
inputs?????????88?
? ".?+
$?!
0?????????88?
? ?
,__inference_block3_conv1_layer_call_fn_52115aMN8?5
.?+
)?&
inputs?????????88?
? "!??????????88??
G__inference_block3_conv2_layer_call_and_return_conditional_losses_52126nOP8?5
.?+
)?&
inputs?????????88?
? ".?+
$?!
0?????????88?
? ?
,__inference_block3_conv2_layer_call_fn_52135aOP8?5
.?+
)?&
inputs?????????88?
? "!??????????88??
G__inference_block3_conv3_layer_call_and_return_conditional_losses_52146nQR8?5
.?+
)?&
inputs?????????88?
? ".?+
$?!
0?????????88?
? ?
,__inference_block3_conv3_layer_call_fn_52155aQR8?5
.?+
)?&
inputs?????????88?
? "!??????????88??
F__inference_block3_pool_layer_call_and_return_conditional_losses_49718?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
+__inference_block3_pool_layer_call_fn_49724?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
G__inference_block4_conv1_layer_call_and_return_conditional_losses_52166nST8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_block4_conv1_layer_call_fn_52175aST8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_block4_conv2_layer_call_and_return_conditional_losses_52186nUV8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_block4_conv2_layer_call_fn_52195aUV8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_block4_conv3_layer_call_and_return_conditional_losses_52206nWX8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_block4_conv3_layer_call_fn_52215aWX8?5
.?+
)?&
inputs??????????
? "!????????????
F__inference_block4_pool_layer_call_and_return_conditional_losses_49730?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
+__inference_block4_pool_layer_call_fn_49736?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
G__inference_block5_conv1_layer_call_and_return_conditional_losses_52226nYZ8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_block5_conv1_layer_call_fn_52235aYZ8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_block5_conv2_layer_call_and_return_conditional_losses_52246n[\8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_block5_conv2_layer_call_fn_52255a[\8?5
.?+
)?&
inputs??????????
? "!????????????
G__inference_block5_conv3_layer_call_and_return_conditional_losses_52266n]^8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
,__inference_block5_conv3_layer_call_fn_52275a]^8?5
.?+
)?&
inputs??????????
? "!????????????
F__inference_block5_pool_layer_call_and_return_conditional_losses_49742?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
+__inference_block5_pool_layer_call_fn_49748?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
C__inference_conv2d_1_layer_call_and_return_conditional_losses_51955m*+8?5
.?+
)?&
inputs??????????
? "-?*
#? 
0?????????@
? ?
(__inference_conv2d_1_layer_call_fn_51964`*+8?5
.?+
)?&
inputs??????????
? " ??????????@?
A__inference_conv2d_layer_call_and_return_conditional_losses_51935n$%8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
&__inference_conv2d_layer_call_fn_51944a$%8?5
.?+
)?&
inputs??????????
? "!????????????
B__inference_dense_1_layer_call_and_return_conditional_losses_52006\:;/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????
? z
'__inference_dense_1_layer_call_fn_52015O:;/?,
%?"
 ?
inputs?????????d
? "???????????
@__inference_dense_layer_call_and_return_conditional_losses_51986]450?-
&?#
!?
inputs??????????
? "%?"
?
0?????????d
? y
%__inference_dense_layer_call_fn_51995P450?-
&?#
!?
inputs??????????
? "??????????d?
B__inference_flatten_layer_call_and_return_conditional_losses_51970a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????
? 
'__inference_flatten_layer_call_fn_51975T7?4
-?*
(?%
inputs?????????@
? "????????????
E__inference_sequential_layer_call_and_return_conditional_losses_50740?"EFGHIJKLMNOPQRSTUVWXYZ[\]^$%*+45:;F?C
<?9
/?,
vgg16_input???????????
p

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_50818?"EFGHIJKLMNOPQRSTUVWXYZ[\]^$%*+45:;F?C
<?9
/?,
vgg16_input???????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_51334?"EFGHIJKLMNOPQRSTUVWXYZ[\]^$%*+45:;A?>
7?4
*?'
inputs???????????
p

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_51464?"EFGHIJKLMNOPQRSTUVWXYZ[\]^$%*+45:;A?>
7?4
*?'
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
*__inference_sequential_layer_call_fn_50970?"EFGHIJKLMNOPQRSTUVWXYZ[\]^$%*+45:;F?C
<?9
/?,
vgg16_input???????????
p

 
? "???????????
*__inference_sequential_layer_call_fn_51121?"EFGHIJKLMNOPQRSTUVWXYZ[\]^$%*+45:;F?C
<?9
/?,
vgg16_input???????????
p 

 
? "???????????
*__inference_sequential_layer_call_fn_51537?"EFGHIJKLMNOPQRSTUVWXYZ[\]^$%*+45:;A?>
7?4
*?'
inputs???????????
p

 
? "???????????
*__inference_sequential_layer_call_fn_51610?"EFGHIJKLMNOPQRSTUVWXYZ[\]^$%*+45:;A?>
7?4
*?'
inputs???????????
p 

 
? "???????????
#__inference_signature_wrapper_51204?"EFGHIJKLMNOPQRSTUVWXYZ[\]^$%*+45:;M?J
? 
C?@
>
vgg16_input/?,
vgg16_input???????????"1?.
,
dense_1!?
dense_1??????????
@__inference_vgg16_layer_call_and_return_conditional_losses_50109?EFGHIJKLMNOPQRSTUVWXYZ[\]^B??
8?5
+?(
input_1???????????
p

 
? ".?+
$?!
0??????????
? ?
@__inference_vgg16_layer_call_and_return_conditional_losses_50183?EFGHIJKLMNOPQRSTUVWXYZ[\]^B??
8?5
+?(
input_1???????????
p 

 
? ".?+
$?!
0??????????
? ?
@__inference_vgg16_layer_call_and_return_conditional_losses_51710?EFGHIJKLMNOPQRSTUVWXYZ[\]^A?>
7?4
*?'
inputs???????????
p

 
? ".?+
$?!
0??????????
? ?
@__inference_vgg16_layer_call_and_return_conditional_losses_51810?EFGHIJKLMNOPQRSTUVWXYZ[\]^A?>
7?4
*?'
inputs???????????
p 

 
? ".?+
$?!
0??????????
? ?
%__inference_vgg16_layer_call_fn_50315?EFGHIJKLMNOPQRSTUVWXYZ[\]^B??
8?5
+?(
input_1???????????
p

 
? "!????????????
%__inference_vgg16_layer_call_fn_50446?EFGHIJKLMNOPQRSTUVWXYZ[\]^B??
8?5
+?(
input_1???????????
p 

 
? "!????????????
%__inference_vgg16_layer_call_fn_51867?EFGHIJKLMNOPQRSTUVWXYZ[\]^A?>
7?4
*?'
inputs???????????
p

 
? "!????????????
%__inference_vgg16_layer_call_fn_51924?EFGHIJKLMNOPQRSTUVWXYZ[\]^A?>
7?4
*?'
inputs???????????
p 

 
? "!???????????
ô²
è
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
³
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
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
f
SimpleMLCreateModelResource
model_handle"
	containerstring "
shared_namestring 
á
SimpleMLInferenceOpWithHandle
numerical_features
boolean_features
categorical_int_features'
#categorical_set_int_features_values1
-categorical_set_int_features_row_splits_dim_1	1
-categorical_set_int_features_row_splits_dim_2	
model_handle
dense_predictions
dense_col_representation"
dense_output_dimint(0

#SimpleMLLoadModelFromPathWithHandle
model_handle
path" 
output_typeslist(string)
 "
file_prefixstring 
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
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
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
 
9
VarIsInitializedOp
resource
is_initialized
"serve*2.9.12v2.9.0-18-gd8ce9f9c3018
W
asset_path_initializerPlaceholder*
_output_shapes
: *
dtype0*
shape: 

VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
R
Variable/AssignAssignVariableOpVariableasset_path_initializer*
dtype0
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0
Y
asset_path_initializer_1Placeholder*
_output_shapes
: *
dtype0*
shape: 


Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
X
Variable_1/AssignAssignVariableOp
Variable_1asset_path_initializer_1*
dtype0
a
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
: *
dtype0
Y
asset_path_initializer_2Placeholder*
_output_shapes
: *
dtype0*
shape: 


Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
X
Variable_2/AssignAssignVariableOp
Variable_2asset_path_initializer_2*
dtype0
a
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
: *
dtype0
Y
asset_path_initializer_3Placeholder*
_output_shapes
: *
dtype0*
shape: 


Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
X
Variable_3/AssignAssignVariableOp
Variable_3asset_path_initializer_3*
dtype0
a
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
: *
dtype0
Y
asset_path_initializer_4Placeholder*
_output_shapes
: *
dtype0*
shape: 


Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
X
Variable_4/AssignAssignVariableOp
Variable_4asset_path_initializer_4*
dtype0
a
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
: *
dtype0
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

SimpleMLCreateModelResourceSimpleMLCreateModelResource*
_output_shapes
: *E
shared_name64simple_ml_model_6a4aa45d-5d4a-4f40-ad48-0e52f3ab7f8b
h

is_trainedVarHandleOp*
_output_shapes
: *
dtype0
*
shape: *
shared_name
is_trained
a
is_trained/Read/ReadVariableOpReadVariableOp
is_trained*
_output_shapes
: *
dtype0

e
ReadVariableOpReadVariableOp
Variable_4^Variable_4/Assign*
_output_shapes
: *
dtype0
©
StatefulPartitionedCallStatefulPartitionedCallReadVariableOpSimpleMLCreateModelResource*
Tin
2*
Tout
2*
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
GPU 2J 8 *"
fR
__inference_<lambda>_1875

NoOpNoOp^StatefulPartitionedCall^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign^Variable_4/Assign
Ý
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB B
õ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
_learner_params
		_features

_is_trained
	optimizer
loss

_model
_build_normalized_inputs
call
call_get_leaves
yggdrasil_model_path_tensor

signatures*


0*
* 
* 
°
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
trace_0
trace_1
trace_2
trace_3* 
6
trace_0
trace_1
trace_2
trace_3* 
* 
* 
* 
JD
VARIABLE_VALUE
is_trained&_is_trained/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
+
 _input_builder
!_compiled_model* 

"trace_0* 

#trace_0* 
* 

$trace_0* 

%serving_default* 


0*
* 

&0
'1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
P
(_feature_name_to_idx
)	_init_ops
#*categorical_str_to_int_hashmaps* 
S
+_model_loader
,_create_resource
-_initialize
._destroy_resource* 
* 
* 
* 
* 
8
/	variables
0	keras_api
	1total
	2count*
H
3	variables
4	keras_api
	5total
	6count
7
_fn_kwargs*
* 
* 
* 
5
8_output_types
9
_all_files
:
_done_file* 

;trace_0* 

<trace_0* 

=trace_0* 

10
21*

/	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

50
61*

3	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
%
>0
?1
:2
@3
A4* 
* 
* 
* 
* 
* 
* 
* 
* 
{
 serving_default_hewan_ternak_idxPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
{
 serving_default_internet_minimumPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
~
#serving_default_kemampuan_masak_idxPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
x
serving_default_lahan_minimumPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

$serving_default_lokasi_geografis_idxPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
u
serving_default_lokasi_idxPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
}
"serving_default_mengerti_hewan_idxPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
x
serving_default_modal_maximumPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
x
serving_default_modal_minimumPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
x
serving_default_omset_minimumPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
z
serving_default_pegawai_minimumPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ

&serving_default_penyimpanan_barang_idxPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
{
 serving_default_sosial_media_idxPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ

&serving_default_tingkat_persaingan_idxPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
x
serving_default_tipe_toko_idxPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ

&serving_default_tipe_usaha_kuliner_idxPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
~
#serving_default_tipe_usaha_lain_idxPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
{
 serving_default_toko_toserba_idxPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
o
serving_default_tp_aPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
o
serving_default_tp_bPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
o
serving_default_tp_mPlaceholder*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0	*
shape:ÿÿÿÿÿÿÿÿÿ
÷
StatefulPartitionedCall_1StatefulPartitionedCall serving_default_hewan_ternak_idx serving_default_internet_minimum#serving_default_kemampuan_masak_idxserving_default_lahan_minimum$serving_default_lokasi_geografis_idxserving_default_lokasi_idx"serving_default_mengerti_hewan_idxserving_default_modal_maximumserving_default_modal_minimumserving_default_omset_minimumserving_default_pegawai_minimum&serving_default_penyimpanan_barang_idx serving_default_sosial_media_idx&serving_default_tingkat_persaingan_idxserving_default_tipe_toko_idx&serving_default_tipe_usaha_kuliner_idx#serving_default_tipe_usaha_lain_idx serving_default_toko_toserba_idxserving_default_tp_aserving_default_tp_bserving_default_tp_mSimpleMLCreateModelResource*!
Tin
2																	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_1687
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
®
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameis_trained/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
	2
*
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
GPU 2J 8 *&
f!R
__inference__traced_save_1956
Å
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filename
is_trainedtotal_1count_1totalcount*
Tin

2*
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
 __inference__traced_restore_1981²¿
Î

"__inference_signature_wrapper_1687
hewan_ternak_idx	
internet_minimum	
kemampuan_masak_idx	
lahan_minimum
lokasi_geografis_idx	

lokasi_idx	
mengerti_hewan_idx	
modal_maximum
modal_minimum
omset_minimum
pegawai_minimum	
penyimpanan_barang_idx	
sosial_media_idx	
tingkat_persaingan_idx	
tipe_toko_idx	
tipe_usaha_kuliner_idx	
tipe_usaha_lain_idx	
toko_toserba_idx	
tp_a	
tp_b	
tp_m	
unknown
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallhewan_ternak_idxinternet_minimumkemampuan_masak_idxlahan_minimumlokasi_geografis_idx
lokasi_idxmengerti_hewan_idxmodal_maximummodal_minimumomset_minimumpegawai_minimumpenyimpanan_barang_idxsosial_media_idxtingkat_persaingan_idxtipe_toko_idxtipe_usaha_kuliner_idxtipe_usaha_lain_idxtoko_toserba_idxtp_atp_btp_munknown*!
Tin
2																	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_1211o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ò
_input_shapesÀ
½:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namehewan_ternak_idx:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nameinternet_minimum:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namekemampuan_masak_idx:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelahan_minimum:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namelokasi_geografis_idx:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
lokasi_idx:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namemengerti_hewan_idx:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namemodal_maximum:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namemodal_minimum:R	N
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameomset_minimum:T
P
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namepegawai_minimum:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_namepenyimpanan_barang_idx:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namesosial_media_idx:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nametingkat_persaingan_idx:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nametipe_toko_idx:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nametipe_usaha_kuliner_idx:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nametipe_usaha_lain_idx:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nametoko_toserba_idx:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nametp_a:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nametp_b:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nametp_m
Ð
J
__inference__creator_1854
identity¢SimpleMLCreateModelResource
SimpleMLCreateModelResourceSimpleMLCreateModelResource*
_output_shapes
: *E
shared_name64simple_ml_model_6a4aa45d-5d4a-4f40-ad48-0e52f3ab7f8bh
IdentityIdentity*SimpleMLCreateModelResource:model_handle:0^NoOp*
T0*
_output_shapes
: d
NoOpNoOp^SimpleMLCreateModelResource*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2:
SimpleMLCreateModelResourceSimpleMLCreateModelResource
½&
Æ
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1397

inputs	
inputs_1	
inputs_2	
inputs_3
inputs_4	
inputs_5	
inputs_6	
inputs_7
inputs_8
inputs_9
	inputs_10	
	inputs_11	
	inputs_12	
	inputs_13	
	inputs_14	
	inputs_15	
	inputs_16	
	inputs_17	
	inputs_18	
	inputs_19	
	inputs_20	
inference_op_model_handle
identity¢inference_opº
PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20* 
Tin
2																	*!
Tout
2*
_collective_manager_ids
 *Ñ
_output_shapes¾
»:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *2
f-R+
)__inference__build_normalized_inputs_1174
stackPackPartitionedCall:output:0PartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6PartitionedCall:output:7PartitionedCall:output:8PartitionedCall:output:9PartitionedCall:output:10PartitionedCall:output:11PartitionedCall:output:12PartitionedCall:output:13PartitionedCall:output:14PartitionedCall:output:15PartitionedCall:output:16PartitionedCall:output:17PartitionedCall:output:18PartitionedCall:output:19PartitionedCall:output:20*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

axisL
ConstConst*
_output_shapes
:  *
dtype0*
value
B  N
Const_1Const*
_output_shapes
:  *
dtype0*
value
B  X
RaggedConstant/valuesConst*
_output_shapes
: *
dtype0*
valueB ^
RaggedConstant/ConstConst*
_output_shapes
:*
dtype0	*
valueB	R `
RaggedConstant/Const_1Const*
_output_shapes
:*
dtype0	*
valueB	R ¡
inference_opSimpleMLInferenceOpWithHandlestack:output:0Const:output:0Const_1:output:0RaggedConstant/values:output:0RaggedConstant/Const:output:0RaggedConstant/Const_1:output:0inference_op_model_handle*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:*
dense_output_dimo
IdentityIdentity inference_op:dense_predictions:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
NoOpNoOp^inference_op*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ò
_input_shapesÀ
½:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 2
inference_opinference_op:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K	G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K
G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
±
__inference__traced_save_1956
file_prefix)
%savev2_is_trained_read_readvariableop
&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
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
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*³
value©B¦B&_is_trained/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHy
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B è
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0%savev2_is_trained_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes

2

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

identity_1Identity_1:output:0*!
_input_shapes
: : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

§
;__inference_gradient_boosted_trees_model_layer_call_fn_1429
hewan_ternak_idx	
internet_minimum	
kemampuan_masak_idx	
lahan_minimum
lokasi_geografis_idx	

lokasi_idx	
mengerti_hewan_idx	
modal_maximum
modal_minimum
omset_minimum
pegawai_minimum	
penyimpanan_barang_idx	
sosial_media_idx	
tingkat_persaingan_idx	
tipe_toko_idx	
tipe_usaha_kuliner_idx	
tipe_usaha_lain_idx	
toko_toserba_idx	
tp_a	
tp_b	
tp_m	
unknown
identity¢StatefulPartitionedCallÅ
StatefulPartitionedCallStatefulPartitionedCallhewan_ternak_idxinternet_minimumkemampuan_masak_idxlahan_minimumlokasi_geografis_idx
lokasi_idxmengerti_hewan_idxmodal_maximummodal_minimumomset_minimumpegawai_minimumpenyimpanan_barang_idxsosial_media_idxtingkat_persaingan_idxtipe_toko_idxtipe_usaha_kuliner_idxtipe_usaha_lain_idxtoko_toserba_idxtp_atp_btp_munknown*!
Tin
2																	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1397o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ò
_input_shapesÀ
½:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namehewan_ternak_idx:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nameinternet_minimum:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namekemampuan_masak_idx:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelahan_minimum:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namelokasi_geografis_idx:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
lokasi_idx:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namemengerti_hewan_idx:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namemodal_maximum:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namemodal_minimum:R	N
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameomset_minimum:T
P
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namepegawai_minimum:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_namepenyimpanan_barang_idx:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namesosial_media_idx:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nametingkat_persaingan_idx:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nametipe_toko_idx:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nametipe_usaha_kuliner_idx:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nametipe_usaha_lain_idx:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nametoko_toserba_idx:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nametp_a:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nametp_b:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nametp_m
ù)
É
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1483
hewan_ternak_idx	
internet_minimum	
kemampuan_masak_idx	
lahan_minimum
lokasi_geografis_idx	

lokasi_idx	
mengerti_hewan_idx	
modal_maximum
modal_minimum
omset_minimum
pegawai_minimum	
penyimpanan_barang_idx	
sosial_media_idx	
tingkat_persaingan_idx	
tipe_toko_idx	
tipe_usaha_kuliner_idx	
tipe_usaha_lain_idx	
toko_toserba_idx	
tp_a	
tp_b	
tp_m	
inference_op_model_handle
identity¢inference_op½
PartitionedCallPartitionedCallhewan_ternak_idxinternet_minimumkemampuan_masak_idxlahan_minimumlokasi_geografis_idx
lokasi_idxmengerti_hewan_idxmodal_maximummodal_minimumomset_minimumpegawai_minimumpenyimpanan_barang_idxsosial_media_idxtingkat_persaingan_idxtipe_toko_idxtipe_usaha_kuliner_idxtipe_usaha_lain_idxtoko_toserba_idxtp_atp_btp_m* 
Tin
2																	*!
Tout
2*
_collective_manager_ids
 *Ñ
_output_shapes¾
»:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *2
f-R+
)__inference__build_normalized_inputs_1174
stackPackPartitionedCall:output:0PartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6PartitionedCall:output:7PartitionedCall:output:8PartitionedCall:output:9PartitionedCall:output:10PartitionedCall:output:11PartitionedCall:output:12PartitionedCall:output:13PartitionedCall:output:14PartitionedCall:output:15PartitionedCall:output:16PartitionedCall:output:17PartitionedCall:output:18PartitionedCall:output:19PartitionedCall:output:20*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

axisL
ConstConst*
_output_shapes
:  *
dtype0*
value
B  N
Const_1Const*
_output_shapes
:  *
dtype0*
value
B  X
RaggedConstant/valuesConst*
_output_shapes
: *
dtype0*
valueB ^
RaggedConstant/ConstConst*
_output_shapes
:*
dtype0	*
valueB	R `
RaggedConstant/Const_1Const*
_output_shapes
:*
dtype0	*
valueB	R ¡
inference_opSimpleMLInferenceOpWithHandlestack:output:0Const:output:0Const_1:output:0RaggedConstant/values:output:0RaggedConstant/Const:output:0RaggedConstant/Const_1:output:0inference_op_model_handle*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:*
dense_output_dimo
IdentityIdentity inference_op:dense_predictions:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
NoOpNoOp^inference_op*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ò
_input_shapesÀ
½:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 2
inference_opinference_op:U Q
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namehewan_ternak_idx:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nameinternet_minimum:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namekemampuan_masak_idx:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelahan_minimum:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namelokasi_geografis_idx:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
lokasi_idx:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namemengerti_hewan_idx:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namemodal_maximum:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namemodal_minimum:R	N
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameomset_minimum:T
P
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namepegawai_minimum:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_namepenyimpanan_barang_idx:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namesosial_media_idx:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nametingkat_persaingan_idx:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nametipe_toko_idx:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nametipe_usaha_kuliner_idx:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nametipe_usaha_lain_idx:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nametoko_toserba_idx:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nametp_a:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nametp_b:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nametp_m
½
Z
,__inference_yggdrasil_model_path_tensor_1658
staticregexreplace_input
identity
StaticRegexReplaceStaticRegexReplacestaticregexreplace_input*
_output_shapes
: *!
pattern0486d20288af4910done*
rewrite R
IdentityIdentityStaticRegexReplace:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 

_output_shapes
: 
²-
Ü
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1849
inputs_hewan_ternak_idx	
inputs_internet_minimum	
inputs_kemampuan_masak_idx	
inputs_lahan_minimum
inputs_lokasi_geografis_idx	
inputs_lokasi_idx	
inputs_mengerti_hewan_idx	
inputs_modal_maximum
inputs_modal_minimum
inputs_omset_minimum
inputs_pegawai_minimum	!
inputs_penyimpanan_barang_idx	
inputs_sosial_media_idx	!
inputs_tingkat_persaingan_idx	
inputs_tipe_toko_idx	!
inputs_tipe_usaha_kuliner_idx	
inputs_tipe_usaha_lain_idx	
inputs_toko_toserba_idx	
inputs_tp_a	
inputs_tp_b	
inputs_tp_m	
inference_op_model_handle
identity¢inference_opÐ
PartitionedCallPartitionedCallinputs_hewan_ternak_idxinputs_internet_minimuminputs_kemampuan_masak_idxinputs_lahan_minimuminputs_lokasi_geografis_idxinputs_lokasi_idxinputs_mengerti_hewan_idxinputs_modal_maximuminputs_modal_minimuminputs_omset_minimuminputs_pegawai_minimuminputs_penyimpanan_barang_idxinputs_sosial_media_idxinputs_tingkat_persaingan_idxinputs_tipe_toko_idxinputs_tipe_usaha_kuliner_idxinputs_tipe_usaha_lain_idxinputs_toko_toserba_idxinputs_tp_ainputs_tp_binputs_tp_m* 
Tin
2																	*!
Tout
2*
_collective_manager_ids
 *Ñ
_output_shapes¾
»:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *2
f-R+
)__inference__build_normalized_inputs_1174
stackPackPartitionedCall:output:0PartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6PartitionedCall:output:7PartitionedCall:output:8PartitionedCall:output:9PartitionedCall:output:10PartitionedCall:output:11PartitionedCall:output:12PartitionedCall:output:13PartitionedCall:output:14PartitionedCall:output:15PartitionedCall:output:16PartitionedCall:output:17PartitionedCall:output:18PartitionedCall:output:19PartitionedCall:output:20*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

axisL
ConstConst*
_output_shapes
:  *
dtype0*
value
B  N
Const_1Const*
_output_shapes
:  *
dtype0*
value
B  X
RaggedConstant/valuesConst*
_output_shapes
: *
dtype0*
valueB ^
RaggedConstant/ConstConst*
_output_shapes
:*
dtype0	*
valueB	R `
RaggedConstant/Const_1Const*
_output_shapes
:*
dtype0	*
valueB	R ¡
inference_opSimpleMLInferenceOpWithHandlestack:output:0Const:output:0Const_1:output:0RaggedConstant/values:output:0RaggedConstant/Const:output:0RaggedConstant/Const_1:output:0inference_op_model_handle*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:*
dense_output_dimo
IdentityIdentity inference_op:dense_predictions:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
NoOpNoOp^inference_op*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ò
_input_shapesÀ
½:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 2
inference_opinference_op:\ X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/hewan_ternak_idx:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/internet_minimum:_[
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4
_user_specified_nameinputs/kemampuan_masak_idx:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/lahan_minimum:`\
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5
_user_specified_nameinputs/lokasi_geografis_idx:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/lokasi_idx:^Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/mengerti_hewan_idx:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/modal_maximum:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/modal_minimum:Y	U
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/omset_minimum:[
W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nameinputs/pegawai_minimum:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/penyimpanan_barang_idx:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/sosial_media_idx:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/tingkat_persaingan_idx:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/tipe_toko_idx:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/tipe_usaha_kuliner_idx:_[
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4
_user_specified_nameinputs/tipe_usaha_lain_idx:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/toko_toserba_idx:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinputs/tp_a:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinputs/tp_b:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinputs/tp_m
ÿ:
É
)__inference__build_normalized_inputs_1598
inputs_hewan_ternak_idx	
inputs_internet_minimum	
inputs_kemampuan_masak_idx	
inputs_lahan_minimum
inputs_lokasi_geografis_idx	
inputs_lokasi_idx	
inputs_mengerti_hewan_idx	
inputs_modal_maximum
inputs_modal_minimum
inputs_omset_minimum
inputs_pegawai_minimum	!
inputs_penyimpanan_barang_idx	
inputs_sosial_media_idx	!
inputs_tingkat_persaingan_idx	
inputs_tipe_toko_idx	!
inputs_tipe_usaha_kuliner_idx	
inputs_tipe_usaha_lain_idx	
inputs_toko_toserba_idx	
inputs_tp_a	
inputs_tp_b	
inputs_tp_m	
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20h
CastCastinputs_tingkat_persaingan_idx*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
Cast_1Castinputs_pegawai_minimum*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
Cast_2Castinputs_tp_b*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
Cast_3Castinputs_tp_m*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
Cast_4Castinputs_tp_a*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
Cast_5Castinputs_lokasi_idx*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
Cast_6Castinputs_hewan_ternak_idx*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
Cast_7Castinputs_lokasi_geografis_idx*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
Cast_8Castinputs_mengerti_hewan_idx*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
Cast_9Castinputs_tipe_usaha_kuliner_idx*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
Cast_10Castinputs_kemampuan_masak_idx*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
Cast_11Castinputs_penyimpanan_barang_idx*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
Cast_12Castinputs_internet_minimum*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
Cast_13Castinputs_sosial_media_idx*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
Cast_14Castinputs_toko_toserba_idx*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
Cast_15Castinputs_tipe_toko_idx*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
Cast_16Castinputs_tipe_usaha_lain_idx*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
IdentityIdentity
Cast_6:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ

Identity_1IdentityCast_12:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ

Identity_2IdentityCast_10:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_3Identityinputs_lahan_minimum*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿP

Identity_4Identity
Cast_7:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿP

Identity_5Identity
Cast_5:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿP

Identity_6Identity
Cast_8:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_7Identityinputs_modal_maximum*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_8Identityinputs_modal_minimum*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ

Identity_9Identityinputs_omset_minimum*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
Identity_10Identity
Cast_1:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
Identity_11IdentityCast_11:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
Identity_12IdentityCast_13:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
Identity_13IdentityCast:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
Identity_14IdentityCast_15:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
Identity_15Identity
Cast_9:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
Identity_16IdentityCast_16:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
Identity_17IdentityCast_14:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
Identity_18Identity
Cast_4:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
Identity_19Identity
Cast_2:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
Identity_20Identity
Cast_3:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*Ð
_input_shapes¾
»:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:\ X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/hewan_ternak_idx:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/internet_minimum:_[
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4
_user_specified_nameinputs/kemampuan_masak_idx:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/lahan_minimum:`\
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5
_user_specified_nameinputs/lokasi_geografis_idx:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/lokasi_idx:^Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/mengerti_hewan_idx:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/modal_maximum:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/modal_minimum:Y	U
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/omset_minimum:[
W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nameinputs/pegawai_minimum:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/penyimpanan_barang_idx:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/sosial_media_idx:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/tingkat_persaingan_idx:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/tipe_toko_idx:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/tipe_usaha_kuliner_idx:_[
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4
_user_specified_nameinputs/tipe_usaha_lain_idx:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/toko_toserba_idx:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinputs/tp_a:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinputs/tp_b:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinputs/tp_m
½&
Æ
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1289

inputs	
inputs_1	
inputs_2	
inputs_3
inputs_4	
inputs_5	
inputs_6	
inputs_7
inputs_8
inputs_9
	inputs_10	
	inputs_11	
	inputs_12	
	inputs_13	
	inputs_14	
	inputs_15	
	inputs_16	
	inputs_17	
	inputs_18	
	inputs_19	
	inputs_20	
inference_op_model_handle
identity¢inference_opº
PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20* 
Tin
2																	*!
Tout
2*
_collective_manager_ids
 *Ñ
_output_shapes¾
»:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *2
f-R+
)__inference__build_normalized_inputs_1174
stackPackPartitionedCall:output:0PartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6PartitionedCall:output:7PartitionedCall:output:8PartitionedCall:output:9PartitionedCall:output:10PartitionedCall:output:11PartitionedCall:output:12PartitionedCall:output:13PartitionedCall:output:14PartitionedCall:output:15PartitionedCall:output:16PartitionedCall:output:17PartitionedCall:output:18PartitionedCall:output:19PartitionedCall:output:20*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

axisL
ConstConst*
_output_shapes
:  *
dtype0*
value
B  N
Const_1Const*
_output_shapes
:  *
dtype0*
value
B  X
RaggedConstant/valuesConst*
_output_shapes
: *
dtype0*
valueB ^
RaggedConstant/ConstConst*
_output_shapes
:*
dtype0	*
valueB	R `
RaggedConstant/Const_1Const*
_output_shapes
:*
dtype0	*
valueB	R ¡
inference_opSimpleMLInferenceOpWithHandlestack:output:0Const:output:0Const_1:output:0RaggedConstant/values:output:0RaggedConstant/Const:output:0RaggedConstant/Const_1:output:0inference_op_model_handle*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:*
dense_output_dimo
IdentityIdentity inference_op:dense_predictions:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
NoOpNoOp^inference_op*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ò
_input_shapesÀ
½:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 2
inference_opinference_op:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K	G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K
G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²-
Ü
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1795
inputs_hewan_ternak_idx	
inputs_internet_minimum	
inputs_kemampuan_masak_idx	
inputs_lahan_minimum
inputs_lokasi_geografis_idx	
inputs_lokasi_idx	
inputs_mengerti_hewan_idx	
inputs_modal_maximum
inputs_modal_minimum
inputs_omset_minimum
inputs_pegawai_minimum	!
inputs_penyimpanan_barang_idx	
inputs_sosial_media_idx	!
inputs_tingkat_persaingan_idx	
inputs_tipe_toko_idx	!
inputs_tipe_usaha_kuliner_idx	
inputs_tipe_usaha_lain_idx	
inputs_toko_toserba_idx	
inputs_tp_a	
inputs_tp_b	
inputs_tp_m	
inference_op_model_handle
identity¢inference_opÐ
PartitionedCallPartitionedCallinputs_hewan_ternak_idxinputs_internet_minimuminputs_kemampuan_masak_idxinputs_lahan_minimuminputs_lokasi_geografis_idxinputs_lokasi_idxinputs_mengerti_hewan_idxinputs_modal_maximuminputs_modal_minimuminputs_omset_minimuminputs_pegawai_minimuminputs_penyimpanan_barang_idxinputs_sosial_media_idxinputs_tingkat_persaingan_idxinputs_tipe_toko_idxinputs_tipe_usaha_kuliner_idxinputs_tipe_usaha_lain_idxinputs_toko_toserba_idxinputs_tp_ainputs_tp_binputs_tp_m* 
Tin
2																	*!
Tout
2*
_collective_manager_ids
 *Ñ
_output_shapes¾
»:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *2
f-R+
)__inference__build_normalized_inputs_1174
stackPackPartitionedCall:output:0PartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6PartitionedCall:output:7PartitionedCall:output:8PartitionedCall:output:9PartitionedCall:output:10PartitionedCall:output:11PartitionedCall:output:12PartitionedCall:output:13PartitionedCall:output:14PartitionedCall:output:15PartitionedCall:output:16PartitionedCall:output:17PartitionedCall:output:18PartitionedCall:output:19PartitionedCall:output:20*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

axisL
ConstConst*
_output_shapes
:  *
dtype0*
value
B  N
Const_1Const*
_output_shapes
:  *
dtype0*
value
B  X
RaggedConstant/valuesConst*
_output_shapes
: *
dtype0*
valueB ^
RaggedConstant/ConstConst*
_output_shapes
:*
dtype0	*
valueB	R `
RaggedConstant/Const_1Const*
_output_shapes
:*
dtype0	*
valueB	R ¡
inference_opSimpleMLInferenceOpWithHandlestack:output:0Const:output:0Const_1:output:0RaggedConstant/values:output:0RaggedConstant/Const:output:0RaggedConstant/Const_1:output:0inference_op_model_handle*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:*
dense_output_dimo
IdentityIdentity inference_op:dense_predictions:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
NoOpNoOp^inference_op*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ò
_input_shapesÀ
½:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 2
inference_opinference_op:\ X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/hewan_ternak_idx:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/internet_minimum:_[
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4
_user_specified_nameinputs/kemampuan_masak_idx:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/lahan_minimum:`\
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5
_user_specified_nameinputs/lokasi_geografis_idx:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/lokasi_idx:^Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/mengerti_hewan_idx:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/modal_maximum:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/modal_minimum:Y	U
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/omset_minimum:[
W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nameinputs/pegawai_minimum:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/penyimpanan_barang_idx:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/sosial_media_idx:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/tingkat_persaingan_idx:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/tipe_toko_idx:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/tipe_usaha_kuliner_idx:_[
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4
_user_specified_nameinputs/tipe_usaha_lain_idx:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/toko_toserba_idx:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinputs/tp_a:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinputs/tp_b:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinputs/tp_m

+
__inference__destroyer_1867
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
ñ,

__inference_call_1652
inputs_hewan_ternak_idx	
inputs_internet_minimum	
inputs_kemampuan_masak_idx	
inputs_lahan_minimum
inputs_lokasi_geografis_idx	
inputs_lokasi_idx	
inputs_mengerti_hewan_idx	
inputs_modal_maximum
inputs_modal_minimum
inputs_omset_minimum
inputs_pegawai_minimum	!
inputs_penyimpanan_barang_idx	
inputs_sosial_media_idx	!
inputs_tingkat_persaingan_idx	
inputs_tipe_toko_idx	!
inputs_tipe_usaha_kuliner_idx	
inputs_tipe_usaha_lain_idx	
inputs_toko_toserba_idx	
inputs_tp_a	
inputs_tp_b	
inputs_tp_m	
inference_op_model_handle
identity¢inference_opÐ
PartitionedCallPartitionedCallinputs_hewan_ternak_idxinputs_internet_minimuminputs_kemampuan_masak_idxinputs_lahan_minimuminputs_lokasi_geografis_idxinputs_lokasi_idxinputs_mengerti_hewan_idxinputs_modal_maximuminputs_modal_minimuminputs_omset_minimuminputs_pegawai_minimuminputs_penyimpanan_barang_idxinputs_sosial_media_idxinputs_tingkat_persaingan_idxinputs_tipe_toko_idxinputs_tipe_usaha_kuliner_idxinputs_tipe_usaha_lain_idxinputs_toko_toserba_idxinputs_tp_ainputs_tp_binputs_tp_m* 
Tin
2																	*!
Tout
2*
_collective_manager_ids
 *Ñ
_output_shapes¾
»:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *2
f-R+
)__inference__build_normalized_inputs_1174
stackPackPartitionedCall:output:0PartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6PartitionedCall:output:7PartitionedCall:output:8PartitionedCall:output:9PartitionedCall:output:10PartitionedCall:output:11PartitionedCall:output:12PartitionedCall:output:13PartitionedCall:output:14PartitionedCall:output:15PartitionedCall:output:16PartitionedCall:output:17PartitionedCall:output:18PartitionedCall:output:19PartitionedCall:output:20*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

axisL
ConstConst*
_output_shapes
:  *
dtype0*
value
B  N
Const_1Const*
_output_shapes
:  *
dtype0*
value
B  X
RaggedConstant/valuesConst*
_output_shapes
: *
dtype0*
valueB ^
RaggedConstant/ConstConst*
_output_shapes
:*
dtype0	*
valueB	R `
RaggedConstant/Const_1Const*
_output_shapes
:*
dtype0	*
valueB	R ¡
inference_opSimpleMLInferenceOpWithHandlestack:output:0Const:output:0Const_1:output:0RaggedConstant/values:output:0RaggedConstant/Const:output:0RaggedConstant/Const_1:output:0inference_op_model_handle*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:*
dense_output_dimo
IdentityIdentity inference_op:dense_predictions:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
NoOpNoOp^inference_op*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ò
_input_shapesÀ
½:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 2
inference_opinference_op:\ X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/hewan_ternak_idx:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/internet_minimum:_[
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4
_user_specified_nameinputs/kemampuan_masak_idx:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/lahan_minimum:`\
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5
_user_specified_nameinputs/lokasi_geografis_idx:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/lokasi_idx:^Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/mengerti_hewan_idx:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/modal_maximum:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/modal_minimum:Y	U
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/omset_minimum:[
W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nameinputs/pegawai_minimum:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/penyimpanan_barang_idx:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/sosial_media_idx:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/tingkat_persaingan_idx:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/tipe_toko_idx:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/tipe_usaha_kuliner_idx:_[
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4
_user_specified_nameinputs/tipe_usaha_lain_idx:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/toko_toserba_idx:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinputs/tp_a:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinputs/tp_b:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinputs/tp_m
× 
º
;__inference_gradient_boosted_trees_model_layer_call_fn_1714
inputs_hewan_ternak_idx	
inputs_internet_minimum	
inputs_kemampuan_masak_idx	
inputs_lahan_minimum
inputs_lokasi_geografis_idx	
inputs_lokasi_idx	
inputs_mengerti_hewan_idx	
inputs_modal_maximum
inputs_modal_minimum
inputs_omset_minimum
inputs_pegawai_minimum	!
inputs_penyimpanan_barang_idx	
inputs_sosial_media_idx	!
inputs_tingkat_persaingan_idx	
inputs_tipe_toko_idx	!
inputs_tipe_usaha_kuliner_idx	
inputs_tipe_usaha_lain_idx	
inputs_toko_toserba_idx	
inputs_tp_a	
inputs_tp_b	
inputs_tp_m	
unknown
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputs_hewan_ternak_idxinputs_internet_minimuminputs_kemampuan_masak_idxinputs_lahan_minimuminputs_lokasi_geografis_idxinputs_lokasi_idxinputs_mengerti_hewan_idxinputs_modal_maximuminputs_modal_minimuminputs_omset_minimuminputs_pegawai_minimuminputs_penyimpanan_barang_idxinputs_sosial_media_idxinputs_tingkat_persaingan_idxinputs_tipe_toko_idxinputs_tipe_usaha_kuliner_idxinputs_tipe_usaha_lain_idxinputs_toko_toserba_idxinputs_tp_ainputs_tp_binputs_tp_munknown*!
Tin
2																	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1289o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ò
_input_shapesÀ
½:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/hewan_ternak_idx:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/internet_minimum:_[
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4
_user_specified_nameinputs/kemampuan_masak_idx:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/lahan_minimum:`\
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5
_user_specified_nameinputs/lokasi_geografis_idx:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/lokasi_idx:^Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/mengerti_hewan_idx:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/modal_maximum:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/modal_minimum:Y	U
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/omset_minimum:[
W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nameinputs/pegawai_minimum:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/penyimpanan_barang_idx:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/sosial_media_idx:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/tingkat_persaingan_idx:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/tipe_toko_idx:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/tipe_usaha_kuliner_idx:_[
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4
_user_specified_nameinputs/tipe_usaha_lain_idx:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/toko_toserba_idx:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinputs/tp_a:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinputs/tp_b:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinputs/tp_m
ù)
É
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1537
hewan_ternak_idx	
internet_minimum	
kemampuan_masak_idx	
lahan_minimum
lokasi_geografis_idx	

lokasi_idx	
mengerti_hewan_idx	
modal_maximum
modal_minimum
omset_minimum
pegawai_minimum	
penyimpanan_barang_idx	
sosial_media_idx	
tingkat_persaingan_idx	
tipe_toko_idx	
tipe_usaha_kuliner_idx	
tipe_usaha_lain_idx	
toko_toserba_idx	
tp_a	
tp_b	
tp_m	
inference_op_model_handle
identity¢inference_op½
PartitionedCallPartitionedCallhewan_ternak_idxinternet_minimumkemampuan_masak_idxlahan_minimumlokasi_geografis_idx
lokasi_idxmengerti_hewan_idxmodal_maximummodal_minimumomset_minimumpegawai_minimumpenyimpanan_barang_idxsosial_media_idxtingkat_persaingan_idxtipe_toko_idxtipe_usaha_kuliner_idxtipe_usaha_lain_idxtoko_toserba_idxtp_atp_btp_m* 
Tin
2																	*!
Tout
2*
_collective_manager_ids
 *Ñ
_output_shapes¾
»:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *2
f-R+
)__inference__build_normalized_inputs_1174
stackPackPartitionedCall:output:0PartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6PartitionedCall:output:7PartitionedCall:output:8PartitionedCall:output:9PartitionedCall:output:10PartitionedCall:output:11PartitionedCall:output:12PartitionedCall:output:13PartitionedCall:output:14PartitionedCall:output:15PartitionedCall:output:16PartitionedCall:output:17PartitionedCall:output:18PartitionedCall:output:19PartitionedCall:output:20*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

axisL
ConstConst*
_output_shapes
:  *
dtype0*
value
B  N
Const_1Const*
_output_shapes
:  *
dtype0*
value
B  X
RaggedConstant/valuesConst*
_output_shapes
: *
dtype0*
valueB ^
RaggedConstant/ConstConst*
_output_shapes
:*
dtype0	*
valueB	R `
RaggedConstant/Const_1Const*
_output_shapes
:*
dtype0	*
valueB	R ¡
inference_opSimpleMLInferenceOpWithHandlestack:output:0Const:output:0Const_1:output:0RaggedConstant/values:output:0RaggedConstant/Const:output:0RaggedConstant/Const_1:output:0inference_op_model_handle*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:*
dense_output_dimo
IdentityIdentity inference_op:dense_predictions:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
NoOpNoOp^inference_op*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ò
_input_shapesÀ
½:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 2
inference_opinference_op:U Q
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namehewan_ternak_idx:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nameinternet_minimum:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namekemampuan_masak_idx:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelahan_minimum:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namelokasi_geografis_idx:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
lokasi_idx:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namemengerti_hewan_idx:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namemodal_maximum:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namemodal_minimum:R	N
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameomset_minimum:T
P
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namepegawai_minimum:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_namepenyimpanan_barang_idx:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namesosial_media_idx:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nametingkat_persaingan_idx:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nametipe_toko_idx:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nametipe_usaha_kuliner_idx:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nametipe_usaha_lain_idx:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nametoko_toserba_idx:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nametp_a:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nametp_b:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nametp_m

è
 __inference__traced_restore_1981
file_prefix%
assignvariableop_is_trained:
 $
assignvariableop_1_total_1: $
assignvariableop_2_count_1: "
assignvariableop_3_total: "
assignvariableop_4_count: 

identity_6¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*³
value©B¦B&_is_trained/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH|
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B ¼
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*,
_output_shapes
::::::*
dtypes

2
[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0
*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_is_trainedIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0
]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_total_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_count_1Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_totalIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_countIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Á

Identity_5Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_6IdentityIdentity_5:output:0^NoOp_1*
T0*
_output_shapes
: ¯
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4*"
_acd_function_control_output(*
_output_shapes
 "!

identity_6Identity_6:output:0*
_input_shapes
: : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_4:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
¤
Â
__inference__wrapped_model_1211
hewan_ternak_idx	
internet_minimum	
kemampuan_masak_idx	
lahan_minimum
lokasi_geografis_idx	

lokasi_idx	
mengerti_hewan_idx	
modal_maximum
modal_minimum
omset_minimum
pegawai_minimum	
penyimpanan_barang_idx	
sosial_media_idx	
tingkat_persaingan_idx	
tipe_toko_idx	
tipe_usaha_kuliner_idx	
tipe_usaha_lain_idx	
toko_toserba_idx	
tp_a	
tp_b	
tp_m	%
!gradient_boosted_trees_model_1207
identity¢4gradient_boosted_trees_model/StatefulPartitionedCall»
4gradient_boosted_trees_model/StatefulPartitionedCallStatefulPartitionedCallhewan_ternak_idxinternet_minimumkemampuan_masak_idxlahan_minimumlokasi_geografis_idx
lokasi_idxmengerti_hewan_idxmodal_maximummodal_minimumomset_minimumpegawai_minimumpenyimpanan_barang_idxsosial_media_idxtingkat_persaingan_idxtipe_toko_idxtipe_usaha_kuliner_idxtipe_usaha_lain_idxtoko_toserba_idxtp_atp_btp_m!gradient_boosted_trees_model_1207*!
Tin
2																	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *
fR
__inference_call_1206
IdentityIdentity=gradient_boosted_trees_model/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
NoOpNoOp5^gradient_boosted_trees_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ò
_input_shapesÀ
½:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 2l
4gradient_boosted_trees_model/StatefulPartitionedCall4gradient_boosted_trees_model/StatefulPartitionedCall:U Q
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namehewan_ternak_idx:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nameinternet_minimum:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namekemampuan_masak_idx:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelahan_minimum:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namelokasi_geografis_idx:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
lokasi_idx:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namemengerti_hewan_idx:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namemodal_maximum:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namemodal_minimum:R	N
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameomset_minimum:T
P
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namepegawai_minimum:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_namepenyimpanan_barang_idx:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namesosial_media_idx:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nametingkat_persaingan_idx:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nametipe_toko_idx:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nametipe_usaha_kuliner_idx:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nametipe_usaha_lain_idx:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nametoko_toserba_idx:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nametp_a:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nametp_b:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nametp_m
§
º
__inference_<lambda>_1875
staticregexreplace_input>
:simple_ml_simplemlloadmodelfrompathwithhandle_model_handle
identity¢-simple_ml/SimpleMLLoadModelFromPathWithHandle
StaticRegexReplaceStaticRegexReplacestaticregexreplace_input*
_output_shapes
: *!
pattern0486d20288af4910done*
rewrite æ
-simple_ml/SimpleMLLoadModelFromPathWithHandle#SimpleMLLoadModelFromPathWithHandle:simple_ml_simplemlloadmodelfrompathwithhandle_model_handleStaticRegexReplace:output:0*
_output_shapes
 *!
file_prefix0486d20288af4910J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: v
NoOpNoOp.^simple_ml/SimpleMLLoadModelFromPathWithHandle*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2^
-simple_ml/SimpleMLLoadModelFromPathWithHandle-simple_ml/SimpleMLLoadModelFromPathWithHandle: 

_output_shapes
: 
ü%

__inference_call_1206

inputs	
inputs_1	
inputs_2	
inputs_3
inputs_4	
inputs_5	
inputs_6	
inputs_7
inputs_8
inputs_9
	inputs_10	
	inputs_11	
	inputs_12	
	inputs_13	
	inputs_14	
	inputs_15	
	inputs_16	
	inputs_17	
	inputs_18	
	inputs_19	
	inputs_20	
inference_op_model_handle
identity¢inference_opº
PartitionedCallPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13	inputs_14	inputs_15	inputs_16	inputs_17	inputs_18	inputs_19	inputs_20* 
Tin
2																	*!
Tout
2*
_collective_manager_ids
 *Ñ
_output_shapes¾
»:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *2
f-R+
)__inference__build_normalized_inputs_1174
stackPackPartitionedCall:output:0PartitionedCall:output:1PartitionedCall:output:2PartitionedCall:output:3PartitionedCall:output:4PartitionedCall:output:5PartitionedCall:output:6PartitionedCall:output:7PartitionedCall:output:8PartitionedCall:output:9PartitionedCall:output:10PartitionedCall:output:11PartitionedCall:output:12PartitionedCall:output:13PartitionedCall:output:14PartitionedCall:output:15PartitionedCall:output:16PartitionedCall:output:17PartitionedCall:output:18PartitionedCall:output:19PartitionedCall:output:20*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

axisL
ConstConst*
_output_shapes
:  *
dtype0*
value
B  N
Const_1Const*
_output_shapes
:  *
dtype0*
value
B  X
RaggedConstant/valuesConst*
_output_shapes
: *
dtype0*
valueB ^
RaggedConstant/ConstConst*
_output_shapes
:*
dtype0	*
valueB	R `
RaggedConstant/Const_1Const*
_output_shapes
:*
dtype0	*
valueB	R ¡
inference_opSimpleMLInferenceOpWithHandlestack:output:0Const:output:0Const_1:output:0RaggedConstant/values:output:0RaggedConstant/Const:output:0RaggedConstant/Const_1:output:0inference_op_model_handle*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:*
dense_output_dimo
IdentityIdentity inference_op:dense_predictions:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
NoOpNoOp^inference_op*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ò
_input_shapesÀ
½:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 2
inference_opinference_op:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K	G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K
G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
× 
º
;__inference_gradient_boosted_trees_model_layer_call_fn_1741
inputs_hewan_ternak_idx	
inputs_internet_minimum	
inputs_kemampuan_masak_idx	
inputs_lahan_minimum
inputs_lokasi_geografis_idx	
inputs_lokasi_idx	
inputs_mengerti_hewan_idx	
inputs_modal_maximum
inputs_modal_minimum
inputs_omset_minimum
inputs_pegawai_minimum	!
inputs_penyimpanan_barang_idx	
inputs_sosial_media_idx	!
inputs_tingkat_persaingan_idx	
inputs_tipe_toko_idx	!
inputs_tipe_usaha_kuliner_idx	
inputs_tipe_usaha_lain_idx	
inputs_toko_toserba_idx	
inputs_tp_a	
inputs_tp_b	
inputs_tp_m	
unknown
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputs_hewan_ternak_idxinputs_internet_minimuminputs_kemampuan_masak_idxinputs_lahan_minimuminputs_lokasi_geografis_idxinputs_lokasi_idxinputs_mengerti_hewan_idxinputs_modal_maximuminputs_modal_minimuminputs_omset_minimuminputs_pegawai_minimuminputs_penyimpanan_barang_idxinputs_sosial_media_idxinputs_tingkat_persaingan_idxinputs_tipe_toko_idxinputs_tipe_usaha_kuliner_idxinputs_tipe_usaha_lain_idxinputs_toko_toserba_idxinputs_tp_ainputs_tp_binputs_tp_munknown*!
Tin
2																	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1397o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ò
_input_shapesÀ
½:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/hewan_ternak_idx:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/internet_minimum:_[
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4
_user_specified_nameinputs/kemampuan_masak_idx:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/lahan_minimum:`\
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5
_user_specified_nameinputs/lokasi_geografis_idx:VR
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameinputs/lokasi_idx:^Z
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
3
_user_specified_nameinputs/mengerti_hewan_idx:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/modal_maximum:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/modal_minimum:Y	U
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/omset_minimum:[
W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nameinputs/pegawai_minimum:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/penyimpanan_barang_idx:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/sosial_media_idx:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/tingkat_persaingan_idx:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_nameinputs/tipe_toko_idx:b^
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7
_user_specified_nameinputs/tipe_usaha_kuliner_idx:_[
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4
_user_specified_nameinputs/tipe_usaha_lain_idx:\X
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1
_user_specified_nameinputs/toko_toserba_idx:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinputs/tp_a:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinputs/tp_b:PL
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_nameinputs/tp_m
¨
¾
__inference__initializer_1862
staticregexreplace_input>
:simple_ml_simplemlloadmodelfrompathwithhandle_model_handle
identity¢-simple_ml/SimpleMLLoadModelFromPathWithHandle
StaticRegexReplaceStaticRegexReplacestaticregexreplace_input*
_output_shapes
: *!
pattern0486d20288af4910done*
rewrite æ
-simple_ml/SimpleMLLoadModelFromPathWithHandle#SimpleMLLoadModelFromPathWithHandle:simple_ml_simplemlloadmodelfrompathwithhandle_model_handleStaticRegexReplace:output:0*
_output_shapes
 *!
file_prefix0486d20288af4910G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: v
NoOpNoOp.^simple_ml/SimpleMLLoadModelFromPathWithHandle*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2^
-simple_ml/SimpleMLLoadModelFromPathWithHandle-simple_ml/SimpleMLLoadModelFromPathWithHandle: 

_output_shapes
: 
4
³
)__inference__build_normalized_inputs_1174

inputs	
inputs_1	
inputs_2	
inputs_3
inputs_4	
inputs_5	
inputs_6	
inputs_7
inputs_8
inputs_9
	inputs_10	
	inputs_11	
	inputs_12	
	inputs_13	
	inputs_14	
	inputs_15	
	inputs_16	
	inputs_17	
	inputs_18	
	inputs_19	
	inputs_20	
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20T
CastCast	inputs_13*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
Cast_1Cast	inputs_10*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
Cast_2Cast	inputs_19*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
Cast_3Cast	inputs_20*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
Cast_4Cast	inputs_18*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
Cast_5Castinputs_5*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
Cast_6Castinputs*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
Cast_7Castinputs_4*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
Cast_8Castinputs_6*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
Cast_9Cast	inputs_15*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
Cast_10Castinputs_2*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
Cast_11Cast	inputs_11*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
Cast_12Castinputs_1*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
Cast_13Cast	inputs_12*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
Cast_14Cast	inputs_17*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
Cast_15Cast	inputs_14*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
Cast_16Cast	inputs_16*

DstT0*

SrcT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
IdentityIdentity
Cast_6:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ

Identity_1IdentityCast_12:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ

Identity_2IdentityCast_10:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿN

Identity_3Identityinputs_3*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿP

Identity_4Identity
Cast_7:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿP

Identity_5Identity
Cast_5:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿP

Identity_6Identity
Cast_8:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿN

Identity_7Identityinputs_7*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿN

Identity_8Identityinputs_8*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿN

Identity_9Identityinputs_9*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
Identity_10Identity
Cast_1:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
Identity_11IdentityCast_11:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
Identity_12IdentityCast_13:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
Identity_13IdentityCast:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
Identity_14IdentityCast_15:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
Identity_15Identity
Cast_9:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
Identity_16IdentityCast_16:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
Identity_17IdentityCast_14:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
Identity_18Identity
Cast_4:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
Identity_19Identity
Cast_2:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
Identity_20Identity
Cast_3:y:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*Ð
_input_shapes¾
»:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:K G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K	G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:K
G
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:KG
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

§
;__inference_gradient_boosted_trees_model_layer_call_fn_1294
hewan_ternak_idx	
internet_minimum	
kemampuan_masak_idx	
lahan_minimum
lokasi_geografis_idx	

lokasi_idx	
mengerti_hewan_idx	
modal_maximum
modal_minimum
omset_minimum
pegawai_minimum	
penyimpanan_barang_idx	
sosial_media_idx	
tingkat_persaingan_idx	
tipe_toko_idx	
tipe_usaha_kuliner_idx	
tipe_usaha_lain_idx	
toko_toserba_idx	
tp_a	
tp_b	
tp_m	
unknown
identity¢StatefulPartitionedCallÅ
StatefulPartitionedCallStatefulPartitionedCallhewan_ternak_idxinternet_minimumkemampuan_masak_idxlahan_minimumlokasi_geografis_idx
lokasi_idxmengerti_hewan_idxmodal_maximummodal_minimumomset_minimumpegawai_minimumpenyimpanan_barang_idxsosial_media_idxtingkat_persaingan_idxtipe_toko_idxtipe_usaha_kuliner_idxtipe_usaha_lain_idxtoko_toserba_idxtp_atp_btp_munknown*!
Tin
2																	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *_
fZRX
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1289o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ò
_input_shapesÀ
½:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namehewan_ternak_idx:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nameinternet_minimum:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namekemampuan_masak_idx:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelahan_minimum:YU
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
.
_user_specified_namelokasi_geografis_idx:OK
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$
_user_specified_name
lokasi_idx:WS
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,
_user_specified_namemengerti_hewan_idx:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namemodal_maximum:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namemodal_minimum:R	N
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nameomset_minimum:T
P
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)
_user_specified_namepegawai_minimum:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_namepenyimpanan_barang_idx:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namesosial_media_idx:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nametingkat_persaingan_idx:RN
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_nametipe_toko_idx:[W
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
0
_user_specified_nametipe_usaha_kuliner_idx:XT
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_nametipe_usaha_lain_idx:UQ
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nametoko_toserba_idx:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nametp_a:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nametp_b:IE
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_nametp_m"¿L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ß
serving_defaultË
I
hewan_ternak_idx5
"serving_default_hewan_ternak_idx:0	ÿÿÿÿÿÿÿÿÿ
I
internet_minimum5
"serving_default_internet_minimum:0	ÿÿÿÿÿÿÿÿÿ
O
kemampuan_masak_idx8
%serving_default_kemampuan_masak_idx:0	ÿÿÿÿÿÿÿÿÿ
C
lahan_minimum2
serving_default_lahan_minimum:0ÿÿÿÿÿÿÿÿÿ
Q
lokasi_geografis_idx9
&serving_default_lokasi_geografis_idx:0	ÿÿÿÿÿÿÿÿÿ
=

lokasi_idx/
serving_default_lokasi_idx:0	ÿÿÿÿÿÿÿÿÿ
M
mengerti_hewan_idx7
$serving_default_mengerti_hewan_idx:0	ÿÿÿÿÿÿÿÿÿ
C
modal_maximum2
serving_default_modal_maximum:0ÿÿÿÿÿÿÿÿÿ
C
modal_minimum2
serving_default_modal_minimum:0ÿÿÿÿÿÿÿÿÿ
C
omset_minimum2
serving_default_omset_minimum:0ÿÿÿÿÿÿÿÿÿ
G
pegawai_minimum4
!serving_default_pegawai_minimum:0	ÿÿÿÿÿÿÿÿÿ
U
penyimpanan_barang_idx;
(serving_default_penyimpanan_barang_idx:0	ÿÿÿÿÿÿÿÿÿ
I
sosial_media_idx5
"serving_default_sosial_media_idx:0	ÿÿÿÿÿÿÿÿÿ
U
tingkat_persaingan_idx;
(serving_default_tingkat_persaingan_idx:0	ÿÿÿÿÿÿÿÿÿ
C
tipe_toko_idx2
serving_default_tipe_toko_idx:0	ÿÿÿÿÿÿÿÿÿ
U
tipe_usaha_kuliner_idx;
(serving_default_tipe_usaha_kuliner_idx:0	ÿÿÿÿÿÿÿÿÿ
O
tipe_usaha_lain_idx8
%serving_default_tipe_usaha_lain_idx:0	ÿÿÿÿÿÿÿÿÿ
I
toko_toserba_idx5
"serving_default_toko_toserba_idx:0	ÿÿÿÿÿÿÿÿÿ
1
tp_a)
serving_default_tp_a:0	ÿÿÿÿÿÿÿÿÿ
1
tp_b)
serving_default_tp_b:0	ÿÿÿÿÿÿÿÿÿ
1
tp_m)
serving_default_tp_m:0	ÿÿÿÿÿÿÿÿÿ>
output_12
StatefulPartitionedCall_1:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict2N

asset_path_initializer:000486d20288af4910gradient_boosted_trees_header.pb2D

asset_path_initializer_1:0$0486d20288af4910nodes-00000-of-000012<

asset_path_initializer_2:00486d20288af4910data_spec.pb29

asset_path_initializer_3:00486d20288af4910header.pb24

asset_path_initializer_4:00486d20288af4910done:åú

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
_learner_params
		_features

_is_trained
	optimizer
loss

_model
_build_normalized_inputs
call
call_get_leaves
yggdrasil_model_path_tensor

signatures"
_tf_keras_model
'

0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object

trace_0
trace_1
trace_2
trace_32«
;__inference_gradient_boosted_trees_model_layer_call_fn_1294
;__inference_gradient_boosted_trees_model_layer_call_fn_1714
;__inference_gradient_boosted_trees_model_layer_call_fn_1741
;__inference_gradient_boosted_trees_model_layer_call_fn_1429´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3

trace_0
trace_1
trace_2
trace_32
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1795
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1849
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1483
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1537´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
B
__inference__wrapped_model_1211hewan_ternak_idxinternet_minimumkemampuan_masak_idxlahan_minimumlokasi_geografis_idx
lokasi_idxmengerti_hewan_idxmodal_maximummodal_minimumomset_minimumpegawai_minimumpenyimpanan_barang_idxsosial_media_idxtingkat_persaingan_idxtipe_toko_idxtipe_usaha_kuliner_idxtipe_usaha_lain_idxtoko_toserba_idxtp_atp_btp_m"
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
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
:
 2
is_trained
"
	optimizer
 "
trackable_dict_wrapper
G
 _input_builder
!_compiled_model"
_generic_user_object
í
"trace_02Ð
)__inference__build_normalized_inputs_1598¢
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
 z"trace_0
ê
#trace_02Í
__inference_call_1652³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults¢
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z#trace_0
¨2¥¢
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
ç
$trace_02Ê
,__inference_yggdrasil_model_path_tensor_1658
²
FullArgSpec
args
jself
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ z$trace_0
,
%serving_default"
signature_map
'

0"
trackable_list_wrapper
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
×BÔ
;__inference_gradient_boosted_trees_model_layer_call_fn_1294hewan_ternak_idxinternet_minimumkemampuan_masak_idxlahan_minimumlokasi_geografis_idx
lokasi_idxmengerti_hewan_idxmodal_maximummodal_minimumomset_minimumpegawai_minimumpenyimpanan_barang_idxsosial_media_idxtingkat_persaingan_idxtipe_toko_idxtipe_usaha_kuliner_idxtipe_usaha_lain_idxtoko_toserba_idxtp_atp_btp_m"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
êBç
;__inference_gradient_boosted_trees_model_layer_call_fn_1714inputs/hewan_ternak_idxinputs/internet_minimuminputs/kemampuan_masak_idxinputs/lahan_minimuminputs/lokasi_geografis_idxinputs/lokasi_idxinputs/mengerti_hewan_idxinputs/modal_maximuminputs/modal_minimuminputs/omset_minimuminputs/pegawai_minimuminputs/penyimpanan_barang_idxinputs/sosial_media_idxinputs/tingkat_persaingan_idxinputs/tipe_toko_idxinputs/tipe_usaha_kuliner_idxinputs/tipe_usaha_lain_idxinputs/toko_toserba_idxinputs/tp_ainputs/tp_binputs/tp_m"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
êBç
;__inference_gradient_boosted_trees_model_layer_call_fn_1741inputs/hewan_ternak_idxinputs/internet_minimuminputs/kemampuan_masak_idxinputs/lahan_minimuminputs/lokasi_geografis_idxinputs/lokasi_idxinputs/mengerti_hewan_idxinputs/modal_maximuminputs/modal_minimuminputs/omset_minimuminputs/pegawai_minimuminputs/penyimpanan_barang_idxinputs/sosial_media_idxinputs/tingkat_persaingan_idxinputs/tipe_toko_idxinputs/tipe_usaha_kuliner_idxinputs/tipe_usaha_lain_idxinputs/toko_toserba_idxinputs/tp_ainputs/tp_binputs/tp_m"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
×BÔ
;__inference_gradient_boosted_trees_model_layer_call_fn_1429hewan_ternak_idxinternet_minimumkemampuan_masak_idxlahan_minimumlokasi_geografis_idx
lokasi_idxmengerti_hewan_idxmodal_maximummodal_minimumomset_minimumpegawai_minimumpenyimpanan_barang_idxsosial_media_idxtingkat_persaingan_idxtipe_toko_idxtipe_usaha_kuliner_idxtipe_usaha_lain_idxtoko_toserba_idxtp_atp_btp_m"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1795inputs/hewan_ternak_idxinputs/internet_minimuminputs/kemampuan_masak_idxinputs/lahan_minimuminputs/lokasi_geografis_idxinputs/lokasi_idxinputs/mengerti_hewan_idxinputs/modal_maximuminputs/modal_minimuminputs/omset_minimuminputs/pegawai_minimuminputs/penyimpanan_barang_idxinputs/sosial_media_idxinputs/tingkat_persaingan_idxinputs/tipe_toko_idxinputs/tipe_usaha_kuliner_idxinputs/tipe_usaha_lain_idxinputs/toko_toserba_idxinputs/tp_ainputs/tp_binputs/tp_m"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1849inputs/hewan_ternak_idxinputs/internet_minimuminputs/kemampuan_masak_idxinputs/lahan_minimuminputs/lokasi_geografis_idxinputs/lokasi_idxinputs/mengerti_hewan_idxinputs/modal_maximuminputs/modal_minimuminputs/omset_minimuminputs/pegawai_minimuminputs/penyimpanan_barang_idxinputs/sosial_media_idxinputs/tingkat_persaingan_idxinputs/tipe_toko_idxinputs/tipe_usaha_kuliner_idxinputs/tipe_usaha_lain_idxinputs/toko_toserba_idxinputs/tp_ainputs/tp_binputs/tp_m"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
òBï
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1483hewan_ternak_idxinternet_minimumkemampuan_masak_idxlahan_minimumlokasi_geografis_idx
lokasi_idxmengerti_hewan_idxmodal_maximummodal_minimumomset_minimumpegawai_minimumpenyimpanan_barang_idxsosial_media_idxtingkat_persaingan_idxtipe_toko_idxtipe_usaha_kuliner_idxtipe_usaha_lain_idxtoko_toserba_idxtp_atp_btp_m"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
òBï
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1537hewan_ternak_idxinternet_minimumkemampuan_masak_idxlahan_minimumlokasi_geografis_idx
lokasi_idxmengerti_hewan_idxmodal_maximummodal_minimumomset_minimumpegawai_minimumpenyimpanan_barang_idxsosial_media_idxtingkat_persaingan_idxtipe_toko_idxtipe_usaha_kuliner_idxtipe_usaha_lain_idxtoko_toserba_idxtp_atp_btp_m"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
l
(_feature_name_to_idx
)	_init_ops
#*categorical_str_to_int_hashmaps"
_generic_user_object
S
+_model_loader
,_create_resource
-_initialize
._destroy_resourceR 
ÆBÃ
)__inference__build_normalized_inputs_1598inputs/hewan_ternak_idxinputs/internet_minimuminputs/kemampuan_masak_idxinputs/lahan_minimuminputs/lokasi_geografis_idxinputs/lokasi_idxinputs/mengerti_hewan_idxinputs/modal_maximuminputs/modal_minimuminputs/omset_minimuminputs/pegawai_minimuminputs/penyimpanan_barang_idxinputs/sosial_media_idxinputs/tingkat_persaingan_idxinputs/tipe_toko_idxinputs/tipe_usaha_kuliner_idxinputs/tipe_usaha_lain_idxinputs/toko_toserba_idxinputs/tp_ainputs/tp_binputs/tp_m"¢
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
ÃBÀ
__inference_call_1652inputs/hewan_ternak_idxinputs/internet_minimuminputs/kemampuan_masak_idxinputs/lahan_minimuminputs/lokasi_geografis_idxinputs/lokasi_idxinputs/mengerti_hewan_idxinputs/modal_maximuminputs/modal_minimuminputs/omset_minimuminputs/pegawai_minimuminputs/penyimpanan_barang_idxinputs/sosial_media_idxinputs/tingkat_persaingan_idxinputs/tipe_toko_idxinputs/tipe_usaha_kuliner_idxinputs/tipe_usaha_lain_idxinputs/toko_toserba_idxinputs/tp_ainputs/tp_binputs/tp_m"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults¢
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÍBÊ
,__inference_yggdrasil_model_path_tensor_1658"
²
FullArgSpec
args
jself
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
B
"__inference_signature_wrapper_1687hewan_ternak_idxinternet_minimumkemampuan_masak_idxlahan_minimumlokasi_geografis_idx
lokasi_idxmengerti_hewan_idxmodal_maximummodal_minimumomset_minimumpegawai_minimumpenyimpanan_barang_idxsosial_media_idxtingkat_persaingan_idxtipe_toko_idxtipe_usaha_kuliner_idxtipe_usaha_lain_idxtoko_toserba_idxtp_atp_btp_m"
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
N
/	variables
0	keras_api
	1total
	2count"
_tf_keras_metric
^
3	variables
4	keras_api
	5total
	6count
7
_fn_kwargs"
_tf_keras_metric
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Q
8_output_types
9
_all_files
:
_done_file"
_generic_user_object
Ê
;trace_02­
__inference__creator_1854
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
annotationsª *¢ z;trace_0
Î
<trace_02±
__inference__initializer_1862
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
annotationsª *¢ z<trace_0
Ì
=trace_02¯
__inference__destroyer_1867
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
annotationsª *¢ z=trace_0
.
10
21"
trackable_list_wrapper
-
/	variables"
_generic_user_object
:  (2total
:  (2count
.
50
61"
trackable_list_wrapper
-
3	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
C
>0
?1
:2
@3
A4"
trackable_list_wrapper
*
°B­
__inference__creator_1854"
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
__inference__initializer_1862"
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
²B¯
__inference__destroyer_1867"
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
*
*
*
* Ê
)__inference__build_normalized_inputs_1598Þ
¢Ú

Ò
¢Î

Ë
ªÇ

A
hewan_ternak_idx-*
inputs/hewan_ternak_idxÿÿÿÿÿÿÿÿÿ	
A
internet_minimum-*
inputs/internet_minimumÿÿÿÿÿÿÿÿÿ	
G
kemampuan_masak_idx0-
inputs/kemampuan_masak_idxÿÿÿÿÿÿÿÿÿ	
;
lahan_minimum*'
inputs/lahan_minimumÿÿÿÿÿÿÿÿÿ
I
lokasi_geografis_idx1.
inputs/lokasi_geografis_idxÿÿÿÿÿÿÿÿÿ	
5

lokasi_idx'$
inputs/lokasi_idxÿÿÿÿÿÿÿÿÿ	
E
mengerti_hewan_idx/,
inputs/mengerti_hewan_idxÿÿÿÿÿÿÿÿÿ	
;
modal_maximum*'
inputs/modal_maximumÿÿÿÿÿÿÿÿÿ
;
modal_minimum*'
inputs/modal_minimumÿÿÿÿÿÿÿÿÿ
;
omset_minimum*'
inputs/omset_minimumÿÿÿÿÿÿÿÿÿ
?
pegawai_minimum,)
inputs/pegawai_minimumÿÿÿÿÿÿÿÿÿ	
M
penyimpanan_barang_idx30
inputs/penyimpanan_barang_idxÿÿÿÿÿÿÿÿÿ	
A
sosial_media_idx-*
inputs/sosial_media_idxÿÿÿÿÿÿÿÿÿ	
M
tingkat_persaingan_idx30
inputs/tingkat_persaingan_idxÿÿÿÿÿÿÿÿÿ	
;
tipe_toko_idx*'
inputs/tipe_toko_idxÿÿÿÿÿÿÿÿÿ	
M
tipe_usaha_kuliner_idx30
inputs/tipe_usaha_kuliner_idxÿÿÿÿÿÿÿÿÿ	
G
tipe_usaha_lain_idx0-
inputs/tipe_usaha_lain_idxÿÿÿÿÿÿÿÿÿ	
A
toko_toserba_idx-*
inputs/toko_toserba_idxÿÿÿÿÿÿÿÿÿ	
)
tp_a!
inputs/tp_aÿÿÿÿÿÿÿÿÿ	
)
tp_b!
inputs/tp_bÿÿÿÿÿÿÿÿÿ	
)
tp_m!
inputs/tp_mÿÿÿÿÿÿÿÿÿ	
ª "¸	ª´	
:
hewan_ternak_idx&#
hewan_ternak_idxÿÿÿÿÿÿÿÿÿ
:
internet_minimum&#
internet_minimumÿÿÿÿÿÿÿÿÿ
@
kemampuan_masak_idx)&
kemampuan_masak_idxÿÿÿÿÿÿÿÿÿ
4
lahan_minimum# 
lahan_minimumÿÿÿÿÿÿÿÿÿ
B
lokasi_geografis_idx*'
lokasi_geografis_idxÿÿÿÿÿÿÿÿÿ
.

lokasi_idx 

lokasi_idxÿÿÿÿÿÿÿÿÿ
>
mengerti_hewan_idx(%
mengerti_hewan_idxÿÿÿÿÿÿÿÿÿ
4
modal_maximum# 
modal_maximumÿÿÿÿÿÿÿÿÿ
4
modal_minimum# 
modal_minimumÿÿÿÿÿÿÿÿÿ
4
omset_minimum# 
omset_minimumÿÿÿÿÿÿÿÿÿ
8
pegawai_minimum%"
pegawai_minimumÿÿÿÿÿÿÿÿÿ
F
penyimpanan_barang_idx,)
penyimpanan_barang_idxÿÿÿÿÿÿÿÿÿ
:
sosial_media_idx&#
sosial_media_idxÿÿÿÿÿÿÿÿÿ
F
tingkat_persaingan_idx,)
tingkat_persaingan_idxÿÿÿÿÿÿÿÿÿ
4
tipe_toko_idx# 
tipe_toko_idxÿÿÿÿÿÿÿÿÿ
F
tipe_usaha_kuliner_idx,)
tipe_usaha_kuliner_idxÿÿÿÿÿÿÿÿÿ
@
tipe_usaha_lain_idx)&
tipe_usaha_lain_idxÿÿÿÿÿÿÿÿÿ
:
toko_toserba_idx&#
toko_toserba_idxÿÿÿÿÿÿÿÿÿ
"
tp_a
tp_aÿÿÿÿÿÿÿÿÿ
"
tp_b
tp_bÿÿÿÿÿÿÿÿÿ
"
tp_m
tp_mÿÿÿÿÿÿÿÿÿ5
__inference__creator_1854¢

¢ 
ª " 7
__inference__destroyer_1867¢

¢ 
ª " =
__inference__initializer_1862:!¢

¢ 
ª " ª

__inference__wrapped_model_1211
!Ë	¢Ç	
¿	¢»	
¸	ª´	
:
hewan_ternak_idx&#
hewan_ternak_idxÿÿÿÿÿÿÿÿÿ	
:
internet_minimum&#
internet_minimumÿÿÿÿÿÿÿÿÿ	
@
kemampuan_masak_idx)&
kemampuan_masak_idxÿÿÿÿÿÿÿÿÿ	
4
lahan_minimum# 
lahan_minimumÿÿÿÿÿÿÿÿÿ
B
lokasi_geografis_idx*'
lokasi_geografis_idxÿÿÿÿÿÿÿÿÿ	
.

lokasi_idx 

lokasi_idxÿÿÿÿÿÿÿÿÿ	
>
mengerti_hewan_idx(%
mengerti_hewan_idxÿÿÿÿÿÿÿÿÿ	
4
modal_maximum# 
modal_maximumÿÿÿÿÿÿÿÿÿ
4
modal_minimum# 
modal_minimumÿÿÿÿÿÿÿÿÿ
4
omset_minimum# 
omset_minimumÿÿÿÿÿÿÿÿÿ
8
pegawai_minimum%"
pegawai_minimumÿÿÿÿÿÿÿÿÿ	
F
penyimpanan_barang_idx,)
penyimpanan_barang_idxÿÿÿÿÿÿÿÿÿ	
:
sosial_media_idx&#
sosial_media_idxÿÿÿÿÿÿÿÿÿ	
F
tingkat_persaingan_idx,)
tingkat_persaingan_idxÿÿÿÿÿÿÿÿÿ	
4
tipe_toko_idx# 
tipe_toko_idxÿÿÿÿÿÿÿÿÿ	
F
tipe_usaha_kuliner_idx,)
tipe_usaha_kuliner_idxÿÿÿÿÿÿÿÿÿ	
@
tipe_usaha_lain_idx)&
tipe_usaha_lain_idxÿÿÿÿÿÿÿÿÿ	
:
toko_toserba_idx&#
toko_toserba_idxÿÿÿÿÿÿÿÿÿ	
"
tp_a
tp_aÿÿÿÿÿÿÿÿÿ	
"
tp_b
tp_bÿÿÿÿÿÿÿÿÿ	
"
tp_m
tp_mÿÿÿÿÿÿÿÿÿ	
ª "3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿ
__inference_call_1652!â
¢Þ

Ö
¢Ò

Ë
ªÇ

A
hewan_ternak_idx-*
inputs/hewan_ternak_idxÿÿÿÿÿÿÿÿÿ	
A
internet_minimum-*
inputs/internet_minimumÿÿÿÿÿÿÿÿÿ	
G
kemampuan_masak_idx0-
inputs/kemampuan_masak_idxÿÿÿÿÿÿÿÿÿ	
;
lahan_minimum*'
inputs/lahan_minimumÿÿÿÿÿÿÿÿÿ
I
lokasi_geografis_idx1.
inputs/lokasi_geografis_idxÿÿÿÿÿÿÿÿÿ	
5

lokasi_idx'$
inputs/lokasi_idxÿÿÿÿÿÿÿÿÿ	
E
mengerti_hewan_idx/,
inputs/mengerti_hewan_idxÿÿÿÿÿÿÿÿÿ	
;
modal_maximum*'
inputs/modal_maximumÿÿÿÿÿÿÿÿÿ
;
modal_minimum*'
inputs/modal_minimumÿÿÿÿÿÿÿÿÿ
;
omset_minimum*'
inputs/omset_minimumÿÿÿÿÿÿÿÿÿ
?
pegawai_minimum,)
inputs/pegawai_minimumÿÿÿÿÿÿÿÿÿ	
M
penyimpanan_barang_idx30
inputs/penyimpanan_barang_idxÿÿÿÿÿÿÿÿÿ	
A
sosial_media_idx-*
inputs/sosial_media_idxÿÿÿÿÿÿÿÿÿ	
M
tingkat_persaingan_idx30
inputs/tingkat_persaingan_idxÿÿÿÿÿÿÿÿÿ	
;
tipe_toko_idx*'
inputs/tipe_toko_idxÿÿÿÿÿÿÿÿÿ	
M
tipe_usaha_kuliner_idx30
inputs/tipe_usaha_kuliner_idxÿÿÿÿÿÿÿÿÿ	
G
tipe_usaha_lain_idx0-
inputs/tipe_usaha_lain_idxÿÿÿÿÿÿÿÿÿ	
A
toko_toserba_idx-*
inputs/toko_toserba_idxÿÿÿÿÿÿÿÿÿ	
)
tp_a!
inputs/tp_aÿÿÿÿÿÿÿÿÿ	
)
tp_b!
inputs/tp_bÿÿÿÿÿÿÿÿÿ	
)
tp_m!
inputs/tp_mÿÿÿÿÿÿÿÿÿ	
p 
ª "ÿÿÿÿÿÿÿÿÿ×

V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1483ü	!Ï	¢Ë	
Ã	¢¿	
¸	ª´	
:
hewan_ternak_idx&#
hewan_ternak_idxÿÿÿÿÿÿÿÿÿ	
:
internet_minimum&#
internet_minimumÿÿÿÿÿÿÿÿÿ	
@
kemampuan_masak_idx)&
kemampuan_masak_idxÿÿÿÿÿÿÿÿÿ	
4
lahan_minimum# 
lahan_minimumÿÿÿÿÿÿÿÿÿ
B
lokasi_geografis_idx*'
lokasi_geografis_idxÿÿÿÿÿÿÿÿÿ	
.

lokasi_idx 

lokasi_idxÿÿÿÿÿÿÿÿÿ	
>
mengerti_hewan_idx(%
mengerti_hewan_idxÿÿÿÿÿÿÿÿÿ	
4
modal_maximum# 
modal_maximumÿÿÿÿÿÿÿÿÿ
4
modal_minimum# 
modal_minimumÿÿÿÿÿÿÿÿÿ
4
omset_minimum# 
omset_minimumÿÿÿÿÿÿÿÿÿ
8
pegawai_minimum%"
pegawai_minimumÿÿÿÿÿÿÿÿÿ	
F
penyimpanan_barang_idx,)
penyimpanan_barang_idxÿÿÿÿÿÿÿÿÿ	
:
sosial_media_idx&#
sosial_media_idxÿÿÿÿÿÿÿÿÿ	
F
tingkat_persaingan_idx,)
tingkat_persaingan_idxÿÿÿÿÿÿÿÿÿ	
4
tipe_toko_idx# 
tipe_toko_idxÿÿÿÿÿÿÿÿÿ	
F
tipe_usaha_kuliner_idx,)
tipe_usaha_kuliner_idxÿÿÿÿÿÿÿÿÿ	
@
tipe_usaha_lain_idx)&
tipe_usaha_lain_idxÿÿÿÿÿÿÿÿÿ	
:
toko_toserba_idx&#
toko_toserba_idxÿÿÿÿÿÿÿÿÿ	
"
tp_a
tp_aÿÿÿÿÿÿÿÿÿ	
"
tp_b
tp_bÿÿÿÿÿÿÿÿÿ	
"
tp_m
tp_mÿÿÿÿÿÿÿÿÿ	
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ×

V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1537ü	!Ï	¢Ë	
Ã	¢¿	
¸	ª´	
:
hewan_ternak_idx&#
hewan_ternak_idxÿÿÿÿÿÿÿÿÿ	
:
internet_minimum&#
internet_minimumÿÿÿÿÿÿÿÿÿ	
@
kemampuan_masak_idx)&
kemampuan_masak_idxÿÿÿÿÿÿÿÿÿ	
4
lahan_minimum# 
lahan_minimumÿÿÿÿÿÿÿÿÿ
B
lokasi_geografis_idx*'
lokasi_geografis_idxÿÿÿÿÿÿÿÿÿ	
.

lokasi_idx 

lokasi_idxÿÿÿÿÿÿÿÿÿ	
>
mengerti_hewan_idx(%
mengerti_hewan_idxÿÿÿÿÿÿÿÿÿ	
4
modal_maximum# 
modal_maximumÿÿÿÿÿÿÿÿÿ
4
modal_minimum# 
modal_minimumÿÿÿÿÿÿÿÿÿ
4
omset_minimum# 
omset_minimumÿÿÿÿÿÿÿÿÿ
8
pegawai_minimum%"
pegawai_minimumÿÿÿÿÿÿÿÿÿ	
F
penyimpanan_barang_idx,)
penyimpanan_barang_idxÿÿÿÿÿÿÿÿÿ	
:
sosial_media_idx&#
sosial_media_idxÿÿÿÿÿÿÿÿÿ	
F
tingkat_persaingan_idx,)
tingkat_persaingan_idxÿÿÿÿÿÿÿÿÿ	
4
tipe_toko_idx# 
tipe_toko_idxÿÿÿÿÿÿÿÿÿ	
F
tipe_usaha_kuliner_idx,)
tipe_usaha_kuliner_idxÿÿÿÿÿÿÿÿÿ	
@
tipe_usaha_lain_idx)&
tipe_usaha_lain_idxÿÿÿÿÿÿÿÿÿ	
:
toko_toserba_idx&#
toko_toserba_idxÿÿÿÿÿÿÿÿÿ	
"
tp_a
tp_aÿÿÿÿÿÿÿÿÿ	
"
tp_b
tp_bÿÿÿÿÿÿÿÿÿ	
"
tp_m
tp_mÿÿÿÿÿÿÿÿÿ	
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ê
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1795!â
¢Þ

Ö
¢Ò

Ë
ªÇ

A
hewan_ternak_idx-*
inputs/hewan_ternak_idxÿÿÿÿÿÿÿÿÿ	
A
internet_minimum-*
inputs/internet_minimumÿÿÿÿÿÿÿÿÿ	
G
kemampuan_masak_idx0-
inputs/kemampuan_masak_idxÿÿÿÿÿÿÿÿÿ	
;
lahan_minimum*'
inputs/lahan_minimumÿÿÿÿÿÿÿÿÿ
I
lokasi_geografis_idx1.
inputs/lokasi_geografis_idxÿÿÿÿÿÿÿÿÿ	
5

lokasi_idx'$
inputs/lokasi_idxÿÿÿÿÿÿÿÿÿ	
E
mengerti_hewan_idx/,
inputs/mengerti_hewan_idxÿÿÿÿÿÿÿÿÿ	
;
modal_maximum*'
inputs/modal_maximumÿÿÿÿÿÿÿÿÿ
;
modal_minimum*'
inputs/modal_minimumÿÿÿÿÿÿÿÿÿ
;
omset_minimum*'
inputs/omset_minimumÿÿÿÿÿÿÿÿÿ
?
pegawai_minimum,)
inputs/pegawai_minimumÿÿÿÿÿÿÿÿÿ	
M
penyimpanan_barang_idx30
inputs/penyimpanan_barang_idxÿÿÿÿÿÿÿÿÿ	
A
sosial_media_idx-*
inputs/sosial_media_idxÿÿÿÿÿÿÿÿÿ	
M
tingkat_persaingan_idx30
inputs/tingkat_persaingan_idxÿÿÿÿÿÿÿÿÿ	
;
tipe_toko_idx*'
inputs/tipe_toko_idxÿÿÿÿÿÿÿÿÿ	
M
tipe_usaha_kuliner_idx30
inputs/tipe_usaha_kuliner_idxÿÿÿÿÿÿÿÿÿ	
G
tipe_usaha_lain_idx0-
inputs/tipe_usaha_lain_idxÿÿÿÿÿÿÿÿÿ	
A
toko_toserba_idx-*
inputs/toko_toserba_idxÿÿÿÿÿÿÿÿÿ	
)
tp_a!
inputs/tp_aÿÿÿÿÿÿÿÿÿ	
)
tp_b!
inputs/tp_bÿÿÿÿÿÿÿÿÿ	
)
tp_m!
inputs/tp_mÿÿÿÿÿÿÿÿÿ	
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ê
V__inference_gradient_boosted_trees_model_layer_call_and_return_conditional_losses_1849!â
¢Þ

Ö
¢Ò

Ë
ªÇ

A
hewan_ternak_idx-*
inputs/hewan_ternak_idxÿÿÿÿÿÿÿÿÿ	
A
internet_minimum-*
inputs/internet_minimumÿÿÿÿÿÿÿÿÿ	
G
kemampuan_masak_idx0-
inputs/kemampuan_masak_idxÿÿÿÿÿÿÿÿÿ	
;
lahan_minimum*'
inputs/lahan_minimumÿÿÿÿÿÿÿÿÿ
I
lokasi_geografis_idx1.
inputs/lokasi_geografis_idxÿÿÿÿÿÿÿÿÿ	
5

lokasi_idx'$
inputs/lokasi_idxÿÿÿÿÿÿÿÿÿ	
E
mengerti_hewan_idx/,
inputs/mengerti_hewan_idxÿÿÿÿÿÿÿÿÿ	
;
modal_maximum*'
inputs/modal_maximumÿÿÿÿÿÿÿÿÿ
;
modal_minimum*'
inputs/modal_minimumÿÿÿÿÿÿÿÿÿ
;
omset_minimum*'
inputs/omset_minimumÿÿÿÿÿÿÿÿÿ
?
pegawai_minimum,)
inputs/pegawai_minimumÿÿÿÿÿÿÿÿÿ	
M
penyimpanan_barang_idx30
inputs/penyimpanan_barang_idxÿÿÿÿÿÿÿÿÿ	
A
sosial_media_idx-*
inputs/sosial_media_idxÿÿÿÿÿÿÿÿÿ	
M
tingkat_persaingan_idx30
inputs/tingkat_persaingan_idxÿÿÿÿÿÿÿÿÿ	
;
tipe_toko_idx*'
inputs/tipe_toko_idxÿÿÿÿÿÿÿÿÿ	
M
tipe_usaha_kuliner_idx30
inputs/tipe_usaha_kuliner_idxÿÿÿÿÿÿÿÿÿ	
G
tipe_usaha_lain_idx0-
inputs/tipe_usaha_lain_idxÿÿÿÿÿÿÿÿÿ	
A
toko_toserba_idx-*
inputs/toko_toserba_idxÿÿÿÿÿÿÿÿÿ	
)
tp_a!
inputs/tp_aÿÿÿÿÿÿÿÿÿ	
)
tp_b!
inputs/tp_bÿÿÿÿÿÿÿÿÿ	
)
tp_m!
inputs/tp_mÿÿÿÿÿÿÿÿÿ	
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¯

;__inference_gradient_boosted_trees_model_layer_call_fn_1294ï	!Ï	¢Ë	
Ã	¢¿	
¸	ª´	
:
hewan_ternak_idx&#
hewan_ternak_idxÿÿÿÿÿÿÿÿÿ	
:
internet_minimum&#
internet_minimumÿÿÿÿÿÿÿÿÿ	
@
kemampuan_masak_idx)&
kemampuan_masak_idxÿÿÿÿÿÿÿÿÿ	
4
lahan_minimum# 
lahan_minimumÿÿÿÿÿÿÿÿÿ
B
lokasi_geografis_idx*'
lokasi_geografis_idxÿÿÿÿÿÿÿÿÿ	
.

lokasi_idx 

lokasi_idxÿÿÿÿÿÿÿÿÿ	
>
mengerti_hewan_idx(%
mengerti_hewan_idxÿÿÿÿÿÿÿÿÿ	
4
modal_maximum# 
modal_maximumÿÿÿÿÿÿÿÿÿ
4
modal_minimum# 
modal_minimumÿÿÿÿÿÿÿÿÿ
4
omset_minimum# 
omset_minimumÿÿÿÿÿÿÿÿÿ
8
pegawai_minimum%"
pegawai_minimumÿÿÿÿÿÿÿÿÿ	
F
penyimpanan_barang_idx,)
penyimpanan_barang_idxÿÿÿÿÿÿÿÿÿ	
:
sosial_media_idx&#
sosial_media_idxÿÿÿÿÿÿÿÿÿ	
F
tingkat_persaingan_idx,)
tingkat_persaingan_idxÿÿÿÿÿÿÿÿÿ	
4
tipe_toko_idx# 
tipe_toko_idxÿÿÿÿÿÿÿÿÿ	
F
tipe_usaha_kuliner_idx,)
tipe_usaha_kuliner_idxÿÿÿÿÿÿÿÿÿ	
@
tipe_usaha_lain_idx)&
tipe_usaha_lain_idxÿÿÿÿÿÿÿÿÿ	
:
toko_toserba_idx&#
toko_toserba_idxÿÿÿÿÿÿÿÿÿ	
"
tp_a
tp_aÿÿÿÿÿÿÿÿÿ	
"
tp_b
tp_bÿÿÿÿÿÿÿÿÿ	
"
tp_m
tp_mÿÿÿÿÿÿÿÿÿ	
p 
ª "ÿÿÿÿÿÿÿÿÿ¯

;__inference_gradient_boosted_trees_model_layer_call_fn_1429ï	!Ï	¢Ë	
Ã	¢¿	
¸	ª´	
:
hewan_ternak_idx&#
hewan_ternak_idxÿÿÿÿÿÿÿÿÿ	
:
internet_minimum&#
internet_minimumÿÿÿÿÿÿÿÿÿ	
@
kemampuan_masak_idx)&
kemampuan_masak_idxÿÿÿÿÿÿÿÿÿ	
4
lahan_minimum# 
lahan_minimumÿÿÿÿÿÿÿÿÿ
B
lokasi_geografis_idx*'
lokasi_geografis_idxÿÿÿÿÿÿÿÿÿ	
.

lokasi_idx 

lokasi_idxÿÿÿÿÿÿÿÿÿ	
>
mengerti_hewan_idx(%
mengerti_hewan_idxÿÿÿÿÿÿÿÿÿ	
4
modal_maximum# 
modal_maximumÿÿÿÿÿÿÿÿÿ
4
modal_minimum# 
modal_minimumÿÿÿÿÿÿÿÿÿ
4
omset_minimum# 
omset_minimumÿÿÿÿÿÿÿÿÿ
8
pegawai_minimum%"
pegawai_minimumÿÿÿÿÿÿÿÿÿ	
F
penyimpanan_barang_idx,)
penyimpanan_barang_idxÿÿÿÿÿÿÿÿÿ	
:
sosial_media_idx&#
sosial_media_idxÿÿÿÿÿÿÿÿÿ	
F
tingkat_persaingan_idx,)
tingkat_persaingan_idxÿÿÿÿÿÿÿÿÿ	
4
tipe_toko_idx# 
tipe_toko_idxÿÿÿÿÿÿÿÿÿ	
F
tipe_usaha_kuliner_idx,)
tipe_usaha_kuliner_idxÿÿÿÿÿÿÿÿÿ	
@
tipe_usaha_lain_idx)&
tipe_usaha_lain_idxÿÿÿÿÿÿÿÿÿ	
:
toko_toserba_idx&#
toko_toserba_idxÿÿÿÿÿÿÿÿÿ	
"
tp_a
tp_aÿÿÿÿÿÿÿÿÿ	
"
tp_b
tp_bÿÿÿÿÿÿÿÿÿ	
"
tp_m
tp_mÿÿÿÿÿÿÿÿÿ	
p
ª "ÿÿÿÿÿÿÿÿÿÂ
;__inference_gradient_boosted_trees_model_layer_call_fn_1714!â
¢Þ

Ö
¢Ò

Ë
ªÇ

A
hewan_ternak_idx-*
inputs/hewan_ternak_idxÿÿÿÿÿÿÿÿÿ	
A
internet_minimum-*
inputs/internet_minimumÿÿÿÿÿÿÿÿÿ	
G
kemampuan_masak_idx0-
inputs/kemampuan_masak_idxÿÿÿÿÿÿÿÿÿ	
;
lahan_minimum*'
inputs/lahan_minimumÿÿÿÿÿÿÿÿÿ
I
lokasi_geografis_idx1.
inputs/lokasi_geografis_idxÿÿÿÿÿÿÿÿÿ	
5

lokasi_idx'$
inputs/lokasi_idxÿÿÿÿÿÿÿÿÿ	
E
mengerti_hewan_idx/,
inputs/mengerti_hewan_idxÿÿÿÿÿÿÿÿÿ	
;
modal_maximum*'
inputs/modal_maximumÿÿÿÿÿÿÿÿÿ
;
modal_minimum*'
inputs/modal_minimumÿÿÿÿÿÿÿÿÿ
;
omset_minimum*'
inputs/omset_minimumÿÿÿÿÿÿÿÿÿ
?
pegawai_minimum,)
inputs/pegawai_minimumÿÿÿÿÿÿÿÿÿ	
M
penyimpanan_barang_idx30
inputs/penyimpanan_barang_idxÿÿÿÿÿÿÿÿÿ	
A
sosial_media_idx-*
inputs/sosial_media_idxÿÿÿÿÿÿÿÿÿ	
M
tingkat_persaingan_idx30
inputs/tingkat_persaingan_idxÿÿÿÿÿÿÿÿÿ	
;
tipe_toko_idx*'
inputs/tipe_toko_idxÿÿÿÿÿÿÿÿÿ	
M
tipe_usaha_kuliner_idx30
inputs/tipe_usaha_kuliner_idxÿÿÿÿÿÿÿÿÿ	
G
tipe_usaha_lain_idx0-
inputs/tipe_usaha_lain_idxÿÿÿÿÿÿÿÿÿ	
A
toko_toserba_idx-*
inputs/toko_toserba_idxÿÿÿÿÿÿÿÿÿ	
)
tp_a!
inputs/tp_aÿÿÿÿÿÿÿÿÿ	
)
tp_b!
inputs/tp_bÿÿÿÿÿÿÿÿÿ	
)
tp_m!
inputs/tp_mÿÿÿÿÿÿÿÿÿ	
p 
ª "ÿÿÿÿÿÿÿÿÿÂ
;__inference_gradient_boosted_trees_model_layer_call_fn_1741!â
¢Þ

Ö
¢Ò

Ë
ªÇ

A
hewan_ternak_idx-*
inputs/hewan_ternak_idxÿÿÿÿÿÿÿÿÿ	
A
internet_minimum-*
inputs/internet_minimumÿÿÿÿÿÿÿÿÿ	
G
kemampuan_masak_idx0-
inputs/kemampuan_masak_idxÿÿÿÿÿÿÿÿÿ	
;
lahan_minimum*'
inputs/lahan_minimumÿÿÿÿÿÿÿÿÿ
I
lokasi_geografis_idx1.
inputs/lokasi_geografis_idxÿÿÿÿÿÿÿÿÿ	
5

lokasi_idx'$
inputs/lokasi_idxÿÿÿÿÿÿÿÿÿ	
E
mengerti_hewan_idx/,
inputs/mengerti_hewan_idxÿÿÿÿÿÿÿÿÿ	
;
modal_maximum*'
inputs/modal_maximumÿÿÿÿÿÿÿÿÿ
;
modal_minimum*'
inputs/modal_minimumÿÿÿÿÿÿÿÿÿ
;
omset_minimum*'
inputs/omset_minimumÿÿÿÿÿÿÿÿÿ
?
pegawai_minimum,)
inputs/pegawai_minimumÿÿÿÿÿÿÿÿÿ	
M
penyimpanan_barang_idx30
inputs/penyimpanan_barang_idxÿÿÿÿÿÿÿÿÿ	
A
sosial_media_idx-*
inputs/sosial_media_idxÿÿÿÿÿÿÿÿÿ	
M
tingkat_persaingan_idx30
inputs/tingkat_persaingan_idxÿÿÿÿÿÿÿÿÿ	
;
tipe_toko_idx*'
inputs/tipe_toko_idxÿÿÿÿÿÿÿÿÿ	
M
tipe_usaha_kuliner_idx30
inputs/tipe_usaha_kuliner_idxÿÿÿÿÿÿÿÿÿ	
G
tipe_usaha_lain_idx0-
inputs/tipe_usaha_lain_idxÿÿÿÿÿÿÿÿÿ	
A
toko_toserba_idx-*
inputs/toko_toserba_idxÿÿÿÿÿÿÿÿÿ	
)
tp_a!
inputs/tp_aÿÿÿÿÿÿÿÿÿ	
)
tp_b!
inputs/tp_bÿÿÿÿÿÿÿÿÿ	
)
tp_m!
inputs/tp_mÿÿÿÿÿÿÿÿÿ	
p
ª "ÿÿÿÿÿÿÿÿÿ¦

"__inference_signature_wrapper_1687ÿ	!Ä	¢À	
¢ 
¸	ª´	
:
hewan_ternak_idx&#
hewan_ternak_idxÿÿÿÿÿÿÿÿÿ	
:
internet_minimum&#
internet_minimumÿÿÿÿÿÿÿÿÿ	
@
kemampuan_masak_idx)&
kemampuan_masak_idxÿÿÿÿÿÿÿÿÿ	
4
lahan_minimum# 
lahan_minimumÿÿÿÿÿÿÿÿÿ
B
lokasi_geografis_idx*'
lokasi_geografis_idxÿÿÿÿÿÿÿÿÿ	
.

lokasi_idx 

lokasi_idxÿÿÿÿÿÿÿÿÿ	
>
mengerti_hewan_idx(%
mengerti_hewan_idxÿÿÿÿÿÿÿÿÿ	
4
modal_maximum# 
modal_maximumÿÿÿÿÿÿÿÿÿ
4
modal_minimum# 
modal_minimumÿÿÿÿÿÿÿÿÿ
4
omset_minimum# 
omset_minimumÿÿÿÿÿÿÿÿÿ
8
pegawai_minimum%"
pegawai_minimumÿÿÿÿÿÿÿÿÿ	
F
penyimpanan_barang_idx,)
penyimpanan_barang_idxÿÿÿÿÿÿÿÿÿ	
:
sosial_media_idx&#
sosial_media_idxÿÿÿÿÿÿÿÿÿ	
F
tingkat_persaingan_idx,)
tingkat_persaingan_idxÿÿÿÿÿÿÿÿÿ	
4
tipe_toko_idx# 
tipe_toko_idxÿÿÿÿÿÿÿÿÿ	
F
tipe_usaha_kuliner_idx,)
tipe_usaha_kuliner_idxÿÿÿÿÿÿÿÿÿ	
@
tipe_usaha_lain_idx)&
tipe_usaha_lain_idxÿÿÿÿÿÿÿÿÿ	
:
toko_toserba_idx&#
toko_toserba_idxÿÿÿÿÿÿÿÿÿ	
"
tp_a
tp_aÿÿÿÿÿÿÿÿÿ	
"
tp_b
tp_bÿÿÿÿÿÿÿÿÿ	
"
tp_m
tp_mÿÿÿÿÿÿÿÿÿ	"3ª0
.
output_1"
output_1ÿÿÿÿÿÿÿÿÿK
,__inference_yggdrasil_model_path_tensor_1658:¢

¢ 
ª " 
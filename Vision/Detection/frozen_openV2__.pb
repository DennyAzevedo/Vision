
'
input_imagePlaceholder*
dtype0
'
phase_trainPlaceholder*
dtype0

�
VariableConst*
dtype0*�
value�B�"���p>��>~ƥ�Y9>�H����>ئk=��Ӿ�\+>�
>���9��>�A8<��>��6>Ya��~��>���=�������>�r�=��>�P�>�g�pb��b�<�0�=q�h�~�,>l�$���4)>ys۾�ξ$^����F�xB��vB����>ZP������O�=hP����>�j=o
�rp���=xk��?��=}+��^�osY>ڷ>*==_����s���^�=D��>��=1�;��>S�>��>+��=���>n��=[/�v2վ�~c=���>"�Z>ٸ��x�e�cp(>fPl��,�|�rk������>]�����>V伛��	��/>釦�S?	��y/�Cn�� ��>{l�=}�s>��a(��ݨ����"w[>N<C�>��/�X\d��0���t�O�=�C��>H �����>�t$>�ș�E�<�
�=��>���1�=僕<6]>�{��������>�W⾻W�=�>��,ڤ���"��93o>�
�U�>�A��|x=l��h�>��m>����ơ�<�P��>2�=�>��9�=�)O��J�>�zǽT(���;T���}�=i�>q/�>~�K����>�Z�=hb�r�ҽnKL>�?Z\���
�=�f����Af��1dF�-�+�;��(�>�N@>���=�&�5[A>��>����1�'���=%D�d�$����=:3��-�=�c���5ǽ��>3�?�b=Q�=�$>P�b�/�>A���&�L�ݾ<�>v钾�
�=J�@�+~�<x��=�G����>���<��D>3������H�>%8�>9�69>g��<K"x������H=��=
I
Variable/readIdentityVariable*
_class
loc:@Variable*
T0
W

Variable_1Const*
dtype0*5
value,B*" ?י;��<�C���S�ܹ�K4;y��;�杻y��
O
Variable_1/readIdentity
Variable_1*
_class
loc:@Variable_1*
T0
�
Conv2DConv2Dinput_imageVariable/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
T0*
paddingSAME
,
addAddConv2DVariable_1/read*
T0
X
bn/VariableConst*
dtype0*5
value,B*" �ge�/�;���!�;=?2%=���=Wͼػ��
R
bn/Variable/readIdentitybn/Variable*
_class
loc:@bn/Variable*
T0
Z
bn/Variable_1Const*
dtype0*5
value,B*" 3�?j�}?��?yw?Zq?�3{?�҃?j�?
X
bn/Variable_1/readIdentitybn/Variable_1* 
_class
loc:@bn/Variable_1*
T0
Z
!bn/moments/Mean/reduction_indicesConst*
dtype0*!
valueB"          
e
bn/moments/MeanMeanadd!bn/moments/Mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
A
bn/moments/StopGradientStopGradientbn/moments/Mean*
T0
<
bn/moments/SubSubaddbn/moments/StopGradient*
T0
b
)bn/moments/shifted_mean/reduction_indicesConst*
dtype0*!
valueB"          
�
bn/moments/shifted_meanMeanbn/moments/Sub)bn/moments/shifted_mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
X
bn/moments/SquaredDifferenceSquaredDifferenceaddbn/moments/StopGradient*
T0
\
#bn/moments/Mean_1/reduction_indicesConst*
dtype0*!
valueB"          
�
bn/moments/Mean_1Meanbn/moments/SquaredDifference#bn/moments/Mean_1/reduction_indices*
	keep_dims(*
T0*

Tidx0
=
bn/moments/SquareSquarebn/moments/shifted_mean*
T0
I
bn/moments/varianceSubbn/moments/Mean_1bn/moments/Square*
T0
Q
bn/moments/meanAddbn/moments/shifted_meanbn/moments/StopGradient*
T0
P
bn/moments/SqueezeSqueezebn/moments/mean*
squeeze_dims
 *
T0
V
bn/moments/Squeeze_1Squeezebn/moments/variance*
squeeze_dims
 *
T0
;
bn/cond/SwitchSwitchphase_trainphase_train*
T0

7
bn/cond/switch_tIdentitybn/cond/Switch:1*
T0

1
bn/cond/pred_idIdentityphase_train*
T0

{
.bn/bn/moments/Squeeze/ExponentialMovingAverageConst*
dtype0*5
value,B*" ����� ������?��ӽf`��������
�
3bn/bn/moments/Squeeze/ExponentialMovingAverage/readIdentity.bn/bn/moments/Squeeze/ExponentialMovingAverage*A
_class7
53loc:@bn/bn/moments/Squeeze/ExponentialMovingAverage*
T0
}
0bn/bn/moments/Squeeze_1/ExponentialMovingAverageConst*
dtype0*5
value,B*" �*�=D�=�Ϙ=^�>&58<�Z�<Ѿ�=B@�<
�
5bn/bn/moments/Squeeze_1/ExponentialMovingAverage/readIdentity0bn/bn/moments/Squeeze_1/ExponentialMovingAverage*C
_class9
75loc:@bn/bn/moments/Squeeze_1/ExponentialMovingAverage*
T0
f
&bn/cond/ExponentialMovingAverage/decayConst^bn/cond/switch_t*
dtype0*
valueB
 *   ?
�
6bn/cond/ExponentialMovingAverage/AssignMovingAvg/sub/xConst^bn/cond/switch_t*A
_class7
53loc:@bn/bn/moments/Squeeze/ExponentialMovingAverage*
dtype0*
valueB
 *  �?
�
4bn/cond/ExponentialMovingAverage/AssignMovingAvg/subSub6bn/cond/ExponentialMovingAverage/AssignMovingAvg/sub/x&bn/cond/ExponentialMovingAverage/decay*A
_class7
53loc:@bn/bn/moments/Squeeze/ExponentialMovingAverage*
T0
�
=bn/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/SwitchSwitch3bn/bn/moments/Squeeze/ExponentialMovingAverage/readbn/cond/pred_id*A
_class7
53loc:@bn/bn/moments/Squeeze/ExponentialMovingAverage*
T0
�
?bn/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch_1Switchbn/moments/Squeezebn/cond/pred_id*%
_class
loc:@bn/moments/Squeeze*
T0
�
6bn/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1Sub?bn/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch:1Abn/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch_1:1*A
_class7
53loc:@bn/bn/moments/Squeeze/ExponentialMovingAverage*
T0
�
4bn/cond/ExponentialMovingAverage/AssignMovingAvg/mulMul6bn/cond/ExponentialMovingAverage/AssignMovingAvg/sub_14bn/cond/ExponentialMovingAverage/AssignMovingAvg/sub*A
_class7
53loc:@bn/bn/moments/Squeeze/ExponentialMovingAverage*
T0
�
7bn/cond/ExponentialMovingAverage/AssignMovingAvg/SwitchSwitch.bn/bn/moments/Squeeze/ExponentialMovingAveragebn/cond/pred_id*A
_class7
53loc:@bn/bn/moments/Squeeze/ExponentialMovingAverage*
T0
�
0bn/cond/ExponentialMovingAverage/AssignMovingAvgSub9bn/cond/ExponentialMovingAverage/AssignMovingAvg/Switch:14bn/cond/ExponentialMovingAverage/AssignMovingAvg/mul*A
_class7
53loc:@bn/bn/moments/Squeeze/ExponentialMovingAverage*
T0
�
8bn/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub/xConst^bn/cond/switch_t*C
_class9
75loc:@bn/bn/moments/Squeeze_1/ExponentialMovingAverage*
dtype0*
valueB
 *  �?
�
6bn/cond/ExponentialMovingAverage/AssignMovingAvg_1/subSub8bn/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub/x&bn/cond/ExponentialMovingAverage/decay*C
_class9
75loc:@bn/bn/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
?bn/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/SwitchSwitch5bn/bn/moments/Squeeze_1/ExponentialMovingAverage/readbn/cond/pred_id*C
_class9
75loc:@bn/bn/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
Abn/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch_1Switchbn/moments/Squeeze_1bn/cond/pred_id*'
_class
loc:@bn/moments/Squeeze_1*
T0
�
8bn/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1SubAbn/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch:1Cbn/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch_1:1*C
_class9
75loc:@bn/bn/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
6bn/cond/ExponentialMovingAverage/AssignMovingAvg_1/mulMul8bn/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_16bn/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub*C
_class9
75loc:@bn/bn/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
9bn/cond/ExponentialMovingAverage/AssignMovingAvg_1/SwitchSwitch0bn/bn/moments/Squeeze_1/ExponentialMovingAveragebn/cond/pred_id*C
_class9
75loc:@bn/bn/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
2bn/cond/ExponentialMovingAverage/AssignMovingAvg_1Sub;bn/cond/ExponentialMovingAverage/AssignMovingAvg_1/Switch:16bn/cond/ExponentialMovingAverage/AssignMovingAvg_1/mul*C
_class9
75loc:@bn/bn/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
 bn/cond/ExponentialMovingAverageNoOp1^bn/cond/ExponentialMovingAverage/AssignMovingAvg3^bn/cond/ExponentialMovingAverage/AssignMovingAvg_1^bn/cond/switch_t
�
bn/cond/IdentityIdentityAbn/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch_1:1!^bn/cond/ExponentialMovingAverage*
T0
�
bn/cond/Identity_1IdentityCbn/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch_1:1!^bn/cond/ExponentialMovingAverage*
T0
�
bn/cond/Switch_1Switch3bn/bn/moments/Squeeze/ExponentialMovingAverage/readbn/cond/pred_id*A
_class7
53loc:@bn/bn/moments/Squeeze/ExponentialMovingAverage*
T0
�
bn/cond/Switch_2Switch5bn/bn/moments/Squeeze_1/ExponentialMovingAverage/readbn/cond/pred_id*C
_class9
75loc:@bn/bn/moments/Squeeze_1/ExponentialMovingAverage*
T0
L
bn/cond/MergeMergebn/cond/Switch_1bn/cond/Identity*
T0*
N
P
bn/cond/Merge_1Mergebn/cond/Switch_2bn/cond/Identity_1*
T0*
N
?
bn/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
E
bn/batchnorm/addAddbn/cond/Merge_1bn/batchnorm/add/y*
T0
6
bn/batchnorm/RsqrtRsqrtbn/batchnorm/add*
T0
H
bn/batchnorm/mulMulbn/batchnorm/Rsqrtbn/Variable_1/read*
T0
9
bn/batchnorm/mul_1Muladdbn/batchnorm/mul*
T0
C
bn/batchnorm/mul_2Mulbn/cond/Mergebn/batchnorm/mul*
T0
F
bn/batchnorm/subSubbn/Variable/readbn/batchnorm/mul_2*
T0
H
bn/batchnorm/add_1Addbn/batchnorm/mul_1bn/batchnorm/sub*
T0
)
ReluRelubn/batchnorm/add_1*
T0
s
MaxPoolMaxPoolRelu*
data_formatNHWC*
strides
*
T0*
paddingSAME*
ksize

�

Variable_2Const*
dtype0*�
value�B�
"�UÍ��]��S�>�~���_(>�J>�U9=�d�>�6�����>�0>J�<��s��\�;�2>*��=�҅��D�=�4�=��>�9>��\=g	���C>�M����=���]ˊ������= :�<�~Խ��=�t>�wx�� �	���1��>������oe>b=����s�ҺH�C>������<��<�z�3ݤ=P�5��PQ�V+*�s1=K7=.�v��3#>��>�e�Yf��gL=,���=.Y>t�Ƚsy��c=p˂��<5����!h;�㽆�r>�����h�
�MO�<q�F>��J��ܱ>(
>[('>�7�j>��)��\<�`����Mm>�����=�:�>�6)���T��9>�-��zN���$�eg�	C5��~"�u�@��T6=��u>j�F�����r���Sǽ�[�B�o>�>j��;0Q>RK+�'�ؽ��>�u4>���=�H!��ս6}����>), =T�<�=�l��=$��<�{,>^r7� �=��=���=w�,>P� �hƅ=lk4��<o=Ѿ�&H�M��=���=����ݵ���ֽO�;ֳ�=�E���m��t�?���ͼ�޼�Ȍ��=
>h�d��P�<�w�=Ho�S�>��>)�>|s�=��1.ؽڇ	�Gi�=��9>cв�am���p>8�ν�{�=�4Ƚy�w>����:�h�=>�.>/��=�>�Ӥ��<I3=�]������c�=Z�>j�>Q��@F�=��6�UD�>8|����=����?>{d佫��=��C�v�R��a�J��"9����tW��=�^E���3�\-��՞f�Tp�=BBD>�=�ݽkO>�j�=R����o=��ӽ�]@��;�=u#N=h��=�,5�3�=E��>M]�=��Ӻy�Ͻ@�[��$y���S�Uט����wM���\>]��>�T�����8++<&�=��<��B�5����H�<�J�>��>�����D>}�=��)>!=�
�>_&�=��<%Θ>�]!>�!����;>j�4=�ͮ��mk������> �k���z�dW���n>gc�>��&�p����b���=b8�<�1y�V�ػ��>�;+=�a�:���=�p�<?[=���L���`ɼ�����K��%W��h{>�h�;P)��w�_d=�L�y�-$�> 
=��A�=���=Fn'�@s>>z����>�"v>���>�Z%��宼��:�&r�>�T�=3�>.k�Q���&�g�\f�;�8�_r�=�,>�=b��M=%M>�t������-���­=�e���� ��p+���7���j��V	�V�>�*�=5-(�#��=����>�<x�=UL`>�(�/��)��<tn���-�@�:�ʪ=>:Y���Gɽj���#��p>>Z��>i�<v�0��ș����>w�B>.��=R:)>�>�z$>�|�Y4�=�*��cM>�A;Xr߼ɕZ�V"
�}��=�L	=nS/�u�6>	ќ�x�<^p};x'�=�� >2��T��=�t}��]E=4`J>����A��8ԩ=(MM���=f� ��7�=��ݽ0������tȽ�V���=�>)�a=^X=�=f��>4��b�=�b�<tb��Q"]>�M7>�I�c0}=����!�g�Ag	>�Z�:v��=�q!�@�!�)0���J�.=�����Լ�z�<�&>�S��l����L>=��=|>8=�a����*�����Ŷ=^�L�����ś�/�I=��=�^��Uh�<>�=��r���.Z�o�>a�=�M��F� �H>6z�`��=������b�4�K>��q��	:����� >�C3>O�<�rB�=ػ�9�y=��&>�h$=*С�n-X>���=rQ<��u=Eܾ=��z�"PX=�ւ�D1�=�K�>�Q��x����=�By���Ľ%�>��]�������=��b��j��d̽�~�vt���}R=�*C�n���y�z�>��W=��+��y��_%V����>�Xt=�k���o��M�==qc=����=�>�N�����|�������ֽ'�4>4=�:���[Y>D�ǽ!�6�!n�=5G�>�&3�p�=oNB���?�lI��=>��>��.>�H�=)�3<�JH<���<�I>�pR=�G3� T=��T>��=X�c>Y(��G^����>�>�@���r���=�_��,.~��q���=ю=�()��_��sĽ$��=�,p�(����Q���h�*����t��<���X>|/S��ފ�{S�������=�q>�Y>�R\>k3�>��B�Cힾ]W�8�6>�~�=��w���]�ϋ�>����h�=��Ƚ���=�bq����=<sm>�>�YV>�9�� Q�8-��:I��S��<P�;�I��]|�>�Yֽ�j>SH���ڋ>�e���%>[fN=��>�{>M�����A�����@���޵������/o>�1�=��=���ַ�Y��g�='�P�P�޽���>��>��۽��/>,�齋�=�>�1b�aQ�����w=`-Ӽ�և=}�_�Ų�<����
��)C>��!�����Z���T��M�>��f�Y��^T�}_�=�޻$�Y>s[�=l��;�3<4�=< �=i�Ƚ�ط�}G���٫��WM�v����̼/ֽ�lz>�����F�-��9��1�%>da(��=U=�Z$>�� =�9���=��ɽ{�<���$�1��{=��x=�[h=U�&3ӽ�5����꽆K�=Z���˨��^����=�@��'[M>��>x,=�b�>��A>��X>�OνO<T1=q�ݼ�Y>>$1�=G�I�-�O��w&>�O�</䌽	^>"�E�S�#�>@�p��5<
O
Variable_2/readIdentity
Variable_2*
_class
loc:@Variable_2*
T0
_

Variable_3Const*
dtype0*=
value4B2
"(�����1z�E����J�9	x߻�W�;#^�J�B�<�ɺ�)6;
O
Variable_3/readIdentity
Variable_3*
_class
loc:@Variable_3*
T0
�
Conv2D_1Conv2DMaxPoolVariable_2/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
T0*
paddingSAME
0
add_1AddConv2D_1Variable_3/read*
T0
b
bn_1/VariableConst*
dtype0*=
value4B2
"(��J�=�Z˼e��<���=w�V=q�o<�hF����=ܰi�
X
bn_1/Variable/readIdentitybn_1/Variable* 
_class
loc:@bn_1/Variable*
T0
d
bn_1/Variable_1Const*
dtype0*=
value4B2
"(s�r?L�?u}?yn�?�{?�wf?3�z?͈�?"�}?bZ�?
^
bn_1/Variable_1/readIdentitybn_1/Variable_1*"
_class
loc:@bn_1/Variable_1*
T0
\
#bn_1/moments/Mean/reduction_indicesConst*
dtype0*!
valueB"          
k
bn_1/moments/MeanMeanadd_1#bn_1/moments/Mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
E
bn_1/moments/StopGradientStopGradientbn_1/moments/Mean*
T0
B
bn_1/moments/SubSubadd_1bn_1/moments/StopGradient*
T0
d
+bn_1/moments/shifted_mean/reduction_indicesConst*
dtype0*!
valueB"          
�
bn_1/moments/shifted_meanMeanbn_1/moments/Sub+bn_1/moments/shifted_mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
^
bn_1/moments/SquaredDifferenceSquaredDifferenceadd_1bn_1/moments/StopGradient*
T0
^
%bn_1/moments/Mean_1/reduction_indicesConst*
dtype0*!
valueB"          
�
bn_1/moments/Mean_1Meanbn_1/moments/SquaredDifference%bn_1/moments/Mean_1/reduction_indices*
	keep_dims(*
T0*

Tidx0
A
bn_1/moments/SquareSquarebn_1/moments/shifted_mean*
T0
O
bn_1/moments/varianceSubbn_1/moments/Mean_1bn_1/moments/Square*
T0
W
bn_1/moments/meanAddbn_1/moments/shifted_meanbn_1/moments/StopGradient*
T0
T
bn_1/moments/SqueezeSqueezebn_1/moments/mean*
squeeze_dims
 *
T0
Z
bn_1/moments/Squeeze_1Squeezebn_1/moments/variance*
squeeze_dims
 *
T0
=
bn_1/cond/SwitchSwitchphase_trainphase_train*
T0

;
bn_1/cond/switch_tIdentitybn_1/cond/Switch:1*
T0

3
bn_1/cond/pred_idIdentityphase_train*
T0

�
0bn/bn_1/moments/Squeeze/ExponentialMovingAverageConst*
dtype0*=
value4B2
"(X�W?�P���g�>�Z���� ����dU_?�&9?���H�C?
�
5bn/bn_1/moments/Squeeze/ExponentialMovingAverage/readIdentity0bn/bn_1/moments/Squeeze/ExponentialMovingAverage*C
_class9
75loc:@bn/bn_1/moments/Squeeze/ExponentialMovingAverage*
T0
�
2bn/bn_1/moments/Squeeze_1/ExponentialMovingAverageConst*
dtype0*=
value4B2
"(��?��K?"�d?�"�>��>$��?�	?t;�?=�D?�gO?
�
7bn/bn_1/moments/Squeeze_1/ExponentialMovingAverage/readIdentity2bn/bn_1/moments/Squeeze_1/ExponentialMovingAverage*E
_class;
97loc:@bn/bn_1/moments/Squeeze_1/ExponentialMovingAverage*
T0
j
(bn_1/cond/ExponentialMovingAverage/decayConst^bn_1/cond/switch_t*
dtype0*
valueB
 *   ?
�
8bn_1/cond/ExponentialMovingAverage/AssignMovingAvg/sub/xConst^bn_1/cond/switch_t*C
_class9
75loc:@bn/bn_1/moments/Squeeze/ExponentialMovingAverage*
dtype0*
valueB
 *  �?
�
6bn_1/cond/ExponentialMovingAverage/AssignMovingAvg/subSub8bn_1/cond/ExponentialMovingAverage/AssignMovingAvg/sub/x(bn_1/cond/ExponentialMovingAverage/decay*C
_class9
75loc:@bn/bn_1/moments/Squeeze/ExponentialMovingAverage*
T0
�
?bn_1/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/SwitchSwitch5bn/bn_1/moments/Squeeze/ExponentialMovingAverage/readbn_1/cond/pred_id*C
_class9
75loc:@bn/bn_1/moments/Squeeze/ExponentialMovingAverage*
T0
�
Abn_1/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch_1Switchbn_1/moments/Squeezebn_1/cond/pred_id*'
_class
loc:@bn_1/moments/Squeeze*
T0
�
8bn_1/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1SubAbn_1/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch:1Cbn_1/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch_1:1*C
_class9
75loc:@bn/bn_1/moments/Squeeze/ExponentialMovingAverage*
T0
�
6bn_1/cond/ExponentialMovingAverage/AssignMovingAvg/mulMul8bn_1/cond/ExponentialMovingAverage/AssignMovingAvg/sub_16bn_1/cond/ExponentialMovingAverage/AssignMovingAvg/sub*C
_class9
75loc:@bn/bn_1/moments/Squeeze/ExponentialMovingAverage*
T0
�
9bn_1/cond/ExponentialMovingAverage/AssignMovingAvg/SwitchSwitch0bn/bn_1/moments/Squeeze/ExponentialMovingAveragebn_1/cond/pred_id*C
_class9
75loc:@bn/bn_1/moments/Squeeze/ExponentialMovingAverage*
T0
�
2bn_1/cond/ExponentialMovingAverage/AssignMovingAvgSub;bn_1/cond/ExponentialMovingAverage/AssignMovingAvg/Switch:16bn_1/cond/ExponentialMovingAverage/AssignMovingAvg/mul*C
_class9
75loc:@bn/bn_1/moments/Squeeze/ExponentialMovingAverage*
T0
�
:bn_1/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub/xConst^bn_1/cond/switch_t*E
_class;
97loc:@bn/bn_1/moments/Squeeze_1/ExponentialMovingAverage*
dtype0*
valueB
 *  �?
�
8bn_1/cond/ExponentialMovingAverage/AssignMovingAvg_1/subSub:bn_1/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub/x(bn_1/cond/ExponentialMovingAverage/decay*E
_class;
97loc:@bn/bn_1/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
Abn_1/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/SwitchSwitch7bn/bn_1/moments/Squeeze_1/ExponentialMovingAverage/readbn_1/cond/pred_id*E
_class;
97loc:@bn/bn_1/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
Cbn_1/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch_1Switchbn_1/moments/Squeeze_1bn_1/cond/pred_id*)
_class
loc:@bn_1/moments/Squeeze_1*
T0
�
:bn_1/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1SubCbn_1/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch:1Ebn_1/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch_1:1*E
_class;
97loc:@bn/bn_1/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
8bn_1/cond/ExponentialMovingAverage/AssignMovingAvg_1/mulMul:bn_1/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_18bn_1/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub*E
_class;
97loc:@bn/bn_1/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
;bn_1/cond/ExponentialMovingAverage/AssignMovingAvg_1/SwitchSwitch2bn/bn_1/moments/Squeeze_1/ExponentialMovingAveragebn_1/cond/pred_id*E
_class;
97loc:@bn/bn_1/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
4bn_1/cond/ExponentialMovingAverage/AssignMovingAvg_1Sub=bn_1/cond/ExponentialMovingAverage/AssignMovingAvg_1/Switch:18bn_1/cond/ExponentialMovingAverage/AssignMovingAvg_1/mul*E
_class;
97loc:@bn/bn_1/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
"bn_1/cond/ExponentialMovingAverageNoOp3^bn_1/cond/ExponentialMovingAverage/AssignMovingAvg5^bn_1/cond/ExponentialMovingAverage/AssignMovingAvg_1^bn_1/cond/switch_t
�
bn_1/cond/IdentityIdentityCbn_1/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch_1:1#^bn_1/cond/ExponentialMovingAverage*
T0
�
bn_1/cond/Identity_1IdentityEbn_1/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch_1:1#^bn_1/cond/ExponentialMovingAverage*
T0
�
bn_1/cond/Switch_1Switch5bn/bn_1/moments/Squeeze/ExponentialMovingAverage/readbn_1/cond/pred_id*C
_class9
75loc:@bn/bn_1/moments/Squeeze/ExponentialMovingAverage*
T0
�
bn_1/cond/Switch_2Switch7bn/bn_1/moments/Squeeze_1/ExponentialMovingAverage/readbn_1/cond/pred_id*E
_class;
97loc:@bn/bn_1/moments/Squeeze_1/ExponentialMovingAverage*
T0
R
bn_1/cond/MergeMergebn_1/cond/Switch_1bn_1/cond/Identity*
T0*
N
V
bn_1/cond/Merge_1Mergebn_1/cond/Switch_2bn_1/cond/Identity_1*
T0*
N
A
bn_1/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
K
bn_1/batchnorm/addAddbn_1/cond/Merge_1bn_1/batchnorm/add/y*
T0
:
bn_1/batchnorm/RsqrtRsqrtbn_1/batchnorm/add*
T0
N
bn_1/batchnorm/mulMulbn_1/batchnorm/Rsqrtbn_1/Variable_1/read*
T0
?
bn_1/batchnorm/mul_1Muladd_1bn_1/batchnorm/mul*
T0
I
bn_1/batchnorm/mul_2Mulbn_1/cond/Mergebn_1/batchnorm/mul*
T0
L
bn_1/batchnorm/subSubbn_1/Variable/readbn_1/batchnorm/mul_2*
T0
N
bn_1/batchnorm/add_1Addbn_1/batchnorm/mul_1bn_1/batchnorm/sub*
T0
-
Relu_1Relubn_1/batchnorm/add_1*
T0
w
	MaxPool_1MaxPoolRelu_1*
data_formatNHWC*
strides
*
T0*
paddingSAME*
ksize

�

Variable_4Const*
dtype0*�
value�B�

"�;9�<`�B>��=��D��0$�2`+���=XQӽ��<��=�c�=�
Q;�_���6>j��=�oO>f3�=Lk>>m>�����v>��<ʲX>[�!�H�=���⊽�7�>�4+>]jD=Ous�>b=�X>�<���JZ> Η��{��|ˈ=�z�="RF>�>�!����?>i�ֽ�:s�Rk�9����>��l�(>t2M������������<C����y�ޅ���Y�C�0>i��=/��>�>�=Z�o=	:2>7D�e}&���U�"T9<��r�αR�`P���R?�jG/�6���ּ���=}��>G� �v�f��Y�>����W2�=���<O�& ׽�s"�Il>=6}=��I,��}��N����=}v=^��<�V�<���>	{���ǵ=���?e0�o��=�s��i��=>�����{h���<x�C<�]�=��4;m}�r��=BN�{Z�=�*�=���>?"	>Ҵ���5����>&�=H�Z=V$D� T/�,�<���<�=E\{>-��%e<�J>CT�=�#˽�7>}_=��	>�N>9k*���O>d�^>PA��l�=U*��"J�H��ߕ/>)�1>���>�yu>�7=T����0	>��<�<=�k�<̜0>87d��S[=��&>B����"��s�J�ֶ5��C�������=vw��p�@B}<�+��d���
�q>�<Wk^�<@��.#��J7�>��@�~��:n�0�)j��+>C��J��=��!�����/
(>�
�j�2>y����dռ҇3=?(�=��Q=k���694��N=��_�f��=�lv�\5����=�-��;Z���˽��<>�bQ�o�����">t�ڽ_��"�Y��Ϸ=6K]="\��3�a�v<Խ�+^����;�����O>$k>���%<�|e��W�ep�����=�釽ƅ�>՝�<��	>���=BԨ=���>��%>�+>�x;=�����P�=dt=(�n=�����9�=`,����=&p3���h���<<vn>:I�ӣ>]��(�>ϻ�=�>lE5�����%�c=B=�=f�#=�c��i=
5>��l;gǽ(F���'�:�
>�cV��_��~[�F�
<��W=�d���>���=�sս�\ >�$�=No��l��=���R�^=���S=�]>J<����Y��_�����_V
�����Q��>$!>��ֽ�>ֿ��F�)>l"Z=� =�8=`�;M�ͼf8=�_�=_KM�dzY��Q���� =a���:<=TR����=�>��X=?�>G�@=���=t�<<2J��(��*��=���=�˹<��=��G=�rb�@�m����vS~����=̈́K=��*>�GŽ��l=�_��]ݡ�H4��>bNȽ'n=��d� :/
H�9d��U���Y��#��=]�[i�1�>K�
>��<�1�!�f���&>).������まj���5뽏��������=�؅>��w<^�^>h�#>~뎽`Oj='
�=f��=�₾0=�;9�YK7��	�=��y�����r">���=�o[�b^t�Sz&��V��al��Kü��K��$=3:���=>L�=�'
�� |�ۼ���:�P%�45�<e.
=uO3>ߚ
=�Ӥ�����=�Jj���9D������k>���Y�����>=�=t�'��4�dwL=��=��!��N��Y�������Ž��b>p}ýZ��=�]P��;k���=*�:��h�>cf��7Fk;6��;U��<L=˸�=%MG>3�O��7@>F#I��_��ݭ�`���44�&<K>��>B|�<���꠮�A&�=Åe=�Y`��P½H0=��|�SO�X>A��{D3��T�k2>0�->� ��!����<� >�����=�@��Q�=I�=2��ǽE�.��}e;�f�=�k>�J�>�(>~H���>t>��>.&���9�{��T">��=���N�F�]�=Խ�=�*�K'���=�T>،f>�@@�F9�$o �~>.>$��8�'�
J���F>�&���<ۑ���`S��/0�8���}��N	�AKڽ�����A��>q�
>[.����=x�����>��<��>n�=�<�=M�=�&=�V0�����v�4��L�S�>W�t���2�DN>�3�����Xe��b!>�R�<��k�i�<= ���'��3On>��F>l�u>7Xy>�/]=���<��~R!>�&a�ʣ=����<Q-0�G41��v>�<T�����9�=������>��o�ۊ�=����*�o=je�<=�=��G>'���սuH��Keg��x=K�=I�,=��=��>O(7>�3�>K���v,�<��ȽE��=<Z>7R�>؞�;*$]>��9<��/=`A�<}�����=�my=Н�<�"Q>�^T���*�;	�>�I�;] c=j�k+]=���=vL>s�$��G=�&'���m��C�m̗=��|=��d>z&w=�����M>�C��b=�i�>��1>�l>ɗ���i>qf�> �A:N�=����0S>�!>�,+>ԗ>����Kb��6�>�*ļ���Ӿ�=v[�&=�F-�.�*���ʺ>ȍ���X����=�^>��!A���]�7�=~�>rl>��H�ϣ6>�`������w+���|s>p'i�(<>��[>"v�=���;{�s�W�ܝ�=i����#�=6ވ=$�����=����4I=�Y����bE>[7���1�qd���ۺy$��|u�ø<� ��>��s�=��D�D~�>�wJ=l&<>\�b�ZC�=@S0���=~8Z�2��=?�=��>=��i>7sֽ�ٹ�|�=t_P>���=�s5�z�{>
>m>{�==���� =�䛾��L=�t�<���>P��Ե>���=08>&Sh>&����׽�潎>e=u>�5��cw>+�]���eh>����½��V="�<���=��
�\D��+t���߽��H��s��?6�>�m�=h�<�m��\��&&P��3��~����=h@5>�Y=ذ�=��f:� >[N�9rO���=�>7�>dқ���>b�>����֩���>,��=����6�=g�=����%l�l
=���-�=�0����>y�=e.`����=�="�P��=D����,��z�>�e�=2捽�f�;�{>�\B�7�3>5Sü���6�0<?m<��T�|-|�#��S� �A*=�@�a���ν��;A/�|�)�����y�b>�|�m����󽵧��JI�=O����;>⦡=N�5��`̽�א�����9ɽ.�8�M<�CN��� �<ަ6���>7�>��j>滽�C>~�>,sj��>E<�;	��9�!R�jV	��Z���\�=�%'�������{k�'�B=������9�<=��>���>}�н��B��>�>=*>����륑�0�=Ex �LY�=�����=L��=
�X�ӻ|>>m�=�<��{>qռ&�Ƽ0'$>��=>��鴐=Y�>K�;�H�f>c�=d����C>%kr��I�Q�>@۩=F�=q��>�^�>@*��G9>cW�>$aj>
O
Variable_4/readIdentity
Variable_4*
_class
loc:@Variable_4*
T0
_

Variable_5Const*
dtype0*=
value4B2
"(jo��v�y:�����:�Wٻ��v��:"����כ:&J�
O
Variable_5/readIdentity
Variable_5*
_class
loc:@Variable_5*
T0
�
Conv2D_2Conv2D	MaxPool_1Variable_4/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
T0*
paddingSAME
0
add_2AddConv2D_2Variable_5/read*
T0
b
bn_2/VariableConst*
dtype0*=
value4B2
"(gs�~<�;��=̘8�mTL�����A�C=&c���Ҽ1�ۼ
X
bn_2/Variable/readIdentitybn_2/Variable* 
_class
loc:@bn_2/Variable*
T0
d
bn_2/Variable_1Const*
dtype0*=
value4B2
"(��v?c�y?~�}?�o?a��?�2�?q@�?'�?�w?� u?
^
bn_2/Variable_1/readIdentitybn_2/Variable_1*"
_class
loc:@bn_2/Variable_1*
T0
\
#bn_2/moments/Mean/reduction_indicesConst*
dtype0*!
valueB"          
k
bn_2/moments/MeanMeanadd_2#bn_2/moments/Mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
E
bn_2/moments/StopGradientStopGradientbn_2/moments/Mean*
T0
B
bn_2/moments/SubSubadd_2bn_2/moments/StopGradient*
T0
d
+bn_2/moments/shifted_mean/reduction_indicesConst*
dtype0*!
valueB"          
�
bn_2/moments/shifted_meanMeanbn_2/moments/Sub+bn_2/moments/shifted_mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
^
bn_2/moments/SquaredDifferenceSquaredDifferenceadd_2bn_2/moments/StopGradient*
T0
^
%bn_2/moments/Mean_1/reduction_indicesConst*
dtype0*!
valueB"          
�
bn_2/moments/Mean_1Meanbn_2/moments/SquaredDifference%bn_2/moments/Mean_1/reduction_indices*
	keep_dims(*
T0*

Tidx0
A
bn_2/moments/SquareSquarebn_2/moments/shifted_mean*
T0
O
bn_2/moments/varianceSubbn_2/moments/Mean_1bn_2/moments/Square*
T0
W
bn_2/moments/meanAddbn_2/moments/shifted_meanbn_2/moments/StopGradient*
T0
T
bn_2/moments/SqueezeSqueezebn_2/moments/mean*
squeeze_dims
 *
T0
Z
bn_2/moments/Squeeze_1Squeezebn_2/moments/variance*
squeeze_dims
 *
T0
=
bn_2/cond/SwitchSwitchphase_trainphase_train*
T0

;
bn_2/cond/switch_tIdentitybn_2/cond/Switch:1*
T0

3
bn_2/cond/pred_idIdentityphase_train*
T0

�
0bn/bn_2/moments/Squeeze/ExponentialMovingAverageConst*
dtype0*=
value4B2
"(tʽ������o�?��4�@Ǭ���+>
t!>:z@�Q�=
�
5bn/bn_2/moments/Squeeze/ExponentialMovingAverage/readIdentity0bn/bn_2/moments/Squeeze/ExponentialMovingAverage*C
_class9
75loc:@bn/bn_2/moments/Squeeze/ExponentialMovingAverage*
T0
�
2bn/bn_2/moments/Squeeze_1/ExponentialMovingAverageConst*
dtype0*=
value4B2
"(D
o?��?�}?\�?��D?��?&:�?�V�?B��?z;8?
�
7bn/bn_2/moments/Squeeze_1/ExponentialMovingAverage/readIdentity2bn/bn_2/moments/Squeeze_1/ExponentialMovingAverage*E
_class;
97loc:@bn/bn_2/moments/Squeeze_1/ExponentialMovingAverage*
T0
j
(bn_2/cond/ExponentialMovingAverage/decayConst^bn_2/cond/switch_t*
dtype0*
valueB
 *   ?
�
8bn_2/cond/ExponentialMovingAverage/AssignMovingAvg/sub/xConst^bn_2/cond/switch_t*C
_class9
75loc:@bn/bn_2/moments/Squeeze/ExponentialMovingAverage*
dtype0*
valueB
 *  �?
�
6bn_2/cond/ExponentialMovingAverage/AssignMovingAvg/subSub8bn_2/cond/ExponentialMovingAverage/AssignMovingAvg/sub/x(bn_2/cond/ExponentialMovingAverage/decay*C
_class9
75loc:@bn/bn_2/moments/Squeeze/ExponentialMovingAverage*
T0
�
?bn_2/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/SwitchSwitch5bn/bn_2/moments/Squeeze/ExponentialMovingAverage/readbn_2/cond/pred_id*C
_class9
75loc:@bn/bn_2/moments/Squeeze/ExponentialMovingAverage*
T0
�
Abn_2/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch_1Switchbn_2/moments/Squeezebn_2/cond/pred_id*'
_class
loc:@bn_2/moments/Squeeze*
T0
�
8bn_2/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1SubAbn_2/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch:1Cbn_2/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch_1:1*C
_class9
75loc:@bn/bn_2/moments/Squeeze/ExponentialMovingAverage*
T0
�
6bn_2/cond/ExponentialMovingAverage/AssignMovingAvg/mulMul8bn_2/cond/ExponentialMovingAverage/AssignMovingAvg/sub_16bn_2/cond/ExponentialMovingAverage/AssignMovingAvg/sub*C
_class9
75loc:@bn/bn_2/moments/Squeeze/ExponentialMovingAverage*
T0
�
9bn_2/cond/ExponentialMovingAverage/AssignMovingAvg/SwitchSwitch0bn/bn_2/moments/Squeeze/ExponentialMovingAveragebn_2/cond/pred_id*C
_class9
75loc:@bn/bn_2/moments/Squeeze/ExponentialMovingAverage*
T0
�
2bn_2/cond/ExponentialMovingAverage/AssignMovingAvgSub;bn_2/cond/ExponentialMovingAverage/AssignMovingAvg/Switch:16bn_2/cond/ExponentialMovingAverage/AssignMovingAvg/mul*C
_class9
75loc:@bn/bn_2/moments/Squeeze/ExponentialMovingAverage*
T0
�
:bn_2/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub/xConst^bn_2/cond/switch_t*E
_class;
97loc:@bn/bn_2/moments/Squeeze_1/ExponentialMovingAverage*
dtype0*
valueB
 *  �?
�
8bn_2/cond/ExponentialMovingAverage/AssignMovingAvg_1/subSub:bn_2/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub/x(bn_2/cond/ExponentialMovingAverage/decay*E
_class;
97loc:@bn/bn_2/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
Abn_2/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/SwitchSwitch7bn/bn_2/moments/Squeeze_1/ExponentialMovingAverage/readbn_2/cond/pred_id*E
_class;
97loc:@bn/bn_2/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
Cbn_2/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch_1Switchbn_2/moments/Squeeze_1bn_2/cond/pred_id*)
_class
loc:@bn_2/moments/Squeeze_1*
T0
�
:bn_2/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1SubCbn_2/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch:1Ebn_2/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch_1:1*E
_class;
97loc:@bn/bn_2/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
8bn_2/cond/ExponentialMovingAverage/AssignMovingAvg_1/mulMul:bn_2/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_18bn_2/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub*E
_class;
97loc:@bn/bn_2/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
;bn_2/cond/ExponentialMovingAverage/AssignMovingAvg_1/SwitchSwitch2bn/bn_2/moments/Squeeze_1/ExponentialMovingAveragebn_2/cond/pred_id*E
_class;
97loc:@bn/bn_2/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
4bn_2/cond/ExponentialMovingAverage/AssignMovingAvg_1Sub=bn_2/cond/ExponentialMovingAverage/AssignMovingAvg_1/Switch:18bn_2/cond/ExponentialMovingAverage/AssignMovingAvg_1/mul*E
_class;
97loc:@bn/bn_2/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
"bn_2/cond/ExponentialMovingAverageNoOp3^bn_2/cond/ExponentialMovingAverage/AssignMovingAvg5^bn_2/cond/ExponentialMovingAverage/AssignMovingAvg_1^bn_2/cond/switch_t
�
bn_2/cond/IdentityIdentityCbn_2/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch_1:1#^bn_2/cond/ExponentialMovingAverage*
T0
�
bn_2/cond/Identity_1IdentityEbn_2/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch_1:1#^bn_2/cond/ExponentialMovingAverage*
T0
�
bn_2/cond/Switch_1Switch5bn/bn_2/moments/Squeeze/ExponentialMovingAverage/readbn_2/cond/pred_id*C
_class9
75loc:@bn/bn_2/moments/Squeeze/ExponentialMovingAverage*
T0
�
bn_2/cond/Switch_2Switch7bn/bn_2/moments/Squeeze_1/ExponentialMovingAverage/readbn_2/cond/pred_id*E
_class;
97loc:@bn/bn_2/moments/Squeeze_1/ExponentialMovingAverage*
T0
R
bn_2/cond/MergeMergebn_2/cond/Switch_1bn_2/cond/Identity*
T0*
N
V
bn_2/cond/Merge_1Mergebn_2/cond/Switch_2bn_2/cond/Identity_1*
T0*
N
A
bn_2/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
K
bn_2/batchnorm/addAddbn_2/cond/Merge_1bn_2/batchnorm/add/y*
T0
:
bn_2/batchnorm/RsqrtRsqrtbn_2/batchnorm/add*
T0
N
bn_2/batchnorm/mulMulbn_2/batchnorm/Rsqrtbn_2/Variable_1/read*
T0
?
bn_2/batchnorm/mul_1Muladd_2bn_2/batchnorm/mul*
T0
I
bn_2/batchnorm/mul_2Mulbn_2/cond/Mergebn_2/batchnorm/mul*
T0
L
bn_2/batchnorm/subSubbn_2/Variable/readbn_2/batchnorm/mul_2*
T0
N
bn_2/batchnorm/add_1Addbn_2/batchnorm/mul_1bn_2/batchnorm/sub*
T0
-
Relu_2Relubn_2/batchnorm/add_1*
T0
�8

Variable_6Const*
dtype0*�8
value�8B�8
"�8cs�"�>���>�9*��:�=���<??0>ޘ�){'���
�����D�4�]��=gɽ qm�y�w��L�����=�~�����=�9>��>�=��O�֫1=������3�"���?>,3�=�5��sѻ�$�ص����=��=o�I����=8��=nn�>v%j=�>
�弥��=3;��Z�=�L���B=��̽v�>H ���=#�S���>ZJڽ���=��p�V@�)�T>yl����J>k���n�ǝ콂�`����U�o�;k��<ć�������[qZ�uɒ��q���;���CD�M�޽l����<���7�r�ӈ�6x��4�=�=:=�4\<��>,�%�q��=@!e>�����`<6�K��Wf>�ҽW��K��=q+�A��;>K�����@=�į=L��/8�}���H�Լ!e�=�V>��,=~g�<`�ڽ7��=�c)>�,z�ǘd���ν��=!����>��b>����)�����T��e��6�>���=[�>�dW����=��=l^�XR*<��T>��	����k���I=?������>߰�<\+������I@<C��=.g����{>P>9<_>~��!į=�;�%me�W��=�����>B>�X�����K�ν��=��ǻ%�2�G:����$4�`:˽C��R�e<@B�끦=����
�c>�Gbݽ�6�=�fS=�PW��V�'=+�D>i�*��\>�\r=/�g=�9��Ghf=AYn�
qѽ�µ�p�<i�=Ӑ����W�tGѽo��=��>��������B>J	�=����[���q۽��>�_������u%��z�|��IĽp�:>�D>(>��1>�Ϻ;;J(�"���%����)�d�:�� �<�����6>I�e>6s8>��<9�>c�=H�5��v<�=�!>mQ��lZ
>q�2�]�>�=�D�=
ȉ=7vc=2���T��V�>5k�=�Y>��Խ�d�<y�<����i��>G��t�>y��=T�r;�lӻ��'>,cF8��Q>�����)��w����R��^OR>���<,}<�{2>�=u�(���
=�Η���*>6�<��.A=��>s����G��\�=��L�>�7>��)=-����=�Ȗ>|uU��1Ҽ#��=�k���]=�s�>�j�=)Y�=� %�R�	> hn>�V���=��_>��I>=�YG>_���]>��i>�A=��'>�=��Z���;�V��<[�>Љ���_=�X=?��a� =%+><�^��W->�Y�=����k>���T�����=�*�v3J���	>�z>g_!=��\>:�>���=���xZ=-s�BX>��K<+�=Z�+�
��V½	����#���>�+>�����R�=��#�[�5��)�̴_��k>�F����=Z�n�H���|/9�h�f=`� ��rS�p��<*��刈��i�����q�� 2.�v�dP���=NL�S�=3��>$������.��H3<�}>�b>��t���É���;��2~�׌�9' ��o�xZн�����>�<0�=���ͽv��=�(m�jV��0�=l�hm@���=;z��X��r�~>Z-�=�i>��L�!�j����y]�i/<�
=��=F-�=�[=��P�pg>�!��?i<^�=�=�S���>�7��\g>�[�����	��$&�=��>�>>�>��*��=�
F�~᤽�t����=��Ѽ:��Ҽ�=| -�SR:���=E�<Y找V��<ٱW>�pѽI�R���>i:?����>>��=yG������0b>2Q0��;�ϼ=�A=�>�c���	�8/D�#;�=�ұ=Fkv>�.��r�.>jiG>T�e=�4=��P>M�0�B��V��<}�=p$�>hW�OB>_�<�j�<zli>S"L�I�T>zA���[>ᬽw�]�Z�>aA����= ��=w�N�eԂ=���>$��=� :>!
�ԟQ>.ʺ=�ѽN�I���[�����=b$�=;������=1��=ٖ8>ZUr=)؎=G	r�{׽�������L�e�Ž�N��>_����=!VJ>�">�>�Q�������=�P�=nix�O��=MC��g��R}�8�A�;���)��pK�&�<�h�+������>䱒=��>O�F>�,����p�H�=\�>y�@�!;>4��=<�<���<x'�=A��4�|�W���o��O�A=���=�����E�=t��=빽�~�B���r<S7�>��7>D��=�^y����=�#��S w=����3�
�:8��=9w>���=)���z =�>Z<�=�Y��9g�?�=��g�<+�����=�����������F��*�˽^���3��a���Sg����=����z*��g����.D�<�P��ћ�6yQ�h��=�񲽄�'�¥��Q���^����sJ!=M��߀=;�|0���!�GE��d��=w�{>W�S=P�l=��������U[��>��=U�ܽumI>�Ax�lʻ���<��ݽ��q<��x<}3>��6��M@���p�5 �>�
�����#�=���ڊ�8>��|#>��½w _�&�>.2ؼ*�>�<�=Є�=���</���~��=$۽ͭ�=�MV�w ��k��(�*��`=>�b:�*�c��T=��|��}"���_>W�t�m	�<�>E(���=.A�=U�_��C=Nou=x��>c<�>�쁾!@�C�!��]=_�B>�x����=y����:=��`�"�>֑�+��=+p���w,>����	9��)>��=r��=��Dm�v$�<	�V>;=�Ͻ���>6���9@��=���Y#U>�=ܒ�� <�p@">���=�=3o	�&T�=�M��(���<\�%�
�����<�1�=�k��}���W=��z���٠>��S<{�I��\��=b�ޔu��[=s���;9j>�mv��f��L >p~�����<�U/��)#��V�=W�=G���>�`"���$e>{}�*�|��?�=ʌ�=O>nr>�m�:+A=���=�f���&��[�=�==�+p>�����<@=��d>��*>�<\=� E>%c>)�Q>�x�<���'{���Մ=d�*�˝5>/�w�>kWy>5!$���=�w���(#�V8ü�d#��|>}��U9�<��0=k����j%=���=rؽ�o+>��j��=��=-�1>7}C��?#<��ϼ,�=q=/����=׍C>�lѼ���=�o->Lh���C>|>:\���l����<������M=Z�=e��<�J�>q�����=���=A�����g���ⰽ�<���ս)ڽM���>�><�(r�� �=+��ݨt�B\�����J���p��[�=��R�P3.�
�>�>ү��p��=l퓼��=��O>�x��2���|]={k=l��<�͋=�T�@�S�sW����+=-��M�>��C�֭z=3#�=I��)�>c��漢����j����f=��$�"�x�L�4<��b>�}�=��]�>tO���2>`�=���m�&=x�>��߼^0j=�<��SV�="��=��=�Q�<�[��r�=���==�=S®;(�$>�s��4��%(�!�a=	M>���=���=MR&>D�U�=��S��>K���V[,�!���8�<��=�������=A��>���e��=*R�=r�=�x�<�bP<;I>@�<dT�=%��h�T����=��>̨�= v�X<+��Һ=/(�,���2 �����;�#�=��Q>�p�=��1=>�O��+��֭�mQҽ�1�=�'��so���ֻ�>�=p;����1@	�Ϯ�fP`=Q�Ƚ���< �����=q�k=� >C���^>�o">K+ƽFk�=��<���"e=��b�㨌�1�="C�lK��U!=��=��><���)0<�C�P̽<�_Ƽ8��
������n��;��>��B��
�=��D�C��pG�=���>B@>�����=�= �X�1�;=�i�<X����k��/>Y�<n�I�O�=�=��<:�p>@J��'S�<q�μ�%
��M�<�X�����>�~��ƽJ}L=�ȭ����ms��]��=��	>��������5���0�=��ͽX���EW8>+Z�$��=���!tw�������y>�X*>ʖ?=+����-=P�v=U�=���>.�>j�=�ջM�=)N�,�>ʔ���N>j�ý�����>��2�h7� s�P5c>��=g��8o�>1�����<��=>!�>  �>��=�%>N>���z�<�JS��V<a�!��x5����=��D=��=�D>C�&=��@���>�KP�D��?>�k�<`�u>{�H=?�ּ��=��C���9���=y����)k>���ׁ�<R�=��>=�� ��1JZ�A٭=n1���
e:��>�.S>t�=�_���=�����=(�=�P>�y=E�9=m*=�����f�w����օ=��w=�N=X�μ%[>)�>�U��ݚ��j�a>+ӳ��=4`V�ۊ	�S�w��^�< �)�5�m�O�Z�U>(K�=����|=^���ӿ$��FG�s��3ъ<B�6��x켂7��`=6=?!>�Ù=��=G���g��j>A�=>c�=B\���h�MǼ�O=;�'�	"��>��L=7r�=�'����W֔<�������рh<	{޽��=O����G��h�]=���=}����Q=��{��i>
�>����}�N>Y�����=�m���&�< ��=�.<�H:�nu+�m��~���3�;.��=�����-P�Z>�l>�̎��0����Q=T形����$>�9�� �T>��8=}��k �=�%�1>ڮ[>�U�=R����ʼ޴�=�,>�T���=�c<�(#�F�
����=U��RQ�>����kâ=�O��1��{�e>si��6c>{�ν�o��>�\�=�p��{�>�)����<(|a>������=[K�f�x��v>�N=�,9=�]R�5΀=��<=�#&>��ļ*���.���"�>0s��p>5>�6�U�k��!�<Α>��.>{rH���>|���}U�����ms=��6�w;.�C>2��=k=��p>����t�����ͶR<k&>2�½'��AX�<�ظ�$7>����n=-kc�5B#=�I>ڰD=�0����=��>}Y1�g'�zK�g������k
�_�J>mh<<��<�S.�����=�w�uR������Z�������y�u����蝽cB��F��DS>٭i�r��$��JG��� ��M��D�����L ��f���*��>�&;���0>>�:>�X%>!�>cV�=+Y����09<�<���6��S�==7>V�>g�:��r������n;2a�=�=��>�K�=�e=��)}���=��<�^M���)/�P��=rϸ=֞{�Bi�����=��V>Z�*�����p=q����$����=��<t��fnP<I\�����s ��{>��ͽ�5>շ�-�����Q}7>wK�r�Ƚ�AA�C�<�B�![5��2>:�K>��>��z���>ԥ�!�=,��=w�<�Q��qyP��RW=]�<���B;=�GQ�ՙK=���=�����3�=�j�<��=����"�_"��pW�=��x>��=���=͊��y\�-��.�����>����&��������=��X6���^�=9��=�ŏ��l>�->���T.Ľ��;�l��1/[�x*��j�=�i�ZT�;��<���=�l�Z\:=|�2>E�:>K��=d�2��E{=ݺ�=��N�Pj��8ɽrT��a��Sq��F?�-�q=��>�>-��=�q}<G=m>�L2��ҽZ�>2�콬�>>Z7�=�D=��k����=q�x�J����3�<��=-\˽�{�=�/�="T��E>e�=�/d>-�>`�>%�@�Qf�=ӇP�Z�{=�����;�9>X����*��#]=�Ƀ=�V�[ ���J<>%>ÇF�:�:gg��,dd�k��''y;�|���b�vQC=�%����d��ނ=�NF:��@>r|�_CC��Nv=/܅�X���cN�=�x�г���rp��t�;Q��;՟?���(>8���j-��C>�U>�������=!�=m��\�����s-3��vW�}��<&'̽�;~���7���I=B��>�n�<e�K>��
����j��>��?��C�=�nm<0�Ž�U)�U��-s�#�=FT>N�_��[꽩��>��=��>� >xn#:�T[=������<��_<� V=�7�<�I�5/>:^�:mD=�k7>&D�H�!=%��<��߽�G">���=�����V�U�t����îN�d�D��yt>0��=��>Cg>��o���6���>���<j:�<��#>�����=���ʼ��=�y�>���|�"�t�>��;���ƽ~�������=ogd=$8���+>≠>y��=���=��Z<Y�>�R>�^ý�5q�ԊսR!�=J���]�=��X���=��<C��2�=7R��x|�=��-�1/0�g�1���`�˘�=/�8<��J>j�>򹁺��x���=F'�Fxüz5�=;��W�6=�2�f#�ZQ>���=�l7=��Y��$=�{Ƚ�R>Rt=�=op=
��=���<��;��彣w?���p>�r���	�Xz�=���<��-=�=�</g>��"��f=c���;�=��=��=���w+�;Gc�<�{E>F�>9�=���Da�ҹ��P��s���>��=������<X��� ���>wZ��q�_>wh���B>�>���+=NK>3C��/N�YqV���o�=,���	= ��ʽ����/�<��3=�꽼g=ذ@���'=P�3���@=�k�fPX=���=�$<�v��R?;C�V>`�Ľ�r>A��=`7�|��<M4���Z>�-�=h��>��c�=�!�=��x���<=���������=C�`=�Li>{"�p�_=�9�=��<d��=J�=�ɭ�/e:>�ma��CW�?ު�K���=�>W">$�<
O
Variable_6/readIdentity
Variable_6*
_class
loc:@Variable_6*
T0
�

Variable_7Const*
dtype0*e
value\BZ"P��ܺh���p���e���'�J*g�$�Z�-'���0;y}���-�:5	���� <����Ղ�9���9��kJ;O�E�����
O
Variable_7/readIdentity
Variable_7*
_class
loc:@Variable_7*
T0
�
Conv2D_3Conv2DRelu_2Variable_6/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
T0*
paddingSAME
0
add_3AddConv2D_3Variable_7/read*
T0
�
bn_3/VariableConst*
dtype0*e
value\BZ"PI�>;����+{S=��Z=چὗ��9q�~9URC��J\�k��$�7��נ�&�<�E��͹h<	��;bF�� \'�H�H�
X
bn_3/Variable/readIdentitybn_3/Variable* 
_class
loc:@bn_3/Variable*
T0
�
bn_3/Variable_1Const*
dtype0*e
value\BZ"P���?���?�|s?SX}?͊?"_z?���?���?��w?�j�?Su{?:W{?|��? �v?�}?H��?��x?�{{?��s?�/|?
^
bn_3/Variable_1/readIdentitybn_3/Variable_1*"
_class
loc:@bn_3/Variable_1*
T0
\
#bn_3/moments/Mean/reduction_indicesConst*
dtype0*!
valueB"          
k
bn_3/moments/MeanMeanadd_3#bn_3/moments/Mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
E
bn_3/moments/StopGradientStopGradientbn_3/moments/Mean*
T0
B
bn_3/moments/SubSubadd_3bn_3/moments/StopGradient*
T0
d
+bn_3/moments/shifted_mean/reduction_indicesConst*
dtype0*!
valueB"          
�
bn_3/moments/shifted_meanMeanbn_3/moments/Sub+bn_3/moments/shifted_mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
^
bn_3/moments/SquaredDifferenceSquaredDifferenceadd_3bn_3/moments/StopGradient*
T0
^
%bn_3/moments/Mean_1/reduction_indicesConst*
dtype0*!
valueB"          
�
bn_3/moments/Mean_1Meanbn_3/moments/SquaredDifference%bn_3/moments/Mean_1/reduction_indices*
	keep_dims(*
T0*

Tidx0
A
bn_3/moments/SquareSquarebn_3/moments/shifted_mean*
T0
O
bn_3/moments/varianceSubbn_3/moments/Mean_1bn_3/moments/Square*
T0
W
bn_3/moments/meanAddbn_3/moments/shifted_meanbn_3/moments/StopGradient*
T0
T
bn_3/moments/SqueezeSqueezebn_3/moments/mean*
squeeze_dims
 *
T0
Z
bn_3/moments/Squeeze_1Squeezebn_3/moments/variance*
squeeze_dims
 *
T0
=
bn_3/cond/SwitchSwitchphase_trainphase_train*
T0

;
bn_3/cond/switch_tIdentitybn_3/cond/Switch:1*
T0

3
bn_3/cond/pred_idIdentityphase_train*
T0

�
0bn/bn_3/moments/Squeeze/ExponentialMovingAverageConst*
dtype0*e
value\BZ"P��-X?fʨ>�T���C>cJ"�v !�T3�>T�H>��z��z���O>`�D��$�>Dǟ�T#�=�� ���<>�"���Ľ
�
5bn/bn_3/moments/Squeeze/ExponentialMovingAverage/readIdentity0bn/bn_3/moments/Squeeze/ExponentialMovingAverage*C
_class9
75loc:@bn/bn_3/moments/Squeeze/ExponentialMovingAverage*
T0
�
2bn/bn_3/moments/Squeeze_1/ExponentialMovingAverageConst*
dtype0*e
value\BZ"P��O?��?�?��S?�a�>ht? �	?B?��>��T?Ŷ>��>��5?[�>ZC?���>�j)?o�>��>шJ?
�
7bn/bn_3/moments/Squeeze_1/ExponentialMovingAverage/readIdentity2bn/bn_3/moments/Squeeze_1/ExponentialMovingAverage*E
_class;
97loc:@bn/bn_3/moments/Squeeze_1/ExponentialMovingAverage*
T0
j
(bn_3/cond/ExponentialMovingAverage/decayConst^bn_3/cond/switch_t*
dtype0*
valueB
 *   ?
�
8bn_3/cond/ExponentialMovingAverage/AssignMovingAvg/sub/xConst^bn_3/cond/switch_t*C
_class9
75loc:@bn/bn_3/moments/Squeeze/ExponentialMovingAverage*
dtype0*
valueB
 *  �?
�
6bn_3/cond/ExponentialMovingAverage/AssignMovingAvg/subSub8bn_3/cond/ExponentialMovingAverage/AssignMovingAvg/sub/x(bn_3/cond/ExponentialMovingAverage/decay*C
_class9
75loc:@bn/bn_3/moments/Squeeze/ExponentialMovingAverage*
T0
�
?bn_3/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/SwitchSwitch5bn/bn_3/moments/Squeeze/ExponentialMovingAverage/readbn_3/cond/pred_id*C
_class9
75loc:@bn/bn_3/moments/Squeeze/ExponentialMovingAverage*
T0
�
Abn_3/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch_1Switchbn_3/moments/Squeezebn_3/cond/pred_id*'
_class
loc:@bn_3/moments/Squeeze*
T0
�
8bn_3/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1SubAbn_3/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch:1Cbn_3/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch_1:1*C
_class9
75loc:@bn/bn_3/moments/Squeeze/ExponentialMovingAverage*
T0
�
6bn_3/cond/ExponentialMovingAverage/AssignMovingAvg/mulMul8bn_3/cond/ExponentialMovingAverage/AssignMovingAvg/sub_16bn_3/cond/ExponentialMovingAverage/AssignMovingAvg/sub*C
_class9
75loc:@bn/bn_3/moments/Squeeze/ExponentialMovingAverage*
T0
�
9bn_3/cond/ExponentialMovingAverage/AssignMovingAvg/SwitchSwitch0bn/bn_3/moments/Squeeze/ExponentialMovingAveragebn_3/cond/pred_id*C
_class9
75loc:@bn/bn_3/moments/Squeeze/ExponentialMovingAverage*
T0
�
2bn_3/cond/ExponentialMovingAverage/AssignMovingAvgSub;bn_3/cond/ExponentialMovingAverage/AssignMovingAvg/Switch:16bn_3/cond/ExponentialMovingAverage/AssignMovingAvg/mul*C
_class9
75loc:@bn/bn_3/moments/Squeeze/ExponentialMovingAverage*
T0
�
:bn_3/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub/xConst^bn_3/cond/switch_t*E
_class;
97loc:@bn/bn_3/moments/Squeeze_1/ExponentialMovingAverage*
dtype0*
valueB
 *  �?
�
8bn_3/cond/ExponentialMovingAverage/AssignMovingAvg_1/subSub:bn_3/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub/x(bn_3/cond/ExponentialMovingAverage/decay*E
_class;
97loc:@bn/bn_3/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
Abn_3/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/SwitchSwitch7bn/bn_3/moments/Squeeze_1/ExponentialMovingAverage/readbn_3/cond/pred_id*E
_class;
97loc:@bn/bn_3/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
Cbn_3/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch_1Switchbn_3/moments/Squeeze_1bn_3/cond/pred_id*)
_class
loc:@bn_3/moments/Squeeze_1*
T0
�
:bn_3/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1SubCbn_3/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch:1Ebn_3/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch_1:1*E
_class;
97loc:@bn/bn_3/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
8bn_3/cond/ExponentialMovingAverage/AssignMovingAvg_1/mulMul:bn_3/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_18bn_3/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub*E
_class;
97loc:@bn/bn_3/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
;bn_3/cond/ExponentialMovingAverage/AssignMovingAvg_1/SwitchSwitch2bn/bn_3/moments/Squeeze_1/ExponentialMovingAveragebn_3/cond/pred_id*E
_class;
97loc:@bn/bn_3/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
4bn_3/cond/ExponentialMovingAverage/AssignMovingAvg_1Sub=bn_3/cond/ExponentialMovingAverage/AssignMovingAvg_1/Switch:18bn_3/cond/ExponentialMovingAverage/AssignMovingAvg_1/mul*E
_class;
97loc:@bn/bn_3/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
"bn_3/cond/ExponentialMovingAverageNoOp3^bn_3/cond/ExponentialMovingAverage/AssignMovingAvg5^bn_3/cond/ExponentialMovingAverage/AssignMovingAvg_1^bn_3/cond/switch_t
�
bn_3/cond/IdentityIdentityCbn_3/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch_1:1#^bn_3/cond/ExponentialMovingAverage*
T0
�
bn_3/cond/Identity_1IdentityEbn_3/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch_1:1#^bn_3/cond/ExponentialMovingAverage*
T0
�
bn_3/cond/Switch_1Switch5bn/bn_3/moments/Squeeze/ExponentialMovingAverage/readbn_3/cond/pred_id*C
_class9
75loc:@bn/bn_3/moments/Squeeze/ExponentialMovingAverage*
T0
�
bn_3/cond/Switch_2Switch7bn/bn_3/moments/Squeeze_1/ExponentialMovingAverage/readbn_3/cond/pred_id*E
_class;
97loc:@bn/bn_3/moments/Squeeze_1/ExponentialMovingAverage*
T0
R
bn_3/cond/MergeMergebn_3/cond/Switch_1bn_3/cond/Identity*
T0*
N
V
bn_3/cond/Merge_1Mergebn_3/cond/Switch_2bn_3/cond/Identity_1*
T0*
N
A
bn_3/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
K
bn_3/batchnorm/addAddbn_3/cond/Merge_1bn_3/batchnorm/add/y*
T0
:
bn_3/batchnorm/RsqrtRsqrtbn_3/batchnorm/add*
T0
N
bn_3/batchnorm/mulMulbn_3/batchnorm/Rsqrtbn_3/Variable_1/read*
T0
?
bn_3/batchnorm/mul_1Muladd_3bn_3/batchnorm/mul*
T0
I
bn_3/batchnorm/mul_2Mulbn_3/cond/Mergebn_3/batchnorm/mul*
T0
L
bn_3/batchnorm/subSubbn_3/Variable/readbn_3/batchnorm/mul_2*
T0
N
bn_3/batchnorm/add_1Addbn_3/batchnorm/mul_1bn_3/batchnorm/sub*
T0
-
Relu_3Relubn_3/batchnorm/add_1*
T0
�q

Variable_8Const*
dtype0*�p
value�pB�p"�p�¥=qn>�V]��6>,��3cj�܌\���=fQ�<�w=[���K=Q��<�����,>TPc=N��n�=&��=�R�M�+� ����^��u ��4���6������L=~�?=�d}�验����<5m'�w�7������a�;	F߽� 8��ܽ�J�<���=U.=Ю�=��1�=Lݼ�O$���Z��b�<Ep� �%<|A<\�h=�L�=8��=��O<vO�=��
=P��=�k�=��	�<c��V�=wG=��>H=����=M�@��*�=�n7��S+>􋾼El\=;�=^�-�,Ir<��T={9�=�A�;�$=���=-b>�u-�=��J��=н!ۤ��`F�[B�6(�\>畴�4�*>lƛ=\��v�=
��5f^=JY�=b�;�af7=� W>��2=]���r�>��=5ؤ<�a&�~{�<����=�)=�?9>��=m�^�x���~=�U>��<����k��=b3&�)��U���%�<��K�9>Eѯ��ۘ�<s�=��|=^���~L��ܽ�>��P�~> st=���<[�<s���t����=L�=�>=���G<:o�=�6�;m�T���=?ڢ=f���/
����I
 �j;�Z;=�J�<J|۽%S�=�_�=BB��=W=0�a�d�J<�#��V�=�t�=;ڇ��Ű��6>%�O>����#>:��<�yw��h��L�v��� �N�Խ��:�
!����Aļ�Y>ʻ>�ü�k��+=�W���=�7<�^��w N=��ۼO{�=��ȼ7�"��\�<7���o<�=@���ZX(�'�༎&�=��½����.�<<�<dT�=X�ӽlȥ=���=_�e=i�<��~����HĽ�c6�P�9>I��=uo�Up�󀬽�`>_�<Q�=pu��Y/�=�?>S�=��=2�>	���'>��3=�_C=P�%<C��=�T>FP��#�=LC�=vdw�����į���lq>[V������0����O��c$=�̑����<��佋0=� ��G����A=0q��a�<���.ƅ=�_�;o�?=�_!;Fc����L�H��Zh<�2�=��+=����Q�㻴��cyؼ��]�X��z8=�����*`=�[��H���� �O�սN7/�#GQ<(�ۼpG@�N����j;=z��=���<Nf����2�V��<�ԅ��j!<t]=�N!>|�}=������<=ڦ��Խ�N=��%��%�=F񦽚8��}�:�2��u�>���=�E>������;[�9=��=��9�ޝ5=����f$D>fuD�X+G=hF�=��=>!`=A�>C7���=�c@�+�Oy��B���=�X�=��k�~"�<���<��b� -���X%��L��$0�;��>b@<q��=__=��=�&>\[=���=6g>B�9��4�=c�ؽ� �=�4�����	=1*>.��=�Q#���.>$_<��׽#y=�� >
��= J<��ۑp�`k�=`��=�>��DkD� �ýSɾ�_L��1��.Z�=�T���P1�c�轌׼���݂�J���a�Ge��7�(�<	�C>G%����=��=�C�=��<>�#��ܛ�Q��I̽-}�=!�=���<���"���V�>��=P
�=V
5<��=0�����;k�p<�#�=�|�oS�;	�+��:�5c�8s��"��%>���<�T۽J9�<�O�=/��=�k�=��=$�=$��~�h=����B����<��G>�9u:��s<����� �;��Ἁ6����޽x	����=J>������Yz=z/�;T�<��<8`>G�6<���=j������=#�m=f�?=6��%��=�ؼ��2�|E�=拤=�d���j'�����]/�=fD3��(�=�
�=v��<�L��s=�u����<h�@�V*o=�=P�NW>��佢�J>�),>�Rݽ�R
��f� �w=A����	߽��=ٲ�=M>%��=�L:=�o���4
��E��5����=�h>�Li�	���å#�p[�8{��Y���%	>M�r����;g�=4���7�=���5ª=U
�=�2�=3o�<&y�����=���=X��<�^�+��<]L� ��Z;>�.żGw½)%�<�s�<[�(=�S�;/DE>eg�<Bo�l�=�.�q�͔�C���&#���0�(�<���Թ=s�M�������P_��?)>����>~��<$�#=��=�+B�}퓽��-��DO=�:A��֞=�R�=�)v�%d��F���=}gǽ@ߑ�ۨ�<\�����>v������+��O�Q�a=��'�^P7�<������\�k<�e�Y>>X6�n^�=��=�1	��V� �̽�E��"��=dP���D��|}��!�2�5�����z ���=p��<Gb2���ڽ�䘽3�$l�=�o|=ۀ�=bgٽx���WS������6콲<��4�{���r�(>����]�-D�=J��s��=���=7�޽���+����&�Aa�=�����P�ވ�=�)۽27�5��T휽R��=-�Z����W.=;��K��<�u�� =+�Jh�<�p��R��=e�4����=b+�=�ֻ�>s�U�>{��<�$���=�����o�=����K=V`s��Ӭ���Ӽض=�4�=h$M>�/>�C�=}�ZZ�u���6����=�g'�;c >Ʉ�]焽F왽�n#=W-�=&v.=�0�=`,>�hj��<C��=	<��=����<��;kҳ=_��=S=�񦽀�>L�ĻT#h<���g>r���x�;��]�c.g<�j=��|=;��=��<%��Wd(�^�p����=u
����$μw �<��=� >���R����;���;<��<�Y=6nм��k=
G��/�:��=�z�=�6˽�O<	���gT��%ݽ���{6��ˁ<�=]��4^�(h(>��޽��{�3��u�����7@|=?�P�[��~�=讓;N�D�3㼼�sӽ�F�=xڽ^�=P����*>r�Խ���:�z�=��%=ç�J
^���<�ڼV�==0�0��E<Ej���=1��_!�=�=J�a�ZHI����Y�q�?����f7ݽL���}��9(;9LN�~U̽s��=����fǽH)�<B�=k\~=� i�B<p���t�;�ȼC��� �G=:*=�a^�^Mļ�a�<T���l!B=V�Z={��;�����f=2>>)��9>_���o6����L��}����V��k���=:�
>./C<t0)���=q0˽(�˽�8��W�O�r8f�����QX����U-�=71��ꋼ=?r2<�]�=�_�+sѽ>�Q>�>X��G!>m�s������M �;=�=9Fǽ��=i.5���T=
��l��=�	�4>�Ѣ;*W>��=I-$>��<nKʽ7cV���T:����ߠ>>��b�����=��2>�=$�V6�������9���'=i'�=���=f�>b�̽���D�v���r���8���=+�/������|N~�C�<���<��= 58>e�4=�$>g��z������(;)�A�=���;��h���S���
���<�.>:�=Sz<�/ܽ6 ����OR� �}<_��eا=�>=S}k��I{�Ӻ*�Z2>��;2i�a��<��_=)P�=�>��I�̽dM;=i��k���Ù=G�s<� ��T�=��o>�G�y�
>���%=�f���D"=�5K=EX�=u�=�ų=ɱ������+��,D�=ʀ��{�:��h����=0��<���I�=T�>���;�q"��s<|�>�G'=T�Ž���=���=�^�<��Һ�)���b�㼰_ں���=�ֽ���=��[=��%<��G=xQ'�҅ɽ%�K�]������Z��=D�.�PL'�F�"}��;��O6ǼBq=yT��Mi=�{�_�2>�K�jc@=�">����>ɓ�ኁ=�>�/>�hw�W	��rXT=���2�h��0}���<��ҽS� =4g�<��<�?��:�=j����F�� �]#��=6�=�X�SbP�)�2>�cH�# ^8�>E���b=p�m=z���y =�;�=h�Y�e,I<8-�=�o�PN���l=�>���=�^�:�P���>���>�u���=�Q���=d� >��q;f�5>&��b�,�y�x�&��ϫ/�½�=�|�=�=>ԯ�<���>=�w���>Y�= �9�^3�Bn���=�7�ޤ#��\��HW��: =����=J~a���<(�Z=u�Խ��>��C����<_��.�ּ��ƈG<
<>=vr�=���=I�=;��Ȏ>'.�a9���9�t?��$1<9_�~=�T�=? �=2���m�5=���=	�-���*>��><��=��w=��V>7L,��;%�6��=ܦ�=6T7>��=�� �Q��=Ԭ>�GN;=�Ƚ<���'�:��=�	_="/ջ��*�5��=�'�-��=����V$=TIO�S���K���m�ͪ�=cLI�u�n�?7==9����vh�qdq�攔=��<�'>$��=��=�b�=K�M���=rwm=�@k�k �=>�H>r�<�Ή�|Cc�ΰнʀϼ�gt�c����ý?�0�����e�=n���+k=��t=��=`n�;�i=f����y3>ߦ��C]����1�Լ�Ğ��xg��s�M��>���<�))>�i!��Z�h=�0}=��S�W�G��ή;�+ʼK��<O��<h09�	>%/��aZ���R�=�4F����L��;�^=�{='�=C=`c)�ގ�=�`n��< �= ����k���-�|�0�=�=?��g+�ҝ�=�H���v��hH���4���3�v�o,��w˽\�=��<YVʽ��.#���}ý٩��?���=����,��8�=��=���=N�n X�^��=�Y<�k�� �Fg=g�=�3�<&=��U����Q7h=�Ss=%�p=��έ��� �J�S�x��=�J>��$��,�=��R=#�@=R�<�U쟽/�=�����M��ܕ�=*��=��n=�r<�a���O������6�_=J\@>($>���=9��;�58��)>N���CpQ=�z�=ʵZ�&�5<��=�XX=-�=Cp(>�n���f���q>��e<~M����a{�9�>3V�=�X=����xh	>�-ٽ�V˼�[=�꽼C�=>K;�������"=�,Ż c�<A-R�Xb=�8�=[�����'>5鼺 �X��=)��=�n�<�?�<-�������.<"=C��<{�������<�+�=<W=��>�ݖ��
�<r8o=n	������B��������=^Z�=&��$�J�>n�	����+>�4�c�����ü�O[��ۭ�<�(>�<��4��ݑ����=�g>��=�{�=�.�=C�/�Cx���GQ�6�<t������.�T�񽹃u=#�ٽ��"=S�Q����<�\��l2��-�=n�K�R��=�$	��<���S�<ҏ��`���nȯ=M���c(��<�=�\�RG��؄</F4>�l=_Ƃ� �f=��j=�mf�W�(���=2�=]�8<���<�᯽�<=��>C�߽��='����HҼ<�=Z�$�I��=���<�����X=r�=�u���4>�P��E�=��=������=��Y��ˠ�Z�5��:!��~����<�$�=�F>kzr=���O��=&P=r�}����=��">]v�����۞m��(�=dFB�"�z=#�=���=7�ؽXi˽f��=V���=��R���i/9��Z$�Z��=93T<W)��-�̖M�<�ἔO��_8;�2���i:Fӳ��u�<ü��s��Vq3�'�8��Y�or6�[��śż��&�.w�t����2}�n�!Iz�?�������=�0�<Z���Y�=%p�=m���iF=Gx�<��<x����]�=�z$��֦�G�=�ʦ=�\����<�l����;��~Y"��2�=)�>�'���N=0�=�Az�Bx������+m��	!�}���OZ�c3��XG���2�g�>Ck,��m�<#�(�f�߽@�C��޽Nν�P{=[�W>��<~~�=�D?�~�����]�y������zP�=g4<�w!;�0�<1�=[F��{N5��rY����<�Da�v�
�vi>�$Ͻ�0���uѻd��<�ƽ��ؼ-$6����;F��UJ[�f�b���L���?=�w>�
6��j�:�>�����p��8��q���>d�J���(=h亽Y[�����=�U:���<̚=6r+=T(	��q\������-�G�;��νSXw�.%7>��3��t̽�۽���=��<��0>������=,��=�'<Q��==��m����"����=����f\=3@=ͽ�9��<���Z������;�uy=��Z��c.<>�G=A=A�E��_>��o=4�6=�(��q'= �*��')�7l=�o����=�白,�Խ����;%V���G<��[=ȀI�n/b<ʀA='a`=�ˌ�S䲽�:�7���~���-�T�>��=j�"�5/�=�$�r0:�g:���ս0���KK-=n�����=3g�;aUQ=|7!��i����;y����}�m�=,%`>��!U#=VX=>�0�������l�:��|�ܼ�ٴ����=Z��� Z<��n��|�R�<��ü�x$��)�=��<=�J��<09��߼mV���	�K�:�IX<���<¼�[T�=a`>�c=�|�;|�=���
�=�i���>����M>�(���e�=1I0��u�=���=� 6�JH�c��=�~�=�"�.��:�g@�0\��*���:�=�u�N�>�����q��A���p= �=���ȭ]=�"9=��=7�����=x�[���}A�=�Ľ	ވ�Q)����<�ɽ�B;�x
�d�e�ǽ�1��Ny�o}��j��sɆ=���=M-`��ࡼ��Y�<Z��d�>��KS/��
�����;�=��<�e�=�)n��s�Ɯ���!H��<Ꮔ=��J��md">�ǝ=�~�=�h}=&��6=�>������������=`G��&=M썽���<�4O>�>���=��>��R>�I��0�	=����=8�O��C>*���k�=���<�F>�V�;��=�}#>�>'WN����ED<��X=s�w�^�<.�/>��¼�sü���=;½�T.>�Dy=%To={3�=���=����%�=���J���^�-�J?��(G=Q>�=�F>2�G>i�ｘ'νa_B��m=���@T>..=��;2/�}�����=�N�v���%���`�<�����o<���<��2>�1�=�J�=����mW,<���^��/��=AQ?=%�4�����o��=����X-�=d�<m�����'1˼��'>�I+=ݣ��74;��=}�ݽ��y�8#�=t�'=}�ս`ѧ=}j<��f<�V���[�@�y=ns�=#0�u�G����<�z=�H&��)t��+��68=;f=>��#>��4>�|_���G�ݻ]�j}=:�=W����h۽�~+���*�,�d;�r�� >3b>F7�=���8<�=��3�@0���*��	 ��L�=�h=�� >��)�x�	>+4_���D�59�
�<">b�) <EG>&�	���k�kZ�=nő=�� ��vC�%�=YHX�vrh�W�)=��R;�Ţ�� ܻ2��:-"�=�'�=���<GӸ=k��=�GZ���1���>=O
9;���=��������U=�^˼" =��=F?==}��X��:�ȻZ�Q�t�ͽk�-�'�]��_�:_V�<񽇼BR�ؗw==�ܽ 3��J˻��,O=V�,��A��߼�Y�B�r���=��=�l�=���;_Ч=1;ʼ�`�=n����Q����>�a>���=��ȼ�{&��rO>sՏ=�4��{�=��=��[����������[=�����="v�K�>1��oY�=��)�;�,�=(�d��a|ɽ��޽�n����4=�d��d��tt<IO�=UH_�[���q@>r�?��G�=��>c�m����H�۽`v���k�<����K=�瀽���;w��v8�=��d<�7��{ʽ��Zڥ����&i+>�S��J��?���m�=�Y�=�g<��üp�ϼ�o
�V	�=Kj>׼���j=j�罫ӏ<�O&�>fH�v�+=@c=+E�cwN=;֏<�>��G�Ll��IAd=��8���+�c�=�޼!��X=Xx����^=Ͽg:��N���S==��mi�=��2>#ʼح��yѽ�� >å�;�������ׂ��������#�X�bao=���5
C����5�J>L�n<�w����;H[�=$�N�5��<�ӣ=�fE=D�5=�<׽H���>[-���½��= J��0��<�5>�I>�w��ޜ�o>�,>�D�=�L��$� =팽M�1�g ��r��5���p˽�5<q���5>"l�A����ӽ]�`=�u�$F��₽&R�<ZN�<a0�<�$=�*h;�?������=���<��=�p���尻���=#�p�����}UD������>ø�=y$�5'4�� �;�s��3�=q���疽�e>U�m�����[�=�䬽́���K=t��ȵ,=�2%��c�=���ҽ/=��}�`��=��ʽ}���k��=Ng���*ɼk��=~Q�=�g%�������;�*	���J�>��=�#�� �<�+��;փ=�#<�1�=�m�k�Q<�'J�M7j=m� =�b��h@�<f$���;��qϽ� �="]D=%D������Փ���ܽ��H=���=M�Z�ǽ���=���<>���
�����=þ=��;u$�=��;�5�<j�=�D+>�H�8	$>�5yt>X�8>̺>j���簽C�K���Y�=���=��:��̯�"��#=���=��MVh=���=J�9��0�;Æ<g^��2Z�A��=A�=R�=�==՚�jiԽ��=�3����=��==b�=�0>k�=��=(�t���=�Z����o�C`ҼR;���rC��ۣ<U��q�<�.���Y=bR�\_��>��:�#xN�\7<�(E>���=@a�Uh><|�=�J��`����/��c����=�䵽���=���X��=#w�<�]>���⽆��<�i���(�n�>=%!�Ӯ��9�J4�1��A 1>w1c�^��<<�h�sJb��y�=�c;�?�\�7=���=vc�<į�<��}��/�E�^=�i9��x;=�n</=i����;�Ƚ��:꽙��L�>1�=�H���>�#�����s�R�=�S�(|�8��<�å�_=%N�o_���=!�Z呻��ؼ3_Լ�� ="x�^š�OD�%Q�<U�	=)�uzX��%3�{#�=�y�Z�==n���ц�=��˽[3���.�u/9���/��/�i�z�P6�1�b=S� ��ے=�h�h�Q> g�=��(;Ja>٩>���'>s��<|�<'��l�=�!�v�Ͻ�r�=k�&�����A�&�P�<F	=�=w.�=���e�r=����%Y��ol��)�=��=c_*�F
>�& =� ���R)�2��<N5�=@�����|�OxO=��9>�q����=���5|����=�e=x��z��6	��>ci۽�1�=��L=��$��
�=
)�j�=�v����;�����^�;>5��<�{>��O�7�9�|'�=T��=>���GfT���ٽOs[>C�����o5D>��D�]�����I>���<�l�@�=����>Y����q=8�z=jQ�U̽s��<��=��=�|<d/3�!���[��=�i�=`�G���<Ѭ)=�&��T=2�D�������.��0��=��u�Q_B=�=j��;ᑣ=�!㽲��;��F>�|��r5��9>ڝg�/dI�a\>C�.z�<1�
����=w��������"����	��&F���>>���Zh��p��X�L<�H=:����B��d��Q�<�KN����NZ��g�=x�8;����/>ω7���9>:�>�fw��4;e��<��:�/>А뽼:�=��ٽ
�d�<;=h�5�8-=��4;���n�	�gˬ=	��������=��$=����ǅ�������'>�@����Q='��=��H�ġ<��0�=�j��˥�Wi���6�<��:�ώ���%�J�E=$�1<)%_>�H��=q�w��!<m�<���
Lֽ	a=m��=�>�_��=d9��>�=.�p�2�,����z=���=.ׁ�DB�=G�	����=��6���뽠+,����<2�3>���;�S��.��<�IѼ��Y=1���������=l�����H��pr=���=NQ><�=�(�=zʽV�H>�/8"���������ی��s��=�;����(��M��DC<)t,>o9-=̝�;�-�=����%<_<�n�ԏ-��Ϳ��r��u�ƽ��=�o9a���o� �JQ��x}�y�E=��������f�=-[i=	���
ٽ0���^=T��t��Pl�=`�:E)��ѽe�н�D���a���>��la=�f%>�6���G=�X< 5Q>�l�=��#>�+�>O���k�=z�X�#)�Pk�=���mC׼�P��j�C0�����x�=7��rE��!��<kX�8}�=���=��p��1��>'� ?����ZW�=�]������*�c5�=܁]�YX>�<���=�P�U;��/Y�8ü������M����<_�y�]=�h�էt��g�<�;�N�={R�<�R:=8<�SL*>k�=��=�d=���=��+<^蓽(�;�з�Ë��A�k�xjԽbw۽�m�='�=�4]=�x(<&���)�2=�����	>%vk=��qs�<70�=#3=ڻ�=�,�D����<���=R>'<8�X��@� >�{����� �@=��5��>�����o�<Q�6�T=���m
޽��$>�s�=Kߘ<�I�=y ��Wٽ��>+$��j��=�+�2C����o�����<X�=o��	%��Oݽ��!>K�=�o�<��=
f>t�l��������_��,�+/�=��<aؽ��>#�='���%:s���=�u�=l �=�	��m >H���Ar#�1�A����s#��L��;�5�E>GEh��+Խ��| =�1.>  �
Z�E��Y:ӽ+{�:e��?2��Zt%>2��${��f`��5i=W'=�㧽�U����<*��</�= ��;�����=.��=s���H>\= ��8	���=������=���H��=��<b���"=��u=���+n�<�c�;�^�="�<�:�=�8�<�=vu�=�SʼN���O��>���=���=�ǽ��=�>�@f
�>F��μ��<=�H�;�.���=�=�=蔽1���.(g>�!�=v(�=��%>�V�;6�$=J�3���o|>'Ƚ��j=��ý��%�c���y�=�N>�d�8>D>tp=}j�=L�'>*��<�ز=2!1>���A>�R=�$��u�tvb��o���4����a���d��E����=��=�\�<�۽��(����=���x��=����K���;@=+��p����>>�����0=G�-���X��=�l�= ,ν(���N�<�w�����������Ž���CD�6�=��K=n%�<�s\�d&�<�>�=,�<A�=!���d�+����=�K�����=B=�����0�-���IR,=�e�=� �=�Xѽ�������������=�*���\=�j =~->��=T�ͽ��>O�i�q�4>�E��$�	=�ü��>\EH=�|C>�O2=��L�w<�=�>o6d����\�=8��=��=�*=)5N��_�<��l�H[�)SO=<,4�?礽zJ���A�=���<�����Y�n`	<��>Θս0�1�2���4=��/
=J�<����>�	����=����Y$>�������=��=|�����<�#��"�='x�=�{/>�mz����<�T�=���<t�C���(>��)�Yi�=f�]�&�����>P/����[��oeȼ˽�ǽ��4=hSͼ�s�I��=��T��ҽ����&����=v��<G �<O�>X^x�XLq=���=l]�;��ӽ����3�=�gR=���=�vg��@>3]�<"�)������ν�"@��������<ӹ��ئ<&�=55ὓW�<e|����=�|���Z�S-�Hׅ<s;>�$=n8>���;�X�=�����~��l&�R������=�̽�=!Ζ�!��-��:�� �I���_�<����nb�=�Q�����55���C�=򎷽v6�=�T�=lv�<���<]��=��H>�֪=u� =)�����:�� h��7�\�@���	���=��V=j�=Nh-��6�ȶ�<�=�� �ci���꽧���SzV>�֭=Bo=+��=UW�=���=<x�<^1>��;�k�;-Ѓ=�Z�೼�Ί=)�)���T�i�l�;>ۏ�l"�!0��p7����>�N6��H����S=�K��w#= 2>F�=��ݼK�U<�ϊ<r=�9.>�xٻ�H���b�H%F=�\�=�J?= 	���=׉W=�U<�>��<	�O�q��I�=��_=��t>�L����IR�;��=��"��k�T�3�������9>���<eq|��rb��� ��X�=�.<��|=iiI>���߅&�%��<��-<��=�b'��� >�4�<\�!<Q��=~��,s�r���*<��9��%J��F�I����L=#����D>^�&�
Fʽ#<�>�-�V2�=���=���� ~��_��=�'"���U<H	'<�Y���V�=CϚ:�x>5{>ޑ[��m�;��=�i;� V:�$9F;g�����eZ��,j>�������<�.v<�ӄ��F#>��!>��><���=��ؽ�\P����9=T^�=[+>����� ����*l=���x�Ž�/= ̚��o[�aIX�	1=�C>aT@��׫=E��Cͻ=1>M��=Q6��@���:����eI=�u]=�k������^�KC�<���=�/L��A�������=�t�=n�=�+�=��<�.\�������BG���">V��=��C��J>����W�l=�ʽb����M��Y��>�����(��	0�<�2;<��=�v��pC�)�ɽ����p���י=jY��˹�<��i=͸Ͻcb�;O�����<7Y�;A�]<B>��½6H�;����D��gV�ם=}ܼ%q:>s����u�i1=�X���<ZN�	�w=+|I<����F��ϼ�5���z�<��=75����>�N>y��<R���0O=�.�Є�=
ý��ʺ�|>��^߽��<V<�=c�Y�	(<3�=��)� ��=L��������{�<�Ǩ�3����>�9H=&L�׈1��Y<�NA=G
�>����ڝ��� �ƽ���]��XB=��=ke<�~R;H���>&�=�� @=r`�=�=7�P=��ּ�fl>���<@�<s)��_��_�=���:Ye5>�(0�e��<;>Sj�U$����v�]�!>��=l=..�=,�1= /μ��=320��Y=�L���������=,[���3=��ȼ�F�<M4�=��ּR%�<��M�5��=A�X��v�=-�Ҽ�UU��c�=�о;H�g��%>�	�=~�ǻ��6>�D9=+T�=Lʧ��?���=X�,>��]�C�/���>���x=�;���I�i�
,=����~ҽ\+L��p��M�<�v>�v�+!G��|:���5�����=�zj�{U���=�'z=�a�=�v<[$�<ЙH��E:��h=�����->�ؑ:�B�<p+(=�	\�?@���[�����{ý�������҅v�!ɧ�� �<��g����=wJy�C� =)0�=�v
>Np>gMӼa��!��8ʼҩ�=찴=ax>��v�,�Y=��)�꺲=0��<%wz<>dK==��<�Yq=�c �#��=�d�< �J=�0>�������=��<��y�<�����������V5=Yl[>ࣄ��>>�{<���=��A=� ���Q�F��=��W=���8+�<��4>��>
O
Variable_8/readIdentity
Variable_8*
_class
loc:@Variable_8*
T0
�

Variable_9Const*
dtype0*e
value\BZ"P��88�W9R?�:EQ6��X�:`ta�Q�:�jŸA�&�+��8I�L��..�M�:����:�tC:�U;�
A�W�D����:
O
Variable_9/readIdentity
Variable_9*
_class
loc:@Variable_9*
T0
�
Conv2D_4Conv2DRelu_3Variable_8/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
T0*
paddingSAME
0
add_4AddConv2D_4Variable_9/read*
T0
�
bn_4/VariableConst*
dtype0*e
value\BZ"P�D;�D��N6`�d�5<G`5=�
���>;Z���(5�K��׊��q����~�������8J��l�:C��Bղ<?�R�Wݼ
X
bn_4/Variable/readIdentitybn_4/Variable* 
_class
loc:@bn_4/Variable*
T0
�
bn_4/Variable_1Const*
dtype0*e
value\BZ"PRT|?�)d?�d|?��?�{�?	�}?��?�+f?�z�?g7}?Gh?(m?���?i$x?ˍt?�^�?څ~?@t�?��j?��?
^
bn_4/Variable_1/readIdentitybn_4/Variable_1*"
_class
loc:@bn_4/Variable_1*
T0
\
#bn_4/moments/Mean/reduction_indicesConst*
dtype0*!
valueB"          
k
bn_4/moments/MeanMeanadd_4#bn_4/moments/Mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
E
bn_4/moments/StopGradientStopGradientbn_4/moments/Mean*
T0
B
bn_4/moments/SubSubadd_4bn_4/moments/StopGradient*
T0
d
+bn_4/moments/shifted_mean/reduction_indicesConst*
dtype0*!
valueB"          
�
bn_4/moments/shifted_meanMeanbn_4/moments/Sub+bn_4/moments/shifted_mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
^
bn_4/moments/SquaredDifferenceSquaredDifferenceadd_4bn_4/moments/StopGradient*
T0
^
%bn_4/moments/Mean_1/reduction_indicesConst*
dtype0*!
valueB"          
�
bn_4/moments/Mean_1Meanbn_4/moments/SquaredDifference%bn_4/moments/Mean_1/reduction_indices*
	keep_dims(*
T0*

Tidx0
A
bn_4/moments/SquareSquarebn_4/moments/shifted_mean*
T0
O
bn_4/moments/varianceSubbn_4/moments/Mean_1bn_4/moments/Square*
T0
W
bn_4/moments/meanAddbn_4/moments/shifted_meanbn_4/moments/StopGradient*
T0
T
bn_4/moments/SqueezeSqueezebn_4/moments/mean*
squeeze_dims
 *
T0
Z
bn_4/moments/Squeeze_1Squeezebn_4/moments/variance*
squeeze_dims
 *
T0
=
bn_4/cond/SwitchSwitchphase_trainphase_train*
T0

;
bn_4/cond/switch_tIdentitybn_4/cond/Switch:1*
T0

3
bn_4/cond/pred_idIdentityphase_train*
T0

�
0bn/bn_4/moments/Squeeze/ExponentialMovingAverageConst*
dtype0*e
value\BZ"P���t2;HՃ��P����e�[Qo��R��֦�"AD�(�P���?x��q1>䌭�h��=�����H��n�>���?
�
5bn/bn_4/moments/Squeeze/ExponentialMovingAverage/readIdentity0bn/bn_4/moments/Squeeze/ExponentialMovingAverage*C
_class9
75loc:@bn/bn_4/moments/Squeeze/ExponentialMovingAverage*
T0
�
2bn/bn_4/moments/Squeeze_1/ExponentialMovingAverageConst*
dtype0*e
value\BZ"P˻U?��D?6�2?�ͪ?�,?a�P?�b<?��?�)?��?j��>���>ƻ1?p�?�J�>v>?�?��#?el?ے<?
�
7bn/bn_4/moments/Squeeze_1/ExponentialMovingAverage/readIdentity2bn/bn_4/moments/Squeeze_1/ExponentialMovingAverage*E
_class;
97loc:@bn/bn_4/moments/Squeeze_1/ExponentialMovingAverage*
T0
j
(bn_4/cond/ExponentialMovingAverage/decayConst^bn_4/cond/switch_t*
dtype0*
valueB
 *   ?
�
8bn_4/cond/ExponentialMovingAverage/AssignMovingAvg/sub/xConst^bn_4/cond/switch_t*C
_class9
75loc:@bn/bn_4/moments/Squeeze/ExponentialMovingAverage*
dtype0*
valueB
 *  �?
�
6bn_4/cond/ExponentialMovingAverage/AssignMovingAvg/subSub8bn_4/cond/ExponentialMovingAverage/AssignMovingAvg/sub/x(bn_4/cond/ExponentialMovingAverage/decay*C
_class9
75loc:@bn/bn_4/moments/Squeeze/ExponentialMovingAverage*
T0
�
?bn_4/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/SwitchSwitch5bn/bn_4/moments/Squeeze/ExponentialMovingAverage/readbn_4/cond/pred_id*C
_class9
75loc:@bn/bn_4/moments/Squeeze/ExponentialMovingAverage*
T0
�
Abn_4/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch_1Switchbn_4/moments/Squeezebn_4/cond/pred_id*'
_class
loc:@bn_4/moments/Squeeze*
T0
�
8bn_4/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1SubAbn_4/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch:1Cbn_4/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch_1:1*C
_class9
75loc:@bn/bn_4/moments/Squeeze/ExponentialMovingAverage*
T0
�
6bn_4/cond/ExponentialMovingAverage/AssignMovingAvg/mulMul8bn_4/cond/ExponentialMovingAverage/AssignMovingAvg/sub_16bn_4/cond/ExponentialMovingAverage/AssignMovingAvg/sub*C
_class9
75loc:@bn/bn_4/moments/Squeeze/ExponentialMovingAverage*
T0
�
9bn_4/cond/ExponentialMovingAverage/AssignMovingAvg/SwitchSwitch0bn/bn_4/moments/Squeeze/ExponentialMovingAveragebn_4/cond/pred_id*C
_class9
75loc:@bn/bn_4/moments/Squeeze/ExponentialMovingAverage*
T0
�
2bn_4/cond/ExponentialMovingAverage/AssignMovingAvgSub;bn_4/cond/ExponentialMovingAverage/AssignMovingAvg/Switch:16bn_4/cond/ExponentialMovingAverage/AssignMovingAvg/mul*C
_class9
75loc:@bn/bn_4/moments/Squeeze/ExponentialMovingAverage*
T0
�
:bn_4/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub/xConst^bn_4/cond/switch_t*E
_class;
97loc:@bn/bn_4/moments/Squeeze_1/ExponentialMovingAverage*
dtype0*
valueB
 *  �?
�
8bn_4/cond/ExponentialMovingAverage/AssignMovingAvg_1/subSub:bn_4/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub/x(bn_4/cond/ExponentialMovingAverage/decay*E
_class;
97loc:@bn/bn_4/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
Abn_4/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/SwitchSwitch7bn/bn_4/moments/Squeeze_1/ExponentialMovingAverage/readbn_4/cond/pred_id*E
_class;
97loc:@bn/bn_4/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
Cbn_4/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch_1Switchbn_4/moments/Squeeze_1bn_4/cond/pred_id*)
_class
loc:@bn_4/moments/Squeeze_1*
T0
�
:bn_4/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1SubCbn_4/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch:1Ebn_4/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch_1:1*E
_class;
97loc:@bn/bn_4/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
8bn_4/cond/ExponentialMovingAverage/AssignMovingAvg_1/mulMul:bn_4/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_18bn_4/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub*E
_class;
97loc:@bn/bn_4/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
;bn_4/cond/ExponentialMovingAverage/AssignMovingAvg_1/SwitchSwitch2bn/bn_4/moments/Squeeze_1/ExponentialMovingAveragebn_4/cond/pred_id*E
_class;
97loc:@bn/bn_4/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
4bn_4/cond/ExponentialMovingAverage/AssignMovingAvg_1Sub=bn_4/cond/ExponentialMovingAverage/AssignMovingAvg_1/Switch:18bn_4/cond/ExponentialMovingAverage/AssignMovingAvg_1/mul*E
_class;
97loc:@bn/bn_4/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
"bn_4/cond/ExponentialMovingAverageNoOp3^bn_4/cond/ExponentialMovingAverage/AssignMovingAvg5^bn_4/cond/ExponentialMovingAverage/AssignMovingAvg_1^bn_4/cond/switch_t
�
bn_4/cond/IdentityIdentityCbn_4/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch_1:1#^bn_4/cond/ExponentialMovingAverage*
T0
�
bn_4/cond/Identity_1IdentityEbn_4/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch_1:1#^bn_4/cond/ExponentialMovingAverage*
T0
�
bn_4/cond/Switch_1Switch5bn/bn_4/moments/Squeeze/ExponentialMovingAverage/readbn_4/cond/pred_id*C
_class9
75loc:@bn/bn_4/moments/Squeeze/ExponentialMovingAverage*
T0
�
bn_4/cond/Switch_2Switch7bn/bn_4/moments/Squeeze_1/ExponentialMovingAverage/readbn_4/cond/pred_id*E
_class;
97loc:@bn/bn_4/moments/Squeeze_1/ExponentialMovingAverage*
T0
R
bn_4/cond/MergeMergebn_4/cond/Switch_1bn_4/cond/Identity*
T0*
N
V
bn_4/cond/Merge_1Mergebn_4/cond/Switch_2bn_4/cond/Identity_1*
T0*
N
A
bn_4/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
K
bn_4/batchnorm/addAddbn_4/cond/Merge_1bn_4/batchnorm/add/y*
T0
:
bn_4/batchnorm/RsqrtRsqrtbn_4/batchnorm/add*
T0
N
bn_4/batchnorm/mulMulbn_4/batchnorm/Rsqrtbn_4/Variable_1/read*
T0
?
bn_4/batchnorm/mul_1Muladd_4bn_4/batchnorm/mul*
T0
I
bn_4/batchnorm/mul_2Mulbn_4/cond/Mergebn_4/batchnorm/mul*
T0
L
bn_4/batchnorm/subSubbn_4/Variable/readbn_4/batchnorm/mul_2*
T0
N
bn_4/batchnorm/add_1Addbn_4/batchnorm/mul_1bn_4/batchnorm/sub*
T0
-
Relu_4Relubn_4/batchnorm/add_1*
T0
�q
Variable_10Const*
dtype0*�p
value�pB�p"�p�ȭ;�O�]Q=F8���Q�]}>�꺡��:=X]=g2�WCg�J�;|}��*K��~���=&o�=6��=�α=�"��|��H�k<��<(T%�p�ѻԎ�=�'�<*�}<{��<C�׻��#=�Za=�Ո��P;>�'���E>���<���<#�<ϱ�=Ԝ����>�_>j1=6L<���>􈏼
#=�ڽmKn>��R>�1�=������=3��=�
_>nP�=%�]�)⽂_!>���LU���)>�ꭽ�z=	���P߽^��=�QP����=ݖ=�a��l�>��r�nܒ=�:>1؜<\'=��>�h�:y�=p����n^�>H�Խ�z�=���;�Ȼ���4�� ��S@)�\���7>�/���|�=�P��>�1�MS�	ܭ�fm>=�����[������<Do�=�?v��G��A�ǽ �ҽ��/>�e�<�ꅽ�jH�I=�� ����yɽ���=�P)�;��e򽽫y����=�)�= �=����� n�sW�=��𼄸>���=�1�=�̧=mO�����=h��<n+->m�==�c�=�O<�=U�[=�z�mUN�����`W>#��=�`4>�M��Q>�W.���A�0p�;�>�HϨ<�0D�2͗<G���#q��f%=��>c1�=�2{>VS�=٨�tMr=χܽi<�?'�=�Uڽ� 7�'�<��=�a*>~�G�Ǐ�4D�� ����A��&>kg=��=V�7�I���� =g��=d�k=G2=l!=Iu=�s<>�ؙ=܉�=����/ ���3>ȹw=3�j�/��=\(<Є;>p�����=���=m�<����x��=������==���U��=�����XE�~�>�;��=��۽�u<=���=ԉ$�|�'�� '�U_m=&��=:�<��2=��>Ra=fE8=�r�=���<�C �Fb=O,>
��r����>#�,>�6>����3{#�=��<���z>s��<�p�=���R�>�刍������8<�ូ7�=)���Нz��k(;��h���G��0�=T������=�)P=S4�=C�"<�I=��*��<���=��<���.!��=f=g��<}�=�3�<�|W>M?�=�6ɽ^����G���eM�=nB���=�3"��>I�i=�g�=�ȽA;�G�<��Ž5�=4��;��<I�=�ۉ;�$��D>�x�>��E����̗�=�6=���;8��Ls-�����{�=��a<��(�-��<&���#@>?�\��¤�Etb�n_�r�:=��<�O��T�=h��=��o��څ�UD�<"m%=듲=�4=�K��Wf6�\�=�$�<"��>���|��=��@�I@=�<y<X���V�Ѽ}��=@3����2>i�<���=v�཮5����d<Ñ<�>=�V����=k�=�J�=k�N�Pl>�f����t�~�+!�=�N ��(>U�=��y�͡p=�{>���=��=��h�Nb<�G=a�=��=>��Z�нrz�=���g�)>��]����=ǫ�]�=��#=�=c��=��	>5��#?�<&ʎ=�,�Y>�P��p*�#�<lX=
�>��>#J`=���;Ie�<jKM��J�=9�<R�;�r�=�1U=�Z�נ�<�A�<�&]��!�=I����8�=�
P>�Ĥ��6����T�tJ�=|E�<_�d��OJ=�� ��	>����F��h�{g}=w��=`�6�%�l<��V<�����ʥ=����<G�=�V�϶`�P�=�b]�s�5���>�x>�?>�y<D>��,=F4>�"�<�Ӻ���>t�:��=�4=�y�=�F�=��ѐ =��_�W��=�D=�ӽ��/��>8=}��{�𘐼�n2���=ݿ�=´��N�=Z�&j���7����=D�==s=鑲����¢ջ��=�A�a�O������:s�=_r�⿽�D���Ĝ=�?�k
�=���q�
�?��w->j6H>�w<�Yd=�ͽT�W=��>��޽�����7n��+��̽��=|
�=�E绌h�=s6������t.��	��EZ=OoR>�>~�=�2��5>v�K>m+�=+q8>H�����l>� 彎�l�GC>�g2�ѓ�<=eE����D>�KH=0��<R���`=Ž��y��<P
=G�r��xջ��=q�ʽ�˕�����":��O>2�>o�="�/����r=֌�=���
޽�`�<��U����W&|��-I�Tb<3�=�ڐ�������6�����ݼx7�6n���#�<N�ݽNO�<�I�=��=�n=?a!>��=���<`E>�Չ�e�Ƚe�"<Lr�=�v�<K"E>S">��K>c�}<��N=������I>Y�=M��=h�n�rL���v��7ؼ+�<����z6�gX>��%=z�R�>�a>89�T=�;+>���={�q;�j&=/�s={O<��a�=XN�=��6��u��H�=A\��� ��=>�7�=b��$5>�$򹁏%�Q+��-ļDڻ0�ļ?#��
��=����=]�<�@+�x >h��I"?>�G>kB>�=<��=w 7�鈉�4E�=L����7:><&�=���=���= �>|����A�������ʽm���B:�=��߽eI�B���5|����m� �����5
==>��=U�=�����ᬽQ��z���~7��)�<� ���Ž�ٽ��(;#=�zk���Ž�쌻��ӽW�ý^��<�E�xŅ�I�=P�==��˽�])>)�=u&�<�kB�84�=�W��Fɼ�K�<��<XK��I�>Sq�=:v�=��<�����<^�)��K)����;u��G����>��B>'|/���9>q�;�VN=ϫ�=W-��������=�>_X�Ғ(�ޟ9=���=nk��9<�(=i%>RD�=�/1=��v9��=��B�ф�=�&=7%<��?>)Q�=7�T�8M�=N��<�\���=�๽��>/o=�==>�=�w
�=�I�<A�<W��<)��=I<�!L���<�G糽�� =�����o��5�<�P&�g�=�<D<�/�z��]��r� ��+���	N��_>w�;�V�=�B)>G�>�g�<	$�=�ue=C�J=�4�=	?	�wÔ=[#�<��O>�pi;aC�1T�=�z�=Dz½��*�(���]�����>&��	��<�1���0=q��=�Gm=<á�^���ΰ� �����Ϣ8��#�=�*�X��0�=V�μ�l�K����=�g���L�<c��=�š<l��F0��Z�=:�=h���CLQ�%����F�Z<�B���׽N����������*a=W��=�砼w�<���=p(����i<�d��ٗe={����$>���<�����׻�!=�y8>�h>ϼ�z�k���u=�>h�>Ee�=s�=�%'>��>�4 ;�ݚ;:��=��6<��=�H����'=_q��(>[��=v=�>Sn=��0>�*=�V�kS=���Lּ��<>���;C���!�6=EH"���<>������Uо�O����Ͻ� ��>7>畽�(]���a��g���v��g�=�ꀻ(���2��L��4kr��T0=�;=�V���A�=&l�=����=�c�=���<>İ��M@�t�=�4=|�>�����`�=�}X��>� ��= ��Ɇz>x��=��7>�+;�c���8L���-��X�=`]�g�<1��;@��=��=��>\�<�)�=���:v}=)�:�?V)>7�����<�z�g">>ƾ;��!>;� >��>�0W>���<�`]>�WּJ��99�=���	B��*>ټ����ʽQf>�Ӫ�6B>c�����;7&�){��S��ll~<��u=�>,9=&�	�4ט=sļE�=����H<5k�<;�>��Z=��=�ǃ<�P]="RE=��#>s`=�;%���:�BfK<�\����=,�ɼy �=�����<�u�=#�=��۽F0b��M�<�]�<�½Z{���d���T�=RV;�'��)��/������@u�+� �����mf��
z������>l�<�#�=�D+=)�6>Z�ܽ��潒˚="S5>�f�=�˒;˹������Ӆ=7��<m��s!`<��;!|>�>�E�EU>�ZF>���q��=?���8�4>��;��;�G
>f��<���=>'<�N,;�>��<}C1��=���K�*l8>��m=|��=�=誶=����G�=��d=�i(=�W�=�9�=�0'=J�<=ڻ���=/�N��<��ۀN=t"�7��J�>[�q��]=ߺ�<@k&=�ܕ�@�/>��>��=@����<��=�#�<�7�t��;=l�������'�	=�u=Xn=�"�<<9d=��=�b9=�B4=:Z�����ѱ���#�dp��֚>����=����P�=/��=��s<Pn��<�a��J��=w�����Y�Ƚ >���� >Yq��ֽգD�_�����˙f�Hn��=����<��w>�Q<�R�� <q}7�"�^��7�~g��尿���<�=�=t�ﻅ�l�tC|��,%=}_Խ�u�=־�Ą^=�P+�m���26�����<�]��^d�= �Q<��=���(<ѽI#�Dج�����C>�f�>�r�;�"��k�Ͻ�d>���Qn�=���<cs�=�_�仔�b}׽A�w=-�2>����Ӭ=v�ǽ��z=Jl>߻V>Y8%����=�:�;���MΓ=�Z�s�*>+�\���5=�g�=�+�^��<N�>=�,>�����>Az�_�>�:��Q>(׼�F=^H�i;T=G��������)?/=1�p=3�;�lP=}����y=9�=�^�j�%>�>�+>�B�[x��	Լ7��=}ہ�Ѻ��	$=lE�<7��=���6��;=���=�y=�5�܃�=j'=F,�=3�u#>maY>�(��T�D�)fս��J=��M=�`���v��\ �Ҩ;���=�Ȼ��M<ː���L���=��%=hN*>o�>����P^��Þ�5,�"*3>Z5໬<p>�*n��@=(L�'&^���&���D��^H<�0 >���=�7���=���۷�=�@���Z�2��+��1��Qt"=>�S��{+��U���`��M�:���˻����ʛ���љ=���5ơ=�2����~��'�F|���(��hG=_2\�Yh������Vʟ���=���=G�P>��=���������g�1�<d�)>���3�=Ka;�Y�=m�>�	=� =�آ�y�
>����\�������֝�1���㻽�Ղ���L?(=y�R=T]̼��=\/�='g)��[�;^{'>�L=��<7b<�d�=b�޼>ҽИU=��2=�OY�I���+�=4�'��;>j�ʽ(��i:6��<�[a<l8��'��6*=$a�=T�ؽE9:>�r����b�<�2=1����<�w�;/�R�P1�<��k<i�W=<��a����)O<H�:�ĝ��L���x!>�㹼*5�=�c�=��<w+���Ł���k=۔����=şb�@��<�	0=�G���>Q5<�KL=�2�=a}���L�|#��ݩ�=A^Ƚ)*�:Wź<��J����;�;��h���K\=f�N�</�=���� ZP�C��r ��Sp�߲\=D��;��ӽ|�f=��D=�n����<�==iQ���)����H>=$"=�i`�F˼��<�']>g#ܼ��=Iux=�)&=��=���<���=M��=<�P�x0����<�n�Ǩp��u=p/ۼE͠=^F�=���=�{=n��=ж~���<�.o��b<5��� ���&��<-�b"��ܠ���=D_����H��k=�8�q@>0HE>��:Kܫ����=��=�QS=Y$޽�m=1o�� ��=��`>�Bn�qG=���������؅<]=�vϼy�����W�	�>�N=f���<�;�ҼC�ּ����9��ą<��b<̲L���=U�>�6�=VS�������;�L+��A�\��= @n�+�<)x���>@3�=��>(�Z��/�=}<��<9��<���=��>�5<z=��[��թ�旦=���</CW=���v!�=U+�=�)>�R���f�=��3���e�C�ܽ�I��(ߩ={m�=���=��>�Z�ܼ���=�{��
o��z μ���LN��1�~�=�)��=�wڽ�F��C��!l<��I<>�G�=儃=�&�f��v�f>�1�<��p=�V;��r=+[j>�'>��齶���e��<�Ƚ"d�=��&�y��=_w8>|[�=�5�=!��<���:j�\>�}�=��=k�=�	�=�$�=��+>g������Ge�<�Z�Xz>�;��'��<�!e��[��T>+�<�	>d�=	f=�p9��f���ɻ��(q�	Z�yH>R�={����:>y����<z�H��d�5�X���4=�n���C>B1���La��ى=�=�t�W��Y9�=�:�<��,�Wu7��L�;�{}��.��D���)Z���=�=Q�*�fyE<�c�=���@z�F�C�=ZN�;
�IS^<��<r4�;E�g�m��;=�ٽ�%�<l�ɼ�P���f=�hC>f����=�Hs�=�����>3 Ȼ24I>�F�����o�a?��]r6�`g=>{������=-�J>!i�����=�P��s��qn���+��Sмzz�=-+*��}�<&B�=�蒽�����}��Ǽ�-�������<�%b=��r���d=N���2�V��0��Q�=\�0<ʤ�!� >ǁ`�ʐ�=��c�\X�<��=���=J�O<���=wn��lM=RW�=�ӌ=�>�׽*נ�ˉD>~Vݽ�x=> �Xĸ<���cO���O��#M���⻿��=Ƃ��-'�=-G�=S=?����<����~���68>ǟ=�9�=�x��5=��>\۽���4�<�&��=j]�(e�=���r�=A�<���@�<��=�61=+������=}vF�㰻=a��;��>С���L��v�=�_=Y�;;�C=A >@�<N�+�Q��<ڱ���#@<=�?>[���_�=��M0��Q;Y����=Ү�<I�=ɥ�<�R�=�<-=r������sﴽ�J�=2��<���v�����>����E=K/��X���8�̽��H�P>[�(=x��=�!>�ʭ={=dc���}���NT����<���K�<(#�=č�=�@*��O=>;JRd<ij�<�'B�����-���6�;=�Qٽ�	h=�݋=��=�.>u��=��=9��p���9E = �
<��� �=�t\<(H=�X���nS=��f�K�=M�U����=?���̂k��̀=,����'�����ʺ,��3o=�Q�<M���\��a���6:t�o�E�[��<˽�`���X��Q��RNe=�˱;�ɼ﻽(�r<��-=XV��T=�'j��T�=�D���o���5>�d�=�'ཀྵ��ؑH�S��=�E޽]|��;:P�-�)W]�ς�3�ǽ���<�S==W���)�'�<�)��b�!=-��{U�Zj ���H=�V>�,$���м����ڦ=C��ν#�k<�� ��0�=�VH=��=ʃ=��ݽ�ݽ��}��N���Z8�u:T�$=UG�=�&;�(_*=�
�_Bӽ��=ʙ�=R�U>��x=,Qu=��>{��<DY�<#��=Q8�=�v=���=V�=M�|�Nz�<I��=����ĸ�#��纹���=C=��۽5��=�Ŧ<?d�z�=!d����罘]����N�C����>�l��;�<��(pj�=r"=3;���6=� >���"�=S�=:�b���> `�6�U�ga=O�7=G�=Nh=���=;ń=>�=�@�����{����.x�TJ<3�q<	�=t	>���<XJ2=��>~�/=��x��9����=������>��=A��=�=ə�����]c�<�,����4��G�@�=�ѕ���ʽ�#ƽ�JP=yR��6=RՄ��"0���<S|�=�Fн��=}����_�;�i.��(��vg<ð=ec=�� �*�N;a�q�v%9=4�^>�M���9D����/��8�=�A9=��= XT>b�����������l�o�+⽁�b��B���U>��?����=��4>F�����v��F�<z��Q�(<z��=E�<nۃ=�A��u�=��A�I�˼���=!����.`�,E.�U�߽{�ͽ7|�����= s���F(���ƽ�1\�\=M�����j�}�f���|<}�=�'��f������{ѽ�Z���!�*���Bp������/���vo=Р���w/�v�-�.����������4�N_�x���"�
������3�9''>{|L���A>�� =�Of>%g�=��k=�w���R�Aif>�1�:b�<lv�=kaT>�g�'xA�0u;=};�}S�@ˋ���=��=!��{�:=�l���"�=��Խ3/����Q=k<	>* �=U�Ȼ��/=�dY>S3��L�<�$>0{d��,��z�0༼��Ri�=�m˼w&۽y�<X�!<���=� c����<ޏ�=�9��|=�'��>��i�]}Ͻy�=s?�:��D=Aj��?C����=��B=~�)<y�>$������=O��=�S\��k�=AIB=�?<��⼞g�=@*[��ᓽD�=Y��=�ݼm�
��:�uZ�3�[;x�%��f,�'ϼ&g����ZHQ=8:t:H�t��&�=rx۽^P���er=�=K��x�-A<��5�r���l�\��@/�-}=����6,����V���B��c��I�h�8��=æ �r��dD�;D��=}�T��$i<�zJ>��	�.w!=e�`=�Vν�u|���=��6����=���N���������bD�u�=I>yX�<qЉ��"�=�*/���ؼ�p&>���=��;3��<�ی�Q���=�<5�I=@
>l3�<5A)�6�;����r*�-t=�ʽ��<.I��S^=�>`�=xb<��=w�����=̦l=�N����%������4=HE�=^�,�yOܽ3�`�X�ѽ�=���4�<9_ļ�*&���½��O��;y)�=��1��k���ý���`��I�=�E����w��<�]P��ݜ��r�<x�h�rP�=Ŝ�=��C�΀�P|h=,
<s�0>+�ĽPY�=�t�=/q;\)��6������������1�͇ؽ�<=*≽�m�=lm�=+#�=Wʯ=��9>��0=mQ����= Ҋ���k�-����K5=a-��_��<��:��>�5=� t���>=���%��<@��;M�=Z�\�B:e���½��<�h�o
 >C��<݇F���<���U}=��S�<����lV��o�=0��=���;�$>�X��hz�>^`�?�=2v�=�n<>�0�q�=݋�=X-���@�=`��l�=1��b�45>��>M ���!��\�=�*c��]V�a�N=mq��r��=BS)��V�=�)��ʛ<HwS<�)�:�J��c�=��=�@�<^b<���Yu':6�?��K��a��#��;�'<ջG=��>�ؼ�b�q�=��>3|�<pjk>��fŁ��*�=8X��Ƞ=��>�<33�B���k#:�>�iM=��>{����w=�k8=w�s=L�ػ��>�T��'�
 �=���=���;J2>�>�~��Vظ=T�>��|=~$=Ƿ�=k�b�ӓ�=ok>7� ��1k>S��O'������罯�W=A"�=?=>�$�=�.����=��<F���&~>.sq��S5���=hݻ��=Ŭ�=���"=�+>���;�q�=� �=2���6�R���ݽ�&+���=*��=Lr�����_*2��/���/���s��#���IR>�uy彑w�������B]�aRm��[�=�p��C�U�pC�=`����:=6y�>�����>˯�=�W,���< g�=��,�B�>?�=��=$�a=݄�����=k��=���=���=ў���n��L�=�g=����=��<-�">ߝ�z�7��3T=n9P����=[ݾ=���LJ���%�#���>��<?�Žlʝ;���>*�>��½��.>]<ؽ�0%��7����=��׽rY>�-��o��=g�>�[>��=����vZ�<+C˽���;$����l=+S2=t
꼳��=J�=hQ�=��*�.��� ����5���==�*=؎�=Ģ��y�<�&D�,��=y>��C�=�6�g��;�ӓ=�L�A`s>�ռ���<��}<�8��������۽Ww*�]����5��@�K��=�립s<�\=w��� �=�b��U�=��ݼ�����R�����<AZW�W�����*|�7 ���7�/<��K<�)J��l�h=������Ժ��~�Zy=4҈:;c>���<e����g>d�����=�N=q���W�>\��.H�0��=�0A=�>�;<$�=�M>�Cv>�>o	0=�0�=V�=�N�=).���e=�#��=��=0x�;�ʝ���>8n:<-�0>�O�=�0=�=�<�6>��=`v��������(�o�2<8F==�5=���<㉈=_+�=1̽�<`>Yr->b�~<�΄;�OļFd\=�O�����=�a>��0=�&-=w�">��= ��;�K�$��=��v=M����<��p>�U>�Y�<��=>P(��5t�=\�o=`=ǂ=P�� ����u>��T>��'��f>>�O0�:��ʽ�=>��=o8�K�u=����������;Z�i<䅅=#� �/�A����7��ި=\l������νO��=���=�%6>i�=,�r>WK=�'d�\�;���7=(�;�)=-���n�<��M��O0=ɃW�Ѯ>i����> Ӫ��$�=�w=�2ͽp����_=А�����-$��=�&���:���<w��LͰ=�!>%��:��=4������E�=iƻ��X���=z�}=��=ni�<�j�<�fj=�J=V��<`�=>�V��>4=%>������>x��=����>�GHj�X�н�{��:F�8+<�S#>wE�<�>���=2'�<6�������Md=޲3��#໴<l=Id�"gB=ɯڽ��#�$�ϽJ�=p�	���=�w�'cл�٧�D����7��X=hη�9�	=&s��,`3=�[3>�sͽ���=�ڽA��i >u�<ޏl<�>|���8��=-�#>@�2��	�=)������`ݾ=���ݿ�����=À��ĕ�<�-�:�%��6���� >�bA��*>X�Ľi;�=��]�N�
>?	���jO=yQ=��@��?I>� =�sr<��<�V�=kE.=�_��������=�M�祭<�Dӻ��S=15�;�g�<HI$��
J>Ο���	�d􍼢Oܽ;Ŕ=��;�]�:I�<�������[�=�<a�i�=>N>��<��=t����mԽ��<�����u�=��	>e��<,G`>�]h�?�<P���ש=�ѽE꥽�	�i>�A���<%~�m�*>SnR�T���0��º�=�mD��!>-1���̽ڡ@>��C���>y/����=�G�<�ƴ��W�o�T�QPZ�Tm8�m��<�5M��x�=x��=���o=Jf=��(�E&=�=z)�=.��V=|fG�#k,�ݖ�=۸ܽ�M�<��<��Y;+=j^�=���=�7ڽ9�=RE�n�>�P�=`��<.��<�J.�\=˷���[����h�Dc�<[,�`~	=���;V��=��ҽ�w�vȸ=�;�=\�W��87�����	+0=G>d*��Ӓ=�?�SY�������^��R��u�C<���������Ƈ=S�==G�J����=I�>��w�ʽ�\=m8;��>gmc=ϙN��h1>ȼ�BC=c���O�=_��7/=��Y=�gB��	�cl8=�/>Wq�������_	��݀��J����~DQ=d,���޽�5�=�X��ޗ���F>��<h�=��{=��>�j=�B�=��$=��=Xt����<C��:9�Z=�Q=e
>�ϝ=/�
=��p=H����<u��Yo��=�X
��+�����R۽G>X��I�=O�'����G�ɽ1���zP�=���<�05<b{����n=X����q;��=�S��d� �ټr�Q<ǽ|=�zٻ@ό�o���ȽidU��џ=}۬��f
>�7=B;���>���=('t<�7 >��J���=��䟙=�Z���
=��)�/}����=p��=|=�3�aE�=H��(,=9t���ka="�=?.=��*<�H�{��1=-�֘�f>�;hI�<�����o��1�=S��=���=OY�������q�B��k�=�w�=�	�=a6!���=͛�=������_=7�=茏����<ս=�����ء��;>5��=D��'��9�ޑ�|꽶e�;&`�j7<"��eZ"��˻���=l�0�F��<�=�r	>,ɼ�Ԗ�[�<$��<1ӻ �}��[��A�=T�M=�g�=�w����=����B�;fF=�;�����7w����=x��=����,~=��<�<�=K�-=-B=w-���=O�����(��=�j;������v=3�T����=>�@�5	u�M=��=Q�Խ��н��f�.o*=�YK�B]�=L���ؙ=;�=s�=���;�B8����v�]=��=,D躗LR��\�=��X=�{"=R�T��D#=v}	=N{=�V�fo� �zB��L+(�c#�ÿ-��0>��� =��<��=w�n=�t��.�ƼM0f<t3��j����>7f�<d��<^�y��'�=���='_X=-�̽&=�Գּ�sz<��F>	>��G=�7�=�G�i�F�2^l�vX����� �=�p.��j�W��<H*^=y�L>�������=���=|�B�#�A=D�ֆ��<��¼?�ϼ��ȴ��x�X">>��Sa>o�޼r���'�cڽ�T=�]�?*3�̠�=�r��Ũ�L�D�ٓȽ�`<se	;��>��a��t����:Ǜ=�>e<f+���ͼ���b�=�޼=>�)=��
=f]�=I����9=ɋ=�6=�=�~�:��ڼ�
��ң����E����=|�p=���/�/>mbw<�4��^�=�n�=s��7Z���=u%>/1>�s{���=ń>��#�̽���=$�=�=�I�[�=���=�8>K�=�'>�>�t�=HH����;3��+K=�������h+=*�ɼ�Pϼk몽hd�����&�N>Ra���d]=���=O`��s��<�>��=�ʽ3�?=FA���8=���=��=q½jR�q�=��,=�"�<�D=�����m�<���AF�<^m=>Q���a�=8{��t�ƕ�=~�\=z��<p�->��t�̺'>�l���ϼb�n=�s>��/��x<�j�=(�;/6��n�=vW;=��=oG��K��1>�=�6����&�=t(��?.���o����� k�ă.;`=oO����N�2�۽�.�7|>E��7Q'<eN;J�K>�a�=2�_�Z�]��V�=�ͺ��
���G��pƽ�?�=�o-�JHP=؄�<|���TV����=�6>���d��=���=��x;h�,�ph���:��4��:�D>Pً<���<rI0���}=,&�=mC5=�;��FIv=��T;#Č=��ӽ�!�=8-(>����1����=iB�=�Z����ǽ璋���<
u�=�#!>��<>���=�����܊<oM�=�K�<�8H>�c=��>�g�=k͏=Ce�=%h��ѽ��Ѽ��l=M��)�b=,V��x�>��(�/B8> .;�?=�=]�q<�֎�ȹ?��|��!➽�!���r�P\����Pw���Kʽ�+>�6��4�xw=>�*�<�F<"r�2�<�Q^�lI�����X�u��h=��=���9�= � >km�7����y\��>�=��>�>r ��yL,>w�'��G�=.T�=3�=>��<$j�=���>�-T{=I0��P˻��x�4�2��������=T��n{�=چ=%y����K=�LȽ�l�<�Y��@����"��J�<d/+��d<��=�<z����>MX<�/�=��<I.𽈁.>�6�=����"ް=���<5��; �{=-^=4oI>��X=
R
Variable_10/readIdentityVariable_10*
_class
loc:@Variable_10*
T0
�
Variable_11Const*
dtype0*e
value\BZ"P?���{b�:	(�Z�:�@����:�3(��K����&��!�Z�ĺHR~;���8��E:�:
�=:k��	%M9��9
R
Variable_11/readIdentityVariable_11*
_class
loc:@Variable_11*
T0
�
Conv2D_5Conv2DRelu_4Variable_10/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
T0*
paddingSAME
1
add_5AddConv2D_5Variable_11/read*
T0
�
bn_5/VariableConst*
dtype0*e
value\BZ"P���=?w�=�&=tw�=Q�=�I�<�P-=�f=�<�Ǩ=��=�=)D�=��=�F>ӯ=�P*=���<\s=]T=
X
bn_5/Variable/readIdentitybn_5/Variable* 
_class
loc:@bn_5/Variable*
T0
�
bn_5/Variable_1Const*
dtype0*e
value\BZ"P���?]�?X��?;u�?� �?��?��?u�?���?���?���?Z(�?�A�?i}�?�ڤ?I��?�?x�?�׎?�/�?
^
bn_5/Variable_1/readIdentitybn_5/Variable_1*"
_class
loc:@bn_5/Variable_1*
T0
\
#bn_5/moments/Mean/reduction_indicesConst*
dtype0*!
valueB"          
k
bn_5/moments/MeanMeanadd_5#bn_5/moments/Mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
E
bn_5/moments/StopGradientStopGradientbn_5/moments/Mean*
T0
B
bn_5/moments/SubSubadd_5bn_5/moments/StopGradient*
T0
d
+bn_5/moments/shifted_mean/reduction_indicesConst*
dtype0*!
valueB"          
�
bn_5/moments/shifted_meanMeanbn_5/moments/Sub+bn_5/moments/shifted_mean/reduction_indices*
	keep_dims(*
T0*

Tidx0
^
bn_5/moments/SquaredDifferenceSquaredDifferenceadd_5bn_5/moments/StopGradient*
T0
^
%bn_5/moments/Mean_1/reduction_indicesConst*
dtype0*!
valueB"          
�
bn_5/moments/Mean_1Meanbn_5/moments/SquaredDifference%bn_5/moments/Mean_1/reduction_indices*
	keep_dims(*
T0*

Tidx0
A
bn_5/moments/SquareSquarebn_5/moments/shifted_mean*
T0
O
bn_5/moments/varianceSubbn_5/moments/Mean_1bn_5/moments/Square*
T0
W
bn_5/moments/meanAddbn_5/moments/shifted_meanbn_5/moments/StopGradient*
T0
T
bn_5/moments/SqueezeSqueezebn_5/moments/mean*
squeeze_dims
 *
T0
Z
bn_5/moments/Squeeze_1Squeezebn_5/moments/variance*
squeeze_dims
 *
T0
=
bn_5/cond/SwitchSwitchphase_trainphase_train*
T0

;
bn_5/cond/switch_tIdentitybn_5/cond/Switch:1*
T0

3
bn_5/cond/pred_idIdentityphase_train*
T0

�
0bn/bn_5/moments/Squeeze/ExponentialMovingAverageConst*
dtype0*e
value\BZ"P���>`�>���>dɅ>�_�>���>��>|y�>b� >d6�>�� ?x_#?���=�f?b�>~g�>U"�>�&�>0lT>�r8?
�
5bn/bn_5/moments/Squeeze/ExponentialMovingAverage/readIdentity0bn/bn_5/moments/Squeeze/ExponentialMovingAverage*C
_class9
75loc:@bn/bn_5/moments/Squeeze/ExponentialMovingAverage*
T0
�
2bn/bn_5/moments/Squeeze_1/ExponentialMovingAverageConst*
dtype0*e
value\BZ"Pb�f?Ă^?��r?\t?��U?�c�?�*V?�Ɛ?�v?��=?� {?�xi?/UB?dߜ?4�?)��?՞?�h�?��o?>��?
�
7bn/bn_5/moments/Squeeze_1/ExponentialMovingAverage/readIdentity2bn/bn_5/moments/Squeeze_1/ExponentialMovingAverage*E
_class;
97loc:@bn/bn_5/moments/Squeeze_1/ExponentialMovingAverage*
T0
j
(bn_5/cond/ExponentialMovingAverage/decayConst^bn_5/cond/switch_t*
dtype0*
valueB
 *   ?
�
8bn_5/cond/ExponentialMovingAverage/AssignMovingAvg/sub/xConst^bn_5/cond/switch_t*C
_class9
75loc:@bn/bn_5/moments/Squeeze/ExponentialMovingAverage*
dtype0*
valueB
 *  �?
�
6bn_5/cond/ExponentialMovingAverage/AssignMovingAvg/subSub8bn_5/cond/ExponentialMovingAverage/AssignMovingAvg/sub/x(bn_5/cond/ExponentialMovingAverage/decay*C
_class9
75loc:@bn/bn_5/moments/Squeeze/ExponentialMovingAverage*
T0
�
?bn_5/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/SwitchSwitch5bn/bn_5/moments/Squeeze/ExponentialMovingAverage/readbn_5/cond/pred_id*C
_class9
75loc:@bn/bn_5/moments/Squeeze/ExponentialMovingAverage*
T0
�
Abn_5/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch_1Switchbn_5/moments/Squeezebn_5/cond/pred_id*'
_class
loc:@bn_5/moments/Squeeze*
T0
�
8bn_5/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1SubAbn_5/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch:1Cbn_5/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch_1:1*C
_class9
75loc:@bn/bn_5/moments/Squeeze/ExponentialMovingAverage*
T0
�
6bn_5/cond/ExponentialMovingAverage/AssignMovingAvg/mulMul8bn_5/cond/ExponentialMovingAverage/AssignMovingAvg/sub_16bn_5/cond/ExponentialMovingAverage/AssignMovingAvg/sub*C
_class9
75loc:@bn/bn_5/moments/Squeeze/ExponentialMovingAverage*
T0
�
9bn_5/cond/ExponentialMovingAverage/AssignMovingAvg/SwitchSwitch0bn/bn_5/moments/Squeeze/ExponentialMovingAveragebn_5/cond/pred_id*C
_class9
75loc:@bn/bn_5/moments/Squeeze/ExponentialMovingAverage*
T0
�
2bn_5/cond/ExponentialMovingAverage/AssignMovingAvgSub;bn_5/cond/ExponentialMovingAverage/AssignMovingAvg/Switch:16bn_5/cond/ExponentialMovingAverage/AssignMovingAvg/mul*C
_class9
75loc:@bn/bn_5/moments/Squeeze/ExponentialMovingAverage*
T0
�
:bn_5/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub/xConst^bn_5/cond/switch_t*E
_class;
97loc:@bn/bn_5/moments/Squeeze_1/ExponentialMovingAverage*
dtype0*
valueB
 *  �?
�
8bn_5/cond/ExponentialMovingAverage/AssignMovingAvg_1/subSub:bn_5/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub/x(bn_5/cond/ExponentialMovingAverage/decay*E
_class;
97loc:@bn/bn_5/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
Abn_5/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/SwitchSwitch7bn/bn_5/moments/Squeeze_1/ExponentialMovingAverage/readbn_5/cond/pred_id*E
_class;
97loc:@bn/bn_5/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
Cbn_5/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch_1Switchbn_5/moments/Squeeze_1bn_5/cond/pred_id*)
_class
loc:@bn_5/moments/Squeeze_1*
T0
�
:bn_5/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1SubCbn_5/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch:1Ebn_5/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch_1:1*E
_class;
97loc:@bn/bn_5/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
8bn_5/cond/ExponentialMovingAverage/AssignMovingAvg_1/mulMul:bn_5/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_18bn_5/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub*E
_class;
97loc:@bn/bn_5/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
;bn_5/cond/ExponentialMovingAverage/AssignMovingAvg_1/SwitchSwitch2bn/bn_5/moments/Squeeze_1/ExponentialMovingAveragebn_5/cond/pred_id*E
_class;
97loc:@bn/bn_5/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
4bn_5/cond/ExponentialMovingAverage/AssignMovingAvg_1Sub=bn_5/cond/ExponentialMovingAverage/AssignMovingAvg_1/Switch:18bn_5/cond/ExponentialMovingAverage/AssignMovingAvg_1/mul*E
_class;
97loc:@bn/bn_5/moments/Squeeze_1/ExponentialMovingAverage*
T0
�
"bn_5/cond/ExponentialMovingAverageNoOp3^bn_5/cond/ExponentialMovingAverage/AssignMovingAvg5^bn_5/cond/ExponentialMovingAverage/AssignMovingAvg_1^bn_5/cond/switch_t
�
bn_5/cond/IdentityIdentityCbn_5/cond/ExponentialMovingAverage/AssignMovingAvg/sub_1/Switch_1:1#^bn_5/cond/ExponentialMovingAverage*
T0
�
bn_5/cond/Identity_1IdentityEbn_5/cond/ExponentialMovingAverage/AssignMovingAvg_1/sub_1/Switch_1:1#^bn_5/cond/ExponentialMovingAverage*
T0
�
bn_5/cond/Switch_1Switch5bn/bn_5/moments/Squeeze/ExponentialMovingAverage/readbn_5/cond/pred_id*C
_class9
75loc:@bn/bn_5/moments/Squeeze/ExponentialMovingAverage*
T0
�
bn_5/cond/Switch_2Switch7bn/bn_5/moments/Squeeze_1/ExponentialMovingAverage/readbn_5/cond/pred_id*E
_class;
97loc:@bn/bn_5/moments/Squeeze_1/ExponentialMovingAverage*
T0
R
bn_5/cond/MergeMergebn_5/cond/Switch_1bn_5/cond/Identity*
T0*
N
V
bn_5/cond/Merge_1Mergebn_5/cond/Switch_2bn_5/cond/Identity_1*
T0*
N
A
bn_5/batchnorm/add/yConst*
dtype0*
valueB
 *o�:
K
bn_5/batchnorm/addAddbn_5/cond/Merge_1bn_5/batchnorm/add/y*
T0
:
bn_5/batchnorm/RsqrtRsqrtbn_5/batchnorm/add*
T0
N
bn_5/batchnorm/mulMulbn_5/batchnorm/Rsqrtbn_5/Variable_1/read*
T0
?
bn_5/batchnorm/mul_1Muladd_5bn_5/batchnorm/mul*
T0
I
bn_5/batchnorm/mul_2Mulbn_5/cond/Mergebn_5/batchnorm/mul*
T0
L
bn_5/batchnorm/subSubbn_5/Variable/readbn_5/batchnorm/mul_2*
T0
N
bn_5/batchnorm/add_1Addbn_5/batchnorm/mul_1bn_5/batchnorm/sub*
T0
-
Relu_5Relubn_5/batchnorm/add_1*
T0
w
	MaxPool_2MaxPoolRelu_5*
data_formatNHWC*
strides
*
T0*
paddingSAME*
ksize

x
AvgPoolAvgPool	MaxPool_2*
data_formatNHWC*
strides
*
T0*
paddingSAME*
ksize

B
Reshape/shapeConst*
dtype0*
valueB"����   
A
ReshapeReshapeAvgPoolReshape/shape*
Tshape0*
T0
�
Variable_12Const*
dtype0*�
value�B�"�*;�>8�¾,=ͪ7�P�̾�����>�1;=߾i�e=h5$���@>9��Ə ��S	�*Ә�����>|��>�≾I�"��q�>�D0�#%?�>Ի���&��8�=G��������5~�Ra>�i�����>�O��r'>�%�N���L�����O�
R
Variable_12/readIdentityVariable_12*
_class
loc:@Variable_12*
T0
@
Variable_13Const*
dtype0*
valueB"�=���
R
Variable_13/readIdentityVariable_13*
_class
loc:@Variable_13*
T0
Z
MatMulMatMulReshapeVariable_12/read*
transpose_a( *
transpose_b( *
T0
-
AddAddMatMulVariable_13/read*
T0

outputSoftmaxAdd*
T0
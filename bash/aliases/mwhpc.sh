# FlexLM License Servers (Triad)
export FS1=n1lflexp02.corp.cat.com
export FS2=aclflexp01.acric.cat.com
export FS3=mtlflexp03.corp.cat.com

# PBS Professional (aka PBSPro) (Vendor: Altair)
[ -f /etc/profile.d/pbs.sh ] && source /etc/profile.d/pbs.sh

# ABAQUS (Vendor: ABAQUS)
FV_ABAQUS=abaquslm
FP_ABAQUS=37000         
FL_ABAQUS=$FP_ABAQUS@$FS1:$FP_ABAQUS@$FS2:$FP_ABAQUS@$FS3
PATH_ABAQUS=/apps/Abaqus/6.10-1/exec/

# FLUENT (Vendor: ANSYS)
FV_FLUENT=fluentlm
FP_FLUENT=7241
FL_FLUENT=$FP_FLUENT@$FS1:$FP_FLUENT@$FS2:$FP_FLUENT$FS3
PATH_FLUENT=/apps/ansys_inc/v130/fluent/bin

# StarCCM+, StarCD (Vendor: ADAPCO)
FV_STARCD=cdlmd
FP_STARCD=25199
FL_STARCD=$FP_STARCD@$FS1:$FP_STARCD@$FS2:$FP_STARCD$FS3
PATH_STARCD=/apps/StarCD/starcd-3240/bin:/apps/StarCD/star-ccm/starccm+6.02.007/star/bin

# ANSYS (Vendor: ANSYS)
FV_ANSYS=ansyslmd
FP_ANSYS=25009
FL_ANSYS=$FP_ANSYS@$FS1:$FP_ANSYS@$FS2:$FP_ANSYS$FS3
PATH_ANSYS=/apps/ansys/v121/ansys/bin                                                                           

# NASTRAN (Vendor: NX?)
FV_NASTRAN=UNKNOWN
FP_NASTRAN=999999
FL_NASTRAN=$FP_NASTRAN@$FS1:$FP_NASTRAN@$FS2:$FP_NASTRAN$FS3
PATH_NASTRAN=/apps/Nastran/v7.0/bin

# RadTherm (Vendor: ThermoAnalytics, Inc.)
FV_RADTHERM=taitherm
FP_RADTHERM=27012
FL_RADTHERM=$FP_RADTHERM@$FS1:$FP_RADTHERM@$FS2:$FP_RADTHERM$FS3
PATH_RADTHERM=/apps/radtherm/9.3.0/bin

# ANSOFT (Vendor: ANSYS)
FV_ANSOFT=ansoftd
FP_ANSOFT=25200
FL_ANSOFT=$FP_ANSOFT@$FS1:$FP_ANSOFT@$FS2:$FP_ANSOFT$FS3
PATH_ANSOFT=

# Isight (SIMULIA)
FV_ISIGHT=engswd
FP_ISIGHT=27013
FL_ISIGHT=$FP_ISIGHT@$FS1:$FP_ISIGHT@$FS2:$FP_ISIGHT$FS3
PATH_ISIGHT=/apps/iSIGHT_10.0/bin

# FE-Safe
PATH_FESAFE=/apps/fesafe/version.5.4-06

# Tomahawk
PATH_TOMAHAWK=/apps/Tomahawk/tomahawk_linuxhpc_4.7/bin

# Caterpillar (Vendor: Caterpillar, Inc.)
## PES (Product Engineering Solutions)
FV_CAT_PES=catlmd
FP_CAT_PES=25060
FL_CAT_PES=$FP_CAT_PES@$FS1:$FP_CAT_PES@$FS2:$FP_CAT_PES$FS3
PATH_CAT_PES=

## FlexLM License File
#LM_LICENSE_FILE=\
#$FL_ABAQUS:\
#$FL_FLUENT:\
#$FL_STARCD:\
#$FL_ANSYS:\
#$FL_NASTRAN:\
#$FL_RADTHERM:\
#$FL_ANSOFT:\
#$FL_ISIGHT:\
#$FL_CAT_PES:\
#$LM_LICENSE_FILE

#Bad 60600@acsupplier01.mw.na.cat.com
LM_LICENSE_FILE=37000@n1lflexp02.corp.cat.com:37000@mtlflexp03.corp.cat.com:37000@aclflexp01.acric.cat.com:29000@acsupplier01.mw.na.cat.com:28850@n1lflexp02.corp.cat.com:28850@mtlflexp03.corp.cat.com:28850@aclflexp01.acric.cat.com:28575@n1lflexp02.corp.cat.com:28575@mtlflexp03.corp.cat.com:28575@aclflexp01.acric.cat.com:28518@n1lflexp02.corp.cat.com:28518@mtlflexp03.corp.cat.com:28518@acwatp20.mw.na.cat.com:28518@acwatp10.mw.na.cat.com:28518@acsupplier01.mw.na.cat.com:28518@aclflexp01.acric.cat.com:28518@acat02.mw.na.cat.com:28518@acat01.mw.na.cat.com:28100@n1lrdflex01.lrd.cat.com:28100@n1lflexp02.corp.cat.com:28100@mtlflexp03.corp.cat.com:28100@aclflexp01.acric.cat.com:28028@acsupplier01.mw.na.cat.com:28028@acat02.mw.na.cat.com:28028@acat01.mw.na.cat.com:28000@n1lflexp02.corp.cat.com:28000@mtlflexp03.corp.cat.com:28000@acwatp20.mw.na.cat.com:28000@acwatp10.mw.na.cat.com:28000@acsupplier01.mw.na.cat.com:28000@aclflexp01.acric.cat.com:28000@acat02.mw.na.cat.com:28000@acat01.mw.na.cat.com:27700@acsupplier01.mw.na.cat.com:27700@acat02.mw.na.cat.com:27700@acat01.mw.na.cat.com:27500@n1lflexp02.corp.cat.com:27300@acwatp20.mw.na.cat.com:27300@acwatp10.mw.na.cat.com:27300@acsupplier01.mw.na.cat.com:27300@acsupplier01.mw.na.cat.com:27300@acat02.mw.na.cat.com:27300@acat01.mw.na.cat.com:27017@acwatp20.mw.na.cat.com:27017@acwatp10.mw.na.cat.com:27017@acsupplier01.mw.na.cat.com:27017@acat02.mw.na.cat.com:27017@acat01.mw.na.cat.com:27016@acwatp20.mw.na.cat.com:27016@acwatp10.mw.na.cat.com:27016@acsupplier01.mw.na.cat.com:27016@acat02.mw.na.cat.com:27016@acat01.mw.na.cat.com:27014@n1lflexp02.corp.cat.com:27014@mtlflexp03.corp.cat.com:27014@aclflexp01.acric.cat.com:27013@n1lflexp02.corp.cat.com:27013@mtlflexp03.corp.cat.com:27013@aclflexp01.acric.cat.com:27012@n1lflexp02.corp.cat.com:27012@mtlflexp03.corp.cat.com:27012@aclflexp01.acric.cat.com:27010@n1lflexp02.corp.cat.com:27010@mtlflexp03.corp.cat.com:27010@aclflexp01.acric.cat.com:27006@acwatp20.mw.na.cat.com:27006@acwatp10.mw.na.cat.com:27006@acsupplier01.mw.na.cat.com:27006@acat02.mw.na.cat.com:27006@acat01.mw.na.cat.com:27000@n1lflexp02.corp.cat.com:27000@mtlflexp03.corp.cat.com:27000@acsupplier01.mw.na.cat.com:27000@aclflexp01.acric.cat.com:26999@n1lflexp02.corp.cat.com:25900@n1lflexp02.corp.cat.com:25900@mtlflexp03.corp.cat.com:25900@aclflexp01.acric.cat.com:25744@n1lflexp02.corp.cat.com:25744@mtlflexp03.corp.cat.com:25744@aclflexp01.acric.cat.com:25717@acsupplier01.mw.na.cat.com:25704@n1lflexp02.corp.cat.com:25704@mtlflexp03.corp.cat.com:25704@acsupplier01x.mw.na.cat.com:25704@acsupplier01.mw.na.cat.com:25704@aclflexp01.acric.cat.com:25704@acat02.mw.na.cat.com:25704@acat01.mw.na.cat.com:25702@n1lflexp02.corp.cat.com:25702@mtlflexp03.corp.cat.com:25702@aclflexp01.acric.cat.com:25571@n1lflexp02.corp.cat.com:25571@mtlflexp03.corp.cat.com:25571@acwatp20:25571@acwatp10:25571@acsupplier01:25571@aclflexp01.acric.cat.com:25571@acat02:25571@acat01:25500@acwatp20.mw.na.cat.com:25500@acwatp10.mw.na.cat.com:25500@acsupplier01.mw.na.cat.com:25300@n1lflexp02.corp.cat.com:25300@mtlflexp03.corp.cat.com:25300@aclflexp01.acric.cat.com:25200@n1lflexp02.corp.cat.com:25200@mtlflexp03.corp.cat.com:25200@aclflexp01.acric.cat.com:25199@n1lflexp02.corp.cat.com:25199@mtlflexp03.corp.cat.com:25199@aclflexp01.acric.cat.com:25172@acflex01.acric.cat.com:25170@n1lflexp02.corp.cat.com:25170@mtlflexp03.corp.cat.com:25170@aclflexp01.acric.cat.com:25110@acsupplier01.mw.na.cat.com:25100@n1lflexp02.corp.cat.com:25100@mtlflexp03.corp.cat.com:25100@acwatp20.mw.na.cat.com:25100@acwatp10.mw.na.cat.com:25100@acsupplier01.mw.na.cat.com:25100@aclflexp01.acric.cat.com:25100@acat02.mw.na.cat.com:25100@acat01.mw.na.cat.com:25060@n1lrdflex01.lrd.cat.com:25060@n1lflexp02.corp.cat.com:25060@mtlflexp03.corp.cat.com:25060@aclflexp01.acric.cat.com:25025@n1lflexp02.corp.cat.com:25025@mtlflexp03.corp.cat.com:25025@aclflexp01.acric.cat.com:25021@acsupplier01:25020@n1lflexp02.corp.cat.com:25020@mtlflexp03.corp.cat.com:25020@acwatp20:25020@acwatp10:25020@acsupplier01:25020@aclflexp01.acric.cat.com:25017@acwatp20.mw.na.cat.com:25017@acwatp10.mw.na.cat.com:25017@acsupplier01.mw.na.cat.com:25017@acat02.mw.na.cat.com:25017@acat01.mw.na.cat.com:25015@acwatp20.mw.na.cat.com:25015@acwatp10.mw.na.cat.com:25015@acsupplier01.mw.na.cat.com:25013@acsupplier01.mw.na.cat.com:25011@n1lflexp02.corp.cat.com:25011@mtlflexp03.corp.cat.com:25011@aclflexp01.acric.cat.com:25010@n1lflexp02.corp.cat.com:25010@mtlflexp03.corp.cat.com:25010@aclflexp01.acric.cat.com:25009@n1lflexp02.corp.cat.com:25009@mtlflexp03.corp.cat.com:25009@aclflexp01.acric.cat.com:25008@acsupplier01.mw.na.cat.com:25005@acwatp20.mw.na.cat.com:25005@acwatp10.mw.na.cat.com:25005@acsupplier01.mw.na.cat.com:25005@acat02.mw.na.cat.com:25005@acat01x.mw.na.cat.com:25005@acat01.mw.na.cat.com:25001@n1lflexp02.corp.cat.com:25001@mtlflexp03.corp.cat.com:25001@aclflexp01.acric.cat.com:25000@acflex01.acric.cat.com:21700@acsupplier01.mw.na.cat.com:8659@n1lflexp02.corp.cat.com:8659@mtlflexp03.corp.cat.com:8659@aclflexp01.acric.cat.com:8224@n1lflexp02.corp.cat.com:8224@mtlflexp03.corp.cat.com:8224@aclflexp01.acric.cat.com:7789@n1lflexp02.corp.cat.com:7789@n1lflexp02.corp.cat.com:7789@mtlflexp03.corp.cat.com:7789@aclflexp01.acric.cat.com:7788@n1lflexp02.corp.cat.com:7788@mtlflexp03.corp.cat.com:7788@acwatp20.mw.na.cat.com:7788@acwatp10.mw.na.cat.com:7788@acsupplier01.mw.na.cat.com:7788@aclflexp01.acric.cat.com:7788@acat02.mw.na.cat.com:7788@acat01.mw.na.cat.com:7656@n1lflexp02.corp.cat.com:7656@mtlflexp03.corp.cat.com:7656@aclflexp01.acric.cat.com:7650@n1lflexp02.corp.cat.com:7650@mtlflexp03.corp.cat.com:7650@aclflexp01.acric.cat.com:7611@acsupplier01:7571@acwatp20.mw.na.cat.com:7571@acwatp10.mw.na.cat.com:7571@acsupplier01.mw.na.cat.com:7571@acsupplier01.mw.na.cat.com:7571@acat02.mw.na.cat.com:7571@acat01.mw.na.cat.com:7510@acwatp20.mw.na.cat.com:7510@acwatp10.mw.na.cat.com:7510@acsupplier01.mw.na.cat.com:7510@acat02.mw.na.cat.com:7510@acat01.mw.na.cat.com:7241@n1lflexp02.corp.cat.com:7241@mtlflexp03.corp.cat.com:7241@aclflexp01.acric.cat.com:7081@n1lflexp02.corp.cat.com:7081@mtlflexp03.corp.cat.com:7081@acsupplier01.mw.na.cat.com:7081@aclflexp01.acric.cat.com:7081@acflex03.acric.cat.com:7081@acflex02.acric.cat.com:7081@acflex01.acric.cat.com:7081@acat02.mw.na.cat.com:7081@acat01.mw.na.cat.com:5280@acflex03.acric.cat.com:5280@acflex02.acric.cat.com:5280@acflex01.acric.cat.com:5060@acwatp20.mw.na.cat.com:5060@acwatp10.mw.na.cat.com:5060@acsupplier01.mw.na.cat.com:5060@172.20.249.49:5060@172.20.248.248:5060@172.20.248.204:2900@acwatp20.mw.na.cat.com:2900@acwatp10.mw.na.cat.com:2900@acsupplier01.mw.na.cat.com:2900@acat02.mw.na.cat.com:2900@acat01.mw.na.cat.com:2689@acsupplier01.mw.na.cat.com:2689@acat02.mw.na.cat.com:2689@acat01.mw.na.cat.com:2078@acsupplier01.mw.na.cat.com:1717@n1lflexp02.corp.cat.com:1717@mtlflexp03.corp.cat.com:1717@aclflexp01.acric.cat.com:1701@acsupplier01.mw.na.cat.com:1701@acat02.mw.na.cat.com:1701@acat01.mw.na.cat.com:1700@acwatp20.mw.na.cat.com:1700@acwatp10.mw.na.cat.com:1700@acsupplier01.mw.na.cat.com:1700@acat02.mw.na.cat.com:1700@acat01.mw.na.cat.com:1522@n1lflexp02.corp.cat.com:1522@mtlflexp03.corp.cat.com:1522@aclflexp01.acric.cat.com:
export LM_LICENSE_FILE

# Executable Search Path
PATH=$PATH:\
$PATH_ABAQUS:\
$PATH_FLUENT:\
$PATH_STARCD:\
$PATH_ANSYS:\
$PATH_RADTHERM:\
$PATH_ANSOFT:\
$PATH_ISIGHT:\
$PATH_FESAFE:\
$PATH_TOMAHAWK:\
$PATH_CAT_PES:\
$HOME/bin

export PATH

if [[ ! -f $HOME/.flexlmrc ]]; then
  touch $HOME/.flexlmrc
fi


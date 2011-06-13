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

# ANSA
PATH_ANSA=/apps/ansa/ansa_v13.1.2
export ANSA_SRV=acsupplier01.mw.na.cat.com

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
LM_LICENSE_FILE=$FP_ABAQUS@$FS1:$FP_ABAQUS@$FS2:$FP_ABAQUS@$FS3:29000@acsupplier01.mw.na.cat.com:28850@$FS1:28850@$FS3:28850@$FS2:28575@$FS1:28575@$FS3:28575@$FS2:28518@$FS1:28518@$FS3:28518@acwatp20.mw.na.cat.com:28518@acwatp10.mw.na.cat.com:28518@acsupplier01.mw.na.cat.com:28518@$FS2:28518@acat02.mw.na.cat.com:28518@acat01.mw.na.cat.com:28100@n1lrdflex01.lrd.cat.com:28100@$FS1:28100@$FS3:28100@$FS2:28028@acsupplier01.mw.na.cat.com:28028@acat02.mw.na.cat.com:28028@acat01.mw.na.cat.com:28000@$FS1:28000@$FS3:28000@acwatp20.mw.na.cat.com:28000@acwatp10.mw.na.cat.com:28000@acsupplier01.mw.na.cat.com:28000@$FS2:28000@acat02.mw.na.cat.com:28000@acat01.mw.na.cat.com:27700@acsupplier01.mw.na.cat.com:27700@acat02.mw.na.cat.com:27700@acat01.mw.na.cat.com:27500@$FS1:27300@acwatp20.mw.na.cat.com:27300@acwatp10.mw.na.cat.com:27300@acsupplier01.mw.na.cat.com:27300@acsupplier01.mw.na.cat.com:27300@acat02.mw.na.cat.com:27300@acat01.mw.na.cat.com:27017@acwatp20.mw.na.cat.com:27017@acwatp10.mw.na.cat.com:27017@acsupplier01.mw.na.cat.com:27017@acat02.mw.na.cat.com:27017@acat01.mw.na.cat.com:27016@acwatp20.mw.na.cat.com:27016@acwatp10.mw.na.cat.com:27016@acsupplier01.mw.na.cat.com:27016@acat02.mw.na.cat.com:27016@acat01.mw.na.cat.com:27014@$FS1:27014@$FS3:27014@$FS2:27013@$FS1:27013@$FS3:27013@$FS2:27012@$FS1:27012@$FS3:27012@$FS2:27010@$FS1:27010@$FS3:27010@$FS2:27006@acwatp20.mw.na.cat.com:27006@acwatp10.mw.na.cat.com:27006@acsupplier01.mw.na.cat.com:27006@acat02.mw.na.cat.com:27006@acat01.mw.na.cat.com:27000@$FS1:27000@$FS3:27000@acsupplier01.mw.na.cat.com:27000@$FS2:26999@$FS1:25900@$FS1:25900@$FS3:25900@$FS2:25744@$FS1:25744@$FS3:25744@$FS2:25717@acsupplier01.mw.na.cat.com:25704@$FS1:25704@$FS3:25704@acsupplier01x.mw.na.cat.com:25704@acsupplier01.mw.na.cat.com:25704@$FS2:25704@acat02.mw.na.cat.com:25704@acat01.mw.na.cat.com:25702@$FS1:25702@$FS3:25702@$FS2:25571@$FS1:25571@$FS3:25571@acwatp20:25571@acwatp10:25571@acsupplier01:25571@$FS2:25571@acat02:25571@acat01:25500@acwatp20.mw.na.cat.com:25500@acwatp10.mw.na.cat.com:25500@acsupplier01.mw.na.cat.com:25300@$FS1:25300@$FS3:25300@$FS2:25200@$FS1:25200@$FS3:25200@$FS2:25199@$FS1:25199@$FS3:25199@$FS2:25172@$FS1:25170@$FS1:25170@$FS3:25170@$FS2:25110@acsupplier01.mw.na.cat.com:25100@$FS1:25100@$FS3:25100@acwatp20.mw.na.cat.com:25100@acwatp10.mw.na.cat.com:25100@acsupplier01.mw.na.cat.com:25100@$FS2:25100@acat02.mw.na.cat.com:25100@acat01.mw.na.cat.com:25060@n1lrdflex01.lrd.cat.com:25060@$FS1:25060@$FS3:25060@$FS2:25025@$FS1:25025@$FS3:25025@$FS2:25021@acsupplier01:25020@$FS1:25020@$FS3:25020@acwatp20:25020@acwatp10:25020@acsupplier01:25020@$FS2:25017@acwatp20.mw.na.cat.com:25017@acwatp10.mw.na.cat.com:25017@acsupplier01.mw.na.cat.com:25017@acat02.mw.na.cat.com:25017@acat01.mw.na.cat.com:25015@acwatp20.mw.na.cat.com:25015@acwatp10.mw.na.cat.com:25015@acsupplier01.mw.na.cat.com:25013@acsupplier01.mw.na.cat.com:25011@$FS1:25011@$FS3:25011@$FS2:25010@$FS1:25010@$FS3:25010@$FS2:25009@$FS1:25009@$FS3:25009@$FS2:25008@acsupplier01.mw.na.cat.com:25005@acwatp20.mw.na.cat.com:25005@acwatp10.mw.na.cat.com:25005@acsupplier01.mw.na.cat.com:25005@acat02.mw.na.cat.com:25005@acat01x.mw.na.cat.com:25005@acat01.mw.na.cat.com:25001@$FS1:25001@$FS3:25001@$FS2:25000@$FS2:21700@acsupplier01.mw.na.cat.com:8659@$FS1:8659@$FS3:8659@$FS2:8224@$FS1:8224@$FS3:8224@$FS2:7789@$FS1:7789@$FS1:7789@$FS3:7789@$FS2:7788@$FS1:7788@$FS3:7788@acwatp20.mw.na.cat.com:7788@acwatp10.mw.na.cat.com:7788@acsupplier01.mw.na.cat.com:7788@$FS2:7788@acat02.mw.na.cat.com:7788@acat01.mw.na.cat.com:7656@$FS1:7656@$FS3:7656@$FS2:7650@$FS1:7650@$FS3:7650@$FS2:7611@acsupplier01:7571@acwatp20.mw.na.cat.com:7571@acwatp10.mw.na.cat.com:7571@acsupplier01.mw.na.cat.com:7571@acsupplier01.mw.na.cat.com:7571@acat02.mw.na.cat.com:7571@acat01.mw.na.cat.com:7510@acwatp20.mw.na.cat.com:7510@acwatp10.mw.na.cat.com:7510@acsupplier01.mw.na.cat.com:7510@acat02.mw.na.cat.com:7510@acat01.mw.na.cat.com:7241@$FS1:7241@$FS3:7241@$FS2:7081@$FS1:7081@$FS3:7081@acsupplier01.mw.na.cat.com:7081@$FS2:7081@$FS3:7081@$FS2:7081@$FS1:7081@acat02.mw.na.cat.com:7081@acat01.mw.na.cat.com:5280@$FS3:5280@$FS2:5280@$FS1:5060@acwatp20.mw.na.cat.com:5060@acwatp10.mw.na.cat.com:5060@acsupplier01.mw.na.cat.com:5060@172.20.249.49:5060@172.20.248.248:5060@172.20.248.204:2900@acwatp20.mw.na.cat.com:2900@acwatp10.mw.na.cat.com:2900@acsupplier01.mw.na.cat.com:2900@acat02.mw.na.cat.com:2900@acat01.mw.na.cat.com:2689@acsupplier01.mw.na.cat.com:2689@acat02.mw.na.cat.com:2689@acat01.mw.na.cat.com:2078@acsupplier01.mw.na.cat.com:1717@$FS1:1717@$FS3:1717@$FS2:1701@acsupplier01.mw.na.cat.com:1701@acat02.mw.na.cat.com:1701@acat01.mw.na.cat.com:1700@acwatp20.mw.na.cat.com:1700@acwatp10.mw.na.cat.com:1700@acsupplier01.mw.na.cat.com:1700@acat02.mw.na.cat.com:1700@acat01.mw.na.cat.com:1522@$FS1:1522@$FS3:1522@$FS2
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
$PATH_ANSA:\
$PATH_CAT_PES:\
$HOME/bin

export PATH

if [[ ! -f $HOME/.flexlmrc ]]; then
  touch $HOME/.flexlmrc
fi


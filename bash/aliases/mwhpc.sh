# FlexLM License Servers (Triad)
export FS1=n1lflexp02.corp.cat.com
export FS2=aclflexp01.acric.cat.com
export FS3=mtlflexp03.corp.cat.com

# PBS Professional (aka PBSPro) (Vendor: Altair)
[ -f /etc/profile.d/pbs.sh ] && source /etc/profile.d/pbs.sh

# ABAQUS (Vendor: ABAQUS)
FV_ABAQUS=abaquslm
## versions 6.9 and 6.10
FP_ABAQUS=27000         
## version 6.8
#FP_ABAQUS=37000  # @n1pes01.cis.cat.com
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
PATH_STARCD=/apps/StarCD/starcd-3240/bin:/apps/StarCD/star-ccm/starccm+5.06.007/star/bin

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

# FlexLM License File
LM_LICENSE_FILE=\
$FL_ABAQUS:\
$FL_FLUENT:\
$FL_STARCD:\
$FL_ANSYS:\
$FL_NASTRAN:\
$FL_RADTHERM:\
$FL_ANSOFT:\
$FL_ISIGHT:\
$FL_CAT_PES:\
$LM_LICENSE_FILE

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


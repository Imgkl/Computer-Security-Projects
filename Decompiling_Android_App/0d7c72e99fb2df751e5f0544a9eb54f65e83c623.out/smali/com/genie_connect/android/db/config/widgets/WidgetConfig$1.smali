.class synthetic Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;
.super Ljava/lang/Object;
.source "WidgetConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/config/widgets/WidgetConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

.field static final synthetic $SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 545
    invoke-static {}, Lcom/genie_connect/android/db/config/GenieWidget;->values()[Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    :try_start_0
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->APPLAUNCH:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3a

    :goto_0
    :try_start_1
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_39

    :goto_1
    :try_start_2
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_POI:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_38

    :goto_2
    :try_start_3
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_37

    :goto_3
    :try_start_4
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_36

    :goto_4
    :try_start_5
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_35

    :goto_5
    :try_start_6
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_VISITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_34

    :goto_6
    :try_start_7
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->FIND_PEOPLE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_33

    :goto_7
    :try_start_8
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->FLICKR:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_32

    :goto_8
    :try_start_9
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->GAMIFICATION:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_31

    :goto_9
    :try_start_a
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->INFO:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_30

    :goto_a
    :try_start_b
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MAPPING:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2f

    :goto_b
    :try_start_c
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MULTIEVENTSELECTOR:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2e

    :goto_c
    :try_start_d
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_AGENDA:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2d

    :goto_d
    :try_start_e
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_FAVOURITE_SESSIONS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_2c

    :goto_e
    :try_start_f
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_DOWNLOADS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2b

    :goto_f
    :try_start_10
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_EVENT:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2a

    :goto_10
    :try_start_11
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_INBOX:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_29

    :goto_11
    :try_start_12
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_NOTES:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_28

    :goto_12
    :try_start_13
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_QRCODES:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_27

    :goto_13
    :try_start_14
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->MY_SETTINGS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_26

    :goto_14
    :try_start_15
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->NEWS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_25

    :goto_15
    :try_start_16
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->NEWSSOCIAL:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_24

    :goto_16
    :try_start_17
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->POI:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_23

    :goto_17
    :try_start_18
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_22

    :goto_18
    :try_start_19
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->QRREADER:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_21

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->RSSFEED:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_20

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->SCHEDULE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1f

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1e

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->TWITTER:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->YOUTUBE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1c

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->ACTIVITYSTREAM:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1b

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$android$db$config$GenieWidget:[I

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->SURVEYS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/GenieWidget;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_1a

    .line 192
    :goto_20
    invoke-static {}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->values()[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    :try_start_21
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APPREF:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_19

    :goto_21
    :try_start_22
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->AGENDAITEM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_18

    :goto_22
    :try_start_23
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_17

    :goto_23
    :try_start_24
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_16

    :goto_24
    :try_start_25
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_15

    :goto_25
    :try_start_26
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_14

    :goto_26
    :try_start_27
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_13

    :goto_27
    :try_start_28
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_12

    :goto_28
    :try_start_29
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_11

    :goto_29
    :try_start_2a
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_10

    :goto_2a
    :try_start_2b
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_f

    :goto_2b
    :try_start_2c
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_e

    :goto_2c
    :try_start_2d
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_d

    :goto_2d
    :try_start_2e
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_c

    :goto_2e
    :try_start_2f
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_b

    :goto_2f
    :try_start_30
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_a

    :goto_30
    :try_start_31
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ARTICLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_9

    :goto_31
    :try_start_32
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->GAME:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_8

    :goto_32
    :try_start_33
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->LOCATION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_7

    :goto_33
    :try_start_34
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_6

    :goto_34
    :try_start_35
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MEETING:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_5

    :goto_35
    :try_start_36
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MESSAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_4

    :goto_36
    :try_start_37
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->NOTE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_3

    :goto_37
    :try_start_38
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PLAYERGAME:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_2

    :goto_38
    :try_start_39
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->QRCODE_CUSTOM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_1

    :goto_39
    :try_start_3a
    sget-object v0, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TROPHY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_0

    :goto_3a
    return-void

    :catch_0
    move-exception v0

    goto :goto_3a

    :catch_1
    move-exception v0

    goto :goto_39

    :catch_2
    move-exception v0

    goto :goto_38

    :catch_3
    move-exception v0

    goto :goto_37

    :catch_4
    move-exception v0

    goto :goto_36

    :catch_5
    move-exception v0

    goto :goto_35

    :catch_6
    move-exception v0

    goto :goto_34

    :catch_7
    move-exception v0

    goto :goto_33

    :catch_8
    move-exception v0

    goto :goto_32

    :catch_9
    move-exception v0

    goto :goto_31

    :catch_a
    move-exception v0

    goto/16 :goto_30

    :catch_b
    move-exception v0

    goto/16 :goto_2f

    :catch_c
    move-exception v0

    goto/16 :goto_2e

    :catch_d
    move-exception v0

    goto/16 :goto_2d

    :catch_e
    move-exception v0

    goto/16 :goto_2c

    :catch_f
    move-exception v0

    goto/16 :goto_2b

    :catch_10
    move-exception v0

    goto/16 :goto_2a

    :catch_11
    move-exception v0

    goto/16 :goto_29

    :catch_12
    move-exception v0

    goto/16 :goto_28

    :catch_13
    move-exception v0

    goto/16 :goto_27

    :catch_14
    move-exception v0

    goto/16 :goto_26

    :catch_15
    move-exception v0

    goto/16 :goto_25

    :catch_16
    move-exception v0

    goto/16 :goto_24

    :catch_17
    move-exception v0

    goto/16 :goto_23

    :catch_18
    move-exception v0

    goto/16 :goto_22

    :catch_19
    move-exception v0

    goto/16 :goto_21

    .line 545
    :catch_1a
    move-exception v0

    goto/16 :goto_20

    :catch_1b
    move-exception v0

    goto/16 :goto_1f

    :catch_1c
    move-exception v0

    goto/16 :goto_1e

    :catch_1d
    move-exception v0

    goto/16 :goto_1d

    :catch_1e
    move-exception v0

    goto/16 :goto_1c

    :catch_1f
    move-exception v0

    goto/16 :goto_1b

    :catch_20
    move-exception v0

    goto/16 :goto_1a

    :catch_21
    move-exception v0

    goto/16 :goto_19

    :catch_22
    move-exception v0

    goto/16 :goto_18

    :catch_23
    move-exception v0

    goto/16 :goto_17

    :catch_24
    move-exception v0

    goto/16 :goto_16

    :catch_25
    move-exception v0

    goto/16 :goto_15

    :catch_26
    move-exception v0

    goto/16 :goto_14

    :catch_27
    move-exception v0

    goto/16 :goto_13

    :catch_28
    move-exception v0

    goto/16 :goto_12

    :catch_29
    move-exception v0

    goto/16 :goto_11

    :catch_2a
    move-exception v0

    goto/16 :goto_10

    :catch_2b
    move-exception v0

    goto/16 :goto_f

    :catch_2c
    move-exception v0

    goto/16 :goto_e

    :catch_2d
    move-exception v0

    goto/16 :goto_d

    :catch_2e
    move-exception v0

    goto/16 :goto_c

    :catch_2f
    move-exception v0

    goto/16 :goto_b

    :catch_30
    move-exception v0

    goto/16 :goto_a

    :catch_31
    move-exception v0

    goto/16 :goto_9

    :catch_32
    move-exception v0

    goto/16 :goto_8

    :catch_33
    move-exception v0

    goto/16 :goto_7

    :catch_34
    move-exception v0

    goto/16 :goto_6

    :catch_35
    move-exception v0

    goto/16 :goto_5

    :catch_36
    move-exception v0

    goto/16 :goto_4

    :catch_37
    move-exception v0

    goto/16 :goto_3

    :catch_38
    move-exception v0

    goto/16 :goto_2

    :catch_39
    move-exception v0

    goto/16 :goto_1

    :catch_3a
    move-exception v0

    goto/16 :goto_0
.end method

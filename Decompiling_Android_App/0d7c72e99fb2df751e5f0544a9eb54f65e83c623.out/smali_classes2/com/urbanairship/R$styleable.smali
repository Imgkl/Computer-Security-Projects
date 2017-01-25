.class public final Lcom/urbanairship/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BannerView:[I

.field public static final BannerView_bannerActionButtonTextAppearance:I = 0x6

.field public static final BannerView_bannerDismissButtonDrawable:I = 0x4

.field public static final BannerView_bannerFontPath:I = 0x0

.field public static final BannerView_bannerNoDismissButton:I = 0x5

.field public static final BannerView_bannerPrimaryColor:I = 0x2

.field public static final BannerView_bannerSecondaryColor:I = 0x3

.field public static final BannerView_bannerTextAppearance:I = 0x1

.field public static final CardView:[I

.field public static final CardView_optCardBackgroundColor:I = 0x0

.field public static final CardView_optCardCornerRadius:I = 0x1

.field public static final CardView_optCardElevation:I = 0x2

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final MapAttrs:[I

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_liteMode:I = 0x6

.field public static final MapAttrs_mapType:I = 0x0

.field public static final MapAttrs_uiCompass:I = 0x7

.field public static final MapAttrs_uiMapToolbar:I = 0xf

.field public static final MapAttrs_uiRotateGestures:I = 0x8

.field public static final MapAttrs_uiScrollGestures:I = 0x9

.field public static final MapAttrs_uiTiltGestures:I = 0xa

.field public static final MapAttrs_uiZoomControls:I = 0xb

.field public static final MapAttrs_uiZoomGestures:I = 0xc

.field public static final MapAttrs_useViewLifecycle:I = 0xd

.field public static final MapAttrs_zOrderOnTop:I = 0xe

.field public static final Theme:[I

.field public static final Theme_inAppMessageBannerStyle:I = 0x2

.field public static final UAWebView:[I

.field public static final UAWebView_mixed_content_mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 211
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/urbanairship/R$styleable;->BannerView:[I

    .line 219
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/urbanairship/R$styleable;->CardView:[I

    .line 223
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/urbanairship/R$styleable;->LoadingImageView:[I

    .line 227
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/urbanairship/R$styleable;->MapAttrs:[I

    .line 244
    const/16 v0, 0x6f

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/urbanairship/R$styleable;->Theme:[I

    .line 246
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010146

    aput v2, v0, v1

    sput-object v0, Lcom/urbanairship/R$styleable;->UAWebView:[I

    return-void

    .line 211
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
    .end array-data

    .line 219
    :array_1
    .array-data 4
        0x7f010007
        0x7f010008
        0x7f010009
    .end array-data

    .line 223
    :array_2
    .array-data 4
        0x7f010066
        0x7f010067
        0x7f010068
    .end array-data

    .line 227
    :array_3
    .array-data 4
        0x7f010069
        0x7f01006a
        0x7f01006b
        0x7f01006c
        0x7f01006d
        0x7f01006e
        0x7f01006f
        0x7f010070
        0x7f010071
        0x7f010072
        0x7f010073
        0x7f010074
        0x7f010075
        0x7f010076
        0x7f010077
        0x7f010078
    .end array-data

    .line 244
    :array_4
    .array-data 4
        0x1010057
        0x10100ae
        0x7f01000a
        0x7f0100c0
        0x7f0100c1
        0x7f0100c2
        0x7f0100c3
        0x7f0100c4
        0x7f0100c5
        0x7f0100c6
        0x7f0100c7
        0x7f0100c8
        0x7f0100c9
        0x7f0100ca
        0x7f0100cb
        0x7f0100cc
        0x7f0100cd
        0x7f0100ce
        0x7f0100cf
        0x7f0100d0
        0x7f0100d1
        0x7f0100d2
        0x7f0100d3
        0x7f0100d4
        0x7f0100d5
        0x7f0100d6
        0x7f0100d7
        0x7f0100d8
        0x7f0100d9
        0x7f0100da
        0x7f0100db
        0x7f0100dc
        0x7f0100dd
        0x7f0100de
        0x7f0100df
        0x7f0100e0
        0x7f0100e1
        0x7f0100e2
        0x7f0100e3
        0x7f0100e4
        0x7f0100e5
        0x7f0100e6
        0x7f0100e7
        0x7f0100e8
        0x7f0100e9
        0x7f0100ea
        0x7f0100eb
        0x7f0100ec
        0x7f0100ed
        0x7f0100ee
        0x7f0100ef
        0x7f0100f0
        0x7f0100f1
        0x7f0100f2
        0x7f0100f3
        0x7f0100f4
        0x7f0100f5
        0x7f0100f6
        0x7f0100f7
        0x7f0100f8
        0x7f0100f9
        0x7f0100fa
        0x7f0100fb
        0x7f0100fc
        0x7f0100fd
        0x7f0100fe
        0x7f0100ff
        0x7f010100
        0x7f010101
        0x7f010102
        0x7f010103
        0x7f010104
        0x7f010105
        0x7f010106
        0x7f010107
        0x7f010108
        0x7f010109
        0x7f01010a
        0x7f01010b
        0x7f01010c
        0x7f01010d
        0x7f01010e
        0x7f01010f
        0x7f010110
        0x7f010111
        0x7f010112
        0x7f010113
        0x7f010114
        0x7f010115
        0x7f010116
        0x7f010117
        0x7f010118
        0x7f010119
        0x7f01011a
        0x7f01011b
        0x7f01011c
        0x7f01011d
        0x7f01011e
        0x7f01011f
        0x7f010120
        0x7f010121
        0x7f010122
        0x7f010123
        0x7f010124
        0x7f010125
        0x7f010126
        0x7f010127
        0x7f010128
        0x7f010129
        0x7f01012a
        0x7f01012b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public final Lcom/edmodo/cropper/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/edmodo/cropper/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CropImageView:[I

.field public static final CropImageView_aspectRatioX:I = 0x2

.field public static final CropImageView_aspectRatioY:I = 0x3

.field public static final CropImageView_fixAspectRatio:I = 0x1

.field public static final CropImageView_guidelines:I = 0x0

.field public static final CropImageView_imageResource:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/edmodo/cropper/R$styleable;->CropImageView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010040
        0x7f010041
        0x7f010042
        0x7f010043
        0x7f010044
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

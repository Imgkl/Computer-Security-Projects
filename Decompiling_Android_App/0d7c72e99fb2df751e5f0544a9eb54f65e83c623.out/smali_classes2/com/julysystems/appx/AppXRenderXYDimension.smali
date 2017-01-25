.class Lcom/julysystems/appx/AppXRenderXYDimension;
.super Ljava/lang/Object;
.source "AppXRenderXYDimension.java"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/julysystems/appx/AppXRenderXYDimension;->width:I

    .line 9
    iput v0, p0, Lcom/julysystems/appx/AppXRenderXYDimension;->height:I

    .line 10
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/julysystems/appx/AppXRenderXYDimension;->width:I

    .line 14
    iput p2, p0, Lcom/julysystems/appx/AppXRenderXYDimension;->height:I

    .line 15
    return-void
.end method


# virtual methods
.method public set(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/julysystems/appx/AppXRenderXYDimension;->width:I

    .line 19
    iput p2, p0, Lcom/julysystems/appx/AppXRenderXYDimension;->height:I

    .line 20
    return-void
.end method

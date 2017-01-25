.class Lcom/julysystems/appx/AppXRenderBaseScreenCastView;
.super Landroid/widget/AbsoluteLayout;
.source "AppXRenderBaseScreenCastView.java"


# instance fields
.field private bgColor:I

.field private height:F

.field private renderBlock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXRenderBaseScreenCastView;->renderBlock:Ljava/lang/Object;

    .line 13
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/julysystems/appx/AppXRenderBaseScreenCastView;->height:F

    .line 14
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/julysystems/appx/AppXRenderBaseScreenCastView;->bgColor:I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/julysystems/appx/AppXRenderBaseScreenCastView;->renderBlock:Ljava/lang/Object;

    .line 13
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/julysystems/appx/AppXRenderBaseScreenCastView;->height:F

    .line 14
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/julysystems/appx/AppXRenderBaseScreenCastView;->bgColor:I

    .line 23
    return-void
.end method


# virtual methods
.method public getBgColor()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/julysystems/appx/AppXRenderBaseScreenCastView;->bgColor:I

    return v0
.end method

.method public getRenderBlock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderBaseScreenCastView;->renderBlock:Ljava/lang/Object;

    return-object v0
.end method

.method public getRenderHeight()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/julysystems/appx/AppXRenderBaseScreenCastView;->height:F

    return v0
.end method

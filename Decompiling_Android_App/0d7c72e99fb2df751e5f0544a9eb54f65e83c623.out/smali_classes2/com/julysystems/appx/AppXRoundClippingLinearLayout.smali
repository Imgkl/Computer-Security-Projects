.class public Lcom/julysystems/appx/AppXRoundClippingLinearLayout;
.super Landroid/widget/LinearLayout;
.source "AppXRoundClippingLinearLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/julysystems/appx/AppXRoundClippingLinearLayout;->setClipChildren(Z)V

    .line 19
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/julysystems/appx/AppXRoundClippingLinearLayout;->setWillNotDraw(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Rounded Clipping "

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 32
    :try_start_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 33
    .local v0, "clipArea":Landroid/graphics/Path;
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRoundClippingLinearLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRoundClippingLinearLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 34
    .local v2, "rect":Landroid/graphics/RectF;
    sget v3, Lcom/julysystems/appx/AppXConstants;->cornerRadius:I

    int-to-float v3, v3

    sget v4, Lcom/julysystems/appx/AppXConstants;->cornerRadius:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 35
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v0    # "clipArea":Landroid/graphics/Path;
    .end local v2    # "rect":Landroid/graphics/RectF;
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 41
    return-void

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Rounded Clipping On DRAW "

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

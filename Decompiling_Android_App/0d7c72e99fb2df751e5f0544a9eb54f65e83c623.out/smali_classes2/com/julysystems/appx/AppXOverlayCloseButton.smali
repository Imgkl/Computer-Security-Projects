.class public Lcom/julysystems/appx/AppXOverlayCloseButton;
.super Landroid/graphics/drawable/Drawable;
.source "AppXOverlayCloseButton.java"


# instance fields
.field private final btn:Landroid/widget/Button;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/widget/Button;)V
    .locals 1
    .param p1, "btn"    # Landroid/widget/Button;

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/julysystems/appx/AppXOverlayCloseButton;->btn:Landroid/widget/Button;

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/julysystems/appx/AppXOverlayCloseButton;->paint:Landroid/graphics/Paint;

    .line 19
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 24
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    iget-object v3, p0, Lcom/julysystems/appx/AppXOverlayCloseButton;->btn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v0, v3

    .line 26
    .local v0, "cx":F
    iget-object v3, p0, Lcom/julysystems/appx/AppXOverlayCloseButton;->btn:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    .line 28
    .local v1, "cy":F
    iget-object v3, p0, Lcom/julysystems/appx/AppXOverlayCloseButton;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    iget-object v3, p0, Lcom/julysystems/appx/AppXOverlayCloseButton;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget-object v3, p0, Lcom/julysystems/appx/AppXOverlayCloseButton;->paint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    const/high16 v3, 0x41f00000    # 30.0f

    iget-object v4, p0, Lcom/julysystems/appx/AppXOverlayCloseButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 34
    iget-object v3, p0, Lcom/julysystems/appx/AppXOverlayCloseButton;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v3, p0, Lcom/julysystems/appx/AppXOverlayCloseButton;->paint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    const/high16 v3, 0x41e00000    # 28.0f

    iget-object v4, p0, Lcom/julysystems/appx/AppXOverlayCloseButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 38
    iget-object v3, p0, Lcom/julysystems/appx/AppXOverlayCloseButton;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 39
    iget-object v3, p0, Lcom/julysystems/appx/AppXOverlayCloseButton;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object v3, p0, Lcom/julysystems/appx/AppXOverlayCloseButton;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x42100000    # 36.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 41
    iget-object v3, p0, Lcom/julysystems/appx/AppXOverlayCloseButton;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 42
    iget-object v3, p0, Lcom/julysystems/appx/AppXOverlayCloseButton;->paint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    const-string v3, "X"

    const/high16 v4, 0x41880000    # 17.0f

    sub-float v4, v0, v4

    const/high16 v5, 0x41400000    # 12.0f

    add-float/2addr v5, v1

    iget-object v6, p0, Lcom/julysystems/appx/AppXOverlayCloseButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0    # "cx":F
    .end local v1    # "cy":F
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Overlay Close Button"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 60
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 66
    return-void
.end method

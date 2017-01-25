.class Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;
.super Landroid/widget/ImageButton;
.source "AppXRenderScreenCastSelectionButton.java"


# instance fields
.field private actionRect:Lcom/julysystems/appx/AppXRenderRectC;

.field private actionUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderRectC;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rectC"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v4, Lcom/julysystems/appx/AppXRenderRectC;

    invoke-direct {v4, p2}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(Lcom/julysystems/appx/AppXRenderRectC;)V

    iput-object v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;->actionRect:Lcom/julysystems/appx/AppXRenderRectC;

    .line 20
    iput-object p3, p0, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;->actionUrl:Ljava/lang/String;

    .line 21
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p2}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v6

    float-to-int v6, v6

    iget v7, p2, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    float-to-int v7, v7

    iget v8, p2, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    float-to-int v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v4}, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;->setFocusable(Z)V

    .line 23
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;->setAlpha(I)V

    .line 24
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 25
    .local v3, "unselectedState":Landroid/graphics/drawable/ColorDrawable;
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x7

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x80

    const/16 v8, 0xe0

    const/16 v9, 0x5e

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x80

    const/16 v8, 0xe1

    const/16 v9, 0x79

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x80

    const/16 v8, 0xe1

    const/16 v9, 0x89

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x3

    const/16 v7, 0x80

    const/16 v8, 0xe1

    const/16 v9, 0x90

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0x80

    const/16 v8, 0xe1

    const/16 v9, 0x79

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x5

    const/16 v7, 0x80

    const/16 v8, 0xe1

    const/16 v9, 0x79

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x6

    const/16 v7, 0x80

    const/16 v8, 0xe0

    const/16 v9, 0x5e

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 26
    .local v0, "focusState":Landroid/graphics/drawable/GradientDrawable;
    sget-object v4, Lcom/julysystems/appx/AppXConstants;->focusState:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_0

    .line 27
    sget-object v0, Lcom/julysystems/appx/AppXConstants;->focusState:Landroid/graphics/drawable/GradientDrawable;

    .line 28
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 29
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x7

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x80

    const/16 v8, 0xe0

    const/16 v9, 0x99

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x80

    const/16 v8, 0xf5

    const/16 v9, 0xa9

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0xc4

    const/16 v8, 0xff

    const/16 v9, 0xb8

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x3

    const/16 v7, 0xc4

    const/16 v8, 0xff

    const/16 v9, 0xc6

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0xc4

    const/16 v8, 0xff

    const/16 v9, 0xb8

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x5

    const/16 v7, 0x80

    const/16 v8, 0xf5

    const/16 v9, 0xa9

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x6

    const/16 v7, 0x80

    const/16 v8, 0xe0

    const/16 v9, 0x99

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    invoke-direct {v1, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 30
    .local v1, "pressedState":Landroid/graphics/drawable/GradientDrawable;
    sget-object v4, Lcom/julysystems/appx/AppXConstants;->pressedState:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_1

    .line 31
    sget-object v1, Lcom/julysystems/appx/AppXConstants;->pressedState:Landroid/graphics/drawable/GradientDrawable;

    .line 32
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 33
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 34
    .local v2, "sld":Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x10100a7

    aput v6, v4, v5

    invoke-virtual {v2, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 35
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x101009c

    aput v6, v4, v5

    invoke-virtual {v2, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 36
    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 37
    invoke-virtual {p0, v2}, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    new-instance v4, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton$1;

    invoke-direct {v4, p0}, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton$1;-><init>(Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;)V

    invoke-virtual {p0, v4}, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;->actionUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getActionRect()Lcom/julysystems/appx/AppXRenderRectC;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;->actionRect:Lcom/julysystems/appx/AppXRenderRectC;

    return-object v0
.end method

.method public resetPosition(Lcom/julysystems/appx/AppXRenderRectC;)V
    .locals 5
    .param p1, "rectC"    # Lcom/julysystems/appx/AppXRenderRectC;

    .prologue
    .line 46
    new-instance v0, Lcom/julysystems/appx/AppXRenderRectC;

    invoke-direct {v0, p1}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(Lcom/julysystems/appx/AppXRenderRectC;)V

    iput-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;->actionRect:Lcom/julysystems/appx/AppXRenderRectC;

    .line 47
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v2

    float-to-int v2, v2

    iget v3, p1, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    float-to-int v3, v3

    iget v4, p1, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    return-void
.end method

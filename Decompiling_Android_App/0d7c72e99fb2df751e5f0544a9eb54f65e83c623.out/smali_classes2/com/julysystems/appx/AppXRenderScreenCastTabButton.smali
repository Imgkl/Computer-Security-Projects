.class Lcom/julysystems/appx/AppXRenderScreenCastTabButton;
.super Landroid/widget/ImageButton;
.source "AppXRenderScreenCastTabButton.java"


# instance fields
.field focusGainFlag:Z

.field focusReleaseFlag:Z

.field pressFlag:Z

.field private scview:Lcom/julysystems/appx/AppXRenderScreenCastView;

.field showFocusFlag:Z

.field private tabIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/RectF;ILcom/julysystems/appx/AppXRenderScreenCastView;)V
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "tabIndex"    # I
    .param p4, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->pressFlag:Z

    .line 18
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->focusGainFlag:Z

    .line 19
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->focusReleaseFlag:Z

    .line 20
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->showFocusFlag:Z

    .line 21
    const/4 v4, -0x1

    iput v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->tabIndex:I

    .line 26
    iput p3, p0, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->tabIndex:I

    .line 27
    iput-object p4, p0, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->scview:Lcom/julysystems/appx/AppXRenderScreenCastView;

    .line 28
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->setFocusable(Z)V

    .line 29
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->setAlpha(I)V

    .line 30
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 31
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

    .line 32
    .local v0, "focusState":Landroid/graphics/drawable/GradientDrawable;
    sget-object v4, Lcom/julysystems/appx/AppXConstants;->focusState:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_0

    .line 33
    sget-object v0, Lcom/julysystems/appx/AppXConstants;->focusState:Landroid/graphics/drawable/GradientDrawable;

    .line 34
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 35
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

    .line 36
    .local v1, "pressedState":Landroid/graphics/drawable/GradientDrawable;
    sget-object v4, Lcom/julysystems/appx/AppXConstants;->pressedState:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_1

    .line 37
    sget-object v1, Lcom/julysystems/appx/AppXConstants;->pressedState:Landroid/graphics/drawable/GradientDrawable;

    .line 38
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 39
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 40
    .local v2, "sld":Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x10100a7

    aput v6, v4, v5

    invoke-virtual {v2, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 41
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x101009c

    aput v6, v4, v5

    invoke-virtual {v2, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 42
    const/4 v4, 0x0

    new-array v4, v4, [I

    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-virtual {p0, v2}, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    new-instance v4, Lcom/julysystems/appx/AppXRenderScreenCastTabButton$1;

    invoke-direct {v4, p0}, Lcom/julysystems/appx/AppXRenderScreenCastTabButton$1;-><init>(Lcom/julysystems/appx/AppXRenderScreenCastTabButton;)V

    invoke-virtual {p0, v4}, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public buttonOnClick()V
    .locals 3

    .prologue
    .line 52
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->scview:Lcom/julysystems/appx/AppXRenderScreenCastView;

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderScreenCastView;->getSelectedTabIndex()I

    move-result v1

    iget v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->tabIndex:I

    if-eq v1, v2, :cond_0

    .line 53
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->scview:Lcom/julysystems/appx/AppXRenderScreenCastView;

    iget v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->tabIndex:I

    invoke-virtual {v1, v2}, Lcom/julysystems/appx/AppXRenderScreenCastView;->setSelectedTabIndex(I)V

    .line 54
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->scview:Lcom/julysystems/appx/AppXRenderScreenCastView;

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderScreenCastView;->getParams()Ljava/util/Hashtable;

    move-result-object v0

    .line 55
    .local v0, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "selectedTab"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "selectedTab"

    iget v2, p0, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->tabIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->scview:Lcom/julysystems/appx/AppXRenderScreenCastView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/julysystems/appx/AppXRenderScreenCastView;->setDidCalculate(Z)V

    .line 58
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->scview:Lcom/julysystems/appx/AppXRenderScreenCastView;

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderScreenCastView;->doCalculate()V

    .line 59
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;->scview:Lcom/julysystems/appx/AppXRenderScreenCastView;

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderScreenCastView;->requestLayout()V

    .line 61
    .end local v0    # "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

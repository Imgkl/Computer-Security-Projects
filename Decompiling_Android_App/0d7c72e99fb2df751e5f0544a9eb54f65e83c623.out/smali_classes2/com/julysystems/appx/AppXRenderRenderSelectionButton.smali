.class Lcom/julysystems/appx/AppXRenderRenderSelectionButton;
.super Landroid/widget/Button;
.source "AppXRenderRenderSelectionButton.java"


# instance fields
.field actionUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rectF"    # Landroid/graphics/RectF;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p3, p0, Lcom/julysystems/appx/AppXRenderRenderSelectionButton;->actionUrl:Ljava/lang/String;

    .line 19
    const/16 v0, 0xff

    const/16 v1, 0x80

    invoke-static {v2, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXRenderRenderSelectionButton;->setBackgroundColor(I)V

    .line 20
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXRenderRenderSelectionButton;->setWidth(I)V

    .line 21
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXRenderRenderSelectionButton;->setHeight(I)V

    .line 22
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    iget v3, p2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, p2, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXRenderRenderSelectionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXRenderRenderSelectionButton;->setFocusable(Z)V

    .line 24
    new-instance v0, Lcom/julysystems/appx/AppXRenderRenderSelectionButton$1;

    invoke-direct {v0, p0}, Lcom/julysystems/appx/AppXRenderRenderSelectionButton$1;-><init>(Lcom/julysystems/appx/AppXRenderRenderSelectionButton;)V

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXRenderRenderSelectionButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 32
    new-instance v0, Lcom/julysystems/appx/AppXRenderRenderSelectionButton$2;

    invoke-direct {v0, p0}, Lcom/julysystems/appx/AppXRenderRenderSelectionButton$2;-><init>(Lcom/julysystems/appx/AppXRenderRenderSelectionButton;)V

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXRenderRenderSelectionButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 45
    new-instance v0, Lcom/julysystems/appx/AppXRenderRenderSelectionButton$3;

    invoke-direct {v0, p0}, Lcom/julysystems/appx/AppXRenderRenderSelectionButton$3;-><init>(Lcom/julysystems/appx/AppXRenderRenderSelectionButton;)V

    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXRenderRenderSelectionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

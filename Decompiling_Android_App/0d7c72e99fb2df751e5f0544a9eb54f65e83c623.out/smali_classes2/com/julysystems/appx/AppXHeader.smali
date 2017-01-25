.class Lcom/julysystems/appx/AppXHeader;
.super Landroid/widget/LinearLayout;
.source "AppXHeader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "header"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v5, -0x1

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0, v5}, Lcom/julysystems/appx/AppXHeader;->setBackgroundColor(I)V

    .line 22
    sget-object v3, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v4, "cbssportsheaderbg"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 23
    .local v1, "cbssportsheaderbgId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXHeader;->setBackgroundResource(I)V

    .line 25
    const-string v3, "item"

    invoke-static {p2, v3}, Lcom/julysystems/appx/AppXXMLUtils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 27
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    .local v2, "headerImage":Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    sget-object v3, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v4, "univisionheader"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 30
    .local v0, "cbssportsheaderId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    invoke-virtual {p0, v2}, Lcom/julysystems/appx/AppXHeader;->addView(Landroid/view/View;)V

    .line 33
    return-void
.end method

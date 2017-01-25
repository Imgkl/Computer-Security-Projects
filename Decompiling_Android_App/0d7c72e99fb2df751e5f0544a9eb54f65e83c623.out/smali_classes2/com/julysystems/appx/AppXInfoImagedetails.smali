.class Lcom/julysystems/appx/AppXInfoImagedetails;
.super Landroid/widget/LinearLayout;
.source "AppXInfoImagedetails.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/w3c/dom/Element;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "element"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const-string v4, "img"

    invoke-static {p2, v4}, Lcom/julysystems/appx/AppXXMLUtils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 18
    .local v3, "image_element":Lorg/w3c/dom/Element;
    const-string v4, "bgcolor"

    invoke-interface {p2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "bgcolor":Ljava/lang/String;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4}, Lcom/julysystems/appx/AppXInfoImagedetails;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    if-eqz v3, :cond_1

    .line 21
    const-string v4, "src"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, "image_download_link":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 24
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 25
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    .local v1, "imageView":Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    invoke-static {v1, v2, v5}, Lcom/julysystems/appx/AppXUtils;->setImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 28
    const/4 v4, 0x5

    invoke-virtual {v1, v4, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 29
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 30
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 31
    const-string v4, "#dedede"

    invoke-static {v4}, Lcom/julysystems/appx/AppXUtils;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/julysystems/appx/AppXInfoImagedetails;->setBackgroundColor(I)V

    .line 32
    :cond_0
    invoke-virtual {p0, v1}, Lcom/julysystems/appx/AppXInfoImagedetails;->addView(Landroid/view/View;)V

    .line 37
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "image_download_link":Ljava/lang/String;
    :cond_1
    return-void
.end method

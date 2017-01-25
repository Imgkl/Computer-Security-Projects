.class Lcom/julysystems/appx/AppXText;
.super Landroid/widget/TextView;
.source "AppXText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/w3c/dom/Element;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "element"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x3

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v12, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9}, Lcom/julysystems/appx/AppXText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-virtual {p0, v11, v11, v11, v11}, Lcom/julysystems/appx/AppXText;->setPadding(IIII)V

    .line 28
    const-string v9, "bgcolor"

    invoke-interface {p2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "bgColorStr":Ljava/lang/String;
    const-string v9, "text"

    invoke-static {p2, v9}, Lcom/julysystems/appx/AppXXMLUtils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 32
    .local v7, "textElement":Lorg/w3c/dom/Element;
    const-string v9, "font_size"

    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, "fontSizeStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 35
    .local v3, "fontSize":Ljava/lang/Float;
    const-string v9, "font_family"

    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "fontFamily":Ljava/lang/String;
    const-string v9, "color"

    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "colorStr":Ljava/lang/String;
    invoke-static {v7}, Lcom/julysystems/appx/AppXXMLUtils;->getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 39
    .local v8, "textStr":Ljava/lang/String;
    invoke-static {v8}, Lcom/julysystems/appx/AppXUtils;->removeExtraSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 41
    const-string v9, "a"

    invoke-static {p2, v9}, Lcom/julysystems/appx/AppXXMLUtils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 42
    .local v5, "linkElement":Lorg/w3c/dom/Element;
    const-string v9, "href"

    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, "linkUrl":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/julysystems/appx/AppXText;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-static {v0, v12}, Lcom/julysystems/appx/AppXUtils;->getColor(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/julysystems/appx/AppXText;->setBackgroundColor(I)V

    .line 46
    invoke-static {v1}, Lcom/julysystems/appx/AppXUtils;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/julysystems/appx/AppXText;->setTextColor(I)V

    .line 47
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {p0, v9}, Lcom/julysystems/appx/AppXText;->setTextSize(F)V

    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "bold"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 49
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v9}, Lcom/julysystems/appx/AppXText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 51
    :cond_0
    new-instance v9, Lcom/julysystems/appx/AppXText$1;

    invoke-direct {v9, p0, v6}, Lcom/julysystems/appx/AppXText$1;-><init>(Lcom/julysystems/appx/AppXText;Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/julysystems/appx/AppXText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

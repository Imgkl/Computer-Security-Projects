.class Lcom/julysystems/appx/AppXInfo;
.super Landroid/widget/TextView;
.source "AppXInfo.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/w3c/dom/Element;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "infoElement"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v10, 0x3

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7}, Lcom/julysystems/appx/AppXInfo;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    invoke-virtual {p0, v10, v10, v10, v10}, Lcom/julysystems/appx/AppXInfo;->setPadding(IIII)V

    .line 23
    const-string v7, "bgcolor"

    invoke-interface {p2, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "bgColorStr":Ljava/lang/String;
    const/high16 v7, -0x1000000

    invoke-static {v0, v7}, Lcom/julysystems/appx/AppXUtils;->getColor(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/julysystems/appx/AppXInfo;->setBackgroundColor(I)V

    .line 26
    const-string v7, "message"

    invoke-static {p2, v7}, Lcom/julysystems/appx/AppXXMLUtils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 28
    .local v6, "msg":Lorg/w3c/dom/Element;
    const-string v7, "font_size"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    .local v4, "fontSizeStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 31
    .local v3, "fontSize":Ljava/lang/Float;
    const-string v7, "font_family"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "fontFamily":Ljava/lang/String;
    const-string v7, "color"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "colorStr":Ljava/lang/String;
    invoke-static {v6}, Lcom/julysystems/appx/AppXXMLUtils;->getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, "message":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 37
    const-string v7, "\\\\n"

    const-string v8, "\n"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41
    :goto_0
    invoke-virtual {p0, v5}, Lcom/julysystems/appx/AppXInfo;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const/4 v7, 0x1

    const/16 v8, 0x4b

    const/16 v9, 0x92

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v1, v7}, Lcom/julysystems/appx/AppXUtils;->getColor(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/julysystems/appx/AppXInfo;->setTextColor(I)V

    .line 43
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {p0, v7}, Lcom/julysystems/appx/AppXInfo;->setTextSize(F)V

    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "bold"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 45
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v7}, Lcom/julysystems/appx/AppXInfo;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    :cond_0
    return-void

    .line 39
    :cond_1
    const-string v5, ""

    goto :goto_0
.end method

.class Lcom/julysystems/appx/AppXSectionHeader;
.super Landroid/widget/TextView;
.source "AppXSectionHeader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/w3c/dom/Element;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sectionHeader"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    const-string v2, "headertext"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 18
    .local v1, "headerTextNode":Lorg/w3c/dom/Element;
    invoke-static {v1}, Lcom/julysystems/appx/AppXXMLUtils;->getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "headerText":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/julysystems/appx/AppXSectionHeader;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p0, v3, v3, v4, v3}, Lcom/julysystems/appx/AppXSectionHeader;->setPadding(IIII)V

    .line 23
    const/16 v2, 0x25

    const/16 v3, 0x4a

    const/16 v4, 0x89

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/julysystems/appx/AppXSectionHeader;->setBackgroundColor(I)V

    .line 25
    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p0, v2}, Lcom/julysystems/appx/AppXSectionHeader;->setTextSize(F)V

    .line 26
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/julysystems/appx/AppXSectionHeader;->setTypeface(Landroid/graphics/Typeface;)V

    .line 27
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/julysystems/appx/AppXSectionHeader;->setTextColor(I)V

    .line 28
    const/16 v2, 0x19

    invoke-virtual {p0, v2}, Lcom/julysystems/appx/AppXSectionHeader;->setHeight(I)V

    .line 29
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/julysystems/appx/AppXSectionHeader;->setGravity(I)V

    .line 30
    const/16 v2, 0x1e

    invoke-virtual {p0, v2}, Lcom/julysystems/appx/AppXSectionHeader;->setHeight(I)V

    .line 31
    return-void
.end method

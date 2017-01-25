.class Lcom/julysystems/appx/AppXTopNavigation;
.super Landroid/widget/LinearLayout;
.source "AppXTopNavigation.java"


# static fields
.field public static tabClicked:I


# instance fields
.field private index:I

.field private final pageView:Lcom/julysystems/appx/AppXPageView;

.field public selectedTab:I

.field private tabCount:I

.field private tabLeft:Landroid/widget/TextView;

.field private tabRight:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    sput v0, Lcom/julysystems/appx/AppXTopNavigation;->tabClicked:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/w3c/dom/Element;Lcom/julysystems/appx/AppXPageView;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "element"    # Lorg/w3c/dom/Element;
    .param p3, "pageView1"    # Lcom/julysystems/appx/AppXPageView;

    .prologue
    .line 26
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/julysystems/appx/AppXTopNavigation;->pageView:Lcom/julysystems/appx/AppXPageView;

    .line 28
    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXTopNavigation;->setBackgroundColor(I)V

    .line 30
    const-string v23, "button"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXXMLUtils;->getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v7

    .line 31
    .local v7, "buttonList":[Lorg/w3c/dom/Element;
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/julysystems/appx/AppXTopNavigation;->tabCount:I

    .line 32
    sget-object v23, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabCount:I

    move/from16 v24, v0

    div-int v18, v23, v24

    .line 34
    .local v18, "tabWidth":I
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/julysystems/appx/AppXTopNavigation;->index:I

    .line 35
    const/16 v23, 0x0

    aget-object v5, v7, v23

    .line 36
    .local v5, "btnElementLeft":Lorg/w3c/dom/Element;
    const-string v23, "name"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 37
    .local v10, "leftTabText":Ljava/lang/String;
    const-string v23, "selected"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 39
    .local v8, "isLeftSelected":Ljava/lang/String;
    const-string v23, "subdata"

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Lcom/julysystems/appx/AppXXMLUtils;->getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v16

    .line 40
    .local v16, "subDataLeft":[Lorg/w3c/dom/Element;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_0

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->pageView:Lcom/julysystems/appx/AppXPageView;

    move-object/from16 v23, v0

    new-instance v24, Lcom/julysystems/appx/AppXNavigation;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/julysystems/appx/AppXNavigation;-><init>(Landroid/content/Context;[Lorg/w3c/dom/Element;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/julysystems/appx/AppXPageView;->subNavigationLeft:Lcom/julysystems/appx/AppXNavigation;

    .line 43
    :cond_0
    const-string v23, "a"

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Lcom/julysystems/appx/AppXXMLUtils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 44
    .local v12, "linkLeftElem":Lorg/w3c/dom/Element;
    if-eqz v12, :cond_2

    const-string v23, "href"

    move-object/from16 v0, v23

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 46
    .local v11, "linkLeft":Ljava/lang/String;
    :goto_0
    new-instance v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    .line 47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/high16 v24, 0x41800000    # 16.0f

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setTextSize(F)V

    .line 50
    const-string v23, "true"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 51
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/julysystems/appx/AppXTopNavigation;->selectedTab:I

    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x4b

    const/16 v26, 0x96

    invoke-static/range {v24 .. v26}, Landroid/graphics/Color;->rgb(III)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    sget-object v23, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v24, "tableftsel"

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 54
    .local v20, "tableftselId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 61
    .end local v20    # "tableftselId":Ljava/lang/Integer;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x6

    const/16 v26, 0x0

    const/16 v27, 0x4

    invoke-virtual/range {v23 .. v27}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setGravity(I)V

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    move-object/from16 v23, v0

    new-instance v24, Lcom/julysystems/appx/AppXTopNavigation$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/julysystems/appx/AppXTopNavigation$1;-><init>(Lcom/julysystems/appx/AppXTopNavigation;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    move-object/from16 v23, v0

    new-instance v24, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v25, 0x1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->index:I

    move/from16 v26, v0

    mul-int v26, v26, v18

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXTopNavigation;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    move-object/from16 v0, p0

    iget v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->index:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/julysystems/appx/AppXTopNavigation;->index:I

    .line 83
    move-object/from16 v0, p0

    iget v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabCount:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    aget-object v6, v7, v23

    .line 84
    .local v6, "btnElementRight":Lorg/w3c/dom/Element;
    const-string v23, "name"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 85
    .local v15, "rightTabText":Ljava/lang/String;
    const-string v23, "selected"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 87
    .local v9, "isRightSelected":Ljava/lang/String;
    const-string v23, "subdata"

    move-object/from16 v0, v23

    invoke-static {v6, v0}, Lcom/julysystems/appx/AppXXMLUtils;->getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v17

    .line 88
    .local v17, "subDataRight":[Lorg/w3c/dom/Element;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_1

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->pageView:Lcom/julysystems/appx/AppXPageView;

    move-object/from16 v23, v0

    new-instance v24, Lcom/julysystems/appx/AppXNavigation;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/julysystems/appx/AppXNavigation;-><init>(Landroid/content/Context;[Lorg/w3c/dom/Element;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/julysystems/appx/AppXPageView;->subNavigationRight:Lcom/julysystems/appx/AppXNavigation;

    .line 91
    :cond_1
    const-string v23, "a"

    move-object/from16 v0, v23

    invoke-static {v6, v0}, Lcom/julysystems/appx/AppXXMLUtils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    .line 92
    .local v14, "linkRightElem":Lorg/w3c/dom/Element;
    if-eqz v14, :cond_4

    const-string v23, "href"

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 94
    .local v13, "linkRight":Ljava/lang/String;
    :goto_2
    new-instance v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/high16 v24, 0x41800000    # 16.0f

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setTextSize(F)V

    .line 98
    const-string v23, "true"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 99
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/julysystems/appx/AppXTopNavigation;->selectedTab:I

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x4b

    const/16 v26, 0x96

    invoke-static/range {v24 .. v26}, Landroid/graphics/Color;->rgb(III)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    sget-object v23, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v24, "tabrightsel"

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    .line 102
    .local v22, "tabrightselId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 108
    .end local v22    # "tabrightselId":Ljava/lang/Integer;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x6

    const/16 v26, 0x0

    const/16 v27, 0x4

    invoke-virtual/range {v23 .. v27}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setGravity(I)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    move-object/from16 v23, v0

    new-instance v24, Lcom/julysystems/appx/AppXTopNavigation$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/julysystems/appx/AppXTopNavigation$2;-><init>(Lcom/julysystems/appx/AppXTopNavigation;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    move-object/from16 v23, v0

    new-instance v24, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v25, 0x1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->index:I

    move/from16 v26, v0

    mul-int v26, v26, v18

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXTopNavigation;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-void

    .line 44
    .end local v6    # "btnElementRight":Lorg/w3c/dom/Element;
    .end local v9    # "isRightSelected":Ljava/lang/String;
    .end local v11    # "linkLeft":Ljava/lang/String;
    .end local v13    # "linkRight":Ljava/lang/String;
    .end local v14    # "linkRightElem":Lorg/w3c/dom/Element;
    .end local v15    # "rightTabText":Ljava/lang/String;
    .end local v17    # "subDataRight":[Lorg/w3c/dom/Element;
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 56
    .restart local v11    # "linkLeft":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    sget-object v23, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v24, "tableft"

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 58
    .local v19, "tableftId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 92
    .end local v19    # "tableftId":Ljava/lang/Integer;
    .restart local v6    # "btnElementRight":Lorg/w3c/dom/Element;
    .restart local v9    # "isRightSelected":Ljava/lang/String;
    .restart local v14    # "linkRightElem":Lorg/w3c/dom/Element;
    .restart local v15    # "rightTabText":Ljava/lang/String;
    .restart local v17    # "subDataRight":[Lorg/w3c/dom/Element;
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 104
    .restart local v13    # "linkRight":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    sget-object v23, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v24, "tabright"

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 106
    .local v21, "tabrightId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_3
.end method

.method static synthetic access$0(Lcom/julysystems/appx/AppXTopNavigation;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/julysystems/appx/AppXTopNavigation;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/julysystems/appx/AppXTopNavigation;I)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/julysystems/appx/AppXTopNavigation;->setSubNavVisibility(I)V

    return-void
.end method

.method private setSubNavVisibility(I)V
    .locals 3
    .param p1, "tabClicked"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 131
    sput p1, Lcom/julysystems/appx/AppXTopNavigation;->tabClicked:I

    .line 132
    iget-object v0, p0, Lcom/julysystems/appx/AppXTopNavigation;->pageView:Lcom/julysystems/appx/AppXPageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/julysystems/appx/AppXTopNavigation;->pageView:Lcom/julysystems/appx/AppXPageView;

    iget-object v0, v0, Lcom/julysystems/appx/AppXPageView;->subNavigationLeft:Lcom/julysystems/appx/AppXNavigation;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/julysystems/appx/AppXTopNavigation;->pageView:Lcom/julysystems/appx/AppXPageView;

    iget-object v0, v0, Lcom/julysystems/appx/AppXPageView;->subNavigationLeft:Lcom/julysystems/appx/AppXNavigation;

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXNavigation;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/julysystems/appx/AppXTopNavigation;->pageView:Lcom/julysystems/appx/AppXPageView;

    iget-object v0, v0, Lcom/julysystems/appx/AppXPageView;->subNavigationLeft:Lcom/julysystems/appx/AppXNavigation;

    invoke-virtual {v0, v2}, Lcom/julysystems/appx/AppXNavigation;->setVisibility(I)V

    .line 138
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/julysystems/appx/AppXTopNavigation;->pageView:Lcom/julysystems/appx/AppXPageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/julysystems/appx/AppXTopNavigation;->pageView:Lcom/julysystems/appx/AppXPageView;

    iget-object v0, v0, Lcom/julysystems/appx/AppXPageView;->subNavigationRight:Lcom/julysystems/appx/AppXNavigation;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/julysystems/appx/AppXTopNavigation;->pageView:Lcom/julysystems/appx/AppXPageView;

    iget-object v0, v0, Lcom/julysystems/appx/AppXPageView;->subNavigationRight:Lcom/julysystems/appx/AppXNavigation;

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXNavigation;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/julysystems/appx/AppXTopNavigation;->pageView:Lcom/julysystems/appx/AppXPageView;

    iget-object v0, v0, Lcom/julysystems/appx/AppXPageView;->subNavigationRight:Lcom/julysystems/appx/AppXNavigation;

    invoke-virtual {v0, v2}, Lcom/julysystems/appx/AppXNavigation;->setVisibility(I)V

    .line 144
    :cond_1
    :goto_1
    return-void

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/julysystems/appx/AppXTopNavigation;->pageView:Lcom/julysystems/appx/AppXPageView;

    iget-object v0, v0, Lcom/julysystems/appx/AppXPageView;->subNavigationLeft:Lcom/julysystems/appx/AppXNavigation;

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXNavigation;->setVisibility(I)V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/julysystems/appx/AppXTopNavigation;->pageView:Lcom/julysystems/appx/AppXPageView;

    iget-object v0, v0, Lcom/julysystems/appx/AppXPageView;->subNavigationRight:Lcom/julysystems/appx/AppXNavigation;

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXNavigation;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public setTabSelection()V
    .locals 10

    .prologue
    const/16 v9, 0x96

    const/16 v8, 0x4b

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 147
    iget-object v4, p0, Lcom/julysystems/appx/AppXTopNavigation;->pageView:Lcom/julysystems/appx/AppXPageView;

    iget-object v4, v4, Lcom/julysystems/appx/AppXPageView;->topNavigation:Lcom/julysystems/appx/AppXTopNavigation;

    if-nez v4, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v4, p0, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 150
    iget v4, p0, Lcom/julysystems/appx/AppXTopNavigation;->selectedTab:I

    if-ne v4, v6, :cond_3

    .line 151
    iget-object v4, p0, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    invoke-static {v6, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    sget-object v4, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v5, "tableftsel"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 153
    .local v1, "tableftselId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 160
    .end local v1    # "tableftselId":Ljava/lang/Integer;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 161
    iget v4, p0, Lcom/julysystems/appx/AppXTopNavigation;->selectedTab:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 162
    iget-object v4, p0, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    invoke-static {v6, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    sget-object v4, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v5, "tabrightsel"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 164
    .local v3, "tabrightselId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 155
    .end local v3    # "tabrightselId":Ljava/lang/Integer;
    :cond_3
    iget-object v4, p0, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    sget-object v4, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v5, "tableft"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 157
    .local v0, "tableftId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/julysystems/appx/AppXTopNavigation;->tabLeft:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 166
    .end local v0    # "tableftId":Ljava/lang/Integer;
    :cond_4
    iget-object v4, p0, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    sget-object v4, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v5, "tabright"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 168
    .local v2, "tabrightId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/julysystems/appx/AppXTopNavigation;->tabRight:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

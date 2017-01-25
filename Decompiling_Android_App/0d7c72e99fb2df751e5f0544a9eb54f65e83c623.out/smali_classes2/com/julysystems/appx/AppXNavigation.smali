.class Lcom/julysystems/appx/AppXNavigation;
.super Landroid/widget/AbsoluteLayout;
.source "AppXNavigation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lorg/w3c/dom/Element;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subdataList"    # [Lorg/w3c/dom/Element;

    .prologue
    .line 25
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v19, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget-object v20, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    const/16 v21, 0x27

    const/16 v22, 0x0

    const/16 v23, 0x2

    invoke-direct/range {v19 .. v23}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXNavigation;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    sget-object v19, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v20, "navgray"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 28
    .local v12, "navgrayId":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXNavigation;->setBackgroundResource(I)V

    .line 29
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXNavigation;->setVisibility(I)V

    .line 30
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXNavigation;->setId(I)V

    .line 32
    const/4 v5, 0x0

    .line 34
    .local v5, "count":I
    new-instance v14, Lcom/julysystems/appx/AppXFullScrollView;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/julysystems/appx/AppXFullScrollView;-><init>(Landroid/content/Context;)V

    .line 35
    .local v14, "scrollView":Lcom/julysystems/appx/AppXFullScrollView;
    new-instance v19, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget-object v20, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1d

    const/16 v21, 0x23

    const/16 v22, 0xf

    const/16 v23, 0x2

    invoke-direct/range {v19 .. v23}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/julysystems/appx/AppXFullScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/julysystems/appx/AppXNavigation;->addView(Landroid/view/View;)V

    .line 38
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    .local v10, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v19, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget-object v20, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1d

    const/16 v21, 0x23

    const/16 v22, 0xf

    const/16 v23, 0x2

    invoke-direct/range {v19 .. v23}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 42
    invoke-virtual {v14, v10}, Lcom/julysystems/appx/AppXFullScrollView;->addView(Landroid/view/View;)V

    .line 46
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 114
    return-void

    .line 46
    :cond_0
    aget-object v16, p2, v19

    .line 48
    .local v16, "subData":Lorg/w3c/dom/Element;
    const-string v21, "a"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXXMLUtils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 49
    .local v11, "linkElement":Lorg/w3c/dom/Element;
    const-string v21, "href"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 50
    .local v18, "url":Ljava/lang/String;
    invoke-static {v11}, Lcom/julysystems/appx/AppXXMLUtils;->getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "displayText":Ljava/lang/String;
    const-string v21, "img"

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 54
    .local v7, "imageElement":Lorg/w3c/dom/Element;
    new-instance v13, Lcom/julysystems/appx/AppXNavigation$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Lcom/julysystems/appx/AppXNavigation$1;-><init>(Lcom/julysystems/appx/AppXNavigation;Ljava/lang/String;)V

    .line 67
    .local v13, "onClickListener":Landroid/view/View$OnClickListener;
    add-int/lit8 v5, v5, 0x1

    .line 68
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_1

    .line 69
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    .local v17, "textView":Landroid/widget/TextView;
    const-string v21, "  "

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    .end local v17    # "textView":Landroid/widget/TextView;
    :cond_1
    if-eqz v7, :cond_2

    .line 76
    const-string v21, "src"

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, "imageSrc":Ljava/lang/String;
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 79
    .local v9, "imageView":Landroid/widget/ImageView;
    new-instance v21, Ljava/lang/StringBuilder;

    sget-object v22, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v9, v0, v1}, Lcom/julysystems/appx/AppXUtils;->setImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 80
    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const/16 v21, 0x0

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 83
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 46
    .end local v8    # "imageSrc":Ljava/lang/String;
    .end local v9    # "imageView":Landroid/widget/ImageView;
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 85
    :cond_2
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 86
    .restart local v17    # "textView":Landroid/widget/TextView;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, " "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const/high16 v21, 0x41600000    # 14.0f

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 88
    if-eqz v6, :cond_3

    sget-object v21, Lcom/julysystems/appx/AppXPageView;->navText:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 89
    const/16 v21, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    sget-object v21, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v22, "selectedbutton"

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 91
    .local v15, "selectedbuttonId":Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 92
    const/16 v21, 0x0

    sput-object v21, Lcom/julysystems/appx/AppXPageView;->navText:Ljava/lang/String;

    .line 96
    .end local v15    # "selectedbuttonId":Ljava/lang/Integer;
    :goto_2
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    const/16 v21, 0x3

    const/16 v22, 0xa

    const/16 v23, 0x3

    const/16 v24, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 98
    const/16 v21, 0x10

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 99
    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 100
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalScrollBarEnabled(Z)V

    .line 101
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 94
    :cond_3
    const/16 v21, 0x1

    const/16 v22, 0x4b

    const/16 v23, 0x96

    invoke-static/range {v21 .. v23}, Landroid/graphics/Color;->rgb(III)I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

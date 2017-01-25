.class Lcom/julysystems/appx/AppXMenu;
.super Landroid/widget/LinearLayout;
.source "AppXMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/julysystems/appx/AppXMenu$MenuItem;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/w3c/dom/Element;)V
    .locals 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 23
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/high16 v22, -0x1000000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXMenu;->setBackgroundColor(I)V

    .line 25
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXMenu;->setOrientation(I)V

    .line 27
    const-string v22, "view"

    const-string v23, "name"

    const-string v24, "menu_section"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/julysystems/appx/AppXXMLUtils;->getChildrenWithAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v15

    .line 28
    .local v15, "menuSectionList":[Lorg/w3c/dom/Element;
    const/4 v6, 0x0

    .line 29
    .local v6, "i":I
    const/4 v8, 0x0

    .line 30
    .local v8, "j":I
    array-length v0, v15

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 103
    return-void

    .line 30
    :cond_0
    aget-object v14, v15, v22

    .line 31
    .local v14, "menuSectionElement":Lorg/w3c/dom/Element;
    const-string v24, "section"

    move-object/from16 v0, v24

    invoke-static {v14, v0}, Lcom/julysystems/appx/AppXXMLUtils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 32
    .local v17, "sectionElement":Lorg/w3c/dom/Element;
    const-string v24, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 35
    .local v18, "sectionName":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 36
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    .local v5, "divider":Landroid/widget/LinearLayout;
    new-instance v24, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget-object v25, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    const/16 v26, 0x2

    const/16 v27, 0x0

    mul-int/lit8 v28, v6, 0x2a

    invoke-direct/range {v24 .. v28}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    const/high16 v24, -0x1000000

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 39
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/julysystems/appx/AppXMenu;->addView(Landroid/view/View;)V

    .line 42
    .end local v5    # "divider":Landroid/widget/LinearLayout;
    :cond_1
    new-instance v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    .local v20, "topLevelMenu":Landroid/widget/LinearLayout;
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, -0x2

    invoke-direct/range {v24 .. v26}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    const/16 v24, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45
    const/16 v24, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 46
    const/16 v24, 0x32

    const/16 v25, 0x32

    const/16 v26, 0x32

    invoke-static/range {v24 .. v26}, Landroid/graphics/Color;->rgb(III)I

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/julysystems/appx/AppXUtils;->getStateListDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXMenu;->addView(Landroid/view/View;)V

    .line 49
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .local v9, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v24, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget-object v25, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    const/16 v26, 0x28

    const/16 v27, 0x0

    mul-int/lit8 v28, v6, 0x2a

    invoke-direct/range {v24 .. v28}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 54
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    .local v19, "textView":Landroid/widget/TextView;
    new-instance v24, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget-object v25, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1e

    const/16 v26, 0x28

    const/16 v27, 0x0

    mul-int/lit8 v28, v6, 0x2a

    invoke-direct/range {v24 .. v28}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    const/high16 v24, 0x41600000    # 14.0f

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 59
    const/16 v24, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    const/16 v24, 0x10

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    const/16 v24, 0xa

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 62
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    const-string v24, "menuitems"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXXMLUtils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 68
    .local v13, "menuItemsElement":Lorg/w3c/dom/Element;
    if-eqz v13, :cond_3

    .line 69
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 70
    .local v7, "imageView":Landroid/widget/ImageView;
    new-instance v24, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v25, 0xa

    const/16 v26, 0xa

    const/16 v27, 0x122

    const/16 v28, 0xa

    invoke-direct/range {v24 .. v28}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    sget-object v24, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v25, "right"

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 72
    .local v16, "rightId":Ljava/lang/Integer;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    new-instance v12, Lcom/julysystems/appx/AppXMenu$MenuItem;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1, v13}, Lcom/julysystems/appx/AppXMenu$MenuItem;-><init>(Lcom/julysystems/appx/AppXMenu;Landroid/content/Context;Lorg/w3c/dom/Element;)V

    .line 77
    .local v12, "menuItem":Lcom/julysystems/appx/AppXMenu$MenuItem;
    if-nez v8, :cond_2

    .line 78
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/julysystems/appx/AppXMenu$MenuItem;->setVisibility(I)V

    .line 79
    :cond_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    new-instance v24, Lcom/julysystems/appx/AppXMenu$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/julysystems/appx/AppXMenu$1;-><init>(Lcom/julysystems/appx/AppXMenu;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    add-int/lit8 v8, v8, 0x1

    .line 101
    .end local v7    # "imageView":Landroid/widget/ImageView;
    .end local v12    # "menuItem":Lcom/julysystems/appx/AppXMenu$MenuItem;
    .end local v16    # "rightId":Ljava/lang/Integer;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 30
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 94
    :cond_3
    const-string v24, "a"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXXMLUtils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 95
    .local v10, "link":Lorg/w3c/dom/Element;
    const-string v24, "href"

    move-object/from16 v0, v24

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 97
    .local v11, "linkUrl":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    sget-object v25, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 98
    .local v21, "urlStr":Ljava/lang/String;
    new-instance v24, Lcom/julysystems/appx/AppXJViewOnClickListener;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/julysystems/appx/AppXJViewOnClickListener;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

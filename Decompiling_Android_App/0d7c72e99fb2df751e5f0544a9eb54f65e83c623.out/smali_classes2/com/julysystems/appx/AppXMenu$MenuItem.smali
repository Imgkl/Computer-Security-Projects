.class Lcom/julysystems/appx/AppXMenu$MenuItem;
.super Landroid/widget/LinearLayout;
.source "AppXMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/julysystems/appx/AppXMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/julysystems/appx/AppXMenu;


# direct methods
.method public constructor <init>(Lcom/julysystems/appx/AppXMenu;Landroid/content/Context;Lorg/w3c/dom/Element;)V
    .locals 17
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "menuItemsElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 107
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/julysystems/appx/AppXMenu$MenuItem;->this$0:Lcom/julysystems/appx/AppXMenu;

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 109
    const/high16 v10, -0x1000000

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/julysystems/appx/AppXMenu$MenuItem;->setBackgroundColor(I)V

    .line 110
    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/julysystems/appx/AppXMenu$MenuItem;->setOrientation(I)V

    .line 111
    const/16 v10, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/julysystems/appx/AppXMenu$MenuItem;->setVisibility(I)V

    .line 113
    const-string v10, "a"

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Lcom/julysystems/appx/AppXXMLUtils;->getChildren(Lorg/w3c/dom/Element;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v7

    .line 114
    .local v7, "links":[Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .line 115
    .local v3, "i":I
    array-length v11, v7

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v11, :cond_0

    .line 142
    return-void

    .line 115
    :cond_0
    aget-object v4, v7, v10

    .line 116
    .local v4, "link":Lorg/w3c/dom/Element;
    invoke-static {v4}, Lcom/julysystems/appx/AppXXMLUtils;->getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "linkText":Ljava/lang/String;
    const-string v12, "href"

    invoke-interface {v4, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "linkUrl":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v13, Lcom/julysystems/appx/AppXConstants;->baseUrl:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, "urlStr":Ljava/lang/String;
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 122
    .local v2, "divider":Landroid/widget/LinearLayout;
    new-instance v12, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget-object v13, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v14, 0x2

    const/4 v15, 0x0

    mul-int/lit8 v16, v3, 0x2a

    invoke-direct/range {v12 .. v16}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    const/high16 v12, -0x1000000

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 124
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/julysystems/appx/AppXMenu$MenuItem;->addView(Landroid/view/View;)V

    .line 126
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 127
    .local v8, "textView":Landroid/widget/TextView;
    new-instance v12, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget-object v13, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v14, 0x28

    const/4 v15, 0x0

    mul-int/lit8 v16, v3, 0x2a

    invoke-direct/range {v12 .. v16}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 129
    const/high16 v12, -0x1000000

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    const/4 v12, -0x1

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 131
    const/16 v12, 0x10

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 132
    const/16 v12, 0xa

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 133
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    new-instance v12, Lcom/julysystems/appx/AppXJViewOnClickListener;

    invoke-direct {v12, v9}, Lcom/julysystems/appx/AppXJViewOnClickListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 136
    const/4 v12, -0x1

    invoke-static {v12}, Lcom/julysystems/appx/AppXUtils;->getStateListDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/julysystems/appx/AppXMenu$MenuItem;->addView(Landroid/view/View;)V

    .line 140
    add-int/lit8 v3, v3, 0x1

    .line 115
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0
.end method

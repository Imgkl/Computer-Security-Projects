.class Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;
.super Landroid/widget/LinearLayout;
.source "AppXRenderOldTabContainerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field buttons:[Landroid/widget/Button;

.field private height:I

.field private final pageData:Lcom/julysystems/appx/AppXPageData;

.field private selectedTab:I

.field private tabBlocks:[Lcom/julysystems/appx/AppXRenderOldRenderBlock;

.field private tabButtons:Landroid/widget/AbsoluteLayout;

.field tabCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderOldRenderBlock;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXPageData;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "block"    # Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    .param p3, "ctxRect"    # Landroid/graphics/RectF;
    .param p4, "pageData"    # Lcom/julysystems/appx/AppXPageData;

    .prologue
    .line 30
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v9, -0x1

    iput v9, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->selectedTab:I

    .line 31
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->pageData:Lcom/julysystems/appx/AppXPageData;

    .line 32
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9}, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->setOrientation(I)V

    .line 34
    new-instance v9, Landroid/widget/AbsoluteLayout;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->tabButtons:Landroid/widget/AbsoluteLayout;

    .line 35
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->tabButtons:Landroid/widget/AbsoluteLayout;

    new-instance v10, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget-object v11, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v12, 0x34

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v9, v10}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    array-length v9, v9

    iput v9, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->tabCount:I

    .line 38
    iget v9, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->tabCount:I

    new-array v9, v9, [Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    iput-object v9, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->tabBlocks:[Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    .line 39
    iget v9, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->tabCount:I

    new-array v9, v9, [Landroid/widget/Button;

    iput-object v9, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->buttons:[Landroid/widget/Button;

    .line 40
    sget-object v9, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v10, "tablayoutbg"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 41
    .local v8, "tablayoutbgId":Ljava/lang/Integer;
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->tabButtons:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/AbsoluteLayout;->setBackgroundResource(I)V

    .line 42
    sget-object v9, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v9, v9, -0x14

    iget v10, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->tabCount:I

    div-int v5, v9, v10

    .line 43
    .local v5, "tabWidth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v9, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->tabCount:I

    if-lt v2, v9, :cond_0

    .line 63
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->buttons:[Landroid/widget/Button;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setPressed(Z)V

    .line 64
    sget-object v9, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v10, "tabbgsel"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 65
    .local v7, "tabbgselId":Ljava/lang/Integer;
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->buttons:[Landroid/widget/Button;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 66
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->tabButtons:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p0, v9}, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->addView(Landroid/view/View;)V

    .line 67
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->selectTab(I)V

    .line 68
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    iget v10, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->height:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->bottom:F

    .line 69
    return-void

    .line 44
    .end local v7    # "tabbgselId":Ljava/lang/Integer;
    :cond_0
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    aget-object v3, v9, v2

    .line 45
    .local v3, "instr":Lcom/julysystems/appx/AppXRenderOldInstruction;
    invoke-virtual {v3}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInstructionId()I

    move-result v9

    const/16 v10, 0xe

    if-ne v9, v10, :cond_1

    .line 46
    const/4 v9, 0x5

    const-string v10, ""

    invoke-virtual {v3, v9, v10}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "tabName":Ljava/lang/String;
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->buttons:[Landroid/widget/Button;

    new-instance v1, Landroid/widget/Button;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    aput-object v1, v9, v2

    .line 49
    .local v1, "button":Landroid/widget/Button;
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v9, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v10, 0x3c

    mul-int v11, v2, v5

    add-int/lit8 v11, v11, 0xa

    const/4 v12, 0x0

    invoke-direct {v9, v5, v10, v11, v12}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    sget-object v9, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v10, "tabbg"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 52
    .local v6, "tabbgId":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 53
    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setTextSize(F)V

    .line 54
    const/4 v9, -0x1

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 55
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 57
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->tabButtons:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->tabBlocks:[Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInnerRenderBlock(I)Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    move-result-object v10

    aput-object v10, v9, v2

    .line 43
    .end local v1    # "button":Landroid/widget/Button;
    .end local v4    # "tabName":Ljava/lang/String;
    .end local v6    # "tabbgId":Ljava/lang/Integer;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public getInitializedHeight()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->height:I

    int-to-float v0, v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v5, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->buttons:[Landroid/widget/Button;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_0

    .line 102
    sget-object v4, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v5, "tabbgsel"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 103
    .local v3, "tabbgselId":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 105
    .local v1, "tabIndex":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->selectTab(I)V

    .line 107
    return-void

    .line 98
    .end local v1    # "tabIndex":Ljava/lang/Integer;
    .end local v3    # "tabbgselId":Ljava/lang/Integer;
    :cond_0
    aget-object v0, v5, v4

    .line 99
    .local v0, "button":Landroid/widget/Button;
    sget-object v7, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v8, "tabbg"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 100
    .local v2, "tabbgId":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 18
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 20
    return-void
.end method

.method public selectTab(I)V
    .locals 9
    .param p1, "selectedTab"    # I

    .prologue
    .line 72
    iget v6, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->selectedTab:I

    if-ne v6, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7}, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->removeViews(II)V

    .line 76
    const/16 v6, 0x3c

    iput v6, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->height:I

    .line 77
    iget-object v6, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->tabBlocks:[Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    aget-object v4, v6, p1

    .line 78
    .local v4, "tabData":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    iget-object v6, v4, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    array-length v5, v6

    .line 79
    .local v5, "tabDataCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v5, :cond_2

    .line 87
    iput p1, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->selectedTab:I

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/julysystems/appx/AppXRenderOldRenderField;

    iget v7, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->height:I

    invoke-virtual {v6, v7}, Lcom/julysystems/appx/AppXRenderOldRenderField;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception in TabContainerField:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v6, v4, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    aget-object v2, v6, v1

    .line 81
    .local v2, "instr":Lcom/julysystems/appx/AppXRenderOldInstruction;
    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInstructionId()I

    move-result v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_3

    .line 82
    new-instance v3, Lcom/julysystems/appx/AppXRenderOldRenderField;

    sget-object v6, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInnerRenderBlock(I)Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    move-result-object v7

    iget-object v8, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->pageData:Lcom/julysystems/appx/AppXPageData;

    invoke-direct {v3, v6, v7, v8}, Lcom/julysystems/appx/AppXRenderOldRenderField;-><init>(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderOldRenderBlock;Lcom/julysystems/appx/AppXPageData;)V

    .line 83
    .local v3, "renderField":Lcom/julysystems/appx/AppXRenderOldRenderField;
    iget v6, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->height:I

    int-to-float v6, v6

    invoke-virtual {v3}, Lcom/julysystems/appx/AppXRenderOldRenderField;->getBlockHeight()F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->height:I

    .line 84
    invoke-virtual {p0, v3}, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->addView(Landroid/view/View;)V

    .line 79
    .end local v3    # "renderField":Lcom/julysystems/appx/AppXRenderOldRenderField;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

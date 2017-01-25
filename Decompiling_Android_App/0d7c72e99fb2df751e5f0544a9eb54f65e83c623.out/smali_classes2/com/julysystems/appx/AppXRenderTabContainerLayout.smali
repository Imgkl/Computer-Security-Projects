.class Lcom/julysystems/appx/AppXRenderTabContainerLayout;
.super Landroid/widget/LinearLayout;
.source "AppXRenderTabContainerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field buttons:[Landroid/widget/Button;

.field private height:F

.field private final pageData:Lcom/julysystems/appx/AppXPageData;

.field private selectedTab:I

.field private tabBlocks:[Lcom/julysystems/appx/AppXRenderRenderBlock;

.field private tabButtons:Landroid/widget/AbsoluteLayout;

.field tabCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderRenderBlock;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXPageData;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "block"    # Lcom/julysystems/appx/AppXRenderRenderBlock;
    .param p3, "ctxRect"    # Landroid/graphics/RectF;
    .param p4, "pageData"    # Lcom/julysystems/appx/AppXPageData;

    .prologue
    .line 27
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v9, -0x1

    iput v9, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->selectedTab:I

    .line 28
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->pageData:Lcom/julysystems/appx/AppXPageData;

    .line 29
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9}, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->setOrientation(I)V

    .line 31
    new-instance v9, Landroid/widget/AbsoluteLayout;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->tabButtons:Landroid/widget/AbsoluteLayout;

    .line 32
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->tabButtons:Landroid/widget/AbsoluteLayout;

    new-instance v10, Landroid/widget/AbsoluteLayout$LayoutParams;

    sget-object v11, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v12, 0x23

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v9, v10}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderInstruction;

    array-length v9, v9

    iput v9, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->tabCount:I

    .line 35
    iget v9, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->tabCount:I

    new-array v9, v9, [Lcom/julysystems/appx/AppXRenderRenderBlock;

    iput-object v9, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->tabBlocks:[Lcom/julysystems/appx/AppXRenderRenderBlock;

    .line 36
    iget v9, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->tabCount:I

    new-array v9, v9, [Landroid/widget/Button;

    iput-object v9, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->buttons:[Landroid/widget/Button;

    .line 37
    sget-object v9, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v10, "tablayoutbg"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 38
    .local v8, "tablayoutbgId":Ljava/lang/Integer;
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->tabButtons:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/AbsoluteLayout;->setBackgroundResource(I)V

    .line 39
    sget-object v9, Lcom/julysystems/appx/AppXConstants;->dm:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v9, v9, -0x14

    iget v10, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->tabCount:I

    div-int/2addr v9, v10

    add-int/lit8 v5, v9, -0xa

    .line 40
    .local v5, "tabWidth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v9, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->tabCount:I

    if-lt v2, v9, :cond_0

    .line 60
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->buttons:[Landroid/widget/Button;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setPressed(Z)V

    .line 61
    sget-object v9, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v10, "tabbgsel"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 62
    .local v7, "tabbgselId":Ljava/lang/Integer;
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->buttons:[Landroid/widget/Button;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 63
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->tabButtons:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p0, v9}, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->addView(Landroid/view/View;)V

    .line 64
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->selectTab(I)V

    .line 65
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    iget v10, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->height:F

    add-float/2addr v9, v10

    move-object/from16 v0, p3

    iput v9, v0, Landroid/graphics/RectF;->bottom:F

    .line 66
    return-void

    .line 41
    .end local v7    # "tabbgselId":Ljava/lang/Integer;
    :cond_0
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderInstruction;

    aget-object v3, v9, v2

    .line 42
    .local v3, "instr":Lcom/julysystems/appx/AppXRenderInstruction;
    invoke-virtual {v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getInstructionId()I

    move-result v9

    const/16 v10, 0xe

    if-ne v9, v10, :cond_1

    .line 43
    const/4 v9, 0x5

    const-string v10, ""

    invoke-virtual {v3, v9, v10}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "tabName":Ljava/lang/String;
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->buttons:[Landroid/widget/Button;

    new-instance v1, Landroid/widget/Button;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    aput-object v1, v9, v2

    .line 46
    .local v1, "button":Landroid/widget/Button;
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 47
    new-instance v9, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v10, 0x32

    mul-int v11, v2, v5

    add-int/lit8 v11, v11, 0xa

    const/4 v12, 0x0

    invoke-direct {v9, v5, v10, v11, v12}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    sget-object v9, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v10, "tabbg"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 49
    .local v6, "tabbgId":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 50
    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setTextSize(F)V

    .line 51
    const/4 v9, -0x1

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 52
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 54
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->tabButtons:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v9, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    .line 55
    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->tabBlocks:[Lcom/julysystems/appx/AppXRenderRenderBlock;

    invoke-virtual {v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getInnerRenderBlock()Lcom/julysystems/appx/AppXRenderRenderBlock;

    move-result-object v10

    aput-object v10, v9, v2

    .line 40
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
    .line 107
    iget v0, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->height:F

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v5, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->buttons:[Landroid/widget/Button;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_0

    .line 100
    sget-object v4, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v5, "tabbgsel"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 101
    .local v3, "tabbgselId":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 103
    .local v1, "tabIndex":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->selectTab(I)V

    .line 104
    return-void

    .line 96
    .end local v1    # "tabIndex":Ljava/lang/Integer;
    .end local v3    # "tabbgselId":Ljava/lang/Integer;
    :cond_0
    aget-object v0, v5, v4

    .line 97
    .local v0, "button":Landroid/widget/Button;
    sget-object v7, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    const-string v8, "tabbg"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 98
    .local v2, "tabbgId":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 96
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public selectTab(I)V
    .locals 10
    .param p1, "selectedTab"    # I

    .prologue
    .line 69
    iget v7, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->selectedTab:I

    if-ne v7, p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v7, v8}, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->removeViews(II)V

    .line 73
    const/high16 v7, 0x420c0000    # 35.0f

    iput v7, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->height:F

    .line 74
    iget-object v7, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->tabBlocks:[Lcom/julysystems/appx/AppXRenderRenderBlock;

    aget-object v5, v7, p1

    .line 75
    .local v5, "tabData":Lcom/julysystems/appx/AppXRenderRenderBlock;
    iget-object v7, v5, Lcom/julysystems/appx/AppXRenderRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderInstruction;

    array-length v6, v7

    .line 76
    .local v6, "tabDataCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v6, :cond_2

    .line 85
    iput p1, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->selectedTab:I

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/julysystems/appx/AppXRenderRenderField;

    invoke-virtual {v7}, Lcom/julysystems/appx/AppXRenderRenderField;->resetHeight()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception in TabContainerField:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v7, v5, Lcom/julysystems/appx/AppXRenderRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderInstruction;

    aget-object v2, v7, v1

    .line 78
    .local v2, "instr":Lcom/julysystems/appx/AppXRenderInstruction;
    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getInstructionId()I

    move-result v7

    const/16 v8, 0xf

    if-ne v7, v8, :cond_3

    .line 79
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 80
    .local v3, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Lcom/julysystems/appx/AppXRenderRenderField;

    sget-object v7, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getInnerRenderBlock()Lcom/julysystems/appx/AppXRenderRenderBlock;

    move-result-object v8

    iget-object v9, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->pageData:Lcom/julysystems/appx/AppXPageData;

    invoke-direct {v4, v7, v8, v9, v3}, Lcom/julysystems/appx/AppXRenderRenderField;-><init>(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderRenderBlock;Lcom/julysystems/appx/AppXPageData;Ljava/util/Hashtable;)V

    .line 81
    .local v4, "renderField":Lcom/julysystems/appx/AppXRenderRenderField;
    iget v7, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->height:F

    invoke-virtual {v4}, Lcom/julysystems/appx/AppXRenderRenderField;->getBlockHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->height:F

    .line 82
    invoke-virtual {p0, v4}, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->addView(Landroid/view/View;)V

    .line 76
    .end local v3    # "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "renderField":Lcom/julysystems/appx/AppXRenderRenderField;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

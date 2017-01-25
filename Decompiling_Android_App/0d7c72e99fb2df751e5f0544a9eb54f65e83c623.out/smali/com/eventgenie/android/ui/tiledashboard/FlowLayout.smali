.class public Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private debugDraw:Z

.field private horizontalSpacing:I

.field private orientation:I

.field private verticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 70
    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->horizontalSpacing:I

    .line 71
    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->verticalSpacing:I

    .line 72
    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->orientation:I

    .line 73
    iput-boolean v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->debugDraw:Z

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->horizontalSpacing:I

    .line 71
    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->verticalSpacing:I

    .line 72
    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->orientation:I

    .line 73
    iput-boolean v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->debugDraw:Z

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->horizontalSpacing:I

    .line 71
    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->verticalSpacing:I

    .line 72
    iput v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->orientation:I

    .line 73
    iput-boolean v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->debugDraw:Z

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method private static createPaint(I)Landroid/graphics/Paint;
    .locals 2
    .param p0, "color"    # I

    .prologue
    .line 319
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 320
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 321
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 323
    return-object v0
.end method

.method private drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->debugDraw:Z

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const/16 v0, -0x100

    invoke-static {v0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v5

    .line 111
    .local v5, "childPaint":Landroid/graphics/Paint;
    const v0, -0xff0100

    invoke-static {v0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v12

    .line 112
    .local v12, "layoutPaint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    invoke-static {v0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->createPaint(I)Landroid/graphics/Paint;

    move-result-object v14

    .line 114
    .local v14, "newLinePaint":Landroid/graphics/Paint;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;

    .line 116
    .local v13, "lp":Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;
    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {v13}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$000(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v0

    if-lez v0, :cond_4

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    .line 118
    .local v1, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v2, v0, v3

    .line 119
    .local v2, "y":F
    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {v13}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$000(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    move-object/from16 v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 120
    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {v13}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$000(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v7, v0, v3

    const/high16 v0, 0x40800000    # 4.0f

    sub-float v8, v2, v0

    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {v13}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$000(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 121
    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {v13}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$000(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v7, v0, v3

    const/high16 v0, 0x40800000    # 4.0f

    add-float v8, v2, v0

    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {v13}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$000(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 130
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_2
    :goto_1
    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {v13}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$100(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v0

    if-lez v0, :cond_5

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v1, v0, v3

    .line 132
    .restart local v1    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v2, v0

    .line 133
    .restart local v2    # "y":F
    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {v13}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$100(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v4, v2, v0

    move-object/from16 v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 134
    const/high16 v0, 0x40800000    # 4.0f

    sub-float v7, v1, v0

    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {v13}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$100(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v8, v0, v3

    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {v13}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$100(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 135
    const/high16 v0, 0x40800000    # 4.0f

    add-float v7, v1, v0

    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {v13}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$100(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v8, v0, v3

    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {v13}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$100(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v0

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 144
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_3
    :goto_2
    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->newLine:Z
    invoke-static {v13}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$200(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->orientation:I

    if-nez v0, :cond_6

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    .line 147
    .restart local v1    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v2, v0, v3

    .line 148
    .restart local v2    # "y":F
    const/high16 v0, 0x40c00000    # 6.0f

    sub-float v8, v2, v0

    const/high16 v0, 0x40c00000    # 6.0f

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v7, v1

    move v9, v1

    move-object v11, v14

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 122
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_4
    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->horizontalSpacing:I

    if-lez v0, :cond_2

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    .line 124
    .restart local v1    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v2, v0, v3

    .line 125
    .restart local v2    # "y":F
    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v7, v1

    move v8, v2

    move v10, v2

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 126
    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v7, v0, v3

    const/high16 v0, 0x40800000    # 4.0f

    sub-float v8, v2, v0

    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 127
    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v7, v0, v3

    const/high16 v0, 0x40800000    # 4.0f

    add-float v8, v2, v0

    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->horizontalSpacing:I

    int-to-float v0, v0

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v10, v2

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 136
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_5
    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->verticalSpacing:I

    if-lez v0, :cond_3

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v1, v0, v3

    .line 138
    .restart local v1    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v2, v0

    .line 139
    .restart local v2    # "y":F
    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v7, v1

    move v8, v2

    move v9, v1

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 140
    const/high16 v0, 0x40800000    # 4.0f

    sub-float v7, v1, v0

    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v8, v0, v3

    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 141
    const/high16 v0, 0x40800000    # 4.0f

    add-float v7, v1, v0

    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float v8, v0, v3

    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->verticalSpacing:I

    int-to-float v0, v0

    add-float v10, v2, v0

    move-object/from16 v6, p1

    move v9, v1

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 150
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v1, v0, v3

    .line 151
    .restart local v1    # "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    .line 152
    .restart local v2    # "y":F
    const/high16 v0, 0x40c00000    # 6.0f

    sub-float v7, v1, v0

    const/high16 v0, 0x40c00000    # 6.0f

    add-float v9, v1, v0

    move-object/from16 v6, p1

    move v8, v2

    move v10, v2

    move-object v11, v14

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private getHorizontalSpacing(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I
    .locals 2
    .param p1, "lp"    # Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->horizontalSpacingSpecified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->horizontalSpacing:I
    invoke-static {p1}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$000(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v0

    .line 179
    .local v0, "hSpacing":I
    :goto_0
    return v0

    .line 177
    .end local v0    # "hSpacing":I
    :cond_0
    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->horizontalSpacing:I

    .restart local v0    # "hSpacing":I
    goto :goto_0
.end method

.method private getVerticalSpacing(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I
    .locals 2
    .param p1, "lp"    # Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->verticalSpacingSpecified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->verticalSpacing:I
    invoke-static {p1}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$100(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v0

    .line 189
    .local v0, "vSpacing":I
    :goto_0
    return v0

    .line 187
    .end local v0    # "vSpacing":I
    :cond_0
    iget v0, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->verticalSpacing:I

    .restart local v0    # "vSpacing":I
    goto :goto_0
.end method

.method private readStyleParameters(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 307
    sget-object v1, Lcom/eventgenie/android/R$styleable;->FlowLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 309
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcom/eventgenie/android/R$styleable;->FlowLayout_horizontalSpacing:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->horizontalSpacing:I

    .line 310
    sget v1, Lcom/eventgenie/android/R$styleable;->FlowLayout_verticalSpacing:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->verticalSpacing:I

    .line 311
    sget v1, Lcom/eventgenie/android/R$styleable;->FlowLayout_debugDraw:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->debugDraw:Z

    .line 312
    sget v1, Lcom/eventgenie/android/R$styleable;->FlowLayout_android_orientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->orientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 316
    return-void

    .line 314
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 95
    instance-of v0, p1, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 101
    .local v0, "more":Z
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->drawDebugInfo(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 102
    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->generateDefaultLayoutParams()Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 159
    new-instance v0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;
    .locals 2
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 164
    new-instance v0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 169
    new-instance v0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->getChildCount()I

    move-result v1

    .line 195
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 196
    invoke-virtual {p0, v2}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;

    .line 198
    .local v3, "lp":Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;
    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->x:I
    invoke-static {v3}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$300(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v4

    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->y:I
    invoke-static {v3}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$400(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v5

    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->x:I
    invoke-static {v3}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$300(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->y:I
    invoke-static {v3}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$400(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 33
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 204
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->getPaddingLeft()I

    move-result v32

    sub-int v27, v31, v32

    .line 205
    .local v27, "sizeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->getPaddingLeft()I

    move-result v32

    sub-int v26, v31, v32

    .line 207
    .local v26, "sizeHeight":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 208
    .local v20, "modeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 213
    .local v19, "modeHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->orientation:I

    move/from16 v31, v0

    if-nez v31, :cond_0

    .line 214
    move/from16 v25, v27

    .line 215
    .local v25, "size":I
    move/from16 v18, v20

    .line 221
    .local v18, "mode":I
    :goto_0
    const/16 v16, 0x0

    .line 222
    .local v16, "lineThicknessWithSpacing":I
    const/4 v15, 0x0

    .line 223
    .local v15, "lineThickness":I
    const/4 v14, 0x0

    .line 226
    .local v14, "lineLengthWithSpacing":I
    const/16 v24, 0x0

    .line 228
    .local v24, "prevLinePosition":I
    const/4 v8, 0x0

    .line 229
    .local v8, "controlMaxLength":I
    const/4 v9, 0x0

    .line 231
    .local v9, "controlMaxThickness":I
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->getChildCount()I

    move-result v10

    .line 232
    .local v10, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v10, :cond_9

    .line 233
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 234
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v31

    const/16 v32, 0x8

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    .line 232
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 217
    .end local v3    # "child":Landroid/view/View;
    .end local v8    # "controlMaxLength":I
    .end local v9    # "controlMaxThickness":I
    .end local v10    # "count":I
    .end local v12    # "i":I
    .end local v14    # "lineLengthWithSpacing":I
    .end local v15    # "lineThickness":I
    .end local v16    # "lineThicknessWithSpacing":I
    .end local v18    # "mode":I
    .end local v24    # "prevLinePosition":I
    .end local v25    # "size":I
    :cond_0
    move/from16 v25, v26

    .line 218
    .restart local v25    # "size":I
    move/from16 v18, v19

    .restart local v18    # "mode":I
    goto :goto_0

    .line 238
    .restart local v3    # "child":Landroid/view/View;
    .restart local v8    # "controlMaxLength":I
    .restart local v9    # "controlMaxThickness":I
    .restart local v10    # "count":I
    .restart local v12    # "i":I
    .restart local v14    # "lineLengthWithSpacing":I
    .restart local v15    # "lineThickness":I
    .restart local v16    # "lineThicknessWithSpacing":I
    .restart local v24    # "prevLinePosition":I
    :cond_1
    const/high16 v31, 0x40000000    # 2.0f

    move/from16 v0, v20

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    const/high16 v31, -0x80000000

    :goto_3
    move/from16 v0, v27

    move/from16 v1, v31

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v32

    const/high16 v31, 0x40000000    # 2.0f

    move/from16 v0, v19

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    const/high16 v31, -0x80000000

    :goto_4
    move/from16 v0, v26

    move/from16 v1, v31

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    move/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 243
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;

    .line 245
    .local v17, "lp":Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->getHorizontalSpacing(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v11

    .line 246
    .local v11, "hSpacing":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->getVerticalSpacing(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)I

    move-result v30

    .line 248
    .local v30, "vSpacing":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 249
    .local v7, "childWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 256
    .local v4, "childHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->orientation:I

    move/from16 v31, v0

    if-nez v31, :cond_6

    .line 257
    move v5, v7

    .line 258
    .local v5, "childLength":I
    move v6, v4

    .line 259
    .local v6, "childThickness":I
    move/from16 v28, v11

    .line 260
    .local v28, "spacingLength":I
    move/from16 v29, v30

    .line 268
    .local v29, "spacingThickness":I
    :goto_5
    add-int v13, v14, v5

    .line 269
    .local v13, "lineLength":I
    add-int v14, v13, v28

    .line 271
    # getter for: Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->newLine:Z
    invoke-static/range {v17 .. v17}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->access$200(Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;)Z

    move-result v31

    if-nez v31, :cond_2

    if-eqz v18, :cond_7

    move/from16 v0, v25

    if-le v13, v0, :cond_7

    :cond_2
    const/16 v21, 0x1

    .line 272
    .local v21, "newLine":Z
    :goto_6
    if-eqz v21, :cond_3

    .line 273
    add-int v24, v24, v16

    .line 275
    move v15, v6

    .line 276
    move v13, v5

    .line 277
    add-int v16, v6, v29

    .line 278
    add-int v14, v13, v28

    .line 281
    :cond_3
    add-int v31, v6, v29

    move/from16 v0, v16

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 282
    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 286
    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->orientation:I

    move/from16 v31, v0

    if-nez v31, :cond_8

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->getPaddingLeft()I

    move-result v31

    add-int v31, v31, v13

    sub-int v22, v31, v5

    .line 288
    .local v22, "posX":I
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->getPaddingTop()I

    move-result v31

    add-int v23, v31, v24

    .line 293
    .local v23, "posY":I
    :goto_7
    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;->setPosition(II)V

    .line 295
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 296
    add-int v9, v24, v15

    goto/16 :goto_2

    .end local v4    # "childHeight":I
    .end local v5    # "childLength":I
    .end local v6    # "childThickness":I
    .end local v7    # "childWidth":I
    .end local v11    # "hSpacing":I
    .end local v13    # "lineLength":I
    .end local v17    # "lp":Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;
    .end local v21    # "newLine":Z
    .end local v22    # "posX":I
    .end local v23    # "posY":I
    .end local v28    # "spacingLength":I
    .end local v29    # "spacingThickness":I
    .end local v30    # "vSpacing":I
    :cond_4
    move/from16 v31, v20

    .line 238
    goto/16 :goto_3

    :cond_5
    move/from16 v31, v19

    goto/16 :goto_4

    .line 262
    .restart local v4    # "childHeight":I
    .restart local v7    # "childWidth":I
    .restart local v11    # "hSpacing":I
    .restart local v17    # "lp":Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;
    .restart local v30    # "vSpacing":I
    :cond_6
    move v5, v4

    .line 263
    .restart local v5    # "childLength":I
    move v6, v7

    .line 264
    .restart local v6    # "childThickness":I
    move/from16 v28, v30

    .line 265
    .restart local v28    # "spacingLength":I
    move/from16 v29, v11

    .restart local v29    # "spacingThickness":I
    goto :goto_5

    .line 271
    .restart local v13    # "lineLength":I
    :cond_7
    const/16 v21, 0x0

    goto :goto_6

    .line 290
    .restart local v21    # "newLine":Z
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->getPaddingLeft()I

    move-result v31

    add-int v22, v31, v24

    .line 291
    .restart local v22    # "posX":I
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->getPaddingTop()I

    move-result v31

    add-int v31, v31, v13

    sub-int v23, v31, v4

    .restart local v23    # "posY":I
    goto :goto_7

    .line 299
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childHeight":I
    .end local v5    # "childLength":I
    .end local v6    # "childThickness":I
    .end local v7    # "childWidth":I
    .end local v11    # "hSpacing":I
    .end local v13    # "lineLength":I
    .end local v17    # "lp":Lcom/eventgenie/android/ui/tiledashboard/FlowLayout$LayoutParams;
    .end local v21    # "newLine":Z
    .end local v22    # "posX":I
    .end local v23    # "posY":I
    .end local v28    # "spacingLength":I
    .end local v29    # "spacingThickness":I
    .end local v30    # "vSpacing":I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->orientation:I

    move/from16 v31, v0

    if-nez v31, :cond_a

    .line 300
    move/from16 v0, p1

    invoke-static {v8, v0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->resolveSize(II)I

    move-result v31

    move/from16 v0, p2

    invoke-static {v9, v0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->resolveSize(II)I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->setMeasuredDimension(II)V

    .line 304
    :goto_8
    return-void

    .line 302
    :cond_a
    move/from16 v0, p1

    invoke-static {v9, v0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->resolveSize(II)I

    move-result v31

    move/from16 v0, p2

    invoke-static {v8, v0}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->resolveSize(II)I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/tiledashboard/FlowLayout;->setMeasuredDimension(II)V

    goto :goto_8
.end method

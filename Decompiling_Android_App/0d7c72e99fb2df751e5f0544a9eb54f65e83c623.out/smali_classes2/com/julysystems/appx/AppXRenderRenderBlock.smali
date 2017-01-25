.class Lcom/julysystems/appx/AppXRenderRenderBlock;
.super Ljava/lang/Object;
.source "AppXRenderRenderBlock.java"


# static fields
.field public static final RenderDrawingModeFillPath:I = 0x2

.field public static final RenderDrawingModeGradientFill:I = 0x4

.field public static final RenderDrawingModeNone:I = 0x0

.field public static final RenderDrawingModeStrokeFillPath:I = 0x3

.field public static final RenderDrawingModeStrokePath:I = 0x1

.field public static hyperlinks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final normalFont:Lcom/julysystems/appx/AppXRenderFont;


# instance fields
.field public actionRect:Lcom/julysystems/appx/AppXRenderRectC;

.field public actionUrl:Ljava/lang/String;

.field private cellPadding:F

.field private currentDrawingMode:I

.field private endColor:I

.field height:F

.field public final instructions:[Lcom/julysystems/appx/AppXRenderInstruction;

.field public isSelected:Z

.field private lastTabHeight:F

.field private startColor:I

.field private strokeWidth:F

.field private tabContLayout:Lcom/julysystems/appx/AppXRenderTabContainerLayout;

.field timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/julysystems/appx/AppXRenderFont;

    const/high16 v1, 0x41600000    # 14.0f

    const-string v2, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderFont;-><init>(FLjava/lang/String;)V

    sput-object v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->normalFont:Lcom/julysystems/appx/AppXRenderFont;

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->hyperlinks:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Lcom/julysystems/appx/AppXRenderDataInputStream;)V
    .locals 5
    .param p1, "is"    # Lcom/julysystems/appx/AppXRenderDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->timer:Ljava/util/Timer;

    .line 41
    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->actionUrl:Ljava/lang/String;

    .line 45
    const/4 v3, 0x0

    iput v3, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->lastTabHeight:F

    .line 56
    new-instance v3, Lcom/julysystems/appx/AppXRenderRectC;

    invoke-direct {v3}, Lcom/julysystems/appx/AppXRenderRectC;-><init>()V

    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->actionRect:Lcom/julysystems/appx/AppXRenderRectC;

    .line 57
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->isSelected:Z

    .line 58
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readShort()S

    move-result v2

    .line 59
    .local v2, "instructionCount":I
    new-array v3, v2, [Lcom/julysystems/appx/AppXRenderInstruction;

    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderInstruction;

    .line 61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 66
    :goto_1
    return-void

    .line 62
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderInstruction;

    new-instance v4, Lcom/julysystems/appx/AppXRenderInstruction;

    invoke-direct {v4, p1}, Lcom/julysystems/appx/AppXRenderInstruction;-><init>(Lcom/julysystems/appx/AppXRenderDataInputStream;)V

    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Unable to create renderblock"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static RectCIncrementDelta(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V
    .locals 4
    .param p0, "sourceRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p1, "rect"    # Lcom/julysystems/appx/AppXRenderRectC;

    .prologue
    .line 185
    iget v0, p0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    iget v1, p1, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {p0}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 186
    return-void
.end method

.method private addActionRect(Lcom/julysystems/appx/AppXRenderRectC;)V
    .locals 2
    .param p1, "rect"    # Lcom/julysystems/appx/AppXRenderRectC;

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->actionRect:Lcom/julysystems/appx/AppXRenderRectC;

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->actionRect:Lcom/julysystems/appx/AppXRenderRectC;

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->actionRect:Lcom/julysystems/appx/AppXRenderRectC;

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->actionRect:Lcom/julysystems/appx/AppXRenderRectC;

    invoke-virtual {v0, p1}, Lcom/julysystems/appx/AppXRenderRectC;->union(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private executeButton(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 16
    .param p1, "instruction"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 792
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v11

    .line 793
    .local v11, "x":F
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v12

    .line 794
    .local v12, "y":F
    const/4 v13, 0x3

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v14

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v10

    .line 795
    .local v10, "width":F
    const/4 v13, 0x4

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v14

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v6

    .line 796
    .local v6, "height":F
    new-instance v4, Lcom/julysystems/appx/AppXRenderRectC;

    invoke-direct {v4, v11, v12, v10, v6}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 797
    .local v4, "buttonFrame":Lcom/julysystems/appx/AppXRenderRectC;
    if-eqz p2, :cond_1

    .line 798
    const/4 v13, 0x5

    const-string v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 799
    .local v8, "title":Ljava/lang/String;
    const/4 v13, 0x6

    const-string v14, "#FFFFFF"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 800
    .local v9, "titleColor":Ljava/lang/String;
    const/16 v13, 0x10

    const-string v14, "button_bg.png"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 801
    .local v7, "normalStatebg":Ljava/lang/String;
    const/4 v13, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/julysystems/appx/AppXRenderRenderBlock;->getFontResource(Lcom/julysystems/appx/AppXRenderInstruction;I)Lcom/julysystems/appx/AppXRenderFont;

    move-result-object v5

    .line 802
    .local v5, "font":Lcom/julysystems/appx/AppXRenderFont;
    new-instance v3, Landroid/widget/Button;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 803
    .local v3, "button":Landroid/widget/Button;
    iget v13, v5, Lcom/julysystems/appx/AppXRenderFont;->fontSize:F

    invoke-virtual {v3, v13}, Landroid/widget/Button;->setTextSize(F)V

    .line 804
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 805
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Landroid/widget/Button;->setClickable(Z)V

    .line 806
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Landroid/widget/Button;->setFocusable(Z)V

    .line 807
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 808
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/julysystems/appx/AppXRenderRenderBlock;->getImageId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 809
    .local v2, "bgImage":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 810
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 811
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/julysystems/appx/AppXRenderRenderField;->addView(Landroid/view/View;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->actionUrl:Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 813
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getRectC(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/julysystems/appx/AppXRenderRenderBlock;->addActionRect(Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 816
    .end local v2    # "bgImage":Ljava/lang/Integer;
    .end local v3    # "button":Landroid/widget/Button;
    .end local v5    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .end local v7    # "normalStatebg":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "titleColor":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v13

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2

    .line 817
    move-object/from16 v0, p6

    invoke-static {v0, v4}, Lcom/julysystems/appx/AppXRenderRenderBlock;->RectCIncrementDelta(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 819
    :cond_2
    return-void
.end method

.method private executeClip(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p4, :cond_0

    .line 381
    invoke-virtual {p4, p6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 382
    :cond_0
    return-void
.end method

.method private executeFillColor(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 4
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 469
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p5, :cond_0

    .line 470
    const/16 v1, 0x10

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-virtual {p1, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getColor(III)I

    move-result v0

    .line 471
    .local v0, "fillColor":I
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 472
    const/4 v1, 0x2

    iput v1, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->currentDrawingMode:I

    .line 474
    .end local v0    # "fillColor":I
    :cond_0
    return-void
.end method

.method private executeGradient(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 5
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p4, :cond_0

    .line 386
    const/16 v1, 0x10

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-virtual {p1, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getColor(III)I

    move-result v1

    iput v1, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->startColor:I

    .line 387
    const/16 v1, 0x13

    const/16 v2, 0x14

    const/16 v3, 0x15

    invoke-virtual {p1, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getColor(III)I

    move-result v1

    iput v1, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->endColor:I

    .line 388
    const/4 v1, 0x4

    iput v1, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->currentDrawingMode:I

    .line 389
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->startColor:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->endColor:I

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 390
    .local v0, "bg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p4}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 391
    invoke-virtual {v0, p4}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 393
    .end local v0    # "bg":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    return-void
.end method

.method private executeImage(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 9
    .param p1, "instruction"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1, p6}, Lcom/julysystems/appx/AppXRenderInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v4

    .line 352
    .local v4, "x":F
    invoke-virtual {p1, p6}, Lcom/julysystems/appx/AppXRenderInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v5

    .line 353
    .local v5, "y":F
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v8

    invoke-virtual {p1, v6, v7, v8}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v3

    .line 354
    .local v3, "width":F
    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v8

    invoke-virtual {p1, v6, v7, v8}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v0

    .line 356
    .local v0, "height":F
    new-instance v2, Lcom/julysystems/appx/AppXRenderRectC;

    invoke-direct {v2, v4, v5, v3, v0}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 357
    .local v2, "imageRect":Lcom/julysystems/appx/AppXRenderRectC;
    const/16 v6, 0x8

    invoke-direct {p0, p1, v6, p2, v2}, Lcom/julysystems/appx/AppXRenderRenderBlock;->getImageResource(Lcom/julysystems/appx/AppXRenderInstruction;ILcom/julysystems/appx/AppXRenderRenderField;Lcom/julysystems/appx/AppXRenderRectC;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 358
    .local v1, "image":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 359
    if-eqz p4, :cond_3

    .line 360
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v7

    float-to-int v7, v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v7

    float-to-int v7, v7

    if-eq v6, v7, :cond_5

    .line 361
    :cond_0
    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 362
    iget v6, v2, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v2, Lcom/julysystems/appx/AppXRenderRectC;->right:F

    .line 364
    :cond_1
    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_2

    .line 365
    iget v6, v2, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v2, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 367
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p4, v1, v6, v2, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 371
    :goto_0
    iget-object v6, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->actionUrl:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 372
    invoke-virtual {p1, v2, p6}, Lcom/julysystems/appx/AppXRenderInstruction;->getRectC(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/julysystems/appx/AppXRenderRenderBlock;->addActionRect(Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 375
    :cond_3
    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v6

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 376
    invoke-static {p6, v2}, Lcom/julysystems/appx/AppXRenderRenderBlock;->RectCIncrementDelta(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 377
    :cond_4
    return-void

    .line 369
    :cond_5
    iget v6, v2, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    iget v7, v2, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {p4, v1, v6, v7, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private executeLabel(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 28
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v26

    .line 291
    .local v26, "x":F
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v27

    .line 292
    .local v27, "y":F
    const/4 v6, 0x3

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v8

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8, v10}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v25

    .line 293
    .local v25, "width":F
    const/4 v6, 0x4

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v8

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8, v10}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v21

    .line 295
    .local v21, "height":F
    const/4 v6, 0x5

    const-string v8, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 296
    .local v23, "text":Ljava/lang/String;
    const/4 v6, 0x6

    const-string v8, "#FFFFFF"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 297
    .local v18, "colorS":Ljava/lang/String;
    const v17, 0xffffff

    .line 298
    .local v17, "color":I
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    .line 299
    const/4 v6, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/julysystems/appx/AppXRenderRenderBlock;->getFontResource(Lcom/julysystems/appx/AppXRenderInstruction;I)Lcom/julysystems/appx/AppXRenderFont;

    move-result-object v20

    .line 300
    .local v20, "font":Lcom/julysystems/appx/AppXRenderFont;
    const/16 v6, 0x9

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 301
    .local v15, "bgColorS":Ljava/lang/String;
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    .line 303
    .local v14, "bgColor":I
    const/16 v6, 0xa

    const-string v8, "left"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 304
    .local v13, "alignment":Ljava/lang/String;
    const/16 v6, 0x10

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 305
    .local v22, "lineBreakMode":Ljava/lang/String;
    new-instance v24, Lcom/julysystems/appx/AppXRenderRectC;

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v25

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 308
    .local v24, "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v6

    const/4 v8, 0x0

    cmpg-float v6, v6, v8

    if-lez v6, :cond_0

    const/4 v6, 0x0

    cmpg-float v6, v21, v6

    if-gtz v6, :cond_1

    .line 309
    :cond_0
    const/high16 v6, 0x4f000000

    move-object/from16 v0, v24

    iput v6, v0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 311
    :cond_1
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 312
    .local v9, "align":Landroid/text/Layout$Alignment;
    const-string v6, "right"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 313
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 317
    :cond_2
    :goto_0
    const/16 v16, 0x0

    .line 318
    .local v16, "charWrap":Z
    if-eqz v22, :cond_4

    .line 319
    const-string v6, "wordwrap"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "charwrap"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "clip"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "truncate"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 320
    :cond_3
    const/16 v16, 0x1

    .line 322
    :cond_4
    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    .line 323
    .local v7, "textPaint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Lcom/julysystems/appx/AppXRenderRenderBlock;->setFont(Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderFont;)V

    .line 324
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 326
    if-eqz v16, :cond_b

    .line 327
    new-instance v5, Landroid/text/StaticLayout;

    const/4 v6, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    move/from16 v0, v25

    float-to-int v8, v0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 328
    .local v5, "staticLayout":Landroid/text/StaticLayout;
    if-eqz p4, :cond_5

    .line 329
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 330
    move-object/from16 v0, v24

    iget v6, v0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    move-object/from16 v0, v24

    iget v8, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 331
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 332
    const/4 v6, 0x0

    move-object/from16 v0, v24

    iget v8, v0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    sub-float/2addr v6, v8

    const/4 v8, 0x0

    move-object/from16 v0, v24

    iget v10, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    sub-float/2addr v8, v10

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 334
    :cond_5
    invoke-virtual/range {v24 .. v24}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v6

    cmpg-float v6, v6, v21

    if-ltz v6, :cond_6

    const/4 v6, 0x0

    cmpg-float v6, v21, v6

    if-gtz v6, :cond_7

    .line 335
    :cond_6
    move-object/from16 v0, v24

    iget v6, v0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    move-object/from16 v0, v24

    iput v6, v0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 340
    .end local v5    # "staticLayout":Landroid/text/StaticLayout;
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->actionUrl:Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 341
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getRectC(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/julysystems/appx/AppXRenderRenderBlock;->addActionRect(Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 342
    :cond_8
    invoke-virtual/range {v24 .. v24}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v6

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_9

    .line 343
    move-object/from16 v0, p6

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXRenderRenderBlock;->RectCIncrementDelta(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 348
    .end local v7    # "textPaint":Landroid/text/TextPaint;
    .end local v9    # "align":Landroid/text/Layout$Alignment;
    .end local v13    # "alignment":Ljava/lang/String;
    .end local v14    # "bgColor":I
    .end local v15    # "bgColorS":Ljava/lang/String;
    .end local v16    # "charWrap":Z
    .end local v17    # "color":I
    .end local v18    # "colorS":Ljava/lang/String;
    .end local v20    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .end local v21    # "height":F
    .end local v22    # "lineBreakMode":Ljava/lang/String;
    .end local v23    # "text":Ljava/lang/String;
    .end local v24    # "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v25    # "width":F
    .end local v26    # "x":F
    .end local v27    # "y":F
    :cond_9
    :goto_2
    return-void

    .line 314
    .restart local v9    # "align":Landroid/text/Layout$Alignment;
    .restart local v13    # "alignment":Ljava/lang/String;
    .restart local v14    # "bgColor":I
    .restart local v15    # "bgColorS":Ljava/lang/String;
    .restart local v17    # "color":I
    .restart local v18    # "colorS":Ljava/lang/String;
    .restart local v20    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .restart local v21    # "height":F
    .restart local v22    # "lineBreakMode":Ljava/lang/String;
    .restart local v23    # "text":Ljava/lang/String;
    .restart local v24    # "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    .restart local v25    # "width":F
    .restart local v26    # "x":F
    .restart local v27    # "y":F
    :cond_a
    const-string v6, "center"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 315
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto/16 :goto_0

    .line 336
    .restart local v7    # "textPaint":Landroid/text/TextPaint;
    .restart local v16    # "charWrap":Z
    :cond_b
    if-eqz p4, :cond_7

    .line 337
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 338
    move-object/from16 v0, v24

    iget v6, v0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    move-object/from16 v0, v24

    iget v8, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6, v8, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 344
    .end local v7    # "textPaint":Landroid/text/TextPaint;
    .end local v9    # "align":Landroid/text/Layout$Alignment;
    .end local v13    # "alignment":Ljava/lang/String;
    .end local v14    # "bgColor":I
    .end local v15    # "bgColorS":Ljava/lang/String;
    .end local v16    # "charWrap":Z
    .end local v17    # "color":I
    .end local v18    # "colorS":Ljava/lang/String;
    .end local v20    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .end local v21    # "height":F
    .end local v22    # "lineBreakMode":Ljava/lang/String;
    .end local v23    # "text":Ljava/lang/String;
    .end local v24    # "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v25    # "width":F
    .end local v26    # "x":F
    .end local v27    # "y":F
    :catch_0
    move-exception v19

    .line 345
    .local v19, "e":Ljava/lang/Exception;
    const-string v6, "Exception"

    const-string v8, "Error inside the execute Label"

    invoke-static {v6, v8}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private executeLineToPoint(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 9
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1, p6}, Lcom/julysystems/appx/AppXRenderInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v3

    .line 443
    .local v3, "x2":F
    invoke-virtual {p1, p6}, Lcom/julysystems/appx/AppXRenderInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v4

    .line 444
    .local v4, "y2":F
    const/16 v0, 0xb

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getIntVal(II)I

    move-result v0

    int-to-float v8, v0

    .line 445
    .local v8, "thickness":F
    if-eqz p4, :cond_0

    .line 446
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 447
    invoke-virtual {p5, v8}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 448
    iget v1, p6, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    iget v2, p6, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    move-object v0, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 450
    :cond_0
    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v7

    .line 451
    .local v7, "prevWidth":F
    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v6

    .line 452
    .local v6, "prevHeight":F
    iput v3, p6, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    .line 453
    iput v4, p6, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    .line 454
    iget v0, p6, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    add-float/2addr v0, v7

    iput v0, p6, Lcom/julysystems/appx/AppXRenderRectC;->right:F

    .line 455
    iget v0, p6, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    add-float/2addr v0, v6

    iput v0, p6, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 456
    return-void
.end method

.method private executeLink(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 8
    .param p1, "instruction"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 680
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 681
    .local v7, "url":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderInstruction;->getInnerRenderBlock()Lcom/julysystems/appx/AppXRenderRenderBlock;

    move-result-object v0

    .line 682
    .local v0, "actionAreaBlock":Lcom/julysystems/appx/AppXRenderRenderBlock;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&iPhoneMode=app&appMode=true&platform=android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->actionUrl:Ljava/lang/String;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 683
    invoke-virtual/range {v0 .. v6}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    .line 684
    if-eqz v7, :cond_0

    if-eqz p2, :cond_0

    .line 685
    new-instance v1, Lcom/julysystems/appx/AppXRenderRenderSelectionButton;

    iget-object v2, v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->actionUrl:Ljava/lang/String;

    invoke-direct {v1, p3, p6, v2}, Lcom/julysystems/appx/AppXRenderRenderSelectionButton;-><init>(Landroid/content/Context;Landroid/graphics/RectF;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/julysystems/appx/AppXRenderRenderField;->addView(Landroid/view/View;)V

    .line 693
    :cond_0
    return-void
.end method

.method private executeMoveToPoint(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 8
    .param p1, "instruction"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 428
    invoke-virtual {p1, p6}, Lcom/julysystems/appx/AppXRenderInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v2

    .line 429
    .local v2, "x":F
    invoke-virtual {p1, p6}, Lcom/julysystems/appx/AppXRenderInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v3

    .line 430
    .local v3, "y":F
    const/4 v4, 0x3

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v5

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v1

    .line 431
    .local v1, "w":F
    const/4 v4, 0x4

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v5

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v0

    .line 432
    .local v0, "h":F
    if-eqz p4, :cond_0

    .line 433
    invoke-virtual {p4, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 435
    :cond_0
    cmpg-float v4, v1, v7

    if-gez v4, :cond_1

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v4

    add-float/2addr v1, v4

    .line 436
    :cond_1
    cmpg-float v4, v0, v7

    if-gez v4, :cond_2

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v4

    add-float/2addr v0, v4

    .line 437
    :cond_2
    invoke-virtual {p6, v2, v3, v1, v0}, Lcom/julysystems/appx/AppXRenderRectC;->set(FFFF)V

    .line 439
    return-void
.end method

.method private executeRoundedRect(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 16
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v7

    .line 397
    .local v7, "x":F
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v8

    .line 398
    .local v8, "y":F
    const/4 v9, 0x3

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v10

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v6

    .line 399
    .local v6, "width":F
    const/4 v9, 0x4

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v10

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v4

    .line 400
    .local v4, "height":F
    const/16 v9, 0x10

    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Lcom/julysystems/appx/AppXRenderInstruction;->getIntAttr(II)I

    move-result v9

    int-to-float v3, v9

    .line 401
    .local v3, "curveWidth":F
    const/16 v9, 0x11

    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Lcom/julysystems/appx/AppXRenderInstruction;->getIntAttr(II)I

    move-result v9

    int-to-float v2, v9

    .line 402
    .local v2, "curveHeight":F
    new-instance v5, Lcom/julysystems/appx/AppXRenderRectC;

    invoke-direct {v5, v7, v8, v6, v4}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 405
    .local v5, "roundRect":Lcom/julysystems/appx/AppXRenderRectC;
    if-eqz p4, :cond_0

    .line 406
    move-object/from16 v0, p0

    iget v9, v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->currentDrawingMode:I

    packed-switch v9, :pswitch_data_0

    .line 424
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {v5}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v9

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    .line 425
    move-object/from16 v0, p6

    invoke-static {v0, v5}, Lcom/julysystems/appx/AppXRenderRenderBlock;->RectCIncrementDelta(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 426
    :cond_1
    return-void

    .line 408
    :pswitch_1
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 409
    move-object/from16 v0, p0

    iget v9, v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->strokeWidth:F

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 410
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v0, v5, v3, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 413
    :pswitch_2
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 414
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v0, v5, v3, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 417
    :pswitch_3
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 418
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/16 v13, 0xeb

    const/16 v14, 0xeb

    const/16 v15, 0xeb

    invoke-static {v13, v14, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v13

    aput v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, -0x1

    aput v13, v11, v12

    invoke-direct {v9, v10, v11}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private executeSegmentedControl(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "instruction"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Landroid/graphics/RectF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/RectF;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1029
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method private executeSelectBox(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 26
    .param p1, "instruction"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 928
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v21

    .line 929
    .local v21, "x":F
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v22

    .line 930
    .local v22, "y":F
    const/16 v23, 0x3

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v24

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v19

    .line 931
    .local v19, "width":F
    const/16 v23, 0x4

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v24

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v11

    .line 932
    .local v11, "height":F
    new-instance v16, Lcom/julysystems/appx/AppXRenderRectC;

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 933
    .local v16, "selectBoxFrame":Lcom/julysystems/appx/AppXRenderRectC;
    if-eqz p2, :cond_3

    .line 934
    const/16 v23, 0x6

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 935
    .local v6, "color":Ljava/lang/String;
    const/16 v23, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderRenderBlock;->getFontResource(Lcom/julysystems/appx/AppXRenderInstruction;I)Lcom/julysystems/appx/AppXRenderFont;

    move-result-object v10

    .line 936
    .local v10, "font":Lcom/julysystems/appx/AppXRenderFont;
    const/16 v23, 0x8

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 937
    .local v17, "url":Ljava/lang/String;
    const/16 v23, 0x9

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 938
    .local v4, "bgcolor":Ljava/lang/String;
    const/16 v23, 0x13

    const-string v24, "Done"

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 939
    .local v7, "doneButtonLabel":Ljava/lang/String;
    const/16 v23, 0x14

    const-string v24, "Cancel"

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 940
    .local v5, "cancelButtonLabel":Ljava/lang/String;
    const/16 v23, 0x15

    const-string v24, "yes"

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 941
    .local v20, "willChangeButtonText":Ljava/lang/String;
    new-instance v14, Ljava/util/Hashtable;

    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    .line 942
    .local v14, "options":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v15, Ljava/util/Hashtable;

    invoke-direct {v15}, Ljava/util/Hashtable;-><init>()V

    .line 944
    .local v15, "pickerParams":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_0

    .line 945
    :try_start_0
    const-string v23, "bgcolor"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    :cond_0
    if-eqz v17, :cond_1

    .line 947
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "&iPhoneMode=app&appMode=true&platform=android"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 948
    const-string v23, "url"

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    :cond_1
    if-eqz v6, :cond_2

    .line 951
    const-string v23, "color"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    :cond_2
    const-string v23, "font"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    const-string v23, "options"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    const-string v23, "doneButtonLabel"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    const-string v23, "cancelButtonLabel"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    const-string v23, "willChangeButtonText"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :goto_0
    invoke-virtual {v14}, Ljava/util/Hashtable;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 962
    .local v18, "values":[Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v9

    .line 963
    .local v9, "enuEl":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 964
    .local v12, "i":I
    :goto_1
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-nez v23, :cond_5

    .line 970
    .end local v4    # "bgcolor":Ljava/lang/String;
    .end local v5    # "cancelButtonLabel":Ljava/lang/String;
    .end local v6    # "color":Ljava/lang/String;
    .end local v7    # "doneButtonLabel":Ljava/lang/String;
    .end local v9    # "enuEl":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v10    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .end local v12    # "i":I
    .end local v14    # "options":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15    # "pickerParams":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17    # "url":Ljava/lang/String;
    .end local v18    # "values":[Ljava/lang/String;
    .end local v20    # "willChangeButtonText":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v23

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v24

    cmpl-float v23, v23, v24

    if-lez v23, :cond_4

    .line 971
    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXRenderRenderBlock;->RectCIncrementDelta(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 972
    :cond_4
    return-void

    .line 958
    .restart local v4    # "bgcolor":Ljava/lang/String;
    .restart local v5    # "cancelButtonLabel":Ljava/lang/String;
    .restart local v6    # "color":Ljava/lang/String;
    .restart local v7    # "doneButtonLabel":Ljava/lang/String;
    .restart local v10    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .restart local v14    # "options":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v15    # "pickerParams":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v17    # "url":Ljava/lang/String;
    .restart local v20    # "willChangeButtonText":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 959
    .local v8, "e":Ljava/lang/Exception;
    const-string v23, "Exception"

    const-string v24, "inside the executeSelectBox"

    invoke-static/range {v23 .. v24}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 965
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "enuEl":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v12    # "i":I
    .restart local v18    # "values":[Ljava/lang/String;
    :cond_5
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    .line 966
    .local v13, "key":Ljava/lang/Object;
    invoke-virtual {v14, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    aput-object v23, v18, v12

    .line 967
    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method

.method private executeStrokeColor(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 5
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x1

    .line 459
    if-eqz p5, :cond_0

    .line 460
    const/16 v1, 0x10

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-virtual {p1, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getColor(III)I

    move-result v0

    .line 461
    .local v0, "strokeColor":I
    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getIntAttr(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->strokeWidth:F

    .line 462
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 463
    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 464
    iput v4, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->currentDrawingMode:I

    .line 466
    .end local v0    # "strokeColor":I
    :cond_0
    return-void
.end method

.method private executeSubmitButton(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 13
    .param p1, "instruction"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 997
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Lcom/julysystems/appx/AppXRenderInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v8

    .line 998
    .local v8, "x":F
    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Lcom/julysystems/appx/AppXRenderInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v9

    .line 999
    .local v9, "y":F
    const/4 v10, 0x3

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v11

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v12

    invoke-virtual {p1, v10, v11, v12}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v7

    .line 1000
    .local v7, "width":F
    const/4 v10, 0x4

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v11

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v12

    invoke-virtual {p1, v10, v11, v12}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v4

    .line 1001
    .local v4, "height":F
    new-instance v5, Lcom/julysystems/appx/AppXRenderRectC;

    invoke-direct {v5, v8, v9, v7, v4}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 1003
    .local v5, "submitButtonRect":Lcom/julysystems/appx/AppXRenderRectC;
    if-eqz p2, :cond_3

    .line 1004
    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1005
    .local v2, "color":Ljava/lang/String;
    const/4 v10, 0x7

    invoke-virtual {p0, p1, v10}, Lcom/julysystems/appx/AppXRenderRenderBlock;->getFontResource(Lcom/julysystems/appx/AppXRenderInstruction;I)Lcom/julysystems/appx/AppXRenderFont;

    move-result-object v3

    .line 1006
    .local v3, "font":Lcom/julysystems/appx/AppXRenderFont;
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "&iPhoneMode=app&appMode=true&platform=android"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1007
    .local v6, "url":Ljava/lang/String;
    const/16 v10, 0x9

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1008
    .local v1, "bgcolor":Ljava/lang/String;
    new-instance p7, Ljava/util/Hashtable;

    .end local p7    # "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p7 .. p7}, Ljava/util/Hashtable;-><init>()V

    .line 1010
    .restart local p7    # "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 1011
    :try_start_0
    const-string v10, "bgcolor"

    move-object/from16 v0, p7

    invoke-virtual {v0, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    :cond_0
    if-eqz v6, :cond_1

    .line 1013
    const-string v10, "url"

    move-object/from16 v0, p7

    invoke-virtual {v0, v10, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    :cond_1
    if-eqz v2, :cond_2

    .line 1015
    const-string v10, "color"

    move-object/from16 v0, p7

    invoke-virtual {v0, v10, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    :cond_2
    const-string v10, "font"

    move-object/from16 v0, p7

    invoke-virtual {v0, v10, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    const-string v10, "color"

    move-object/from16 v0, p7

    invoke-virtual {v0, v10, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    .end local v1    # "bgcolor":Ljava/lang/String;
    .end local v2    # "color":Ljava/lang/String;
    .end local v3    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .end local v6    # "url":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-virtual {v5}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v10

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    .line 1024
    move-object/from16 v0, p6

    invoke-static {v0, v5}, Lcom/julysystems/appx/AppXRenderRenderBlock;->RectCIncrementDelta(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 1026
    :cond_4
    return-void

    .line 1019
    .restart local v1    # "bgcolor":Ljava/lang/String;
    .restart local v2    # "color":Ljava/lang/String;
    .restart local v3    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .restart local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method private executeSwitch(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 10
    .param p1, "instruction"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 976
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Lcom/julysystems/appx/AppXRenderInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v5

    .line 977
    .local v5, "x":F
    move-object/from16 v0, p6

    invoke-virtual {p1, v0}, Lcom/julysystems/appx/AppXRenderInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v6

    .line 978
    .local v6, "y":F
    const/4 v7, 0x3

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v8

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v9

    invoke-virtual {p1, v7, v8, v9}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v4

    .line 979
    .local v4, "width":F
    const/4 v7, 0x4

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v8

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v9

    invoke-virtual {p1, v7, v8, v9}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v1

    .line 980
    .local v1, "height":F
    new-instance v2, Lcom/julysystems/appx/AppXRenderRectC;

    invoke-direct {v2, v5, v6, v4, v1}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 981
    .local v2, "switchFrame":Lcom/julysystems/appx/AppXRenderRectC;
    if-eqz p2, :cond_0

    .line 982
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&iPhoneMode=app&appMode=true&platform=android"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 983
    .local v3, "url":Ljava/lang/String;
    new-instance p7, Ljava/util/Hashtable;

    .end local p7    # "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p7 .. p7}, Ljava/util/Hashtable;-><init>()V

    .line 985
    .restart local p7    # "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_0

    .line 986
    :try_start_0
    const-string v7, "url"

    move-object/from16 v0, p7

    invoke-virtual {v0, v7, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v7

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 992
    move-object/from16 v0, p6

    invoke-static {v0, v2}, Lcom/julysystems/appx/AppXRenderRenderBlock;->RectCIncrementDelta(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 994
    :cond_1
    return-void

    .line 987
    .restart local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private executeTab(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;I)V
    .locals 46
    .param p1, "instruction"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "tabIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 575
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "selectedTab"

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .line 576
    .local v36, "selectedTabstr":Ljava/lang/String;
    const-string v5, "focusedTab"

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 578
    .local v28, "focusTabstr":Ljava/lang/String;
    const/16 v35, 0x0

    .line 579
    .local v35, "selectedTab":I
    if-eqz v36, :cond_0

    .line 580
    :try_start_0
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    .line 581
    :cond_0
    const/16 v29, 0x0

    .line 582
    .local v29, "focusedTab":I
    if-eqz v28, :cond_1

    .line 583
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 585
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderInstruction;->getInnerRenderBlock()Lcom/julysystems/appx/AppXRenderRenderBlock;

    move-result-object v37

    .line 586
    .local v37, "tabBlock":Lcom/julysystems/appx/AppXRenderRenderBlock;
    const/16 v39, 0x0

    .line 588
    .local v39, "tabHeader":Lcom/julysystems/appx/AppXRenderInstruction;
    move/from16 v0, p8

    move/from16 v1, v35

    if-ne v0, v1, :cond_6

    .line 589
    const/16 v5, 0x1d

    const/16 v8, 0x15

    const-string v9, "selected"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v5, v8, v9}, Lcom/julysystems/appx/AppXRenderRenderBlock;->getInnerInstructionForId(Lcom/julysystems/appx/AppXRenderRenderBlock;IILjava/lang/String;)Lcom/julysystems/appx/AppXRenderInstruction;

    move-result-object v39

    .line 595
    :goto_0
    if-eqz v39, :cond_4

    .line 596
    const/4 v7, 0x0

    .line 597
    .local v7, "tabHeaderInnerBlock":Lcom/julysystems/appx/AppXRenderRenderBlock;
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_1
    invoke-virtual/range {v39 .. v39}, Lcom/julysystems/appx/AppXRenderInstruction;->getAttributeCount()I

    move-result v5

    move/from16 v0, v32

    if-lt v0, v5, :cond_8

    .line 604
    :goto_2
    move-object/from16 v0, v39

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v44

    .line 605
    .local v44, "x":F
    move-object/from16 v0, v39

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v45

    .line 606
    .local v45, "y":F
    const/4 v5, 0x3

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v8

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v9

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v8, v9}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v43

    .line 607
    .local v43, "width":F
    const/4 v5, 0x4

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v8

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v9

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v8, v9}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v31

    .line 608
    .local v31, "height":F
    new-instance v12, Lcom/julysystems/appx/AppXRenderRectC;

    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v43

    move/from16 v3, v31

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 610
    .local v12, "tabRect":Lcom/julysystems/appx/AppXRenderRectC;
    if-nez v7, :cond_b

    .line 611
    const/16 v5, 0x10

    const-string v8, ""

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v8}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 612
    .local v38, "tabDisplayName":Ljava/lang/String;
    const/16 v5, 0x12

    const-string v8, "#FFFFFF"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v8}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 613
    .local v23, "bgColorStr":Ljava/lang/String;
    const/16 v5, 0x13

    const-string v8, "#000000"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v8}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 614
    .local v25, "borderColorStr":Ljava/lang/String;
    const/4 v5, 0x6

    const-string v8, "#000000"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v8}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 615
    .local v42, "textColorStr":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    .line 616
    .local v22, "bgColor":I
    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    .line 617
    .local v24, "borderColor":I
    invoke-static/range {v42 .. v42}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    .line 618
    .local v41, "textColor":I
    const/4 v5, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v5}, Lcom/julysystems/appx/AppXRenderRenderBlock;->getFontResource(Lcom/julysystems/appx/AppXRenderInstruction;I)Lcom/julysystems/appx/AppXRenderFont;

    move-result-object v30

    .line 619
    .local v30, "font":Lcom/julysystems/appx/AppXRenderFont;
    const/16 v5, 0x14

    const/4 v8, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v8}, Lcom/julysystems/appx/AppXRenderInstruction;->getIntAttr(II)I

    move-result v26

    .line 620
    .local v26, "borderThickness":I
    const/16 v5, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v5, v2, v12}, Lcom/julysystems/appx/AppXRenderRenderBlock;->getImageResource(Lcom/julysystems/appx/AppXRenderInstruction;ILcom/julysystems/appx/AppXRenderRenderField;Lcom/julysystems/appx/AppXRenderRectC;)Landroid/graphics/Bitmap;

    move-result-object v33

    .line 621
    .local v33, "image":Landroid/graphics/Bitmap;
    if-eqz p4, :cond_2

    .line 622
    if-eqz v33, :cond_a

    .line 623
    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v33

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v5, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 634
    :goto_3
    if-eqz v38, :cond_2

    if-eqz p4, :cond_2

    .line 635
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    .line 636
    .local v6, "textPaint":Landroid/text/TextPaint;
    move/from16 v0, v41

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 637
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/julysystems/appx/AppXRenderRenderBlock;->setFont(Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderFont;)V

    .line 638
    new-instance v4, Landroid/text/StaticLayout;

    const/4 v5, 0x0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v12}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v8

    float-to-int v7, v8

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .end local v7    # "tabHeaderInnerBlock":Lcom/julysystems/appx/AppXRenderRenderBlock;
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 639
    .local v4, "staticLayout":Landroid/text/StaticLayout;
    iget v5, v12, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    iget v8, v12, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 640
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 641
    const/4 v5, 0x0

    iget v8, v12, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    sub-float/2addr v5, v8

    const/4 v8, 0x0

    iget v9, v12, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    sub-float/2addr v8, v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 647
    .end local v4    # "staticLayout":Landroid/text/StaticLayout;
    .end local v6    # "textPaint":Landroid/text/TextPaint;
    .end local v22    # "bgColor":I
    .end local v23    # "bgColorStr":Ljava/lang/String;
    .end local v24    # "borderColor":I
    .end local v25    # "borderColorStr":Ljava/lang/String;
    .end local v26    # "borderThickness":I
    .end local v30    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .end local v33    # "image":Landroid/graphics/Bitmap;
    .end local v38    # "tabDisplayName":Ljava/lang/String;
    .end local v41    # "textColor":I
    .end local v42    # "textColorStr":Ljava/lang/String;
    :cond_2
    :goto_4
    if-eqz p2, :cond_3

    .line 648
    new-instance v40, Lcom/julysystems/appx/AppXTabButton;

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    move/from16 v2, p8

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/julysystems/appx/AppXTabButton;-><init>(Landroid/content/Context;Landroid/graphics/RectF;ILcom/julysystems/appx/AppXRenderRenderField;)V

    .line 649
    .local v40, "tabbarField":Lcom/julysystems/appx/AppXTabButton;
    new-instance v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    new-instance v8, Ljava/lang/Float;

    invoke-virtual {v12}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v8}, Ljava/lang/Float;->intValue()I

    move-result v8

    new-instance v9, Ljava/lang/Float;

    invoke-virtual {v12}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v9}, Ljava/lang/Float;->intValue()I

    move-result v9

    new-instance v10, Ljava/lang/Float;

    iget v11, v12, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    invoke-direct {v10, v11}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v10}, Ljava/lang/Float;->intValue()I

    move-result v10

    new-instance v11, Ljava/lang/Float;

    iget v13, v12, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-direct {v11, v13}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v11}, Ljava/lang/Float;->intValue()I

    move-result v11

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/julysystems/appx/AppXTabButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    move-object/from16 v0, p2

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderRenderField;->addView(Landroid/view/View;)V

    .line 653
    .end local v40    # "tabbarField":Lcom/julysystems/appx/AppXTabButton;
    :cond_3
    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v34

    .line 654
    .local v34, "prevWidth":F
    invoke-virtual {v12}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v5

    add-float v5, v5, v44

    move-object/from16 v0, p6

    iput v5, v0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    .line 655
    move-object/from16 v0, p6

    iget v5, v0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    add-float v5, v5, v34

    move-object/from16 v0, p6

    iput v5, v0, Lcom/julysystems/appx/AppXRenderRectC;->right:F

    .line 656
    invoke-virtual {v12}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v5

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v8

    cmpl-float v5, v5, v8

    if-lez v5, :cond_4

    .line 657
    move-object/from16 v0, p6

    invoke-static {v0, v12}, Lcom/julysystems/appx/AppXRenderRenderBlock;->RectCIncrementDelta(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 659
    .end local v12    # "tabRect":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v31    # "height":F
    .end local v32    # "i":I
    .end local v34    # "prevWidth":F
    .end local v43    # "width":F
    .end local v44    # "x":F
    .end local v45    # "y":F
    :cond_4
    move/from16 v0, p8

    move/from16 v1, v35

    if-ne v0, v1, :cond_5

    move-object/from16 v13, v37

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    .line 660
    invoke-virtual/range {v13 .. v19}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    .line 665
    .end local v29    # "focusedTab":I
    .end local v37    # "tabBlock":Lcom/julysystems/appx/AppXRenderRenderBlock;
    .end local v39    # "tabHeader":Lcom/julysystems/appx/AppXRenderInstruction;
    :cond_5
    :goto_5
    return-void

    .line 590
    .restart local v29    # "focusedTab":I
    .restart local v37    # "tabBlock":Lcom/julysystems/appx/AppXRenderRenderBlock;
    .restart local v39    # "tabHeader":Lcom/julysystems/appx/AppXRenderInstruction;
    :cond_6
    move/from16 v0, p8

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 591
    const/16 v5, 0x1d

    const/16 v8, 0x15

    const-string v9, "focused"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v5, v8, v9}, Lcom/julysystems/appx/AppXRenderRenderBlock;->getInnerInstructionForId(Lcom/julysystems/appx/AppXRenderRenderBlock;IILjava/lang/String;)Lcom/julysystems/appx/AppXRenderInstruction;

    move-result-object v39

    goto/16 :goto_0

    .line 593
    :cond_7
    const/16 v5, 0x1d

    const/16 v8, 0x15

    const-string v9, "deselected"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v5, v8, v9}, Lcom/julysystems/appx/AppXRenderRenderBlock;->getInnerInstructionForId(Lcom/julysystems/appx/AppXRenderRenderBlock;IILjava/lang/String;)Lcom/julysystems/appx/AppXRenderInstruction;

    move-result-object v39

    goto/16 :goto_0

    .line 598
    .restart local v7    # "tabHeaderInnerBlock":Lcom/julysystems/appx/AppXRenderRenderBlock;
    .restart local v32    # "i":I
    :cond_8
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/julysystems/appx/AppXRenderInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderAttribute;

    aget-object v5, v5, v32

    invoke-virtual {v5}, Lcom/julysystems/appx/AppXRenderAttribute;->getAttributeId()I

    move-result v5

    if-nez v5, :cond_9

    .line 599
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/julysystems/appx/AppXRenderInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderAttribute;

    aget-object v5, v5, v32

    invoke-virtual {v5}, Lcom/julysystems/appx/AppXRenderAttribute;->getInnerRenderBlock()Lcom/julysystems/appx/AppXRenderRenderBlock;

    move-result-object v7

    .line 600
    goto/16 :goto_2

    .line 597
    :cond_9
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_1

    .line 625
    .restart local v12    # "tabRect":Lcom/julysystems/appx/AppXRenderRectC;
    .restart local v22    # "bgColor":I
    .restart local v23    # "bgColorStr":Ljava/lang/String;
    .restart local v24    # "borderColor":I
    .restart local v25    # "borderColorStr":Ljava/lang/String;
    .restart local v26    # "borderThickness":I
    .restart local v30    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .restart local v31    # "height":F
    .restart local v33    # "image":Landroid/graphics/Bitmap;
    .restart local v38    # "tabDisplayName":Ljava/lang/String;
    .restart local v41    # "textColor":I
    .restart local v42    # "textColorStr":Ljava/lang/String;
    .restart local v43    # "width":F
    .restart local v44    # "x":F
    .restart local v45    # "y":F
    :cond_a
    const/16 v20, 0xa

    .local v20, "arcH":I
    const/16 v21, 0xa

    .line 626
    .local v21, "arcW":I
    move-object/from16 v0, p5

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 627
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 628
    move/from16 v0, v21

    int-to-float v5, v0

    move/from16 v0, v20

    int-to-float v8, v0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v0, v12, v5, v8, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 629
    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 630
    move/from16 v0, v26

    int-to-float v5, v0

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 631
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 632
    move/from16 v0, v21

    int-to-float v5, v0

    move/from16 v0, v20

    int-to-float v8, v0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v0, v12, v5, v8, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 661
    .end local v7    # "tabHeaderInnerBlock":Lcom/julysystems/appx/AppXRenderRenderBlock;
    .end local v12    # "tabRect":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v20    # "arcH":I
    .end local v21    # "arcW":I
    .end local v22    # "bgColor":I
    .end local v23    # "bgColorStr":Ljava/lang/String;
    .end local v24    # "borderColor":I
    .end local v25    # "borderColorStr":Ljava/lang/String;
    .end local v26    # "borderThickness":I
    .end local v29    # "focusedTab":I
    .end local v30    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .end local v31    # "height":F
    .end local v32    # "i":I
    .end local v33    # "image":Landroid/graphics/Bitmap;
    .end local v37    # "tabBlock":Lcom/julysystems/appx/AppXRenderRenderBlock;
    .end local v38    # "tabDisplayName":Ljava/lang/String;
    .end local v39    # "tabHeader":Lcom/julysystems/appx/AppXRenderInstruction;
    .end local v41    # "textColor":I
    .end local v42    # "textColorStr":Ljava/lang/String;
    .end local v43    # "width":F
    .end local v44    # "x":F
    .end local v45    # "y":F
    :catch_0
    move-exception v27

    .line 662
    .local v27, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "inside the executeTab::::::::"

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 663
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v7    # "tabHeaderInnerBlock":Lcom/julysystems/appx/AppXRenderRenderBlock;
    .restart local v12    # "tabRect":Lcom/julysystems/appx/AppXRenderRectC;
    .restart local v29    # "focusedTab":I
    .restart local v31    # "height":F
    .restart local v32    # "i":I
    .restart local v37    # "tabBlock":Lcom/julysystems/appx/AppXRenderRenderBlock;
    .restart local v39    # "tabHeader":Lcom/julysystems/appx/AppXRenderInstruction;
    .restart local v43    # "width":F
    .restart local v44    # "x":F
    .restart local v45    # "y":F
    :cond_b
    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v13, p7

    .line 645
    :try_start_1
    invoke-virtual/range {v7 .. v13}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method private executeTabContainer(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 7
    .param p1, "instruction"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 557
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderInstruction;->getInnerRenderBlock()Lcom/julysystems/appx/AppXRenderRenderBlock;

    move-result-object v0

    .line 558
    .local v0, "tabContainerBlock":Lcom/julysystems/appx/AppXRenderRenderBlock;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 559
    invoke-virtual/range {v0 .. v6}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    .line 561
    :cond_0
    return-void
.end method

.method private executeTabData(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 8
    .param p1, "instruction"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 668
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderInstruction;->getInnerRenderBlock()Lcom/julysystems/appx/AppXRenderRenderBlock;

    move-result-object v0

    .line 669
    .local v0, "tabDataBlock":Lcom/julysystems/appx/AppXRenderRenderBlock;
    if-eqz v0, :cond_0

    .line 670
    new-instance v5, Lcom/julysystems/appx/AppXRenderRectC;

    iget v2, p6, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v3

    invoke-direct {v5, v7, v2, v3, v7}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .local v5, "tabDataContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    move-object v2, p3

    move-object v3, v1

    move-object v4, v1

    move-object v6, p7

    .line 671
    invoke-virtual/range {v0 .. v6}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    .line 672
    new-instance v5, Lcom/julysystems/appx/AppXRenderRectC;

    .end local v5    # "tabDataContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    iget v1, p6, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v2

    invoke-direct {v5, v7, v1, v2, v7}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .restart local v5    # "tabDataContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v6, p7

    .line 673
    invoke-virtual/range {v0 .. v6}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    .line 674
    iget v1, p6, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    invoke-virtual {v5}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p6, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 677
    .end local v5    # "tabDataContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    :cond_0
    return-void
.end method

.method private executeTable(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 16
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 477
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 478
    .local v6, "columnWidths":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/16 v3, 0x10

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v4

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v5

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/julysystems/appx/AppXRenderInstruction;->getMultiValuedAttribute(Lcom/julysystems/appx/AppXRenderInstruction;IFFLjava/util/Vector;)Ljava/util/Vector;

    move-result-object v6

    .line 479
    const/16 v1, 0x11

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v2

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v15

    .line 480
    .local v15, "rowHeight":F
    const/16 v1, 0x12

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getIntAttr(II)I

    move-result v1

    int-to-float v14, v1

    .line 482
    .local v14, "cellPadding":F
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderInstruction;->getInnerRenderBlock()Lcom/julysystems/appx/AppXRenderRenderBlock;

    move-result-object v7

    .line 483
    .local v7, "tableBlock":Lcom/julysystems/appx/AppXRenderRenderBlock;
    if-eqz v7, :cond_0

    .line 484
    const-string v1, "columnWidths"

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string v1, "rowHeight"

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string v1, "cellPadding"

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    new-instance v12, Lcom/julysystems/appx/AppXRenderRectC;

    move-object/from16 v0, p6

    iget v1, v0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    move-object/from16 v0, p6

    iget v2, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v12, v1, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .local v12, "tableContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v13, p7

    .line 490
    invoke-virtual/range {v7 .. v13}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    .line 491
    move-object/from16 v0, p6

    iget v1, v0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    invoke-virtual {v12}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v2

    add-float/2addr v1, v2

    move-object/from16 v0, p6

    iput v1, v0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 493
    const-string v1, "columnWidths"

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v1, "rowHeight"

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v1, "cellPadding"

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .end local v12    # "tableContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    :cond_0
    return-void
.end method

.method private executeTableCell(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;I)V
    .locals 18
    .param p1, "instruction"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderInstruction;->getInnerRenderBlock()Lcom/julysystems/appx/AppXRenderRenderBlock;

    move-result-object v1

    .line 521
    .local v1, "tdBlock":Lcom/julysystems/appx/AppXRenderRenderBlock;
    if-eqz v1, :cond_0

    .line 522
    const-string v11, "0"

    .line 523
    .local v11, "colWidthStr":Ljava/lang/String;
    move-object/from16 v0, p6

    iget v9, v0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    .line 525
    .local v9, "colOriginX":F
    :try_start_0
    const-string v2, "columnWidths"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Vector;

    .line 526
    .local v12, "colWidths":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    move/from16 v0, p8

    invoke-virtual {v12, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 527
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, p8

    if-lt v14, v0, :cond_1

    .line 535
    .end local v12    # "colWidths":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v14    # "i":I
    :goto_1
    const-string v2, "rowHeight"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 537
    .local v16, "rowHeightStr":Ljava/lang/String;
    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    .line 538
    .local v15, "rowHeight":F
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 539
    .local v10, "colWidth":F
    const-string v2, "cellPadding"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 540
    .local v8, "cellPaddingStr":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->cellPadding:F

    .line 541
    new-instance v6, Lcom/julysystems/appx/AppXRenderRectC;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->cellPadding:F

    add-float/2addr v2, v9

    move-object/from16 v0, p6

    iget v3, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->cellPadding:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->cellPadding:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    sub-float v4, v10, v4

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->cellPadding:F

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v7, v7, v17

    sub-float/2addr v5, v7

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 542
    .local v6, "tdContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p3

    move-object/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    .line 543
    invoke-virtual/range {v1 .. v7}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    .line 544
    iget v2, v6, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->cellPadding:F

    add-float/2addr v2, v3

    iput v2, v6, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 545
    move-object/from16 v0, p6

    iget v2, v0, Lcom/julysystems/appx/AppXRenderRectC;->right:F

    add-float/2addr v2, v10

    move-object/from16 v0, p6

    iput v2, v0, Lcom/julysystems/appx/AppXRenderRectC;->right:F

    .line 547
    const/4 v2, 0x0

    cmpg-float v2, v15, v2

    if-gtz v2, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v2

    invoke-virtual {v6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 548
    move-object/from16 v0, p6

    invoke-static {v0, v6}, Lcom/julysystems/appx/AppXRenderRenderBlock;->RectCIncrementDelta(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 554
    .end local v6    # "tdContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v8    # "cellPaddingStr":Ljava/lang/String;
    .end local v9    # "colOriginX":F
    .end local v10    # "colWidth":F
    .end local v11    # "colWidthStr":Ljava/lang/String;
    .end local v15    # "rowHeight":F
    .end local v16    # "rowHeightStr":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 528
    .restart local v9    # "colOriginX":F
    .restart local v11    # "colWidthStr":Ljava/lang/String;
    .restart local v12    # "colWidths":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v14    # "i":I
    :cond_1
    :try_start_2
    invoke-virtual {v12, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 529
    .local v10, "colWidth":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    add-float/2addr v9, v2

    .line 527
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 531
    .end local v10    # "colWidth":Ljava/lang/String;
    .end local v12    # "colWidths":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v14    # "i":I
    :catch_0
    move-exception v13

    .line 532
    .local v13, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tried to access colwidth for table which doesnt exist "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 549
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v16    # "rowHeightStr":Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 550
    .local v13, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Exception in executeTableCell "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2
.end method

.method private executeTableRow(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 11
    .param p1, "instruction"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderInstruction;->getInnerRenderBlock()Lcom/julysystems/appx/AppXRenderRenderBlock;

    move-result-object v1

    .line 501
    .local v1, "trBlock":Lcom/julysystems/appx/AppXRenderRenderBlock;
    const-string v2, "rowHeight"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 503
    .local v10, "rowHeightStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 504
    .local v9, "rowHeight":F
    new-instance v6, Lcom/julysystems/appx/AppXRenderRectC;

    move-object/from16 v0, p6

    iget v2, v0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    move-object/from16 v0, p6

    iget v3, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v4

    add-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {v6, v2, v3, v4, v9}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 506
    .local v6, "trContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    if-eqz v1, :cond_0

    .line 507
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p3

    move-object/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    .line 508
    invoke-virtual/range {v1 .. v7}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    .line 510
    :cond_0
    move-object/from16 v0, p6

    iget v2, v0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    invoke-virtual {v6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p6

    iput v2, v0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .end local v6    # "trContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v9    # "rowHeight":F
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v8

    .line 512
    .local v8, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Inside executeTableRow >>>>>>>>>>"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private executeTabs(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 7
    .param p1, "instruction"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 564
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderInstruction;->getInnerRenderBlock()Lcom/julysystems/appx/AppXRenderRenderBlock;

    move-result-object v0

    .line 565
    .local v0, "tabsBlock":Lcom/julysystems/appx/AppXRenderRenderBlock;
    if-eqz v0, :cond_0

    .line 566
    new-instance v5, Lcom/julysystems/appx/AppXRenderRectC;

    iget v1, p6, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    iget v2, p6, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .local v5, "tabsContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v6, p7

    .line 567
    invoke-virtual/range {v0 .. v6}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    .line 568
    iget v1, p6, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    invoke-virtual {v5}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p6, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    .line 569
    invoke-virtual {v5}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v1

    iput v1, p6, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 572
    .end local v5    # "tabsContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    :cond_0
    return-void
.end method

.method private executeText(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 16
    .param p1, "instruction"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 754
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v11

    .line 755
    .local v11, "x":F
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v12

    .line 756
    .local v12, "y":F
    const/4 v13, 0x3

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v14

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v8

    .line 757
    .local v8, "width":F
    const/4 v13, 0x4

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v14

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v3

    .line 758
    .local v3, "height":F
    const-string v13, "rowHeight"

    move-object/from16 v0, p7

    invoke-virtual {v0, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 759
    .local v5, "rowHt":Ljava/lang/String;
    const/16 v13, 0x10

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 761
    .local v10, "wrapMode":Ljava/lang/String;
    new-instance v7, Lcom/julysystems/appx/AppXRenderRectC;

    invoke-direct {v7, v11, v12, v8, v3}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 762
    .local v7, "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    if-eqz v5, :cond_8

    const-string v13, ""

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 763
    .local v4, "rowHeight":F
    :goto_0
    const/4 v13, 0x0

    cmpg-float v13, v4, v13

    if-ltz v13, :cond_0

    const/4 v13, 0x0

    cmpg-float v13, v3, v13

    if-gez v13, :cond_1

    .line 764
    :cond_0
    new-instance v7, Lcom/julysystems/appx/AppXRenderRectC;

    .end local v7    # "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    const/4 v13, 0x0

    invoke-direct {v7, v11, v12, v8, v13}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 766
    .restart local v7    # "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    :cond_1
    const/4 v9, 0x1

    .line 767
    .local v9, "wrapLines":Z
    if-eqz v10, :cond_2

    const-string v13, "wordwrap"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 768
    const/4 v9, 0x0

    .line 770
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v9, v8}, Lcom/julysystems/appx/AppXRenderInstruction;->getTextLayout(Lcom/julysystems/appx/AppXRenderRenderBlock;ZF)Landroid/text/Layout;

    move-result-object v6

    .line 771
    .local v6, "textLayout":Landroid/text/Layout;
    if-eqz p4, :cond_3

    .line 772
    iget v13, v7, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    iget v14, v7, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 773
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 774
    const/4 v13, 0x0

    iget v14, v7, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    iget v15, v7, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    sub-float/2addr v14, v15

    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 776
    :cond_3
    if-eqz v9, :cond_5

    .line 777
    const/4 v13, 0x0

    cmpg-float v13, v4, v13

    if-ltz v13, :cond_4

    invoke-virtual {v7}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v13

    cmpg-float v13, v13, v3

    if-ltz v13, :cond_4

    const/4 v13, 0x0

    cmpg-float v13, v3, v13

    if-gtz v13, :cond_5

    .line 778
    :cond_4
    iget v13, v7, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    iput v13, v7, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 780
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->actionUrl:Ljava/lang/String;

    if-eqz v13, :cond_6

    .line 781
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v7, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getRectC(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/julysystems/appx/AppXRenderRenderBlock;->addActionRect(Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 783
    :cond_6
    invoke-virtual {v7}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v13

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_7

    .line 784
    move-object/from16 v0, p6

    invoke-static {v0, v7}, Lcom/julysystems/appx/AppXRenderRenderBlock;->RectCIncrementDelta(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    .end local v3    # "height":F
    .end local v4    # "rowHeight":F
    .end local v5    # "rowHt":Ljava/lang/String;
    .end local v6    # "textLayout":Landroid/text/Layout;
    .end local v7    # "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v8    # "width":F
    .end local v9    # "wrapLines":Z
    .end local v10    # "wrapMode":Ljava/lang/String;
    .end local v11    # "x":F
    .end local v12    # "y":F
    :cond_7
    :goto_1
    return-void

    .line 762
    .restart local v3    # "height":F
    .restart local v5    # "rowHt":Ljava/lang/String;
    .restart local v7    # "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    .restart local v8    # "width":F
    .restart local v10    # "wrapMode":Ljava/lang/String;
    .restart local v11    # "x":F
    .restart local v12    # "y":F
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 786
    .end local v3    # "height":F
    .end local v5    # "rowHt":Ljava/lang/String;
    .end local v7    # "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v8    # "width":F
    .end local v10    # "wrapMode":Ljava/lang/String;
    .end local v11    # "x":F
    .end local v12    # "y":F
    :catch_0
    move-exception v2

    .line 787
    .local v2, "e":Ljava/lang/Exception;
    const-string v13, "Error"

    const-string v14, "Exception inside the executeText"

    invoke-static {v13, v14}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private executeTextField(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 29
    .param p1, "instruction"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 823
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v24

    .line 824
    .local v24, "x":F
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v25

    .line 825
    .local v25, "y":F
    const/16 v26, 0x3

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v27

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v28

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v23

    .line 826
    .local v23, "width":F
    const/16 v26, 0x4

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v27

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v28

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v13

    .line 828
    .local v13, "height":F
    new-instance v20, Lcom/julysystems/appx/AppXRenderRectC;

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 829
    .local v20, "textFieldFrame":Lcom/julysystems/appx/AppXRenderRectC;
    if-eqz p2, :cond_3

    .line 830
    const/16 v26, 0x6

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 831
    .local v9, "color":Ljava/lang/String;
    const/16 v26, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderRenderBlock;->getFontResource(Lcom/julysystems/appx/AppXRenderInstruction;I)Lcom/julysystems/appx/AppXRenderFont;

    move-result-object v12

    .line 832
    .local v12, "font":Lcom/julysystems/appx/AppXRenderFont;
    const/16 v26, 0x8

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 833
    .local v22, "url":Ljava/lang/String;
    const/16 v26, 0x9

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 834
    .local v5, "bgcolor":Ljava/lang/String;
    const/16 v26, 0x13

    const-string v27, "Done"

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 835
    .local v10, "doneButtonLabel":Ljava/lang/String;
    const/16 v26, 0x14

    const-string v27, "Cancel"

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 836
    .local v7, "cancelButtonLabel":Ljava/lang/String;
    const/16 v26, 0x15

    const-string v27, "none"

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 837
    .local v6, "borderStyle":Ljava/lang/String;
    const/16 v26, 0x16

    const-string v27, "no"

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 838
    .local v8, "clearsOnBeginEdit":Ljava/lang/String;
    const/16 v26, 0x17

    const-string v27, ""

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 839
    .local v17, "placeHolderText":Ljava/lang/String;
    const/16 v26, 0x18

    const-string v27, ""

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 840
    .local v18, "returnKeyType":Ljava/lang/String;
    const/16 v26, 0x19

    const-string v27, ""

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 841
    .local v16, "keyboardType":Ljava/lang/String;
    const/16 v26, 0x1a

    const-string v27, ""

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 842
    .local v4, "autoCorrection":Ljava/lang/String;
    const/16 v26, 0x1b

    const-string v27, "no"

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 843
    .local v15, "isSecured":Ljava/lang/String;
    const/16 v26, 0x1c

    const-string v27, "yes"

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 844
    .local v14, "isEditable":Ljava/lang/String;
    const/16 v26, 0x1d

    const-string v27, "left"

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 846
    .local v19, "textAlignment":Ljava/lang/String;
    new-instance v21, Ljava/util/Hashtable;

    invoke-direct/range {v21 .. v21}, Ljava/util/Hashtable;-><init>()V

    .line 848
    .local v21, "textFieldParams":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v5, :cond_0

    .line 849
    :try_start_0
    const-string v26, "bgcolor"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :cond_0
    if-eqz v22, :cond_1

    .line 851
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "&iPhoneMode=app&appMode=true&platform=android"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 852
    const-string v26, "url"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    :cond_1
    if-eqz v9, :cond_2

    .line 855
    const-string v26, "color"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    :cond_2
    const-string v26, "font"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    const-string v26, "doneButtonLabel"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    const-string v26, "cancelButtonLabel"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    const-string v26, "borderStyle"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    const-string v26, "clearsOnBeginEdit"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    const-string v26, "placeHolderText"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    const-string v26, "returnKeyType"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    const-string v26, "keyboardType"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    const-string v26, "autoCorrection"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    const-string v26, "isSecured"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const-string v26, "isEditable"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    const-string v26, "textAlignment"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    .end local v4    # "autoCorrection":Ljava/lang/String;
    .end local v5    # "bgcolor":Ljava/lang/String;
    .end local v6    # "borderStyle":Ljava/lang/String;
    .end local v7    # "cancelButtonLabel":Ljava/lang/String;
    .end local v8    # "clearsOnBeginEdit":Ljava/lang/String;
    .end local v9    # "color":Ljava/lang/String;
    .end local v10    # "doneButtonLabel":Ljava/lang/String;
    .end local v12    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .end local v14    # "isEditable":Ljava/lang/String;
    .end local v15    # "isSecured":Ljava/lang/String;
    .end local v16    # "keyboardType":Ljava/lang/String;
    .end local v17    # "placeHolderText":Ljava/lang/String;
    .end local v18    # "returnKeyType":Ljava/lang/String;
    .end local v19    # "textAlignment":Ljava/lang/String;
    .end local v21    # "textFieldParams":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v22    # "url":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-virtual/range {v20 .. v20}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v26

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v27

    cmpl-float v26, v26, v27

    if-lez v26, :cond_4

    .line 874
    move-object/from16 v0, p6

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXRenderRenderBlock;->RectCIncrementDelta(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 876
    :cond_4
    return-void

    .line 869
    .restart local v4    # "autoCorrection":Ljava/lang/String;
    .restart local v5    # "bgcolor":Ljava/lang/String;
    .restart local v6    # "borderStyle":Ljava/lang/String;
    .restart local v7    # "cancelButtonLabel":Ljava/lang/String;
    .restart local v8    # "clearsOnBeginEdit":Ljava/lang/String;
    .restart local v9    # "color":Ljava/lang/String;
    .restart local v10    # "doneButtonLabel":Ljava/lang/String;
    .restart local v12    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .restart local v14    # "isEditable":Ljava/lang/String;
    .restart local v15    # "isSecured":Ljava/lang/String;
    .restart local v16    # "keyboardType":Ljava/lang/String;
    .restart local v17    # "placeHolderText":Ljava/lang/String;
    .restart local v18    # "returnKeyType":Ljava/lang/String;
    .restart local v19    # "textAlignment":Ljava/lang/String;
    .restart local v21    # "textFieldParams":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v22    # "url":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 870
    .local v11, "e":Ljava/lang/Exception;
    const-string v26, "Excetion"

    const-string v27, "inside the executeTextField"

    invoke-static/range {v26 .. v27}, Lcom/julysystems/appx/AppXLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private executeTextView(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 25
    .param p1, "instruction"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderInstruction;",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 880
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v20

    .line 881
    .local v20, "x":F
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v21

    .line 882
    .local v21, "y":F
    const/16 v22, 0x3

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v23

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v19

    .line 883
    .local v19, "width":F
    const/16 v22, 0x4

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v23

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderInstruction;->getDimension(IFF)F

    move-result v10

    .line 884
    .local v10, "height":F
    new-instance v16, Lcom/julysystems/appx/AppXRenderRectC;

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 885
    .local v16, "textAreaFieldFrame":Lcom/julysystems/appx/AppXRenderRectC;
    if-eqz p2, :cond_3

    .line 886
    const/16 v22, 0x6

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 887
    .local v7, "color":Ljava/lang/String;
    const/16 v22, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderRenderBlock;->getFontResource(Lcom/julysystems/appx/AppXRenderInstruction;I)Lcom/julysystems/appx/AppXRenderFont;

    move-result-object v9

    .line 888
    .local v9, "font":Lcom/julysystems/appx/AppXRenderFont;
    const/16 v22, 0x8

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 889
    .local v18, "url":Ljava/lang/String;
    const/16 v22, 0x9

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 890
    .local v5, "bgcolor":Ljava/lang/String;
    const/16 v22, 0x13

    const-string v23, "Done"

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 891
    .local v8, "doneButtonLabel":Ljava/lang/String;
    const/16 v22, 0x14

    const-string v23, "Cancel"

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 892
    .local v6, "cancelButtonLabel":Ljava/lang/String;
    const/16 v22, 0x18

    const-string v23, ""

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 893
    .local v14, "returnKeyType":Ljava/lang/String;
    const/16 v22, 0x19

    const-string v23, ""

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 894
    .local v13, "keyboardType":Ljava/lang/String;
    const/16 v22, 0x1a

    const-string v23, ""

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 895
    .local v4, "autoCorrection":Ljava/lang/String;
    const/16 v22, 0x1b

    const-string v23, "no"

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 896
    .local v12, "isSecured":Ljava/lang/String;
    const/16 v22, 0x1c

    const-string v23, "yes"

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 897
    .local v11, "isEditable":Ljava/lang/String;
    const/16 v22, 0x1d

    const-string v23, "left"

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 899
    .local v15, "textAlignment":Ljava/lang/String;
    new-instance v17, Ljava/util/Hashtable;

    invoke-direct/range {v17 .. v17}, Ljava/util/Hashtable;-><init>()V

    .line 901
    .local v17, "textViewParams":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v5, :cond_0

    .line 902
    :try_start_0
    const-string v22, "bgcolor"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    :cond_0
    if-eqz v18, :cond_1

    .line 904
    const-string v22, "url"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    :cond_1
    if-eqz v7, :cond_2

    .line 906
    const-string v22, "color"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    :cond_2
    const-string v22, "font"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    const-string v22, "doneButtonLabel"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    const-string v22, "cancelButtonLabel"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    const-string v22, "returnKeyType"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    const-string v22, "keyboardType"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    const-string v22, "autoCorrection"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const-string v22, "isSecured"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    const-string v22, "isEditable"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const-string v22, "textAlignment"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    .end local v4    # "autoCorrection":Ljava/lang/String;
    .end local v5    # "bgcolor":Ljava/lang/String;
    .end local v6    # "cancelButtonLabel":Ljava/lang/String;
    .end local v7    # "color":Ljava/lang/String;
    .end local v8    # "doneButtonLabel":Ljava/lang/String;
    .end local v9    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .end local v11    # "isEditable":Ljava/lang/String;
    .end local v12    # "isSecured":Ljava/lang/String;
    .end local v13    # "keyboardType":Ljava/lang/String;
    .end local v14    # "returnKeyType":Ljava/lang/String;
    .end local v15    # "textAlignment":Ljava/lang/String;
    .end local v17    # "textViewParams":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v18    # "url":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v22

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v23

    cmpl-float v22, v22, v23

    if-lez v22, :cond_4

    .line 922
    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/julysystems/appx/AppXRenderRenderBlock;->RectCIncrementDelta(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 924
    :cond_4
    return-void

    .line 917
    .restart local v4    # "autoCorrection":Ljava/lang/String;
    .restart local v5    # "bgcolor":Ljava/lang/String;
    .restart local v6    # "cancelButtonLabel":Ljava/lang/String;
    .restart local v7    # "color":Ljava/lang/String;
    .restart local v8    # "doneButtonLabel":Ljava/lang/String;
    .restart local v9    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .restart local v11    # "isEditable":Ljava/lang/String;
    .restart local v12    # "isSecured":Ljava/lang/String;
    .restart local v13    # "keyboardType":Ljava/lang/String;
    .restart local v14    # "returnKeyType":Ljava/lang/String;
    .restart local v15    # "textAlignment":Ljava/lang/String;
    .restart local v17    # "textViewParams":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v18    # "url":Ljava/lang/String;
    :catch_0
    move-exception v22

    goto :goto_0
.end method

.method private getImageId(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "@"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "imgURL":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 94
    .local v1, "pos":I
    if-lez v1, :cond_0

    .line 95
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    sget-object v2, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 97
    sget-object v2, Lcom/julysystems/appx/AppXConstants;->drawablePackageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/julysystems/appx/AppXRenderRenderUtil;->loadImageResources(Ljava/lang/String;)V

    .line 98
    :cond_1
    sget-object v2, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    return-object v2
.end method

.method private getImageResource(Lcom/julysystems/appx/AppXRenderInstruction;ILcom/julysystems/appx/AppXRenderRenderField;Lcom/julysystems/appx/AppXRenderRectC;)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "attributeId"    # I
    .param p3, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p4, "rectC"    # Lcom/julysystems/appx/AppXRenderRectC;

    .prologue
    .line 120
    invoke-virtual/range {p1 .. p2}, Lcom/julysystems/appx/AppXRenderInstruction;->getAttribute(I)Lcom/julysystems/appx/AppXRenderAttribute;

    move-result-object v1

    .line 121
    .local v1, "attribute":Lcom/julysystems/appx/AppXRenderAttribute;
    if-nez v1, :cond_1

    .line 122
    const/4 v5, 0x0

    .line 164
    :cond_0
    :goto_0
    return-object v5

    .line 123
    :cond_1
    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderAttribute;->getResourceID()I

    move-result v8

    .line 124
    .local v8, "imageResourceId":I
    const-string v10, ""

    .line 126
    .local v10, "urlData":Ljava/lang/String;
    :try_start_0
    sget-object v12, Lcom/julysystems/appx/AppXRenderRenderUtil;->resource:Ljava/util/Vector;

    invoke-virtual {v12, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v10, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_1
    const-string v12, "~"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 131
    .local v11, "urlSeparator":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 132
    .local v5, "bm":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-lt v12, v13, :cond_0

    .line 133
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 136
    const/4 v12, 0x1

    :try_start_1
    aget-object v9, v11, v12

    .line 137
    .local v9, "imgURL":Ljava/lang/String;
    sget-object v12, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageTable:Ljava/util/Hashtable;

    invoke-virtual {v12, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 138
    .local v4, "bitmapRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    move-object v2, v12

    .line 139
    .local v2, "bitMap":Landroid/graphics/Bitmap;
    :goto_2
    if-nez v2, :cond_3

    .line 140
    sget-boolean v12, Lcom/julysystems/appx/AppXConstants;->isCachingEnabled:Z

    if-eqz v12, :cond_0

    .line 141
    invoke-static {v9}, Lcom/julysystems/appx/AppXCache;->getFromCache(Ljava/lang/String;)Lcom/julysystems/appx/AppXCacheItem;

    move-result-object v6

    .line 142
    .local v6, "cache":Lcom/julysystems/appx/AppXCacheItem;
    if-eqz v6, :cond_0

    .line 143
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/julysystems/appx/AppXCacheItem;->getBitmap([B)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 144
    .local v3, "bitmapCache":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 145
    move-object v5, v3

    .line 149
    goto :goto_0

    .line 127
    .end local v2    # "bitMap":Landroid/graphics/Bitmap;
    .end local v3    # "bitmapCache":Landroid/graphics/Bitmap;
    .end local v4    # "bitmapRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v5    # "bm":Landroid/graphics/Bitmap;
    .end local v6    # "cache":Lcom/julysystems/appx/AppXCacheItem;
    .end local v9    # "imgURL":Ljava/lang/String;
    .end local v11    # "urlSeparator":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 128
    .local v7, "e":Ljava/lang/Exception;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Exception in getImageResource : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 138
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "bitmapRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v5    # "bm":Landroid/graphics/Bitmap;
    .restart local v9    # "imgURL":Ljava/lang/String;
    .restart local v11    # "urlSeparator":[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 150
    .restart local v2    # "bitMap":Landroid/graphics/Bitmap;
    :cond_3
    move-object v5, v2

    goto :goto_0

    .line 151
    .end local v2    # "bitMap":Landroid/graphics/Bitmap;
    .end local v4    # "bitmapRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v9    # "imgURL":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 152
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Exception in getImageResource 2 : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v12, 0x1

    :try_start_2
    aget-object v12, v11, v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "@"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 157
    .restart local v9    # "imgURL":Ljava/lang/String;
    sget-object v12, Lcom/julysystems/appx/AppXRenderRenderUtil;->localImageMap:Ljava/util/Hashtable;

    invoke-virtual {v12, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v5, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 159
    .end local v9    # "imgURL":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 160
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v12, "RenderBlock getImageResource.. Exception while trying to load local image."

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getInnerInstructionForId(Lcom/julysystems/appx/AppXRenderRenderBlock;IILjava/lang/String;)Lcom/julysystems/appx/AppXRenderInstruction;
    .locals 4
    .param p1, "tabBlock"    # Lcom/julysystems/appx/AppXRenderRenderBlock;
    .param p2, "instructionId"    # I
    .param p3, "attributeId"    # I
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v3, p1, Lcom/julysystems/appx/AppXRenderRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderInstruction;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 181
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 169
    :cond_1
    iget-object v3, p1, Lcom/julysystems/appx/AppXRenderRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderInstruction;

    aget-object v1, v3, v2

    .line 170
    .local v1, "instruction":Lcom/julysystems/appx/AppXRenderInstruction;
    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getInstructionId()I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 171
    if-eqz p4, :cond_0

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderInstruction;->getAttributeCount()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 168
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .restart local v0    # "i":I
    :cond_3
    iget-object v3, v1, Lcom/julysystems/appx/AppXRenderInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderAttribute;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/julysystems/appx/AppXRenderAttribute;->getAttributeId()I

    move-result v3

    if-ne v3, p3, :cond_4

    .line 175
    iget-object v3, v1, Lcom/julysystems/appx/AppXRenderInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderAttribute;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/julysystems/appx/AppXRenderAttribute;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 173
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public executeInstructions(Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    .locals 23
    .param p1, "renderField"    # Lcom/julysystems/appx/AppXRenderRenderField;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderRenderField;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p6, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v22, 0x0

    .line 193
    .local v22, "rowIndex":I
    const/4 v9, 0x0

    .line 194
    .local v9, "columnIndex":I
    const/16 v18, 0x0

    .line 195
    .local v18, "tabIndex":I
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderInstruction;

    array-length v1, v1

    move/from16 v0, v21

    if-lt v0, v1, :cond_0

    .line 285
    :goto_1
    return-void

    .line 196
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/julysystems/appx/AppXRenderRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderInstruction;

    aget-object v2, v1, v21

    .line 197
    .local v2, "instruction":Lcom/julysystems/appx/AppXRenderInstruction;
    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderInstruction;->getInstructionId()I

    move-result v20

    .line 198
    .local v20, "instructionId":I
    packed-switch v20, :pswitch_data_0

    .line 195
    :goto_2
    :pswitch_0
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    :pswitch_1
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 200
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeLabel(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 282
    .end local v2    # "instruction":Lcom/julysystems/appx/AppXRenderInstruction;
    .end local v20    # "instructionId":I
    :catch_0
    move-exception v19

    .line 283
    .local v19, "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v2    # "instruction":Lcom/julysystems/appx/AppXRenderInstruction;
    .restart local v20    # "instructionId":I
    :pswitch_2
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 203
    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeImage(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto :goto_2

    :pswitch_3
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 206
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeClip(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto :goto_2

    :pswitch_4
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 209
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeGradient(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto :goto_2

    :pswitch_5
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 212
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeRoundedRect(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto :goto_2

    :pswitch_6
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 215
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeMoveToPoint(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto :goto_2

    :pswitch_7
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 218
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeLineToPoint(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 221
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeStrokeColor(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 224
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeFillColor(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto/16 :goto_2

    :pswitch_a
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 227
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeTable(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 230
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeTableRow(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    .line 231
    add-int/lit8 v22, v22, 0x1

    .line 232
    goto/16 :goto_2

    :pswitch_c
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 234
    invoke-direct/range {v1 .. v9}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeTableCell(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;I)V

    .line 235
    add-int/lit8 v9, v9, 0x1

    .line 236
    goto/16 :goto_2

    :pswitch_d
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 238
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeTabContainer(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto/16 :goto_2

    :pswitch_e
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 241
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeTabs(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    .line 242
    add-int/lit8 v18, v18, 0x1

    .line 243
    goto/16 :goto_2

    :pswitch_f
    move-object/from16 v10, p0

    move-object v11, v2

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    .line 245
    invoke-direct/range {v10 .. v18}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeTab(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;I)V

    .line 246
    add-int/lit8 v18, v18, 0x1

    .line 247
    goto/16 :goto_2

    :pswitch_10
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 249
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeTabData(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto/16 :goto_2

    :pswitch_11
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 252
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeLink(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto/16 :goto_2

    :pswitch_12
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 255
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeText(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto/16 :goto_2

    :pswitch_13
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 258
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeButton(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto/16 :goto_2

    :pswitch_14
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 261
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeTextField(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto/16 :goto_2

    :pswitch_15
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 264
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeTextView(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto/16 :goto_2

    :pswitch_16
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 267
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeSelectBox(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto/16 :goto_2

    :pswitch_17
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 270
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeSwitch(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto/16 :goto_2

    :pswitch_18
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 273
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeSubmitButton(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;)V

    goto/16 :goto_2

    :pswitch_19
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 276
    invoke-direct/range {v1 .. v8}, Lcom/julysystems/appx/AppXRenderRenderBlock;->executeSegmentedControl(Lcom/julysystems/appx/AppXRenderInstruction;Lcom/julysystems/appx/AppXRenderRenderField;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Ljava/util/Hashtable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public getFontResource(Lcom/julysystems/appx/AppXRenderInstruction;I)Lcom/julysystems/appx/AppXRenderFont;
    .locals 6
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderInstruction;
    .param p2, "attributeId"    # I

    .prologue
    .line 102
    invoke-virtual {p1, p2}, Lcom/julysystems/appx/AppXRenderInstruction;->getAttribute(I)Lcom/julysystems/appx/AppXRenderAttribute;

    move-result-object v0

    .line 103
    .local v0, "attribute":Lcom/julysystems/appx/AppXRenderAttribute;
    if-nez v0, :cond_0

    .line 104
    sget-object v3, Lcom/julysystems/appx/AppXRenderRenderBlock;->normalFont:Lcom/julysystems/appx/AppXRenderFont;

    .line 116
    :goto_0
    return-object v3

    .line 105
    :cond_0
    const/4 v3, 0x0

    .line 106
    .local v3, "f":Lcom/julysystems/appx/AppXRenderFont;
    sget-object v4, Lcom/julysystems/appx/AppXRenderRenderUtil;->resource:Ljava/util/Vector;

    .line 108
    .local v4, "resource":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual {v0}, Lcom/julysystems/appx/AppXRenderAttribute;->getResourceID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f":Lcom/julysystems/appx/AppXRenderFont;
    check-cast v3, Lcom/julysystems/appx/AppXRenderFont;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "f":Lcom/julysystems/appx/AppXRenderFont;
    goto :goto_0

    .line 109
    .end local v3    # "f":Lcom/julysystems/appx/AppXRenderFont;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/julysystems/appx/AppXRenderFont;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v3    # "f":Lcom/julysystems/appx/AppXRenderFont;
    goto :goto_0

    .line 112
    .end local v3    # "f":Lcom/julysystems/appx/AppXRenderFont;
    :catch_1
    move-exception v2

    .line 113
    .local v2, "ee":Ljava/lang/Exception;
    sget-object v3, Lcom/julysystems/appx/AppXRenderRenderBlock;->normalFont:Lcom/julysystems/appx/AppXRenderFont;

    .restart local v3    # "f":Lcom/julysystems/appx/AppXRenderFont;
    goto :goto_0
.end method

.method public getHeight()F
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->tabContLayout:Lcom/julysystems/appx/AppXRenderTabContainerLayout;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->tabContLayout:Lcom/julysystems/appx/AppXRenderTabContainerLayout;

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderTabContainerLayout;->getHeight()I

    move-result v1

    int-to-float v0, v1

    .line 71
    .local v0, "newTabHeight":F
    iget v1, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->lastTabHeight:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 72
    iget v1, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->height:F

    iget v2, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->lastTabHeight:F

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->height:F

    .line 73
    iput v0, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->lastTabHeight:F

    .line 76
    .end local v0    # "newTabHeight":F
    :cond_0
    iget v1, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->height:F

    return v1
.end method

.method public setFont(Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderFont;)V
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "font"    # Lcom/julysystems/appx/AppXRenderFont;

    .prologue
    const/4 v2, 0x1

    .line 696
    iget-object v0, p2, Lcom/julysystems/appx/AppXRenderFont;->fontFamilyName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 700
    :goto_0
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 701
    iget v0, p2, Lcom/julysystems/appx/AppXRenderFont;->fontSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 702
    return-void

    .line 699
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 80
    iput p1, p0, Lcom/julysystems/appx/AppXRenderRenderBlock;->height:F

    .line 81
    return-void
.end method

.class Lcom/julysystems/appx/AppXRenderScreenCastBlock;
.super Ljava/lang/Object;
.source "AppXRenderScreenCastBlock.java"


# static fields
.field private static final RenderDrawingModeFillPath:I = 0x2

.field private static final RenderDrawingModeGradientFill:I = 0x4

.field private static final RenderDrawingModeNone:I = 0x0

.field private static final RenderDrawingModeStrokeFillPath:I = 0x3

.field private static final RenderDrawingModeStrokePath:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final normalFont:Lcom/julysystems/appx/AppXRenderFont;


# instance fields
.field private actionButton:Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;

.field private actionRect:Lcom/julysystems/appx/AppXRenderRectC;

.field private actionUrl:Ljava/lang/String;

.field private currentDrawingMode:I

.field private extImageUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private instructions:[Lcom/julysystems/appx/AppXRenderScreenCastInstruction;

.field private strokeWidth:F

.field private tabbarButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const-class v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/julysystems/appx/AppXRenderFont;

    const/high16 v1, 0x41600000    # 14.0f

    const-string v2, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderFont;-><init>(FLjava/lang/String;)V

    sput-object v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->normalFont:Lcom/julysystems/appx/AppXRenderFont;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/julysystems/appx/AppXRenderDataInputStream;)V
    .locals 5
    .param p1, "is"    # Lcom/julysystems/appx/AppXRenderDataInputStream;

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionUrl:Ljava/lang/String;

    .line 44
    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionButton:Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;

    .line 45
    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->tabbarButton:Landroid/view/View;

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->extImageUrl:Ljava/util/List;

    .line 51
    :try_start_0
    new-instance v3, Lcom/julysystems/appx/AppXRenderRectC;

    invoke-direct {v3}, Lcom/julysystems/appx/AppXRenderRectC;-><init>()V

    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionRect:Lcom/julysystems/appx/AppXRenderRectC;

    .line 52
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readShort()S

    move-result v2

    .line 53
    .local v2, "instrCount":I
    new-array v3, v2, [Lcom/julysystems/appx/AppXRenderScreenCastInstruction;

    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->instructions:[Lcom/julysystems/appx/AppXRenderScreenCastInstruction;

    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 59
    .end local v1    # "i":I
    .end local v2    # "instrCount":I
    :goto_1
    return-void

    .line 55
    .restart local v1    # "i":I
    .restart local v2    # "instrCount":I
    :cond_0
    iget-object v3, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->instructions:[Lcom/julysystems/appx/AppXRenderScreenCastInstruction;

    new-instance v4, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;

    invoke-direct {v4, p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;-><init>(Lcom/julysystems/appx/AppXRenderDataInputStream;)V

    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "i":I
    .end local v2    # "instrCount":I
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->TAG:Ljava/lang/String;

    const-string v4, "Failed parse render block"

    invoke-static {v3, v4, v0}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private addActionRect(Lcom/julysystems/appx/AppXRenderRectC;)V
    .locals 1
    .param p1, "rect"    # Lcom/julysystems/appx/AppXRenderRectC;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionRect:Lcom/julysystems/appx/AppXRenderRectC;

    invoke-virtual {v0}, Lcom/julysystems/appx/AppXRenderRectC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionRect:Lcom/julysystems/appx/AppXRenderRectC;

    invoke-virtual {v0, p1}, Lcom/julysystems/appx/AppXRenderRectC;->set(Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionRect:Lcom/julysystems/appx/AppXRenderRectC;

    invoke-virtual {v0, p1}, Lcom/julysystems/appx/AppXRenderRectC;->union(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private calculateImagRect(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderScreenCastView;Z)Lcom/julysystems/appx/AppXRenderRectC;
    .locals 9
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p3, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p4, "skipCalc"    # Z

    .prologue
    const/4 v8, 0x0

    .line 380
    invoke-virtual {p1, p2}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v4

    .line 381
    .local v4, "x":F
    invoke-virtual {p1, p2}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v5

    .line 382
    .local v5, "y":F
    const/4 v6, 0x3

    invoke-virtual {p2}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v7

    invoke-virtual {p1, v6, v8, v7}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDimension(IFF)F

    move-result v3

    .line 383
    .local v3, "width":F
    const/4 v6, 0x4

    invoke-virtual {p2}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v7

    invoke-virtual {p1, v6, v8, v7}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDimension(IFF)F

    move-result v0

    .line 385
    .local v0, "height":F
    new-instance v2, Lcom/julysystems/appx/AppXRenderRectC;

    invoke-direct {v2, v4, v5, v3, v0}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 386
    .local v2, "imageRect":Lcom/julysystems/appx/AppXRenderRectC;
    const/16 v6, 0x8

    invoke-direct {p0, p1, v6, p3, v2}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->getImageResource(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;ILcom/julysystems/appx/AppXRenderScreenCastView;Lcom/julysystems/appx/AppXRenderRectC;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 387
    .local v1, "image":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 388
    invoke-virtual {p1, v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->setImage(Landroid/graphics/Bitmap;)V

    .line 389
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

    if-eq v6, v7, :cond_2

    .line 390
    :cond_0
    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v6

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_1

    .line 391
    iget v6, v2, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v2, Lcom/julysystems/appx/AppXRenderRectC;->right:F

    .line 393
    :cond_1
    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v6

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_2

    .line 394
    iget v6, v2, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v2, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 397
    :cond_2
    iget v6, v2, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v7

    add-float/2addr v6, v7

    iget v7, p2, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {p2}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v8

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 398
    invoke-direct {p0, p2, v2}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->enlargeContextRect(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 399
    :cond_3
    return-object v2
.end method

.method private enlargeContextRect(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V
    .locals 4
    .param p1, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p2, "rect"    # Lcom/julysystems/appx/AppXRenderRectC;

    .prologue
    .line 62
    iget v0, p1, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    iget v1, p2, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {p2}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p1, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 63
    return-void
.end method

.method private executeClip(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    .locals 0
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "calculated"    # Z
    .param p9, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p9, :cond_0

    .line 406
    if-eqz p4, :cond_0

    .line 407
    invoke-virtual {p4, p6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 409
    :cond_0
    return-void
.end method

.method private executeFillColor(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    .locals 5
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "calculated"    # Z
    .param p9, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x1

    .line 559
    if-eqz p9, :cond_0

    .line 560
    if-eqz p5, :cond_0

    .line 561
    const/16 v1, 0x10

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-virtual {p1, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getColor(III)I

    move-result v0

    .line 562
    .local v0, "fillColor":I
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 563
    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 564
    iget v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->currentDrawingMode:I

    if-ne v1, v4, :cond_1

    .line 565
    const/4 v1, 0x3

    iput v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->currentDrawingMode:I

    .line 570
    .end local v0    # "fillColor":I
    :cond_0
    :goto_0
    return-void

    .line 567
    .restart local v0    # "fillColor":I
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->currentDrawingMode:I

    goto :goto_0
.end method

.method private executeGradient(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    .locals 8
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "calculated"    # Z
    .param p9, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p9, :cond_0

    .line 415
    if-eqz p4, :cond_0

    .line 416
    const/16 v4, 0x10

    const/16 v5, 0x11

    const/16 v6, 0x12

    invoke-virtual {p1, v4, v5, v6}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getColor(III)I

    move-result v3

    .line 417
    .local v3, "startColor":I
    const/16 v4, 0x13

    const/16 v5, 0x14

    const/16 v6, 0x15

    invoke-virtual {p1, v4, v5, v6}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getColor(III)I

    move-result v1

    .line 418
    .local v1, "endColor":I
    const/4 v4, 0x4

    iput v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->currentDrawingMode:I

    .line 419
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 420
    .local v0, "bg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v2, Landroid/graphics/Rect;

    iget v4, p6, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    float-to-int v4, v4

    iget v5, p6, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    float-to-int v5, v5

    iget v6, p6, Lcom/julysystems/appx/AppXRenderRectC;->right:F

    float-to-int v6, v6

    iget v7, p6, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    float-to-int v7, v7

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 421
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 422
    invoke-virtual {v0, p4}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 425
    .end local v0    # "bg":Landroid/graphics/drawable/GradientDrawable;
    .end local v1    # "endColor":I
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "startColor":I
    :cond_0
    return-void
.end method

.method private executeImage(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    .locals 11
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "calculated"    # Z
    .param p9, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p8, :cond_8

    .line 339
    if-eqz p4, :cond_3

    .line 340
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v2

    .line 341
    .local v2, "drawingArea":Lcom/julysystems/appx/AppXRenderRectC;
    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    .line 342
    move-object/from16 v0, p6

    move/from16 v1, p9

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->calculateImagRect(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderScreenCastView;Z)Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v2

    .line 345
    :cond_0
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 346
    .local v4, "image":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_3

    .line 347
    iget v6, v2, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    .line 348
    .local v6, "x":F
    iget v7, v2, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    .line 349
    .local v7, "y":F
    const/16 v8, 0xc

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, "vAlign":Ljava/lang/String;
    const-string v8, "middle"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 351
    move-object/from16 v0, p6

    iget v8, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v9

    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float v7, v8, v9

    .line 357
    :cond_1
    :goto_0
    const/16 v8, 0xa

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "hAlign":Ljava/lang/String;
    const-string v8, "left"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 359
    move-object/from16 v0, p6

    iget v6, v0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    .line 365
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v8

    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v9

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/julysystems/appx/AppXRenderRectC;->set(FFFF)V

    .line 366
    const/4 v8, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p4, v4, v8, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 367
    iget-object v8, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionUrl:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 368
    invoke-direct {p0, v2}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->addActionRect(Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 376
    .end local v2    # "drawingArea":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v3    # "hAlign":Ljava/lang/String;
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .end local v5    # "vAlign":Ljava/lang/String;
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_3
    :goto_2
    return-void

    .line 352
    .restart local v2    # "drawingArea":Lcom/julysystems/appx/AppXRenderRectC;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    .restart local v5    # "vAlign":Ljava/lang/String;
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    :cond_4
    const-string v8, "bottom"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 353
    move-object/from16 v0, p6

    iget v8, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    move-object/from16 v0, p6

    iget v9, v0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    move-object/from16 v0, p6

    iget v10, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    add-float/2addr v9, v10

    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v10

    sub-float/2addr v9, v10

    add-float v7, v8, v9

    goto :goto_0

    .line 354
    :cond_5
    const-string v8, "top"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 355
    move-object/from16 v0, p6

    iget v7, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    goto :goto_0

    .line 360
    .restart local v3    # "hAlign":Ljava/lang/String;
    :cond_6
    const-string v8, "right"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 361
    move-object/from16 v0, p6

    iget v8, v0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v9

    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v10

    sub-float/2addr v9, v10

    add-float v6, v8, v9

    goto :goto_1

    .line 362
    :cond_7
    const-string v8, "center"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 363
    move-object/from16 v0, p6

    iget v8, v0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v9

    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float v6, v8, v9

    goto :goto_1

    .line 372
    .end local v2    # "drawingArea":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v3    # "hAlign":Ljava/lang/String;
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .end local v5    # "vAlign":Ljava/lang/String;
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_8
    move-object/from16 v0, p6

    move/from16 v1, p9

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->calculateImagRect(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderScreenCastView;Z)Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->setDrawingArea(Lcom/julysystems/appx/AppXRenderRectC;)V

    goto :goto_2
.end method

.method private executeLabel(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    .locals 18
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "calculated"    # Z
    .param p9, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p8, :cond_1

    .line 291
    if-eqz p4, :cond_0

    .line 292
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v3

    .line 293
    .local v3, "drawingArea":Lcom/julysystems/appx/AppXRenderRectC;
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getTextLayout()Landroid/text/StaticLayout;

    move-result-object v8

    .line 294
    .local v8, "textLayout":Landroid/text/Layout;
    iget v15, v3, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    iget v0, v3, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    move/from16 v16, v0

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 295
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 296
    const/4 v15, 0x0

    iget v0, v3, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/16 v16, 0x0

    iget v0, v3, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 297
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionUrl:Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 298
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->addActionRect(Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 332
    .end local v3    # "drawingArea":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v8    # "textLayout":Landroid/text/Layout;
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v13

    .line 302
    .local v13, "x":F
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v14

    .line 303
    .local v14, "y":F
    const/4 v15, 0x3

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v16

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDimension(IFF)F

    move-result v10

    .line 304
    .local v10, "width":F
    const/4 v15, 0x4

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v16

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDimension(IFF)F

    move-result v5

    .line 305
    .local v5, "height":F
    const-string v15, "rowHeight"

    move-object/from16 v0, p7

    invoke-virtual {v0, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 306
    .local v7, "rowHt":Ljava/lang/String;
    const/16 v15, 0x10

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 308
    .local v12, "wrapMode":Ljava/lang/String;
    new-instance v9, Lcom/julysystems/appx/AppXRenderRectC;

    invoke-direct {v9, v13, v14, v10, v5}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 309
    .local v9, "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    if-eqz v7, :cond_8

    const-string v15, ""

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 310
    .local v6, "rowHeight":F
    :goto_1
    const/4 v15, 0x0

    cmpg-float v15, v6, v15

    if-ltz v15, :cond_2

    const/4 v15, 0x0

    cmpg-float v15, v5, v15

    if-gez v15, :cond_3

    .line 311
    :cond_2
    new-instance v9, Lcom/julysystems/appx/AppXRenderRectC;

    .end local v9    # "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    const/4 v15, 0x0

    invoke-direct {v9, v13, v14, v10, v15}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 313
    .restart local v9    # "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    :cond_3
    const/4 v11, 0x1

    .line 314
    .local v11, "wrapLines":Z
    if-eqz v12, :cond_4

    const-string v15, "wordwrap"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 315
    const/4 v11, 0x0

    .line 317
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2, v11, v10}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->createTextLayout(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderScreenCastBlock;ZF)Landroid/text/StaticLayout;

    move-result-object v8

    .line 318
    .restart local v8    # "textLayout":Landroid/text/Layout;
    if-eqz v11, :cond_6

    .line 319
    const/4 v15, 0x0

    cmpg-float v15, v6, v15

    if-ltz v15, :cond_5

    invoke-virtual {v9}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v15

    cmpg-float v15, v15, v5

    if-ltz v15, :cond_5

    const/4 v15, 0x0

    cmpg-float v15, v5, v15

    if-gtz v15, :cond_6

    .line 320
    :cond_5
    iget v15, v9, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v15, v15, v16

    iput v15, v9, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 324
    :cond_6
    invoke-virtual {v9}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v15

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v16

    cmpl-float v15, v15, v16

    if-lez v15, :cond_7

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v9}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->enlargeContextRect(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 326
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->setDrawingArea(Lcom/julysystems/appx/AppXRenderRectC;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 329
    .end local v5    # "height":F
    .end local v6    # "rowHeight":F
    .end local v7    # "rowHt":Ljava/lang/String;
    .end local v8    # "textLayout":Landroid/text/Layout;
    .end local v9    # "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v10    # "width":F
    .end local v11    # "wrapLines":Z
    .end local v12    # "wrapMode":Ljava/lang/String;
    .end local v13    # "x":F
    .end local v14    # "y":F
    :catch_0
    move-exception v4

    .line 330
    .local v4, "e":Ljava/lang/Exception;
    sget-object v15, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->TAG:Ljava/lang/String;

    const-string v16, "Exception inside the executeText"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 309
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "height":F
    .restart local v7    # "rowHt":Ljava/lang/String;
    .restart local v9    # "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    .restart local v10    # "width":F
    .restart local v12    # "wrapMode":Ljava/lang/String;
    .restart local v13    # "x":F
    .restart local v14    # "y":F
    :cond_8
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private executeLineToPoint(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    .locals 9
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "calculated"    # Z
    .param p9, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p9, :cond_1

    .line 521
    invoke-virtual {p1, p6}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v3

    .line 522
    .local v3, "x2":F
    invoke-virtual {p1, p6}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v4

    .line 523
    .local v4, "y2":F
    const/16 v0, 0xb

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getIntVal(II)I

    move-result v0

    int-to-float v8, v0

    .line 524
    .local v8, "thickness":F
    if-eqz p4, :cond_0

    .line 525
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 526
    invoke-virtual {p5, v8}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 527
    iget v1, p6, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    iget v2, p6, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    move-object v0, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 529
    :cond_0
    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v7

    .line 530
    .local v7, "prevWidth":F
    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v6

    .line 531
    .local v6, "prevHeight":F
    iput v3, p6, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    .line 532
    iput v4, p6, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    .line 533
    iget v0, p6, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    add-float/2addr v0, v7

    iput v0, p6, Lcom/julysystems/appx/AppXRenderRectC;->right:F

    .line 534
    iget v0, p6, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    add-float/2addr v0, v6

    iput v0, p6, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 536
    .end local v3    # "x2":F
    .end local v4    # "y2":F
    .end local v6    # "prevHeight":F
    .end local v7    # "prevWidth":F
    .end local v8    # "thickness":F
    :cond_1
    return-void
.end method

.method private executeLink(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    .locals 11
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "calculated"    # Z
    .param p9, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 891
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getInnerScreenCastBlock()Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    move-result-object v0

    .line 892
    .local v0, "actionAreaBlock":Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 893
    .local v10, "url":Ljava/lang/String;
    iput-object v10, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionUrl:Ljava/lang/String;

    .line 894
    if-nez p8, :cond_0

    .line 895
    iget-object v1, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionRect:Lcom/julysystems/appx/AppXRenderRectC;

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderRectC;->setEmpty()V

    :cond_0
    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 896
    invoke-virtual/range {v0 .. v8}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    .line 897
    if-eqz p8, :cond_2

    if-eqz v10, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionButton:Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionRect:Lcom/julysystems/appx/AppXRenderRectC;

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderRectC;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 898
    new-instance v9, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;

    iget-object v1, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionRect:Lcom/julysystems/appx/AppXRenderRectC;

    iget-object v2, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionUrl:Ljava/lang/String;

    invoke-direct {v9, p3, v1, v2}, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;-><init>(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderRectC;Ljava/lang/String;)V

    .line 899
    .local v9, "selButton":Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;
    invoke-virtual {p2, v9}, Lcom/julysystems/appx/AppXRenderScreenCastView;->addView(Landroid/view/View;)V

    .line 900
    iput-object v9, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionButton:Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;

    .line 904
    .end local v9    # "selButton":Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;
    :cond_1
    :goto_0
    return-void

    .line 901
    :cond_2
    iget-object v1, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionButton:Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionButton:Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;->getActionRect()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v1

    iget-object v2, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionRect:Lcom/julysystems/appx/AppXRenderRectC;

    invoke-virtual {v1, v2}, Lcom/julysystems/appx/AppXRenderRectC;->isEqualTo(Lcom/julysystems/appx/AppXRenderRectC;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionRect:Lcom/julysystems/appx/AppXRenderRectC;

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderRectC;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 902
    iget-object v1, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionButton:Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;

    iget-object v2, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionRect:Lcom/julysystems/appx/AppXRenderRectC;

    invoke-virtual {v1, v2}, Lcom/julysystems/appx/AppXRenderScreenCastSelectionButton;->resetPosition(Lcom/julysystems/appx/AppXRenderRectC;)V

    goto :goto_0
.end method

.method private executeMoveToPoint(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    .locals 8
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "calculated"    # Z
    .param p9, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 501
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p9, :cond_0

    .line 502
    if-eqz p8, :cond_1

    .line 503
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 504
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v5

    invoke-virtual {p6, v5}, Lcom/julysystems/appx/AppXRenderRectC;->set(Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    invoke-virtual {p1, p6}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v3

    .line 507
    .local v3, "x":F
    invoke-virtual {p1, p6}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v4

    .line 508
    .local v4, "y":F
    const/4 v5, 0x3

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v6

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDimension(IFF)F

    move-result v2

    .line 509
    .local v2, "w":F
    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDimension(IFF)F

    move-result v0

    .line 510
    .local v0, "h":F
    new-instance v1, Lcom/julysystems/appx/AppXRenderRectC;

    invoke-direct {v1, v3, v4, v2, v0}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 511
    .local v1, "moveToPointRect":Lcom/julysystems/appx/AppXRenderRectC;
    invoke-virtual {p6, v1}, Lcom/julysystems/appx/AppXRenderRectC;->set(Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 512
    invoke-virtual {p1, v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->setDrawingArea(Lcom/julysystems/appx/AppXRenderRectC;)V

    goto :goto_0
.end method

.method private executeRoundedRect(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    .locals 16
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "calculated"    # Z
    .param p9, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p9, :cond_1

    .line 431
    if-eqz p8, :cond_4

    .line 432
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v5

    .line 434
    .local v5, "roundRect":Lcom/julysystems/appx/AppXRenderRectC;
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v7

    .line 435
    .local v7, "x":F
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v8

    .line 436
    .local v8, "y":F
    const/4 v9, 0x3

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v10

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDimension(IFF)F

    move-result v6

    .line 437
    .local v6, "width":F
    const/4 v9, 0x4

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v10

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDimension(IFF)F

    move-result v4

    .line 438
    .local v4, "height":F
    new-instance v5, Lcom/julysystems/appx/AppXRenderRectC;

    .end local v5    # "roundRect":Lcom/julysystems/appx/AppXRenderRectC;
    invoke-direct {v5, v7, v8, v6, v4}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 439
    .restart local v5    # "roundRect":Lcom/julysystems/appx/AppXRenderRectC;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->setDrawingArea(Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 440
    invoke-virtual {v5}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v9

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    .line 441
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v5}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->enlargeContextRect(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 444
    :cond_0
    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getIntAttr(II)I

    move-result v9

    int-to-float v3, v9

    .line 445
    .local v3, "curveWidth":F
    const/16 v9, 0x11

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getIntAttr(II)I

    move-result v9

    int-to-float v2, v9

    .line 446
    .local v2, "curveHeight":F
    if-eqz p4, :cond_1

    .line 447
    move-object/from16 v0, p0

    iget v9, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->currentDrawingMode:I

    packed-switch v9, :pswitch_data_0

    .line 479
    :goto_0
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->currentDrawingMode:I

    .line 480
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionUrl:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 481
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->addActionRect(Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 496
    .end local v2    # "curveHeight":F
    .end local v3    # "curveWidth":F
    .end local v4    # "height":F
    .end local v5    # "roundRect":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v6    # "width":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_1
    :goto_1
    return-void

    .line 449
    .restart local v2    # "curveHeight":F
    .restart local v3    # "curveWidth":F
    .restart local v4    # "height":F
    .restart local v5    # "roundRect":Lcom/julysystems/appx/AppXRenderRectC;
    .restart local v6    # "width":F
    .restart local v7    # "x":F
    .restart local v8    # "y":F
    :pswitch_0
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 450
    const/4 v9, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 451
    move-object/from16 v0, p0

    iget v9, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->strokeWidth:F

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 452
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v0, v5, v3, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 455
    :pswitch_1
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 456
    const/4 v9, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 457
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v0, v5, v3, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 460
    :pswitch_2
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 461
    float-to-double v10, v3

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v10, v12

    if-gtz v9, :cond_2

    float-to-double v10, v2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v10, v12

    if-gtz v9, :cond_2

    .line 462
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 465
    :goto_2
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 466
    move-object/from16 v0, p0

    iget v9, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->strokeWidth:F

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 467
    float-to-double v10, v3

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v10, v12

    if-gtz v9, :cond_3

    float-to-double v10, v2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v10, v12

    if-gtz v9, :cond_3

    .line 468
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 464
    :cond_2
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v0, v5, v3, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 470
    :cond_3
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v0, v5, v3, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 473
    :pswitch_3
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 474
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

    goto/16 :goto_0

    .line 484
    .end local v2    # "curveHeight":F
    .end local v3    # "curveWidth":F
    .end local v4    # "height":F
    .end local v5    # "roundRect":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v6    # "width":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v7

    .line 485
    .restart local v7    # "x":F
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v8

    .line 486
    .restart local v8    # "y":F
    const/4 v9, 0x3

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v10

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDimension(IFF)F

    move-result v6

    .line 487
    .restart local v6    # "width":F
    const/4 v9, 0x4

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v10

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDimension(IFF)F

    move-result v4

    .line 488
    .restart local v4    # "height":F
    const/4 v9, 0x0

    cmpl-float v9, v4, v9

    if-lez v9, :cond_1

    .line 489
    new-instance v5, Lcom/julysystems/appx/AppXRenderRectC;

    invoke-direct {v5, v7, v8, v6, v4}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 490
    .restart local v5    # "roundRect":Lcom/julysystems/appx/AppXRenderRectC;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->setDrawingArea(Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 491
    invoke-virtual {v5}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v9

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    .line 492
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v5}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->enlargeContextRect(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V

    goto/16 :goto_1

    .line 447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private executeStrokeColor(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    .locals 5
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "calculated"    # Z
    .param p9, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x1

    .line 542
    if-eqz p9, :cond_0

    .line 543
    if-eqz p5, :cond_0

    .line 544
    const/16 v1, 0x10

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-virtual {p1, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getColor(III)I

    move-result v0

    .line 545
    .local v0, "strokeColor":I
    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getIntAttr(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->strokeWidth:F

    .line 546
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 547
    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 548
    iget v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->currentDrawingMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 549
    const/4 v1, 0x3

    iput v1, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->currentDrawingMode:I

    .line 554
    .end local v0    # "strokeColor":I
    :cond_0
    :goto_0
    return-void

    .line 551
    .restart local v0    # "strokeColor":I
    :cond_1
    iput v4, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->currentDrawingMode:I

    goto :goto_0
.end method

.method private executeTab(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZIZ)V
    .locals 47
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "calculated"    # Z
    .param p9, "tabIndex"    # I
    .param p10, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZIZ)V"
        }
    .end annotation

    .prologue
    .line 772
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "selectedTab"

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 773
    .local v38, "selectedTabstr":Ljava/lang/String;
    const-string v8, "focusedTab"

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 775
    .local v30, "focusTabstr":Ljava/lang/String;
    const/16 v37, 0x0

    .line 776
    .local v37, "selectedTab":I
    if-eqz v38, :cond_0

    .line 777
    :try_start_0
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 778
    :cond_0
    const/16 v31, 0x0

    .line 779
    .local v31, "focusedTab":I
    if-eqz v30, :cond_1

    .line 780
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 782
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getInnerScreenCastBlock()Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    move-result-object v39

    .line 783
    .local v39, "tabBlock":Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    const/16 v41, 0x0

    .line 785
    .local v41, "tabHeader":Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    move/from16 v0, p9

    move/from16 v1, v37

    if-ne v0, v1, :cond_6

    .line 786
    const/16 v8, 0x1d

    const/16 v9, 0x15

    const-string v10, "selected"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->getInnerInstructionForId(Lcom/julysystems/appx/AppXRenderScreenCastBlock;IILjava/lang/String;)Lcom/julysystems/appx/AppXRenderScreenCastInstruction;

    move-result-object v41

    .line 792
    :goto_0
    if-eqz v41, :cond_4

    .line 793
    const/4 v7, 0x0

    .line 794
    .local v7, "tabHeaderInnerBlock":Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_1
    invoke-virtual/range {v41 .. v41}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getScreenCastAttributeCount()I

    move-result v8

    move/from16 v0, v34

    if-lt v0, v8, :cond_8

    .line 800
    :goto_2
    move-object/from16 v0, v41

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v45

    .line 801
    .local v45, "x":F
    move-object/from16 v0, v41

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v46

    .line 802
    .local v46, "y":F
    const/4 v8, 0x3

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v9

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v10

    move-object/from16 v0, v41

    invoke-virtual {v0, v8, v9, v10}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDimension(IFF)F

    move-result v44

    .line 803
    .local v44, "width":F
    const/4 v8, 0x4

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v9

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v10

    move-object/from16 v0, v41

    invoke-virtual {v0, v8, v9, v10}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDimension(IFF)F

    move-result v33

    .line 804
    .local v33, "height":F
    new-instance v12, Lcom/julysystems/appx/AppXRenderRectC;

    move/from16 v0, v45

    move/from16 v1, v46

    move/from16 v2, v44

    move/from16 v3, v33

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 806
    .local v12, "tabRect":Lcom/julysystems/appx/AppXRenderRectC;
    if-nez v7, :cond_c

    .line 807
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v8

    if-nez v8, :cond_a

    .line 808
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->setDrawingArea(Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 812
    :goto_3
    const/16 v8, 0x10

    const-string v9, ""

    move-object/from16 v0, v41

    invoke-virtual {v0, v8, v9}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 813
    .local v40, "tabDisplayName":Ljava/lang/String;
    const/16 v8, 0x12

    const-string v9, "#FFFFFF"

    move-object/from16 v0, v41

    invoke-virtual {v0, v8, v9}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 814
    .local v25, "bgColorStr":Ljava/lang/String;
    const/16 v8, 0x13

    const-string v9, "#000000"

    move-object/from16 v0, v41

    invoke-virtual {v0, v8, v9}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 815
    .local v27, "borderColorStr":Ljava/lang/String;
    const/4 v8, 0x6

    const-string v9, "#000000"

    move-object/from16 v0, v41

    invoke-virtual {v0, v8, v9}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 816
    .local v43, "textColorStr":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    .line 817
    .local v24, "bgColor":I
    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    .line 818
    .local v26, "borderColor":I
    invoke-static/range {v43 .. v43}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    .line 819
    .local v42, "textColor":I
    const/4 v8, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v8}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->getFontResource(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;I)Lcom/julysystems/appx/AppXRenderFont;

    move-result-object v32

    .line 820
    .local v32, "font":Lcom/julysystems/appx/AppXRenderFont;
    const/16 v8, 0x14

    const/4 v9, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v8, v9}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getIntAttr(II)I

    move-result v28

    .line 821
    .local v28, "borderThickness":I
    const/16 v8, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v8, v2, v12}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->getImageResource(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;ILcom/julysystems/appx/AppXRenderScreenCastView;Lcom/julysystems/appx/AppXRenderRectC;)Landroid/graphics/Bitmap;

    move-result-object v35

    .line 823
    .local v35, "image":Landroid/graphics/Bitmap;
    if-eqz p4, :cond_2

    .line 824
    if-eqz v35, :cond_b

    .line 825
    const/4 v8, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v35

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v8, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 836
    :goto_4
    if-eqz v40, :cond_2

    if-eqz p4, :cond_2

    .line 837
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    .line 838
    .local v6, "textPaint":Landroid/text/TextPaint;
    move/from16 v0, v42

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 839
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v6, v1}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->setFont(Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderFont;)V

    .line 840
    const/4 v8, 0x0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v40

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 841
    .local v5, "seq":Ljava/lang/CharSequence;
    new-instance v4, Landroid/text/StaticLayout;

    invoke-virtual {v12}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v8

    float-to-int v7, v8

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .end local v7    # "tabHeaderInnerBlock":Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 842
    .local v4, "staticLayout":Landroid/text/StaticLayout;
    iget v8, v12, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    iget v9, v12, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 843
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 844
    const/4 v8, 0x0

    iget v9, v12, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    iget v10, v12, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    sub-float/2addr v9, v10

    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 851
    .end local v4    # "staticLayout":Landroid/text/StaticLayout;
    .end local v5    # "seq":Ljava/lang/CharSequence;
    .end local v6    # "textPaint":Landroid/text/TextPaint;
    .end local v24    # "bgColor":I
    .end local v25    # "bgColorStr":Ljava/lang/String;
    .end local v26    # "borderColor":I
    .end local v27    # "borderColorStr":Ljava/lang/String;
    .end local v28    # "borderThickness":I
    .end local v32    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .end local v35    # "image":Landroid/graphics/Bitmap;
    .end local v40    # "tabDisplayName":Ljava/lang/String;
    .end local v42    # "textColor":I
    .end local v43    # "textColorStr":Ljava/lang/String;
    :cond_2
    :goto_5
    if-eqz p2, :cond_3

    if-eqz v39, :cond_3

    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->tabbarButton:Landroid/view/View;

    if-nez v8, :cond_3

    .line 852
    new-instance v8, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;

    move-object/from16 v0, p3

    move/from16 v1, p9

    move-object/from16 v2, p2

    invoke-direct {v8, v0, v12, v1, v2}, Lcom/julysystems/appx/AppXRenderScreenCastTabButton;-><init>(Landroid/content/Context;Landroid/graphics/RectF;ILcom/julysystems/appx/AppXRenderScreenCastView;)V

    move-object/from16 v0, v39

    iput-object v8, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->tabbarButton:Landroid/view/View;

    .line 853
    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->tabbarButton:Landroid/view/View;

    new-instance v9, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {v12}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->intValue()I

    move-result v10

    invoke-virtual {v12}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->intValue()I

    move-result v11

    iget v13, v12, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Float;->intValue()I

    move-result v13

    iget v14, v12, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Float;->intValue()I

    move-result v14

    invoke-direct {v9, v10, v11, v13, v14}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 854
    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->tabbarButton:Landroid/view/View;

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/julysystems/appx/AppXRenderScreenCastView;->addView(Landroid/view/View;)V

    .line 857
    :cond_3
    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v36

    .line 858
    .local v36, "prevWidth":F
    invoke-virtual {v12}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v8

    add-float v8, v8, v45

    move-object/from16 v0, p6

    iput v8, v0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    .line 859
    move-object/from16 v0, p6

    iget v8, v0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    add-float v8, v8, v36

    move-object/from16 v0, p6

    iput v8, v0, Lcom/julysystems/appx/AppXRenderRectC;->right:F

    .line 860
    invoke-virtual {v12}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v8

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    .line 861
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v12}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->enlargeContextRect(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 863
    .end local v12    # "tabRect":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v33    # "height":F
    .end local v34    # "i":I
    .end local v36    # "prevWidth":F
    .end local v44    # "width":F
    .end local v45    # "x":F
    .end local v46    # "y":F
    :cond_4
    move/from16 v0, p9

    move/from16 v1, v37

    if-ne v0, v1, :cond_5

    move-object/from16 v13, v39

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move/from16 v20, p8

    move/from16 v21, p10

    .line 864
    invoke-virtual/range {v13 .. v21}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    .line 869
    .end local v31    # "focusedTab":I
    .end local v39    # "tabBlock":Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    .end local v41    # "tabHeader":Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    :cond_5
    :goto_6
    return-void

    .line 787
    .restart local v31    # "focusedTab":I
    .restart local v39    # "tabBlock":Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    .restart local v41    # "tabHeader":Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    :cond_6
    move/from16 v0, p9

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    .line 788
    const/16 v8, 0x1d

    const/16 v9, 0x15

    const-string v10, "focused"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->getInnerInstructionForId(Lcom/julysystems/appx/AppXRenderScreenCastBlock;IILjava/lang/String;)Lcom/julysystems/appx/AppXRenderScreenCastInstruction;

    move-result-object v41

    goto/16 :goto_0

    .line 790
    :cond_7
    const/16 v8, 0x1d

    const/16 v9, 0x15

    const-string v10, "deselected"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->getInnerInstructionForId(Lcom/julysystems/appx/AppXRenderScreenCastBlock;IILjava/lang/String;)Lcom/julysystems/appx/AppXRenderScreenCastInstruction;

    move-result-object v41

    goto/16 :goto_0

    .line 795
    .restart local v7    # "tabHeaderInnerBlock":Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    .restart local v34    # "i":I
    :cond_8
    move-object/from16 v0, v41

    iget-object v8, v0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    aget-object v8, v8, v34

    invoke-virtual {v8}, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->getScreenCastAttributeId()I

    move-result v8

    if-nez v8, :cond_9

    .line 796
    move-object/from16 v0, v41

    iget-object v8, v0, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    aget-object v8, v8, v34

    invoke-virtual {v8}, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->getInnerScreenCastBlock()Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    move-result-object v7

    .line 797
    goto/16 :goto_2

    .line 794
    :cond_9
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_1

    .line 810
    .restart local v12    # "tabRect":Lcom/julysystems/appx/AppXRenderRectC;
    .restart local v33    # "height":F
    .restart local v44    # "width":F
    .restart local v45    # "x":F
    .restart local v46    # "y":F
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v12

    goto/16 :goto_3

    .line 827
    .restart local v24    # "bgColor":I
    .restart local v25    # "bgColorStr":Ljava/lang/String;
    .restart local v26    # "borderColor":I
    .restart local v27    # "borderColorStr":Ljava/lang/String;
    .restart local v28    # "borderThickness":I
    .restart local v32    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .restart local v35    # "image":Landroid/graphics/Bitmap;
    .restart local v40    # "tabDisplayName":Ljava/lang/String;
    .restart local v42    # "textColor":I
    .restart local v43    # "textColorStr":Ljava/lang/String;
    :cond_b
    const/16 v22, 0xa

    .local v22, "arcH":I
    const/16 v23, 0xa

    .line 828
    .local v23, "arcW":I
    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 829
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 830
    move/from16 v0, v23

    int-to-float v8, v0

    move/from16 v0, v22

    int-to-float v9, v0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v0, v12, v8, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 831
    move-object/from16 v0, p5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 832
    move/from16 v0, v28

    int-to-float v8, v0

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 833
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 834
    move/from16 v0, v23

    int-to-float v8, v0

    move/from16 v0, v22

    int-to-float v9, v0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v0, v12, v8, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 865
    .end local v7    # "tabHeaderInnerBlock":Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    .end local v12    # "tabRect":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v22    # "arcH":I
    .end local v23    # "arcW":I
    .end local v24    # "bgColor":I
    .end local v25    # "bgColorStr":Ljava/lang/String;
    .end local v26    # "borderColor":I
    .end local v27    # "borderColorStr":Ljava/lang/String;
    .end local v28    # "borderThickness":I
    .end local v31    # "focusedTab":I
    .end local v32    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .end local v33    # "height":F
    .end local v34    # "i":I
    .end local v35    # "image":Landroid/graphics/Bitmap;
    .end local v39    # "tabBlock":Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    .end local v40    # "tabDisplayName":Ljava/lang/String;
    .end local v41    # "tabHeader":Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .end local v42    # "textColor":I
    .end local v43    # "textColorStr":Ljava/lang/String;
    .end local v44    # "width":F
    .end local v45    # "x":F
    .end local v46    # "y":F
    :catch_0
    move-exception v29

    .line 866
    .local v29, "e":Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "inside the executeTab::::::::"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .end local v29    # "e":Ljava/lang/Exception;
    .restart local v7    # "tabHeaderInnerBlock":Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    .restart local v12    # "tabRect":Lcom/julysystems/appx/AppXRenderRectC;
    .restart local v31    # "focusedTab":I
    .restart local v33    # "height":F
    .restart local v34    # "i":I
    .restart local v39    # "tabBlock":Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    .restart local v41    # "tabHeader":Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .restart local v44    # "width":F
    .restart local v45    # "x":F
    .restart local v46    # "y":F
    :cond_c
    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p10

    .line 849
    :try_start_1
    invoke-virtual/range {v7 .. v15}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method private executeTabContainer(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    .locals 9
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "calculated"    # Z
    .param p9, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 751
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getInnerScreenCastBlock()Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    move-result-object v0

    .line 752
    .local v0, "tabContainerBlock":Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 753
    invoke-virtual/range {v0 .. v8}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    .line 754
    :cond_0
    return-void
.end method

.method private executeTabData(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    .locals 9
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "calculated"    # Z
    .param p9, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 874
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getInnerScreenCastBlock()Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    move-result-object v0

    .line 875
    .local v0, "tabDataBlock":Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    if-eqz v0, :cond_0

    .line 876
    if-eqz p8, :cond_1

    .line 877
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v5

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    new-instance v5, Lcom/julysystems/appx/AppXRenderRectC;

    const/4 v1, 0x0

    iget v2, p6, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .local v5, "tabDataContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 880
    invoke-virtual/range {v0 .. v8}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    .line 881
    iget v1, p6, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    iget v2, v5, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {v5}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p6, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 882
    invoke-virtual {p1, v5}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->setDrawingArea(Lcom/julysystems/appx/AppXRenderRectC;)V

    goto :goto_0
.end method

.method private executeTable(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    .locals 27
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "calculated"    # Z
    .param p9, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 575
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getInnerScreenCastBlock()Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    move-result-object v2

    .line 576
    .local v2, "tableBlock":Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    if-eqz p8, :cond_5

    .line 577
    const/16 v3, 0x14

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getIntAttr(II)I

    move-result v3

    int-to-float v0, v3

    move/from16 v20, v0

    .line 578
    .local v20, "borderThickness":F
    const/16 v3, 0x13

    const-string v4, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 579
    .local v23, "colorBg":Ljava/lang/String;
    const/16 v24, 0x0

    .line 580
    .local v24, "colorValBg":I
    const/4 v3, 0x0

    cmpl-float v3, v20, v3

    if-lez v3, :cond_0

    .line 581
    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    .line 582
    const-string v3, "borderColor"

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string v3, "borderThickness"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v7

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v2 .. v10}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    .line 587
    const/4 v3, 0x0

    cmpl-float v3, v20, v3

    if-lez v3, :cond_1

    .line 588
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 589
    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 590
    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 591
    move-object/from16 v0, p5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 592
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 593
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 594
    .local v8, "columnWidths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v5, 0x10

    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v7

    move-object/from16 v3, p1

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getMultiValuedAttribute(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;IFFLjava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 595
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v3

    iget v10, v3, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    .line 596
    .local v10, "x":F
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v25

    if-lt v0, v3, :cond_4

    .line 602
    .end local v8    # "columnWidths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "x":F
    .end local v25    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionUrl:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 603
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->addActionRect(Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 604
    :cond_2
    const-string v3, "borderThickness"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v3, "borderColor"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .end local v20    # "borderThickness":F
    .end local v23    # "colorBg":Ljava/lang/String;
    .end local v24    # "colorValBg":I
    :cond_3
    :goto_1
    return-void

    .line 597
    .restart local v8    # "columnWidths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "x":F
    .restart local v20    # "borderThickness":F
    .restart local v23    # "colorBg":Ljava/lang/String;
    .restart local v24    # "colorValBg":I
    .restart local v25    # "i":I
    :cond_4
    move/from16 v0, v25

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 598
    .local v22, "colWidth":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v10, v3

    .line 599
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v3

    iget v11, v3, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v3

    iget v13, v3, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    move-object/from16 v9, p4

    move v12, v10

    move-object/from16 v14, p5

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 596
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 607
    .end local v8    # "columnWidths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "x":F
    .end local v20    # "borderThickness":F
    .end local v22    # "colWidth":Ljava/lang/String;
    .end local v23    # "colorBg":Ljava/lang/String;
    .end local v24    # "colorValBg":I
    .end local v25    # "i":I
    :cond_5
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 608
    .restart local v8    # "columnWidths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v5, 0x10

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v6

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v7

    move-object/from16 v3, p1

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getMultiValuedAttribute(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;IFFLjava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 609
    const/16 v3, 0x11

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v4

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDimension(IFF)F

    move-result v26

    .line 610
    .local v26, "rowHeight":F
    const/16 v3, 0x12

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getIntAttr(II)I

    move-result v3

    int-to-float v0, v3

    move/from16 v21, v0

    .line 612
    .local v21, "cellPadding":F
    if-eqz v2, :cond_3

    .line 614
    const-string v3, "columnWidths"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string v3, "rowHeight"

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string v3, "cellPadding"

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const-string v3, "cellRects"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string v3, "tdRects"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    new-instance v16, Lcom/julysystems/appx/AppXRenderRectC;

    move-object/from16 v0, p6

    iget v3, v0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    move-object/from16 v0, p6

    iget v4, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 621
    .local v16, "tableContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    if-eqz p9, :cond_6

    const/16 v19, 0x0

    :goto_2
    move-object v11, v2

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v17, p7

    move/from16 v18, p8

    invoke-virtual/range {v11 .. v19}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    .line 622
    move-object/from16 v0, p6

    iget v3, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual/range {v16 .. v16}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v4

    add-float/2addr v3, v4

    move-object/from16 v0, p6

    iput v3, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    .line 623
    move-object/from16 v0, p6

    iget v3, v0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    invoke-virtual/range {v16 .. v16}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v4

    add-float/2addr v3, v4

    move-object/from16 v0, p6

    iput v3, v0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 625
    const-string v3, "columnWidths"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string v3, "rowHeight"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string v3, "cellPadding"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v3, "cellRects"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string v3, "tdRects"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->setDrawingArea(Lcom/julysystems/appx/AppXRenderRectC;)V

    goto/16 :goto_1

    .line 621
    :cond_6
    const/16 v19, 0x1

    goto :goto_2
.end method

.method private executeTableCell(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    .locals 24
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "calculated"    # Z
    .param p9, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 706
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getInnerScreenCastBlock()Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    move-result-object v2

    .line 707
    .local v2, "tdBlock":Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    if-eqz v2, :cond_0

    .line 708
    if-eqz p8, :cond_1

    .line 709
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v7

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v2 .. v10}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 711
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->addActionRect(Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    const-string v17, "0"

    .line 714
    .local v17, "colWidthStr":Ljava/lang/String;
    move-object/from16 v0, p6

    iget v15, v0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    .line 716
    .local v15, "colOriginX":F
    :try_start_0
    const-string v3, "columnWidths"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/LinkedList;

    .line 717
    .local v18, "colWidths":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const-string v3, "columnIndex"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 718
    .local v19, "columnIndex":I
    invoke-virtual/range {v18 .. v19}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 719
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 723
    const-string v3, "columnIndex"

    add-int/lit8 v4, v19, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 728
    .end local v18    # "colWidths":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v19    # "columnIndex":I
    .end local v21    # "i":I
    :goto_2
    :try_start_1
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    .line 729
    .local v16, "colWidth":F
    const-string v3, "cellPadding"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 730
    .local v13, "cellPaddingStr":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    .line 731
    .local v12, "cellPadding":F
    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v12

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v12

    sub-float v11, v3, v4

    .line 732
    .local v11, "cellHeight":F
    :goto_3
    new-instance v7, Lcom/julysystems/appx/AppXRenderRectC;

    add-float v3, v15, v12

    move-object/from16 v0, p6

    iget v4, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    add-float/2addr v4, v12

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v12

    sub-float v5, v16, v5

    invoke-direct {v7, v3, v4, v5, v11}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 733
    .local v7, "tdContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v2 .. v10}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    .line 735
    const-string v3, "cellRects"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 736
    .local v14, "cellRects":Ljava/util/List;, "Ljava/util/List<Lcom/julysystems/appx/AppXRenderRectC;>;"
    const-string v3, "tdRects"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    .line 737
    .local v23, "tdRects":Ljava/util/List;, "Ljava/util/List<Lcom/julysystems/appx/AppXRenderRectC;>;"
    new-instance v22, Lcom/julysystems/appx/AppXRenderRectC;

    iget v3, v7, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    sub-float/2addr v3, v12

    iget v4, v7, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    sub-float/2addr v4, v12

    invoke-virtual {v7}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v12

    add-float/2addr v5, v6

    invoke-virtual {v7}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v6

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v12

    add-float/2addr v6, v8

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 738
    .local v22, "rowRect":Lcom/julysystems/appx/AppXRenderRectC;
    move-object/from16 v0, v22

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    move-object/from16 v0, v23

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->setDrawingArea(Lcom/julysystems/appx/AppXRenderRectC;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 741
    .end local v7    # "tdContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v11    # "cellHeight":F
    .end local v12    # "cellPadding":F
    .end local v13    # "cellPaddingStr":Ljava/lang/String;
    .end local v14    # "cellRects":Ljava/util/List;, "Ljava/util/List<Lcom/julysystems/appx/AppXRenderRectC;>;"
    .end local v16    # "colWidth":F
    .end local v22    # "rowRect":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v23    # "tdRects":Ljava/util/List;, "Ljava/util/List<Lcom/julysystems/appx/AppXRenderRectC;>;"
    :catch_0
    move-exception v20

    .line 742
    .local v20, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->TAG:Ljava/lang/String;

    const-string v4, "Failed to execute table cell"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 720
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    .restart local v18    # "colWidths":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v19    # "columnIndex":I
    .restart local v21    # "i":I
    :cond_2
    :try_start_2
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 721
    .local v16, "colWidth":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    add-float/2addr v15, v3

    .line 719
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 724
    .end local v16    # "colWidth":Ljava/lang/String;
    .end local v18    # "colWidths":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v19    # "columnIndex":I
    .end local v21    # "i":I
    :catch_1
    move-exception v20

    .line 725
    .local v20, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->TAG:Ljava/lang/String;

    const-string v4, "Failed to exeute table row. Column width index out of bounds."

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 731
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v12    # "cellPadding":F
    .restart local v13    # "cellPaddingStr":Ljava/lang/String;
    .local v16, "colWidth":F
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_3
.end method

.method private executeTableRow(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    .locals 26
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "calculated"    # Z
    .param p9, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 639
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getInnerScreenCastBlock()Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    move-result-object v2

    .line 640
    .local v2, "trBlock":Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    const-string v3, "rowHeight"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 641
    .local v23, "rowHeightStr":Ljava/lang/String;
    if-eqz p8, :cond_3

    .line 643
    if-eqz v2, :cond_0

    .line 644
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v7

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v2 .. v10}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    .line 645
    :cond_0
    const-string v3, "borderThickness"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 646
    const-string v3, "borderThickness"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    .line 647
    .local v18, "borderThickness":F
    const-string v3, "borderColor"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 648
    .local v17, "borderColor":I
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 649
    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 650
    move-object/from16 v0, p5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 651
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 652
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v3

    iget v4, v3, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    .line 653
    .local v4, "startX":F
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v3

    iget v5, v3, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 654
    .local v5, "startY":F
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v3

    iget v6, v3, Lcom/julysystems/appx/AppXRenderRectC;->right:F

    .line 655
    .local v6, "stopX":F
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v3

    iget v7, v3, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .local v7, "stopY":F
    move-object/from16 v3, p4

    move-object/from16 v8, p5

    .line 656
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 658
    .end local v4    # "startX":F
    .end local v5    # "startY":F
    .end local v6    # "stopX":F
    .end local v7    # "stopY":F
    .end local v17    # "borderColor":I
    .end local v18    # "borderThickness":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionUrl:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 659
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->addActionRect(Lcom/julysystems/appx/AppXRenderRectC;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :cond_2
    :goto_0
    return-void

    .line 660
    :catch_0
    move-exception v20

    .local v20, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->TAG:Ljava/lang/String;

    const-string v8, "Error in executing table row"

    move-object/from16 v0, v20

    invoke-static {v3, v8, v0}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 663
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    const-string v3, "columnIndex"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v22

    .line 665
    .local v22, "rowHeight":F
    const-string v3, "cellRects"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 666
    .local v19, "cellRects":Ljava/util/List;, "Ljava/util/List<Lcom/julysystems/appx/AppXRenderRectC;>;"
    const-string v3, "tdRects"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/List;

    .line 667
    .local v25, "tdRects":Ljava/util/List;, "Ljava/util/List<Lcom/julysystems/appx/AppXRenderRectC;>;"
    new-instance v13, Lcom/julysystems/appx/AppXRenderRectC;

    move-object/from16 v0, p6

    iget v8, v0, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    move-object/from16 v0, p6

    iget v3, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v9

    add-float/2addr v9, v3

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v10

    const/4 v3, 0x0

    cmpl-float v3, v22, v3

    if-lez v3, :cond_7

    const/4 v3, 0x0

    :goto_1
    invoke-direct {v13, v8, v9, v10, v3}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 668
    .local v13, "trContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    if-eqz v2, :cond_6

    .line 669
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v2

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    invoke-virtual/range {v8 .. v16}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    .line 670
    const/4 v3, 0x0

    cmpg-float v3, v22, v3

    if-gez v3, :cond_9

    .line 671
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_8

    .line 678
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_a

    .line 682
    move/from16 v24, v22

    .line 683
    .local v24, "tdHeight":F
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_b

    .line 686
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_c

    .line 689
    .end local v24    # "tdHeight":F
    :cond_6
    move-object/from16 v0, p6

    iget v3, v0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    invoke-virtual {v13}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v8

    add-float/2addr v3, v8

    move-object/from16 v0, p6

    iput v3, v0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 691
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->setDrawingArea(Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 692
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 693
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->clear()V

    .line 694
    const-string v3, "columnIndex"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 695
    .end local v13    # "trContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v19    # "cellRects":Ljava/util/List;, "Ljava/util/List<Lcom/julysystems/appx/AppXRenderRectC;>;"
    .end local v22    # "rowHeight":F
    .end local v25    # "tdRects":Ljava/util/List;, "Ljava/util/List<Lcom/julysystems/appx/AppXRenderRectC;>;"
    :catch_1
    move-exception v20

    .line 696
    .local v20, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->TAG:Ljava/lang/String;

    const-string v8, "Failed to execute table row"

    move-object/from16 v0, v20

    invoke-static {v3, v8, v0}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v20    # "e":Ljava/lang/NumberFormatException;
    .restart local v19    # "cellRects":Ljava/util/List;, "Ljava/util/List<Lcom/julysystems/appx/AppXRenderRectC;>;"
    .restart local v22    # "rowHeight":F
    .restart local v25    # "tdRects":Ljava/util/List;, "Ljava/util/List<Lcom/julysystems/appx/AppXRenderRectC;>;"
    :cond_7
    move/from16 v3, v22

    .line 667
    goto :goto_1

    .line 671
    .restart local v13    # "trContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    :cond_8
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/julysystems/appx/AppXRenderRectC;

    .line 672
    .local v21, "rectC":Lcom/julysystems/appx/AppXRenderRectC;
    iget v8, v13, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {v13}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v9

    add-float/2addr v8, v9

    move-object/from16 v0, v21

    iget v9, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual/range {v21 .. v21}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v10

    add-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    .line 673
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->enlargeContextRect(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V

    goto :goto_2

    .line 676
    .end local v21    # "rectC":Lcom/julysystems/appx/AppXRenderRectC;
    :cond_9
    iget v3, v13, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    iget v8, v13, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    invoke-virtual {v13}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v9

    move/from16 v0, v22

    invoke-virtual {v13, v3, v8, v9, v0}, Lcom/julysystems/appx/AppXRenderRectC;->set(FFFF)V

    goto :goto_3

    .line 678
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/julysystems/appx/AppXRenderRectC;

    .line 679
    .restart local v21    # "rectC":Lcom/julysystems/appx/AppXRenderRectC;
    invoke-virtual/range {v21 .. v21}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v8

    invoke-virtual {v13}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5

    .line 680
    invoke-virtual {v13}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/julysystems/appx/AppXRenderRectC;->setHeight(F)V

    goto/16 :goto_4

    .line 683
    .end local v21    # "rectC":Lcom/julysystems/appx/AppXRenderRectC;
    .restart local v24    # "tdHeight":F
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/julysystems/appx/AppXRenderRectC;

    .line 684
    .restart local v21    # "rectC":Lcom/julysystems/appx/AppXRenderRectC;
    invoke-virtual/range {v21 .. v21}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v8

    move/from16 v0, v24

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v24

    goto/16 :goto_5

    .line 686
    .end local v21    # "rectC":Lcom/julysystems/appx/AppXRenderRectC;
    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/julysystems/appx/AppXRenderRectC;

    .line 687
    .restart local v21    # "rectC":Lcom/julysystems/appx/AppXRenderRectC;
    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderRectC;->setHeight(F)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6
.end method

.method private executeTabs(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    .locals 9
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "calculated"    # Z
    .param p9, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 759
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getInnerScreenCastBlock()Lcom/julysystems/appx/AppXRenderScreenCastBlock;

    move-result-object v0

    .line 760
    .local v0, "tabsBlock":Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    if-eqz v0, :cond_0

    .line 761
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

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 762
    invoke-virtual/range {v0 .. v8}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeInstructions(Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    .line 763
    iget v1, p6, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    invoke-virtual {v5}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p6, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    .line 764
    invoke-virtual {v5}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v1

    iput v1, p6, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 767
    .end local v5    # "tabsContextRect":Lcom/julysystems/appx/AppXRenderRectC;
    :cond_0
    return-void
.end method

.method private executeText(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    .locals 20
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p8, "calculated"    # Z
    .param p9, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastInstruction;",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 910
    .local p7, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p8, :cond_4

    .line 911
    if-eqz p4, :cond_1

    .line 912
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDrawingArea()Lcom/julysystems/appx/AppXRenderRectC;

    move-result-object v4

    .line 913
    .local v4, "drawingArea":Lcom/julysystems/appx/AppXRenderRectC;
    invoke-virtual/range {p1 .. p1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getTextLayout()Landroid/text/StaticLayout;

    move-result-object v9

    .line 914
    .local v9, "textLayout":Landroid/text/StaticLayout;
    const/16 v17, 0xc

    const-string v18, ""

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 916
    .local v11, "vAlign":Ljava/lang/String;
    iget v15, v4, Lcom/julysystems/appx/AppXRenderRectC;->left:F

    .line 917
    .local v15, "x":F
    iget v0, v4, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    move/from16 v16, v0

    .line 919
    .local v16, "y":F
    const-string v17, "middle"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 920
    move-object/from16 v0, p6

    iget v0, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    move/from16 v17, v0

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v18

    invoke-virtual {v4}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v19

    sub-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v16, v17, v18

    .line 931
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v17

    invoke-virtual {v4}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v4, v15, v0, v1, v2}, Lcom/julysystems/appx/AppXRenderRectC;->set(FFFF)V

    .line 932
    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 933
    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 934
    const/16 v17, 0x0

    sub-float v17, v17, v15

    const/16 v18, 0x0

    sub-float v18, v18, v16

    move-object/from16 v0, p4

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->actionUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 936
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->addActionRect(Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 975
    .end local v4    # "drawingArea":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v9    # "textLayout":Landroid/text/StaticLayout;
    .end local v11    # "vAlign":Ljava/lang/String;
    .end local v15    # "x":F
    .end local v16    # "y":F
    :cond_1
    :goto_1
    return-void

    .line 921
    .restart local v4    # "drawingArea":Lcom/julysystems/appx/AppXRenderRectC;
    .restart local v9    # "textLayout":Landroid/text/StaticLayout;
    .restart local v11    # "vAlign":Ljava/lang/String;
    .restart local v15    # "x":F
    .restart local v16    # "y":F
    :cond_2
    const-string v17, "bottom"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 922
    move-object/from16 v0, p6

    iget v0, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    move/from16 v17, v0

    move-object/from16 v0, p6

    iget v0, v0, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    move/from16 v18, v0

    move-object/from16 v0, p6

    iget v0, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    move/from16 v19, v0

    add-float v18, v18, v19

    add-float v17, v17, v18

    invoke-virtual {v4}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v18

    sub-float v16, v17, v18

    goto :goto_0

    .line 923
    :cond_3
    const-string v17, "top"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 924
    move-object/from16 v0, p6

    iget v0, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    move/from16 v16, v0

    goto :goto_0

    .line 940
    .end local v4    # "drawingArea":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v9    # "textLayout":Landroid/text/StaticLayout;
    .end local v11    # "vAlign":Ljava/lang/String;
    .end local v15    # "x":F
    .end local v16    # "y":F
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getXCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v15

    .line 941
    .restart local v15    # "x":F
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getYCoordinate(Lcom/julysystems/appx/AppXRenderRectC;)F

    move-result v16

    .line 942
    .restart local v16    # "y":F
    const/16 v17, 0x3

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v18

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->width()F

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDimension(IFF)F

    move-result v12

    .line 943
    .local v12, "width":F
    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getDimension(IFF)F

    move-result v6

    .line 944
    .local v6, "height":F
    const-string v17, "rowHeight"

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 945
    .local v8, "rowHt":Ljava/lang/String;
    const/16 v17, 0x10

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 947
    .local v14, "wrapMode":Ljava/lang/String;
    new-instance v10, Lcom/julysystems/appx/AppXRenderRectC;

    move/from16 v0, v16

    invoke-direct {v10, v15, v0, v12, v6}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 948
    .local v10, "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    if-eqz v8, :cond_a

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 949
    .local v7, "rowHeight":F
    :goto_2
    const/16 v17, 0x0

    cmpg-float v17, v7, v17

    if-gez v17, :cond_5

    const/16 v17, 0x0

    cmpg-float v17, v6, v17

    if-gez v17, :cond_5

    .line 950
    new-instance v10, Lcom/julysystems/appx/AppXRenderRectC;

    .end local v10    # "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v10, v15, v0, v12, v1}, Lcom/julysystems/appx/AppXRenderRectC;-><init>(FFFF)V

    .line 952
    .restart local v10    # "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    :cond_5
    const/4 v13, 0x1

    .line 953
    .local v13, "wrapLines":Z
    if-eqz v14, :cond_6

    const-string v17, "wordwrap"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 954
    const/4 v13, 0x0

    .line 956
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2, v13, v12}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->createTextLayout(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderScreenCastBlock;ZF)Landroid/text/StaticLayout;

    move-result-object v9

    .line 957
    .restart local v9    # "textLayout":Landroid/text/StaticLayout;
    if-eqz v13, :cond_8

    .line 960
    cmpg-float v17, v7, v6

    if-ltz v17, :cond_7

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v7, v17

    if-gez v17, :cond_b

    :cond_7
    const/16 v17, 0x0

    cmpl-float v17, v7, v17

    if-lez v17, :cond_b

    .line 961
    iget v0, v10, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    move/from16 v17, v0

    add-float v17, v17, v7

    move/from16 v0, v17

    iput v0, v10, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    .line 966
    :cond_8
    :goto_3
    iget v0, v10, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    move/from16 v17, v0

    invoke-virtual {v10}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v18

    add-float v17, v17, v18

    move-object/from16 v0, p6

    iget v0, v0, Lcom/julysystems/appx/AppXRenderRectC;->top:F

    move/from16 v18, v0

    invoke-virtual/range {p6 .. p6}, Lcom/julysystems/appx/AppXRenderRectC;->height()F

    move-result v19

    add-float v18, v18, v19

    cmpl-float v17, v17, v18

    if-lez v17, :cond_9

    .line 967
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v10}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->enlargeContextRect(Lcom/julysystems/appx/AppXRenderRectC;Lcom/julysystems/appx/AppXRenderRectC;)V

    .line 968
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->setDrawingArea(Lcom/julysystems/appx/AppXRenderRectC;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 971
    .end local v6    # "height":F
    .end local v7    # "rowHeight":F
    .end local v8    # "rowHt":Ljava/lang/String;
    .end local v9    # "textLayout":Landroid/text/StaticLayout;
    .end local v10    # "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    .end local v12    # "width":F
    .end local v13    # "wrapLines":Z
    .end local v14    # "wrapMode":Ljava/lang/String;
    .end local v15    # "x":F
    .end local v16    # "y":F
    :catch_0
    move-exception v5

    .line 972
    .local v5, "e":Ljava/lang/Exception;
    sget-object v17, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->TAG:Ljava/lang/String;

    const-string v18, "Exception inside the executeText"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 948
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "height":F
    .restart local v8    # "rowHt":Ljava/lang/String;
    .restart local v10    # "textRect":Lcom/julysystems/appx/AppXRenderRectC;
    .restart local v12    # "width":F
    .restart local v14    # "wrapMode":Ljava/lang/String;
    .restart local v15    # "x":F
    .restart local v16    # "y":F
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 962
    .restart local v7    # "rowHeight":F
    .restart local v9    # "textLayout":Landroid/text/StaticLayout;
    .restart local v13    # "wrapLines":Z
    :cond_b
    const/16 v17, 0x0

    cmpg-float v17, v6, v17

    if-gtz v17, :cond_8

    .line 963
    :try_start_1
    iget v0, v10, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F

    move/from16 v17, v0

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/julysystems/appx/AppXRenderRectC;->bottom:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private getImageResource(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;ILcom/julysystems/appx/AppXRenderScreenCastView;Lcom/julysystems/appx/AppXRenderRectC;)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "attributeId"    # I
    .param p3, "renderField"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p4, "rectC"    # Lcom/julysystems/appx/AppXRenderRectC;

    .prologue
    .line 124
    invoke-virtual/range {p1 .. p2}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getScreenCastAttribute(I)Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    move-result-object v2

    .line 125
    .local v2, "attribute":Lcom/julysystems/appx/AppXRenderScreenCastAttribute;
    if-nez v2, :cond_1

    .line 126
    const/4 v6, 0x0

    .line 188
    :cond_0
    :goto_0
    return-object v6

    .line 127
    :cond_1
    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->getResourceID()I

    move-result v10

    .line 128
    .local v10, "imageResourceId":I
    const-string v12, ""

    .line 130
    .local v12, "urlData":Ljava/lang/String;
    :try_start_0
    sget-object v14, Lcom/julysystems/appx/AppXRenderRenderUtil;->resource:Ljava/util/Vector;

    invoke-virtual {v14, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/lang/String;

    move-object v12, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_1
    const-string v14, "~"

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 135
    .local v13, "urlSeparator":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 136
    .local v6, "bm":Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-lt v14, v15, :cond_0

    .line 137
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 140
    const/4 v14, 0x1

    :try_start_1
    aget-object v11, v13, v14

    .line 141
    .local v11, "imgURL":Ljava/lang/String;
    sget-object v14, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageTable:Ljava/util/Hashtable;

    invoke-virtual {v14, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 142
    .local v5, "bitmapRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    move-object v3, v14

    .line 143
    .local v3, "bitMap":Landroid/graphics/Bitmap;
    :goto_2
    if-nez v3, :cond_5

    .line 144
    sget-boolean v14, Lcom/julysystems/appx/AppXConstants;->isCachingEnabled:Z

    if-eqz v14, :cond_4

    .line 145
    invoke-static {v11}, Lcom/julysystems/appx/AppXCache;->getFromCache(Ljava/lang/String;)Lcom/julysystems/appx/AppXCacheItem;

    move-result-object v7

    .line 146
    .local v7, "cache":Lcom/julysystems/appx/AppXCacheItem;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/julysystems/appx/AppXCacheItem;->getData()[B

    move-result-object v14

    if-eqz v14, :cond_3

    .line 147
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Lcom/julysystems/appx/AppXCacheItem;->getBitmap([B)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 148
    .local v4, "bitmapCache":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 149
    move-object v6, v4

    .line 150
    goto :goto_0

    .line 131
    .end local v3    # "bitMap":Landroid/graphics/Bitmap;
    .end local v4    # "bitmapCache":Landroid/graphics/Bitmap;
    .end local v5    # "bitmapRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v6    # "bm":Landroid/graphics/Bitmap;
    .end local v7    # "cache":Lcom/julysystems/appx/AppXCacheItem;
    .end local v11    # "imgURL":Ljava/lang/String;
    .end local v13    # "urlSeparator":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 132
    .local v8, "e":Ljava/lang/Exception;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Exception in getImageResource : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "bitmapRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v6    # "bm":Landroid/graphics/Bitmap;
    .restart local v11    # "imgURL":Ljava/lang/String;
    .restart local v13    # "urlSeparator":[Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 151
    .restart local v3    # "bitMap":Landroid/graphics/Bitmap;
    .restart local v7    # "cache":Lcom/julysystems/appx/AppXCacheItem;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->extImageUrl:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 152
    new-instance v14, Lcom/julysystems/appx/AppXScreenCastImageRequest;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v14, v11, v0, v1}, Lcom/julysystems/appx/AppXScreenCastImageRequest;-><init>(Ljava/lang/String;Lcom/julysystems/appx/AppXRenderScreenCastView;Lcom/julysystems/appx/AppXRenderRectC;)V

    invoke-static {v14}, Lcom/julysystems/appx/AppXURLRequestTask;->addRequest(Lcom/julysystems/appx/AppXURLRequest;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->extImageUrl:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 164
    .end local v3    # "bitMap":Landroid/graphics/Bitmap;
    .end local v5    # "bitmapRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v7    # "cache":Lcom/julysystems/appx/AppXCacheItem;
    .end local v11    # "imgURL":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 165
    .restart local v8    # "e":Ljava/lang/Exception;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Exception in getImageResource 2 : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v3    # "bitMap":Landroid/graphics/Bitmap;
    .restart local v5    # "bitmapRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v11    # "imgURL":Ljava/lang/String;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->extImageUrl:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 158
    new-instance v14, Lcom/julysystems/appx/AppXScreenCastImageRequest;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v14, v11, v0, v1}, Lcom/julysystems/appx/AppXScreenCastImageRequest;-><init>(Ljava/lang/String;Lcom/julysystems/appx/AppXRenderScreenCastView;Lcom/julysystems/appx/AppXRenderRectC;)V

    invoke-static {v14}, Lcom/julysystems/appx/AppXURLRequestTask;->addRequest(Lcom/julysystems/appx/AppXURLRequest;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->extImageUrl:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 163
    :cond_5
    move-object v6, v3

    goto/16 :goto_0

    .line 169
    .end local v3    # "bitMap":Landroid/graphics/Bitmap;
    .end local v5    # "bitmapRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v11    # "imgURL":Ljava/lang/String;
    :cond_6
    const/4 v14, 0x1

    :try_start_4
    aget-object v14, v13, v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, "@"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v11

    .line 172
    .restart local v11    # "imgURL":Ljava/lang/String;
    :try_start_5
    sget-object v14, Lcom/julysystems/appx/AppXRenderRenderUtil;->localImageMap:Ljava/util/Hashtable;

    invoke-virtual {v14, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v6, v0

    .line 173
    if-nez v6, :cond_0

    .line 174
    invoke-static {v11}, Lcom/julysystems/appx/AppXRenderRenderUtil;->getImageId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 175
    .local v9, "imageId":Ljava/lang/Integer;
    if-eqz v9, :cond_0

    const-string v14, ""

    invoke-virtual {v9, v14}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 176
    sget-object v14, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 177
    sget-object v14, Lcom/julysystems/appx/AppXRenderRenderUtil;->localImageMap:Ljava/util/Hashtable;

    invoke-virtual {v14, v11, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 180
    .end local v9    # "imageId":Ljava/lang/Integer;
    :catch_2
    move-exception v8

    .line 181
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v14, "Unable to load image resource : "

    invoke-static {v14, v11}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 183
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v11    # "imgURL":Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 184
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v14, "RenderBlock getImageResource.. Exception while trying to load local image."

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getInnerInstructionForId(Lcom/julysystems/appx/AppXRenderScreenCastBlock;IILjava/lang/String;)Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .locals 4
    .param p1, "tabBlock"    # Lcom/julysystems/appx/AppXRenderScreenCastBlock;
    .param p2, "instructionId"    # I
    .param p3, "attributeId"    # I
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v3, p1, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->instructions:[Lcom/julysystems/appx/AppXRenderScreenCastInstruction;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 121
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 109
    :cond_1
    iget-object v3, p1, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->instructions:[Lcom/julysystems/appx/AppXRenderScreenCastInstruction;

    aget-object v1, v3, v2

    .line 110
    .local v1, "instruction":Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getInstructionId()I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 111
    if-eqz p4, :cond_0

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getScreenCastAttributeCount()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 108
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .restart local v0    # "i":I
    :cond_3
    iget-object v3, v1, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->getScreenCastAttributeId()I

    move-result v3

    if-ne v3, p3, :cond_4

    .line 115
    iget-object v3, v1, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->attributes:[Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public executeInstructions(Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    .locals 15
    .param p1, "scview"    # Lcom/julysystems/appx/AppXRenderScreenCastView;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "ctxRect"    # Lcom/julysystems/appx/AppXRenderRectC;
    .param p7, "calculated"    # Z
    .param p8, "skipCalc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/julysystems/appx/AppXRenderScreenCastView;",
            "Landroid/content/Context;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Lcom/julysystems/appx/AppXRenderRectC;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p6, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v14, 0x0

    .line 196
    .local v14, "tabIndex":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->instructions:[Lcom/julysystems/appx/AppXRenderScreenCastInstruction;

    array-length v0, v0

    if-lt v13, v0, :cond_0

    .line 284
    :goto_1
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->instructions:[Lcom/julysystems/appx/AppXRenderScreenCastInstruction;

    aget-object v1, v0, v13

    .line 198
    .local v1, "instr":Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getInstructionId()I

    move-result v12

    .line 199
    .local v12, "id":I
    packed-switch v12, :pswitch_data_0

    .line 196
    :goto_2
    :pswitch_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 201
    invoke-direct/range {v0 .. v9}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeLabel(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 281
    .end local v1    # "instr":Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .end local v12    # "id":I
    :catch_0
    move-exception v11

    .line 282
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v1    # "instr":Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .restart local v12    # "id":I
    :pswitch_2
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 204
    :try_start_1
    invoke-direct/range {v0 .. v9}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeImage(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    goto :goto_2

    :pswitch_3
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 207
    invoke-direct/range {v0 .. v9}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeClip(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    goto :goto_2

    :pswitch_4
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 210
    invoke-direct/range {v0 .. v9}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeGradient(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    goto :goto_2

    :pswitch_5
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 213
    invoke-direct/range {v0 .. v9}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeRoundedRect(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    goto :goto_2

    :pswitch_6
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 216
    invoke-direct/range {v0 .. v9}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeMoveToPoint(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    goto/16 :goto_2

    :pswitch_7
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 219
    invoke-direct/range {v0 .. v9}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeLineToPoint(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    goto/16 :goto_2

    :pswitch_8
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 222
    invoke-direct/range {v0 .. v9}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeStrokeColor(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    goto/16 :goto_2

    :pswitch_9
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 225
    invoke-direct/range {v0 .. v9}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeFillColor(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    goto/16 :goto_2

    :pswitch_a
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 228
    invoke-direct/range {v0 .. v9}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeTable(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    goto/16 :goto_2

    :pswitch_b
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 231
    invoke-direct/range {v0 .. v9}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeTableRow(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    goto/16 :goto_2

    :pswitch_c
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 234
    invoke-direct/range {v0 .. v9}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeTableCell(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    goto/16 :goto_2

    :pswitch_d
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 237
    invoke-direct/range {v0 .. v9}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeTabContainer(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    goto/16 :goto_2

    :pswitch_e
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 240
    invoke-direct/range {v0 .. v9}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeTabs(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    .line 241
    add-int/lit8 v14, v14, 0x1

    .line 242
    goto/16 :goto_2

    :pswitch_f
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move v9, v14

    move/from16 v10, p8

    .line 244
    invoke-direct/range {v0 .. v10}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeTab(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZIZ)V

    .line 245
    add-int/lit8 v14, v14, 0x1

    .line 246
    goto/16 :goto_2

    :pswitch_10
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 248
    invoke-direct/range {v0 .. v9}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeTabData(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    goto/16 :goto_2

    :pswitch_11
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 251
    invoke-direct/range {v0 .. v9}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeLink(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V

    goto/16 :goto_2

    :pswitch_12
    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 254
    invoke-direct/range {v0 .. v9}, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->executeText(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;Lcom/julysystems/appx/AppXRenderScreenCastView;Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderRectC;Ljava/util/Hashtable;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 199
    nop

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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public getFontResource(Lcom/julysystems/appx/AppXRenderScreenCastInstruction;I)Lcom/julysystems/appx/AppXRenderFont;
    .locals 6
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderScreenCastInstruction;
    .param p2, "attributeId"    # I

    .prologue
    .line 73
    invoke-virtual {p1, p2}, Lcom/julysystems/appx/AppXRenderScreenCastInstruction;->getScreenCastAttribute(I)Lcom/julysystems/appx/AppXRenderScreenCastAttribute;

    move-result-object v0

    .line 74
    .local v0, "attribute":Lcom/julysystems/appx/AppXRenderScreenCastAttribute;
    if-nez v0, :cond_0

    .line 75
    sget-object v3, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->normalFont:Lcom/julysystems/appx/AppXRenderFont;

    .line 87
    :goto_0
    return-object v3

    .line 76
    :cond_0
    const/4 v3, 0x0

    .line 77
    .local v3, "f":Lcom/julysystems/appx/AppXRenderFont;
    sget-object v4, Lcom/julysystems/appx/AppXRenderRenderUtil;->resource:Ljava/util/Vector;

    .line 79
    .local v4, "resource":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual {v0}, Lcom/julysystems/appx/AppXRenderScreenCastAttribute;->getResourceID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f":Lcom/julysystems/appx/AppXRenderFont;
    check-cast v3, Lcom/julysystems/appx/AppXRenderFont;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "f":Lcom/julysystems/appx/AppXRenderFont;
    goto :goto_0

    .line 80
    .end local v3    # "f":Lcom/julysystems/appx/AppXRenderFont;
    :catch_0
    move-exception v1

    .line 82
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

    .line 83
    .end local v3    # "f":Lcom/julysystems/appx/AppXRenderFont;
    :catch_1
    move-exception v2

    .line 84
    .local v2, "ee":Ljava/lang/Exception;
    sget-object v3, Lcom/julysystems/appx/AppXRenderScreenCastBlock;->normalFont:Lcom/julysystems/appx/AppXRenderFont;

    .restart local v3    # "f":Lcom/julysystems/appx/AppXRenderFont;
    goto :goto_0
.end method

.method public setFont(Landroid/graphics/Paint;Lcom/julysystems/appx/AppXRenderFont;)V
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "font"    # Lcom/julysystems/appx/AppXRenderFont;

    .prologue
    const/4 v2, 0x1

    .line 92
    iget-object v0, p2, Lcom/julysystems/appx/AppXRenderFont;->fontFamilyName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/julysystems/appx/AppXConstants;->fontMap:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/julysystems/appx/AppXRenderFont;->fontFamilyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/julysystems/appx/AppXConstants;->fontMap:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/julysystems/appx/AppXRenderFont;->fontFamilyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 103
    :goto_0
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget v0, p2, Lcom/julysystems/appx/AppXRenderFont;->fontSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    return-void

    .line 94
    :cond_0
    iget-object v0, p2, Lcom/julysystems/appx/AppXRenderFont;->fontFamilyName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 97
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

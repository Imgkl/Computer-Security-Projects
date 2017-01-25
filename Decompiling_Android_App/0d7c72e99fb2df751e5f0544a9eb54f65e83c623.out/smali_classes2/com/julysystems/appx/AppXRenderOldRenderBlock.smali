.class Lcom/julysystems/appx/AppXRenderOldRenderBlock;
.super Ljava/lang/Object;
.source "AppXRenderOldRenderBlock.java"


# static fields
.field private static final normalFont:Lcom/julysystems/appx/AppXRenderFont;


# instance fields
.field public actionRect:Landroid/graphics/RectF;

.field public actionUrl:Ljava/lang/String;

.field height:F

.field public final instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

.field public isSelected:Z

.field private lastTabHeight:F

.field private renderSelectionButtonView:Lcom/julysystems/appx/AppXRenderRenderSelectionButton;

.field private tabContLayout:Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;

.field timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/julysystems/appx/AppXRenderFont;

    const/high16 v1, 0x41600000    # 14.0f

    const-string v2, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderFont;-><init>(FLjava/lang/String;)V

    sput-object v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->normalFont:Lcom/julysystems/appx/AppXRenderFont;

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

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->timer:Ljava/util/Timer;

    .line 41
    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionUrl:Ljava/lang/String;

    .line 44
    const/4 v3, 0x0

    iput v3, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->lastTabHeight:F

    .line 50
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionRect:Landroid/graphics/RectF;

    .line 51
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->isSelected:Z

    .line 52
    invoke-virtual {p1}, Lcom/julysystems/appx/AppXRenderDataInputStream;->readShort()S

    move-result v2

    .line 53
    .local v2, "instructionCount":I
    new-array v3, v2, [Lcom/julysystems/appx/AppXRenderOldInstruction;

    iput-object v3, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 60
    :goto_1
    return-void

    .line 56
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    new-instance v4, Lcom/julysystems/appx/AppXRenderOldInstruction;

    invoke-direct {v4, p1}, Lcom/julysystems/appx/AppXRenderOldInstruction;-><init>(Lcom/julysystems/appx/AppXRenderDataInputStream;)V

    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Unable to create renderblock"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private addActionRect(Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionRect:Landroid/graphics/RectF;

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private createColumns(Landroid/content/Context;[ILandroid/graphics/RectF;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "colWidths"    # [I
    .param p3, "ctxRect"    # Landroid/graphics/RectF;
    .param p4, "defaultRect"    # Landroid/graphics/RectF;
    .param p5, "renderField"    # Lcom/julysystems/appx/AppXRenderOldRenderField;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 432
    iget v5, p3, Landroid/graphics/RectF;->left:F

    .line 433
    .local v5, "x":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    array-length v7, v7

    if-lt v1, v7, :cond_0

    .line 446
    return-void

    .line 434
    :cond_0
    iget-object v7, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    aget-object v2, v7, v1

    .line 435
    .local v2, "instr":Lcom/julysystems/appx/AppXRenderOldInstruction;
    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInstructionId()I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_1

    .line 436
    invoke-virtual {v2, v6}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInnerRenderBlock(I)Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    move-result-object v3

    .line 437
    .local v3, "tdBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    if-eqz v3, :cond_1

    .line 438
    array-length v7, p2

    if-lez v7, :cond_2

    array-length v7, p2

    rem-int v7, v1, v7

    aget v0, p2, v7

    .line 439
    .local v0, "colWidth":I
    :goto_1
    new-instance v4, Landroid/graphics/RectF;

    iget v7, p3, Landroid/graphics/RectF;->top:F

    invoke-direct {v4, v5, v7, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 440
    .local v4, "tdRect":Landroid/graphics/RectF;
    iget v7, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->height:F

    iput v7, v3, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->height:F

    .line 441
    invoke-virtual {v3, p1, v4, p5}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->initializeFields(Landroid/content/Context;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    .line 442
    int-to-float v7, v0

    add-float/2addr v5, v7

    .line 433
    .end local v0    # "colWidth":I
    .end local v3    # "tdBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    .end local v4    # "tdRect":Landroid/graphics/RectF;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v3    # "tdBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    :cond_2
    move v0, v6

    .line 438
    goto :goto_1
.end method

.method private createRows(Landroid/content/Context;I[ILandroid/graphics/RectF;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rowHeight"    # I
    .param p3, "colWidths"    # [I
    .param p4, "ctxRect"    # Landroid/graphics/RectF;
    .param p5, "defaultRect"    # Landroid/graphics/RectF;
    .param p6, "renderField"    # Lcom/julysystems/appx/AppXRenderOldRenderField;

    .prologue
    .line 413
    const/4 v8, 0x0

    .line 414
    .local v8, "y":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    array-length v1, v1

    if-lt v6, v1, :cond_1

    .line 426
    iget v1, p4, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v8

    iput v1, p4, Landroid/graphics/RectF;->bottom:F

    .line 427
    iget v1, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->height:F

    cmpg-float v1, v1, v8

    if-gez v1, :cond_0

    .line 428
    iput v8, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->height:F

    .line 429
    :cond_0
    return-void

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    aget-object v7, v1, v6

    .line 416
    .local v7, "instr":Lcom/julysystems/appx/AppXRenderOldInstruction;
    invoke-virtual {v7}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInstructionId()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 417
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInnerRenderBlock(I)Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    move-result-object v0

    .line 418
    .local v0, "trBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    if-eqz v0, :cond_2

    .line 419
    new-instance v3, Landroid/graphics/RectF;

    iget v1, p4, Landroid/graphics/RectF;->left:F

    iget v2, p4, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v8

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-direct {v3, v1, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 420
    .local v3, "trRect":Landroid/graphics/RectF;
    int-to-float v1, p2

    iput v1, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->height:F

    move-object v1, p1

    move-object v2, p3

    move-object v4, p5

    move-object v5, p6

    .line 421
    invoke-direct/range {v0 .. v5}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->createColumns(Landroid/content/Context;[ILandroid/graphics/RectF;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    .line 422
    int-to-float v1, p2

    add-float/2addr v8, v1

    .line 414
    .end local v0    # "trBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    .end local v3    # "trRect":Landroid/graphics/RectF;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private createSelectBox(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderOldInstruction;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instr"    # Lcom/julysystems/appx/AppXRenderOldInstruction;
    .param p3, "ctxRect"    # Landroid/graphics/RectF;
    .param p4, "renderField"    # Lcom/julysystems/appx/AppXRenderOldRenderField;

    .prologue
    .line 313
    const/16 v22, 0x1

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getCoordinate(IFF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 314
    .local v20, "x":I
    const/16 v22, 0x2

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getCoordinate(IFF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 316
    .local v21, "y":I
    const/16 v22, 0x6

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, "color":Ljava/lang/String;
    const/16 v22, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v22

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->getFontResource(Lcom/julysystems/appx/AppXRenderOldInstruction;ILcom/julysystems/appx/AppXRenderOldRenderField;)Lcom/julysystems/appx/AppXRenderFont;

    move-result-object v10

    .line 318
    .local v10, "font":Lcom/julysystems/appx/AppXRenderFont;
    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v23, 0x8

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "&iPhoneMode=app&appMode=true&platform=android"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 319
    .local v17, "url":Ljava/lang/String;
    const/16 v22, 0x9

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, "bgcolor":Ljava/lang/String;
    const/16 v22, 0x13

    const-string v23, "Done"

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 321
    .local v7, "doneButtonLabel":Ljava/lang/String;
    const/16 v22, 0x14

    const-string v23, "Cancel"

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 325
    .local v5, "cancelButtonLabel":Ljava/lang/String;
    const/16 v22, 0x18

    const-string v23, "yes"

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 327
    .local v19, "willChangeButtonText":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInnerRenderBlock(I)Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    move-result-object v15

    .line 328
    .local v15, "optionsBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->loadOptions(Lcom/julysystems/appx/AppXRenderOldRenderBlock;)Ljava/util/Hashtable;

    move-result-object v14

    .line 329
    .local v14, "options":Ljava/util/Hashtable;
    new-instance v16, Ljava/util/Hashtable;

    invoke-direct/range {v16 .. v16}, Ljava/util/Hashtable;-><init>()V

    .line 332
    .local v16, "params":Ljava/util/Hashtable;
    if-eqz v4, :cond_0

    .line 333
    :try_start_0
    const-string v22, "bgcolor"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_0
    if-eqz v17, :cond_1

    .line 335
    const-string v22, "url"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_1
    if-eqz v6, :cond_2

    .line 337
    const-string v22, "color"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_2
    const-string v22, "font"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v22, "doneButtonLabel"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v22, "cancelButtonLabel"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v22, "willChangeButtonText"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v22, "x"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v22, "y"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v22, "width"

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v22, "height"

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    invoke-virtual {v14}, Ljava/util/Hashtable;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 354
    .local v18, "values":[Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/Hashtable;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v13, v0, [Ljava/lang/String;

    .line 355
    .local v13, "names":[Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v9

    .line 356
    .local v9, "enuEl":Ljava/util/Enumeration;
    const/4 v11, 0x0

    .line 357
    .local v11, "i":I
    :goto_1
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v22

    if-nez v22, :cond_3

    .line 363
    return-void

    .line 350
    .end local v9    # "enuEl":Ljava/util/Enumeration;
    .end local v11    # "i":I
    .end local v13    # "names":[Ljava/lang/String;
    .end local v18    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 351
    .local v8, "e":Ljava/lang/Exception;
    const-string v22, "createSelectBox"

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 358
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "enuEl":Ljava/util/Enumeration;
    .restart local v11    # "i":I
    .restart local v13    # "names":[Ljava/lang/String;
    .restart local v18    # "values":[Ljava/lang/String;
    :cond_3
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    .line 359
    .local v12, "key":Ljava/lang/Object;
    invoke-virtual {v14, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    aput-object v22, v18, v11

    .line 360
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v13, v11

    .line 361
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method

.method private createSubmitButton(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderOldInstruction;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instr"    # Lcom/julysystems/appx/AppXRenderOldInstruction;
    .param p3, "ctxRect"    # Landroid/graphics/RectF;
    .param p4, "renderField"    # Lcom/julysystems/appx/AppXRenderOldRenderField;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 280
    const/4 v7, 0x1

    iget v8, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2, v7, v8, v10}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getCoordinate(IFF)F

    move-result v7

    float-to-int v5, v7

    .line 281
    .local v5, "x":I
    const/4 v7, 0x2

    iget v8, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v7, v8, v10}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getCoordinate(IFF)F

    move-result v7

    float-to-int v6, v7

    .line 283
    .local v6, "y":I
    const/4 v7, 0x6

    invoke-virtual {p2, v7, v9}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "color":Ljava/lang/String;
    const/4 v7, 0x7

    invoke-virtual {p0, p2, v7, p4}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->getFontResource(Lcom/julysystems/appx/AppXRenderOldInstruction;ILcom/julysystems/appx/AppXRenderOldRenderField;)Lcom/julysystems/appx/AppXRenderFont;

    move-result-object v2

    .line 285
    .local v2, "font":Lcom/julysystems/appx/AppXRenderFont;
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x8

    invoke-virtual {p2, v8, v9}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    const-string v8, "&iPhoneMode=app&appMode=true&platform=android"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 285
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, "url":Ljava/lang/String;
    const/16 v7, 0x9

    invoke-virtual {p2, v7, v9}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "bgcolor":Ljava/lang/String;
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 293
    .local v3, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 294
    :try_start_0
    const-string v7, "bgcolor"

    invoke-virtual {v3, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_0
    if-eqz v4, :cond_1

    .line 296
    const-string v7, "url"

    invoke-virtual {v3, v7, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_1
    if-eqz v1, :cond_2

    .line 298
    const-string v7, "color"

    invoke-virtual {v3, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_2
    const-string v7, "font"

    invoke-virtual {v3, v7, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v7, "color"

    invoke-virtual {v3, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v7, "x"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v7, "y"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v7, "width"

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v8

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v7, "height"

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private createSwitch(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderOldInstruction;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instr"    # Lcom/julysystems/appx/AppXRenderOldInstruction;
    .param p3, "ctxRect"    # Landroid/graphics/RectF;
    .param p4, "renderField"    # Lcom/julysystems/appx/AppXRenderOldRenderField;

    .prologue
    const/4 v6, 0x0

    .line 367
    const/4 v4, 0x1

    iget v5, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2, v4, v5, v6}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getCoordinate(IFF)F

    move-result v4

    float-to-int v2, v4

    .line 368
    .local v2, "x":I
    const/4 v4, 0x2

    iget v5, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v4, v5, v6}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getCoordinate(IFF)F

    move-result v4

    float-to-int v3, v4

    .line 371
    .local v3, "y":I
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&iPhoneMode=app&appMode=true&platform=android"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 374
    .local v0, "params":Ljava/util/Hashtable;
    if-eqz v1, :cond_0

    .line 375
    :try_start_0
    const-string v4, "url"

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_0
    :goto_0
    const-string v4, "x"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v4, "y"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v4, "width"

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v4, "height"

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    return-void

    .line 377
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private createTable(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderOldInstruction;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instr"    # Lcom/julysystems/appx/AppXRenderOldInstruction;
    .param p3, "ctxRect"    # Landroid/graphics/RectF;
    .param p4, "defaultRect"    # Landroid/graphics/RectF;
    .param p5, "renderField"    # Lcom/julysystems/appx/AppXRenderOldRenderField;

    .prologue
    const/4 v5, 0x0

    .line 403
    const/16 v1, 0x10

    const-string v4, ""

    invoke-virtual {p2, v1, v4}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->getColumnWidths(Ljava/lang/String;)[I

    move-result-object v3

    .line 404
    .local v3, "colWidths":[I
    const/16 v1, 0x11

    invoke-virtual {p2, v1, v5}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getIntVal(II)I

    move-result v2

    .line 405
    .local v2, "rowHeight":I
    invoke-virtual {p2, v5}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInnerRenderBlock(I)Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    move-result-object v0

    .line 406
    .local v0, "tableBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 407
    invoke-direct/range {v0 .. v6}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->createRows(Landroid/content/Context;I[ILandroid/graphics/RectF;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    .line 408
    iget v1, p3, Landroid/graphics/RectF;->top:F

    iget v4, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->height:F

    add-float/2addr v1, v4

    iput v1, p3, Landroid/graphics/RectF;->bottom:F

    .line 410
    :cond_0
    return-void
.end method

.method private createTextField(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderOldInstruction;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instr"    # Lcom/julysystems/appx/AppXRenderOldInstruction;
    .param p3, "ctxRect"    # Landroid/graphics/RectF;
    .param p4, "renderField"    # Lcom/julysystems/appx/AppXRenderOldRenderField;

    .prologue
    .line 170
    const/16 v22, 0x1

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getCoordinate(IFF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 171
    .local v20, "x":I
    const/16 v22, 0x2

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getCoordinate(IFF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 172
    .local v21, "y":I
    const/16 v22, 0x6

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 173
    .local v9, "color":Ljava/lang/String;
    const/16 v22, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v22

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->getFontResource(Lcom/julysystems/appx/AppXRenderOldInstruction;ILcom/julysystems/appx/AppXRenderOldRenderField;)Lcom/julysystems/appx/AppXRenderFont;

    move-result-object v11

    .line 175
    .local v11, "font":Lcom/julysystems/appx/AppXRenderFont;
    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v23, 0x8

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "&iPhoneMode=app&appMode=true&platform=android"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 176
    .local v19, "url":Ljava/lang/String;
    const/16 v22, 0x9

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "bgcolor":Ljava/lang/String;
    const/16 v22, 0x13

    const-string v23, "Done"

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 178
    .local v10, "doneButtonLabel":Ljava/lang/String;
    const/16 v22, 0x14

    const-string v23, "Cancel"

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, "cancelButtonLabel":Ljava/lang/String;
    const/16 v22, 0x15

    const-string v23, "none"

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "borderStyle":Ljava/lang/String;
    const/16 v22, 0x16

    const-string v23, "no"

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 181
    .local v8, "clearsOnBeginEdit":Ljava/lang/String;
    const/16 v22, 0x17

    const-string v23, ""

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 182
    .local v16, "placeHolderText":Ljava/lang/String;
    const/16 v22, 0x18

    const-string v23, ""

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 183
    .local v17, "returnKeyType":Ljava/lang/String;
    const/16 v22, 0x19

    const-string v23, ""

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 184
    .local v14, "keyboardType":Ljava/lang/String;
    const/16 v22, 0x1a

    const-string v23, ""

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "autoCorrection":Ljava/lang/String;
    const/16 v22, 0x1b

    const-string v23, "no"

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 186
    .local v13, "isSecured":Ljava/lang/String;
    const/16 v22, 0x1c

    const-string v23, "yes"

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 187
    .local v12, "isEditable":Ljava/lang/String;
    const/16 v22, 0x1d

    const-string v23, "left"

    move-object/from16 v0, p2

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 189
    .local v18, "textAlignment":Ljava/lang/String;
    new-instance v15, Ljava/util/Hashtable;

    invoke-direct {v15}, Ljava/util/Hashtable;-><init>()V

    .line 191
    .local v15, "params":Ljava/util/Hashtable;
    if-eqz v5, :cond_0

    .line 192
    :try_start_0
    const-string v22, "bgcolor"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_0
    if-eqz v19, :cond_1

    .line 194
    const-string v22, "url"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_1
    if-eqz v9, :cond_2

    .line 196
    const-string v22, "color"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_2
    const-string v22, "font"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v22, "doneButtonLabel"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v22, "cancelButtonLabel"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v22, "borderStyle"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v22, "clearsOnBeginEdit"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v22, "placeHolderText"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v22, "returnKeyType"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v22, "keyboardType"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v22, "autoCorrection"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v22, "isSecured"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v22, "isEditable"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v22, "textAlignment"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v22, "x"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v22, "y"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v22, "width"

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v22, "height"

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v22

    goto :goto_0
.end method

.method private drawColumns([ILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V
    .locals 9
    .param p1, "colWidths"    # [I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "ctxRect"    # Landroid/graphics/RectF;
    .param p5, "defaultRect"    # Landroid/graphics/RectF;
    .param p6, "renderField"    # Lcom/julysystems/appx/AppXRenderOldRenderField;

    .prologue
    .line 608
    iget v5, p4, Landroid/graphics/RectF;->left:F

    .line 609
    .local v5, "x":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    array-length v6, v6

    if-lt v1, v6, :cond_0

    .line 621
    return-void

    .line 610
    :cond_0
    iget-object v6, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    aget-object v2, v6, v1

    .line 611
    .local v2, "instr":Lcom/julysystems/appx/AppXRenderOldInstruction;
    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInstructionId()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_1

    .line 612
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInnerRenderBlock(I)Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    move-result-object v3

    .line 613
    .local v3, "tdBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    if-eqz v3, :cond_1

    .line 614
    array-length v6, p1

    if-lez v6, :cond_2

    array-length v6, p1

    rem-int v6, v1, v6

    aget v0, p1, v6

    .line 615
    .local v0, "colWidth":I
    :goto_1
    new-instance v4, Landroid/graphics/RectF;

    iget v6, p4, Landroid/graphics/RectF;->top:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 616
    .local v4, "tdRect":Landroid/graphics/RectF;
    invoke-virtual {v3, p2, p3, v4, p6}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->executeDrawing(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    .line 617
    int-to-float v6, v0

    add-float/2addr v5, v6

    .line 609
    .end local v0    # "colWidth":I
    .end local v3    # "tdBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    .end local v4    # "tdRect":Landroid/graphics/RectF;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    .restart local v3    # "tdBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawRows(I[ILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V
    .locals 10
    .param p1, "rowHeight"    # I
    .param p2, "colWidths"    # [I
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "ctxRect"    # Landroid/graphics/RectF;
    .param p6, "defaultRect"    # Landroid/graphics/RectF;
    .param p7, "renderField"    # Lcom/julysystems/appx/AppXRenderOldRenderField;

    .prologue
    .line 593
    const/4 v9, 0x0

    .line 594
    .local v9, "y":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    array-length v1, v1

    if-lt v7, v1, :cond_0

    .line 605
    return-void

    .line 595
    :cond_0
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    aget-object v8, v1, v7

    .line 596
    .local v8, "instr":Lcom/julysystems/appx/AppXRenderOldInstruction;
    invoke-virtual {v8}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInstructionId()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 597
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInnerRenderBlock(I)Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    move-result-object v0

    .line 598
    .local v0, "trBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    if-eqz v0, :cond_1

    .line 599
    new-instance v4, Landroid/graphics/RectF;

    iget v1, p5, Landroid/graphics/RectF;->left:F

    iget v2, p5, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v9

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-direct {v4, v1, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v4, "trRect":Landroid/graphics/RectF;
    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 600
    invoke-direct/range {v0 .. v6}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->drawColumns([ILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    .line 601
    int-to-float v1, p1

    add-float/2addr v9, v1

    .line 594
    .end local v0    # "trBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    .end local v4    # "trRect":Landroid/graphics/RectF;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private drawString(Lcom/julysystems/appx/AppXRenderOldInstruction;Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V
    .locals 22
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderOldInstruction;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "ctxRect"    # Landroid/graphics/RectF;
    .param p4, "defaultRect"    # Landroid/graphics/RectF;
    .param p5, "renderField"    # Lcom/julysystems/appx/AppXRenderOldRenderField;

    .prologue
    .line 624
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 625
    .local v13, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p3

    .line 627
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->addActionRect(Landroid/graphics/RectF;)V

    .line 629
    const/16 v20, 0x5

    const-string v21, ""

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 630
    .local v16, "text":Ljava/lang/String;
    const/16 v20, 0x6

    const-string v21, "FFFFFF"

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 632
    .local v7, "colorStr":Ljava/lang/String;
    const-string v20, "#"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 633
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 634
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    .line 636
    const/4 v8, -0x1

    .line 637
    .local v8, "colorVal":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 638
    const/16 v20, 0x0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x10

    invoke-static/range {v20 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 639
    .local v14, "red":I
    const/16 v20, 0x2

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x10

    invoke-static/range {v20 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 640
    .local v11, "green":I
    const/16 v20, 0x4

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x10

    invoke-static/range {v20 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 641
    .local v6, "blue":I
    invoke-static {v14, v11, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    .line 644
    .end local v6    # "blue":I
    .end local v11    # "green":I
    .end local v14    # "red":I
    :cond_1
    const/16 v20, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->getFontResource(Lcom/julysystems/appx/AppXRenderOldInstruction;ILcom/julysystems/appx/AppXRenderOldRenderField;)Lcom/julysystems/appx/AppXRenderFont;

    move-result-object v9

    .line 645
    .local v9, "font":Lcom/julysystems/appx/AppXRenderFont;
    const/16 v20, 0xa

    const-string v21, "left"

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 647
    .local v5, "alignStr":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v19

    .line 648
    .local v19, "y":F
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    .line 649
    .local v18, "x":F
    const-string v20, "right"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 650
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v20

    add-float v18, v18, v20

    .line 651
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 658
    .local v4, "align":Landroid/graphics/Paint$Align;
    :goto_1
    if-eqz v9, :cond_2

    .line 659
    iget-object v0, v9, Lcom/julysystems/appx/AppXRenderFont;->fontFamilyName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    const-string v21, "bold"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 660
    sget-object v20, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 664
    :goto_2
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 665
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 666
    iget v0, v9, Lcom/julysystems/appx/AppXRenderFont;->fontSize:F

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 679
    :cond_2
    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 680
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 682
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 684
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v21

    cmpl-float v20, v20, v21

    if-lez v20, :cond_a

    .line 685
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1, v13}, Lcom/julysystems/appx/AppXUtils;->wrap(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v17

    .line 686
    .local v17, "textVector":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 687
    .local v10, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v20, v0

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v21, v0

    add-float v20, v20, v21

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->leading:F

    move/from16 v21, v0

    add-float v12, v20, v21

    .line 688
    .local v12, "lineHeight":F
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    add-float v19, v20, v12

    .line 689
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_9

    .line 701
    .end local v10    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v12    # "lineHeight":F
    .end local v17    # "textVector":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 702
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->addActionRect(Landroid/graphics/RectF;)V

    .line 703
    :cond_4
    return-void

    .line 635
    .end local v4    # "align":Landroid/graphics/Paint$Align;
    .end local v5    # "alignStr":Ljava/lang/String;
    .end local v8    # "colorVal":I
    .end local v9    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .end local v18    # "x":F
    .end local v19    # "y":F
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "0"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 652
    .restart local v5    # "alignStr":Ljava/lang/String;
    .restart local v8    # "colorVal":I
    .restart local v9    # "font":Lcom/julysystems/appx/AppXRenderFont;
    .restart local v18    # "x":F
    .restart local v19    # "y":F
    :cond_6
    const-string v20, "center"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 653
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v18

    .line 654
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 655
    .restart local v4    # "align":Landroid/graphics/Paint$Align;
    goto/16 :goto_1

    .line 656
    .end local v4    # "align":Landroid/graphics/Paint$Align;
    :cond_7
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .restart local v4    # "align":Landroid/graphics/Paint$Align;
    goto/16 :goto_1

    .line 662
    :cond_8
    sget-object v20, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_2

    .line 689
    .restart local v10    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .restart local v12    # "lineHeight":F
    .restart local v17    # "textVector":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 690
    .local v15, "str":Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v15, v1, v2, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 691
    add-float v19, v19, v12

    goto :goto_3

    .line 694
    .end local v10    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v12    # "lineHeight":F
    .end local v15    # "str":Ljava/lang/String;
    .end local v17    # "textVector":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    invoke-virtual {v13}, Landroid/graphics/Paint;->descent()F

    move-result v20

    add-float v20, v20, v19

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4
.end method

.method private drawTable(Lcom/julysystems/appx/AppXRenderOldInstruction;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V
    .locals 9
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderOldInstruction;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "ctxRect"    # Landroid/graphics/RectF;
    .param p5, "defaultRect"    # Landroid/graphics/RectF;
    .param p6, "renderField"    # Lcom/julysystems/appx/AppXRenderOldRenderField;

    .prologue
    const/4 v5, 0x0

    .line 579
    const/16 v3, 0x10

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->getColumnWidths(Ljava/lang/String;)[I

    move-result-object v2

    .line 580
    .local v2, "colWidths":[I
    const/16 v3, 0x11

    invoke-virtual {p1, v3, v5}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getIntVal(II)I

    move-result v1

    .line 581
    .local v1, "rowHeight":I
    const/4 v0, 0x0

    .line 583
    .local v0, "tableBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInnerRenderBlock(I)Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 587
    :goto_0
    if-eqz v0, :cond_0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 588
    invoke-direct/range {v0 .. v7}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->drawRows(I[ILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    .line 590
    :cond_0
    return-void

    .line 584
    :catch_0
    move-exception v8

    .line 585
    .local v8, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception in drawTable : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getColumnWidths(Ljava/lang/String;)[I
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x2c

    .line 560
    const/4 v0, 0x1

    .line 561
    .local v0, "cnt":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 562
    .local v3, "pos":I
    :goto_0
    if-gez v3, :cond_0

    .line 566
    new-array v4, v0, [I

    .line 567
    .local v4, "widths":[I
    const/4 v3, 0x0

    .line 568
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 575
    return-object v4

    .line 563
    .end local v1    # "i":I
    .end local v4    # "widths":[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 564
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_0

    .line 569
    .restart local v1    # "i":I
    .restart local v4    # "widths":[I
    :cond_1
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 570
    .local v2, "nextPos":I
    if-gez v2, :cond_2

    .line 571
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 572
    :cond_2
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    aput v5, v4, v1

    .line 573
    add-int/lit8 v3, v2, 0x1

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getImageResource(Lcom/julysystems/appx/AppXRenderOldInstruction;ILcom/julysystems/appx/AppXRenderOldRenderField;Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderOldInstruction;
    .param p2, "attributeId"    # I
    .param p3, "renderField"    # Lcom/julysystems/appx/AppXRenderOldRenderField;
    .param p4, "canvas"    # Landroid/graphics/Canvas;
    .param p5, "rectF"    # Landroid/graphics/RectF;
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 721
    invoke-virtual/range {p1 .. p2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getAttribute(I)Lcom/julysystems/appx/AppXRenderOldAttribute;

    move-result-object v3

    .line 722
    .local v3, "attribute":Lcom/julysystems/appx/AppXRenderOldAttribute;
    if-eqz v3, :cond_0

    sget-object v17, Lcom/julysystems/appx/AppXRenderRenderUtil;->resource:Ljava/util/Vector;

    if-nez v17, :cond_2

    .line 723
    :cond_0
    const/4 v4, 0x0

    .line 771
    :cond_1
    :goto_0
    return-object v4

    .line 724
    :cond_2
    invoke-virtual {v3}, Lcom/julysystems/appx/AppXRenderOldAttribute;->getResourceID()I

    move-result v12

    .line 725
    .local v12, "imageResourceId":I
    const/4 v15, 0x0

    .line 727
    .local v15, "urlData":Ljava/lang/String;
    :try_start_0
    sget-object v17, Lcom/julysystems/appx/AppXRenderRenderUtil;->resource:Ljava/util/Vector;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "urlData":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    .restart local v15    # "urlData":Ljava/lang/String;
    const-string v17, "~"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 733
    .local v16, "urlSeparator":[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v16, v17

    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 736
    const/16 v17, 0x1

    :try_start_1
    aget-object v13, v16, v17

    .line 737
    .local v13, "imgURL":Ljava/lang/String;
    sget-object v17, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageTable:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/SoftReference;

    .line 738
    .local v6, "bitmapRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    move-object/from16 v4, v17

    .line 739
    .local v4, "bitMap":Landroid/graphics/Bitmap;
    :goto_1
    if-nez v4, :cond_1

    .line 741
    sget-boolean v17, Lcom/julysystems/appx/AppXConstants;->isCachingEnabled:Z

    if-eqz v17, :cond_4

    .line 742
    invoke-static {v13}, Lcom/julysystems/appx/AppXCache;->getFromCache(Ljava/lang/String;)Lcom/julysystems/appx/AppXCacheItem;

    move-result-object v7

    .line 743
    .local v7, "cache":Lcom/julysystems/appx/AppXCacheItem;
    if-eqz v7, :cond_4

    .line 744
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/julysystems/appx/AppXCacheItem;->getBitmap([B)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 745
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_4

    move-object v4, v5

    .line 746
    goto :goto_0

    .line 728
    .end local v4    # "bitMap":Landroid/graphics/Bitmap;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bitmapRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v7    # "cache":Lcom/julysystems/appx/AppXCacheItem;
    .end local v13    # "imgURL":Ljava/lang/String;
    .end local v15    # "urlData":Ljava/lang/String;
    .end local v16    # "urlSeparator":[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 729
    .local v9, "e1":Ljava/lang/RuntimeException;
    const-class v17, Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const/4 v4, 0x0

    goto :goto_0

    .line 738
    .end local v9    # "e1":Ljava/lang/RuntimeException;
    .restart local v6    # "bitmapRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .restart local v13    # "imgURL":Ljava/lang/String;
    .restart local v15    # "urlData":Ljava/lang/String;
    .restart local v16    # "urlSeparator":[Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 749
    .restart local v4    # "bitMap":Landroid/graphics/Bitmap;
    :cond_4
    :try_start_2
    new-instance v17, Lcom/julysystems/appx/AppXRenderImageRequest;

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    move-object/from16 v2, p3

    invoke-direct {v0, v13, v1, v2}, Lcom/julysystems/appx/AppXRenderImageRequest;-><init>(Ljava/lang/String;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    invoke-static/range {v17 .. v17}, Lcom/julysystems/appx/AppXURLRequestTask;->addRequest(Lcom/julysystems/appx/AppXURLRequest;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 771
    .end local v4    # "bitMap":Landroid/graphics/Bitmap;
    .end local v6    # "bitmapRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    .end local v13    # "imgURL":Ljava/lang/String;
    :goto_2
    const/4 v4, 0x0

    goto :goto_0

    .line 755
    :cond_5
    const/16 v17, 0x1

    :try_start_3
    aget-object v17, v16, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, "@"

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 756
    .restart local v13    # "imgURL":Ljava/lang/String;
    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 757
    .local v14, "pos":I
    if-lez v14, :cond_6

    .line 758
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 759
    :cond_6
    sget-object v17, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    if-nez v17, :cond_7

    .line 760
    sget-object v17, Lcom/julysystems/appx/AppXConstants;->drawablePackageName:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/julysystems/appx/AppXRenderRenderUtil;->loadImageResources(Ljava/lang/String;)V

    .line 762
    :cond_7
    sget-object v17, Lcom/julysystems/appx/AppXRenderRenderUtil;->imageResources:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 763
    .local v11, "imageId":Ljava/lang/Integer;
    const/4 v10, 0x0

    .line 764
    .local v10, "image":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_8

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 765
    sget-object v17, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v17 .. v18}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    :cond_8
    move-object v4, v10

    .line 766
    goto/16 :goto_0

    .line 767
    .end local v10    # "image":Landroid/graphics/Bitmap;
    .end local v11    # "imageId":Ljava/lang/Integer;
    .end local v13    # "imgURL":Ljava/lang/String;
    .end local v14    # "pos":I
    :catch_1
    move-exception v8

    .line 768
    .local v8, "e":Ljava/lang/Exception;
    const-string v17, "RenderBlock getImageResource.. Exception while trying to load local image."

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/julysystems/appx/AppXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 750
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v17

    goto :goto_2
.end method

.method private loadOptions(Lcom/julysystems/appx/AppXRenderOldRenderBlock;)Ljava/util/Hashtable;
    .locals 8
    .param p1, "actionAreaBlock"    # Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    .prologue
    .line 385
    iget-object v1, p1, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    .line 386
    .local v1, "ins":[Lcom/julysystems/appx/AppXRenderOldInstruction;
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 387
    .local v0, "hashtable":Ljava/util/Hashtable;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v6, v1

    if-lt v3, v6, :cond_0

    .line 399
    return-object v0

    .line 388
    :cond_0
    aget-object v2, v1, v3

    .line 389
    .local v2, "instr":Lcom/julysystems/appx/AppXRenderOldInstruction;
    invoke-virtual {v2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInstructionId()I

    move-result v6

    const/16 v7, 0x17

    if-ne v6, v7, :cond_1

    .line 391
    const/16 v6, 0x11

    :try_start_0
    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, "name":Ljava/lang/String;
    const/16 v6, 0x12

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 393
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 395
    :catch_0
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public executeDrawing(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V
    .locals 38
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "ctxRect"    # Landroid/graphics/RectF;
    .param p4, "renderField"    # Lcom/julysystems/appx/AppXRenderOldRenderField;

    .prologue
    .line 449
    new-instance v21, Landroid/graphics/RectF;

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 451
    .local v21, "defaultRect":Landroid/graphics/RectF;
    const/16 v30, 0x0

    .line 452
    .local v30, "lastRect":Landroid/graphics/RectF;
    const/16 v33, 0x0

    .line 454
    .local v33, "rounding":Lcom/julysystems/appx/AppXRenderXYDimension;
    const/16 v29, 0x0

    .local v29, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    array-length v5, v5

    move/from16 v0, v29

    if-lt v0, v5, :cond_0

    .line 556
    return-void

    .line 455
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    aget-object v6, v5, v29

    .line 456
    .local v6, "instr":Lcom/julysystems/appx/AppXRenderOldInstruction;
    invoke-virtual {v6}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInstructionId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 454
    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    .line 458
    :pswitch_1
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v10

    .line 459
    .local v10, "rectF":Landroid/graphics/RectF;
    const/16 v7, 0x8

    move-object/from16 v5, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    invoke-direct/range {v5 .. v11}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->getImageResource(Lcom/julysystems/appx/AppXRenderOldInstruction;ILcom/julysystems/appx/AppXRenderOldRenderField;Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 461
    .local v25, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v25, :cond_5

    .line 462
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    if-ne v5, v7, :cond_2

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    if-eq v5, v7, :cond_6

    .line 465
    :cond_2
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/4 v7, 0x0

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_3

    .line 466
    iget v5, v10, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    iput v5, v10, Landroid/graphics/RectF;->right:F

    .line 468
    :cond_3
    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/4 v7, 0x0

    cmpg-float v5, v5, v7

    if-gtz v5, :cond_4

    .line 469
    iget v5, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    iput v5, v10, Landroid/graphics/RectF;->bottom:F

    .line 470
    :cond_4
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v5, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 475
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionUrl:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 476
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->addActionRect(Landroid/graphics/RectF;)V

    goto :goto_1

    .line 472
    :cond_6
    iget v5, v10, Landroid/graphics/RectF;->left:F

    iget v7, v10, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v5, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 480
    .end local v10    # "rectF":Landroid/graphics/RectF;
    .end local v25    # "bitmap":Landroid/graphics/Bitmap;
    :pswitch_2
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInnerRenderBlock(I)Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    move-result-object v28

    .line 481
    .local v28, "innerBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->executeDrawing(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    goto/16 :goto_1

    .line 484
    .end local v28    # "innerBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    :pswitch_3
    const/16 v5, 0x10

    const/16 v7, 0x11

    const/16 v8, 0x12

    invoke-virtual {v6, v5, v7, v8}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getColor(III)I

    move-result v34

    .line 485
    .local v34, "startColor":I
    const/16 v5, 0x13

    const/16 v7, 0x14

    const/16 v8, 0x15

    invoke-virtual {v6, v5, v7, v8}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getColor(III)I

    move-result v26

    .line 486
    .local v26, "endColor":I
    new-instance v24, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v34, v7, v8

    const/4 v8, 0x1

    aput v26, v7, v8

    move-object/from16 v0, v24

    invoke-direct {v0, v5, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 487
    .local v24, "bg":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 488
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 491
    .end local v24    # "bg":Landroid/graphics/drawable/GradientDrawable;
    .end local v26    # "endColor":I
    .end local v34    # "startColor":I
    :pswitch_4
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v30

    .line 492
    new-instance v33, Lcom/julysystems/appx/AppXRenderXYDimension;

    .end local v33    # "rounding":Lcom/julysystems/appx/AppXRenderXYDimension;
    const/16 v5, 0x10

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getIntVal(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    const/16 v7, 0x11

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getIntVal(II)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    move-object/from16 v0, v33

    invoke-direct {v0, v5, v7}, Lcom/julysystems/appx/AppXRenderXYDimension;-><init>(II)V

    .line 493
    .restart local v33    # "rounding":Lcom/julysystems/appx/AppXRenderXYDimension;
    goto/16 :goto_1

    .line 495
    :pswitch_5
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p3

    .line 496
    const/16 v30, 0x0

    .line 497
    goto/16 :goto_1

    .line 499
    :pswitch_6
    const/4 v5, 0x1

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v21

    iget v8, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6, v5, v7, v8}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getCoordinate(IFF)F

    move-result v14

    .line 500
    .local v14, "x2":F
    const/4 v5, 0x2

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v21

    iget v8, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v5, v7, v8}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getCoordinate(IFF)F

    move-result v15

    .line 501
    .local v15, "y2":F
    const/16 v5, 0xb

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getIntVal(II)I

    move-result v36

    .line 502
    .local v36, "thickness":I
    move/from16 v0, v36

    int-to-float v5, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 503
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 504
    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v11, p1

    move-object/from16 v16, p2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 505
    const/16 v30, 0x0

    .line 506
    goto/16 :goto_1

    .line 508
    .end local v14    # "x2":F
    .end local v15    # "y2":F
    .end local v36    # "thickness":I
    :pswitch_7
    const/16 v5, 0x10

    const/16 v7, 0x11

    const/16 v8, 0x12

    invoke-virtual {v6, v5, v7, v8}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getColor(III)I

    move-result v35

    .line 509
    .local v35, "strokeColor":I
    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 510
    if-eqz v30, :cond_1

    .line 511
    move-object/from16 v0, v33

    iget v5, v0, Lcom/julysystems/appx/AppXRenderXYDimension;->width:I

    int-to-float v5, v5

    move-object/from16 v0, v33

    iget v7, v0, Lcom/julysystems/appx/AppXRenderXYDimension;->height:I

    int-to-float v7, v7

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v5, v7, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 514
    .end local v35    # "strokeColor":I
    :pswitch_8
    const/16 v5, 0x10

    const/16 v7, 0x11

    const/16 v8, 0x12

    invoke-virtual {v6, v5, v7, v8}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getColor(III)I

    move-result v27

    .line 515
    .local v27, "fillColor":I
    if-eqz v30, :cond_1

    .line 516
    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 517
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 518
    move-object/from16 v0, v33

    iget v5, v0, Lcom/julysystems/appx/AppXRenderXYDimension;->width:I

    int-to-float v5, v5

    move-object/from16 v0, v33

    iget v7, v0, Lcom/julysystems/appx/AppXRenderXYDimension;->height:I

    int-to-float v7, v7

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v5, v7, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .end local v27    # "fillColor":I
    :pswitch_9
    move-object/from16 v16, p0

    move-object/from16 v17, v6

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v22, p4

    .line 522
    invoke-direct/range {v16 .. v22}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->drawTable(Lcom/julysystems/appx/AppXRenderOldInstruction;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    goto/16 :goto_1

    .line 525
    :pswitch_a
    const/16 v5, 0x10

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 526
    .local v37, "url":Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionUrl:Ljava/lang/String;

    .line 527
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInnerRenderBlock(I)Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    move-result-object v23

    .line 528
    .local v23, "actionAreaBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    move-object/from16 v0, v37

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionUrl:Ljava/lang/String;

    .line 529
    move-object/from16 v0, v23

    iget-boolean v5, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->isSelected:Z

    if-eqz v5, :cond_7

    .line 530
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionRect:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    .line 531
    .local v32, "rect":Landroid/graphics/RectF;
    new-instance v31, Landroid/graphics/Paint;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Paint;-><init>()V

    .line 532
    .local v31, "p":Landroid/graphics/Paint;
    const v5, 0x151820

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 533
    const/16 v5, 0x80

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 534
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 535
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 537
    .end local v31    # "p":Landroid/graphics/Paint;
    .end local v32    # "rect":Landroid/graphics/RectF;
    :cond_7
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->executeDrawing(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    .line 538
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionUrl:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 541
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->renderSelectionButtonView:Lcom/julysystems/appx/AppXRenderRenderSelectionButton;

    if-nez v5, :cond_1

    .line 542
    new-instance v5, Lcom/julysystems/appx/AppXRenderRenderSelectionButton;

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/julysystems/appx/AppXRenderOldRenderField;->ctx:Landroid/content/Context;

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionRect:Landroid/graphics/RectF;

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionUrl:Ljava/lang/String;

    invoke-direct {v5, v7, v8, v9}, Lcom/julysystems/appx/AppXRenderRenderSelectionButton;-><init>(Landroid/content/Context;Landroid/graphics/RectF;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->renderSelectionButtonView:Lcom/julysystems/appx/AppXRenderRenderSelectionButton;

    .line 543
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->renderSelectionButtonView:Lcom/julysystems/appx/AppXRenderRenderSelectionButton;

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/julysystems/appx/AppXRenderOldRenderField;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .end local v23    # "actionAreaBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    .end local v37    # "url":Ljava/lang/String;
    :pswitch_b
    move-object/from16 v17, p0

    move-object/from16 v18, v6

    move-object/from16 v19, p1

    move-object/from16 v20, p3

    move-object/from16 v22, p4

    .line 550
    invoke-direct/range {v17 .. v22}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->drawString(Lcom/julysystems/appx/AppXRenderOldInstruction;Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    goto/16 :goto_1

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getFontResource(Lcom/julysystems/appx/AppXRenderOldInstruction;ILcom/julysystems/appx/AppXRenderOldRenderField;)Lcom/julysystems/appx/AppXRenderFont;
    .locals 4
    .param p1, "instr"    # Lcom/julysystems/appx/AppXRenderOldInstruction;
    .param p2, "attributeId"    # I
    .param p3, "renderField"    # Lcom/julysystems/appx/AppXRenderOldRenderField;

    .prologue
    .line 708
    invoke-virtual {p1, p2}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getAttribute(I)Lcom/julysystems/appx/AppXRenderOldAttribute;

    move-result-object v0

    .line 709
    .local v0, "attribute":Lcom/julysystems/appx/AppXRenderOldAttribute;
    if-eqz v0, :cond_0

    sget-object v3, Lcom/julysystems/appx/AppXRenderRenderUtil;->resource:Ljava/util/Vector;

    if-nez v3, :cond_1

    .line 710
    :cond_0
    sget-object v1, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->normalFont:Lcom/julysystems/appx/AppXRenderFont;

    .line 717
    :goto_0
    return-object v1

    .line 711
    :cond_1
    invoke-virtual {v0}, Lcom/julysystems/appx/AppXRenderOldAttribute;->getResourceID()I

    move-result v2

    .line 712
    .local v2, "resourceId":I
    sget-object v3, Lcom/julysystems/appx/AppXRenderRenderUtil;->resource:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gt v3, v2, :cond_2

    .line 713
    sget-object v1, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->normalFont:Lcom/julysystems/appx/AppXRenderFont;

    goto :goto_0

    .line 714
    :cond_2
    sget-object v3, Lcom/julysystems/appx/AppXRenderRenderUtil;->resource:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 715
    .local v1, "resource":Ljava/lang/Object;
    instance-of v3, v1, Lcom/julysystems/appx/AppXRenderFont;

    if-eqz v3, :cond_3

    .line 716
    check-cast v1, Lcom/julysystems/appx/AppXRenderFont;

    goto :goto_0

    .line 717
    :cond_3
    sget-object v1, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->normalFont:Lcom/julysystems/appx/AppXRenderFont;

    goto :goto_0
.end method

.method public getHeight()F
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->tabContLayout:Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->tabContLayout:Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;

    invoke-virtual {v1}, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->getHeight()I

    move-result v1

    int-to-float v0, v1

    .line 65
    .local v0, "newTabHeight":F
    iget v1, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->lastTabHeight:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 66
    iget v1, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->height:F

    iget v2, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->lastTabHeight:F

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->height:F

    .line 67
    iput v0, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->lastTabHeight:F

    .line 70
    .end local v0    # "newTabHeight":F
    :cond_0
    iget v1, p0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->height:F

    return v1
.end method

.method public initializeFields(Landroid/content/Context;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ctxRect"    # Landroid/graphics/RectF;
    .param p3, "renderField"    # Lcom/julysystems/appx/AppXRenderOldRenderField;

    .prologue
    .line 81
    new-instance v8, Landroid/graphics/RectF;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 82
    .local v8, "defaultRect":Landroid/graphics/RectF;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    array-length v4, v4

    if-lt v13, v4, :cond_0

    .line 165
    return-void

    .line 83
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->instructions:[Lcom/julysystems/appx/AppXRenderOldInstruction;

    aget-object v6, v4, v13

    .line 84
    .local v6, "instr":Lcom/julysystems/appx/AppXRenderOldInstruction;
    invoke-virtual {v6}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInstructionId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 162
    :cond_1
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->height:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->height:F

    .line 82
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 86
    :pswitch_1
    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v8}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    .line 87
    goto :goto_1

    :pswitch_2
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    .line 89
    invoke-direct/range {v4 .. v9}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->createTable(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderOldInstruction;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    goto :goto_1

    .line 93
    :pswitch_3
    new-instance v4, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInnerRenderBlock(I)Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/julysystems/appx/AppXRenderOldRenderField;->getPageData()Lcom/julysystems/appx/AppXPageData;

    move-result-object v7

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v5, v1, v7}, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;-><init>(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderOldRenderBlock;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXPageData;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->tabContLayout:Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;

    .line 94
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->tabContLayout:Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;

    invoke-virtual {v4}, Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;->getInitializedHeight()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->lastTabHeight:F

    .line 95
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->tabContLayout:Lcom/julysystems/appx/AppXRenderOldTabContainerLayout;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/julysystems/appx/AppXRenderOldRenderField;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 105
    :pswitch_4
    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual {v6, v4, v5}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 106
    .local v15, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionUrl:Ljava/lang/String;

    .line 107
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getInnerRenderBlock(I)Lcom/julysystems/appx/AppXRenderOldRenderBlock;

    move-result-object v10

    .line 108
    .local v10, "actionAreaBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    iput-object v15, v10, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionUrl:Ljava/lang/String;

    .line 110
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v10, v0, v1, v2}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->initializeFields(Landroid/content/Context;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    .line 111
    iget-boolean v4, v10, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->isSelected:Z

    goto :goto_1

    .line 118
    .end local v10    # "actionAreaBlock":Lcom/julysystems/appx/AppXRenderOldRenderBlock;
    .end local v15    # "url":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionUrl:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionUrl:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 120
    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v8}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->addActionRect(Landroid/graphics/RectF;)V

    goto/16 :goto_1

    .line 124
    :pswitch_6
    const/4 v4, 0x5

    const-string v5, ""

    invoke-virtual {v6, v4, v5}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 125
    .local v12, "buttonText":Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->left:F

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v5, v7}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getCoordinate(IFF)F

    move-result v4

    float-to-int v0, v4

    move/from16 v16, v0

    .line 126
    .local v16, "x":I
    const/4 v4, 0x2

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->top:F

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v5, v7}, Lcom/julysystems/appx/AppXRenderOldInstruction;->getCoordinate(IFF)F

    move-result v4

    float-to-int v0, v4

    move/from16 v17, v0

    .line 127
    .local v17, "y":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->actionUrl:Ljava/lang/String;

    .line 128
    .local v14, "link":Ljava/lang/String;
    new-instance v11, Landroid/widget/Button;

    sget-object v4, Lcom/julysystems/appx/AppXUtils;->applicationContext:Landroid/content/Context;

    invoke-direct {v11, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 129
    .local v11, "button":Landroid/widget/Button;
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v5, 0x3c

    const/16 v7, 0x14

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v4, v5, v7, v0, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v11, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-static {}, Lcom/julysystems/appx/AppXUtils;->getRoundedRect()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v11, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 133
    new-instance v4, Lcom/julysystems/appx/AppXRenderOldRenderBlock$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Lcom/julysystems/appx/AppXRenderOldRenderBlock$1;-><init>(Lcom/julysystems/appx/AppXRenderOldRenderBlock;Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/julysystems/appx/AppXRenderOldRenderField;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 142
    .end local v11    # "button":Landroid/widget/Button;
    .end local v12    # "buttonText":Ljava/lang/String;
    .end local v14    # "link":Ljava/lang/String;
    .end local v16    # "x":I
    .end local v17    # "y":I
    :pswitch_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->createTextField(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderOldInstruction;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    goto/16 :goto_1

    .line 150
    :pswitch_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->createSelectBox(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderOldInstruction;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    goto/16 :goto_1

    .line 153
    :pswitch_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->createSwitch(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderOldInstruction;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    goto/16 :goto_1

    .line 156
    :pswitch_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/julysystems/appx/AppXRenderOldRenderBlock;->createSubmitButton(Landroid/content/Context;Lcom/julysystems/appx/AppXRenderOldInstruction;Landroid/graphics/RectF;Lcom/julysystems/appx/AppXRenderOldRenderField;)V

    goto/16 :goto_1

    .line 84
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

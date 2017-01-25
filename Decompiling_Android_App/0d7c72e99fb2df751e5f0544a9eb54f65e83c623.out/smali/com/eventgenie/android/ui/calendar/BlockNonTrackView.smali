.class public Lcom/eventgenie/android/ui/calendar/BlockNonTrackView;
.super Lcom/eventgenie/android/ui/calendar/BlockView;
.source "BlockNonTrackView.java"


# instance fields
.field private final mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;JJZZZILjava/lang/String;IZ)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blockId"    # J
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "startTime"    # J
    .param p7, "endTime"    # J
    .param p9, "containsFavourites"    # Z
    .param p10, "containsNotes"    # Z
    .param p11, "showThreeDots"    # Z
    .param p12, "column"    # I
    .param p13, "colour"    # Ljava/lang/String;
    .param p14, "type"    # I
    .param p15, "isWaitlisted"    # Z

    .prologue
    .line 63
    sget-object v15, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->OTHER:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    const/16 v18, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v16, p12

    move-object/from16 v17, p13

    move/from16 v19, p15

    invoke-direct/range {v3 .. v19}, Lcom/eventgenie/android/ui/calendar/BlockView;-><init>(Landroid/content/Context;JLjava/lang/String;JJZZZLcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;ILjava/lang/String;Ljava/lang/Integer;Z)V

    .line 64
    move/from16 v0, p14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/eventgenie/android/ui/calendar/BlockNonTrackView;->mType:I

    .line 65
    invoke-virtual/range {p0 .. p1}, Lcom/eventgenie/android/ui/calendar/BlockNonTrackView;->setLookAndFeel(Landroid/content/Context;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected setLookAndFeel(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 72
    const/4 v3, -0x1

    .line 73
    .local v3, "textColor":I
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/ui/calendar/BlockNonTrackView;->setTextColor(I)V

    .line 74
    const/16 v5, 0x11

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/ui/calendar/BlockNonTrackView;->setGravity(I)V

    .line 75
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/ui/calendar/BlockNonTrackView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/ui/calendar/BlockNonTrackView;->setTextSize(F)V

    .line 78
    sget v2, Lcom/eventgenie/android/R$drawable;->btn_block_register:I

    .line 79
    .local v2, "res":I
    iget v5, p0, Lcom/eventgenie/android/ui/calendar/BlockNonTrackView;->mType:I

    packed-switch v5, :pswitch_data_0

    .line 95
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 96
    .local v1, "buttonDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 99
    .local v4, "tileMe":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 100
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 102
    invoke-static {p0, v4}, Lcom/eventgenie/android/ui/help/UIUtils;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {p0, v6}, Lcom/eventgenie/android/ui/calendar/BlockNonTrackView;->setFocusable(Z)V

    .line 105
    invoke-virtual {p0, v6}, Lcom/eventgenie/android/ui/calendar/BlockNonTrackView;->setEnabled(Z)V

    .line 107
    return-void

    .line 81
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "buttonDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v4    # "tileMe":Landroid/graphics/drawable/BitmapDrawable;
    :pswitch_0
    sget v2, Lcom/eventgenie/android/R$drawable;->btn_block_register:I

    .line 82
    goto :goto_0

    .line 84
    :pswitch_1
    sget v2, Lcom/eventgenie/android/R$drawable;->btn_block_coffee:I

    .line 85
    goto :goto_0

    .line 87
    :pswitch_2
    sget v2, Lcom/eventgenie/android/R$drawable;->btn_block_reception:I

    .line 88
    goto :goto_0

    .line 90
    :pswitch_3
    sget v2, Lcom/eventgenie/android/R$drawable;->btn_block_lunch:I

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

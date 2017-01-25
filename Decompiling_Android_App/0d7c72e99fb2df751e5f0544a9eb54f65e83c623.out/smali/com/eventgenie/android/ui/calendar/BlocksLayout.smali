.class public Lcom/eventgenie/android/ui/calendar/BlocksLayout;
.super Landroid/view/ViewGroup;
.source "BlocksLayout.java"


# instance fields
.field protected mColumns:I

.field protected mNowView:Landroid/view/View;

.field protected mRulerView:Lcom/eventgenie/android/ui/calendar/TimeRulerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->mColumns:I

    .line 59
    return-void
.end method


# virtual methods
.method public addBlock(Lcom/eventgenie/android/ui/calendar/BlockView;)V
    .locals 1
    .param p1, "blockView"    # Lcom/eventgenie/android/ui/calendar/BlockView;

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/eventgenie/android/ui/calendar/BlockView;->setDrawingCacheEnabled(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->addView(Landroid/view/View;I)V

    .line 91
    return-void
.end method

.method protected ensureChildren()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 62
    sget v0, Lcom/eventgenie/android/R$id;->blocks_ruler:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/calendar/TimeRulerView;

    iput-object v0, p0, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->mRulerView:Lcom/eventgenie/android/ui/calendar/TimeRulerView;

    .line 63
    iget-object v0, p0, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->mRulerView:Lcom/eventgenie/android/ui/calendar/TimeRulerView;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must include a R.id.blocks_ruler view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->mRulerView:Lcom/eventgenie/android/ui/calendar/TimeRulerView;

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->setDrawingCacheEnabled(Z)V

    .line 69
    sget v0, Lcom/eventgenie/android/R$id;->blocks_now:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->mNowView:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->mNowView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must include a R.id.blocks_now view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->mNowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 74
    return-void
.end method

.method protected layoutNowView()V
    .locals 14

    .prologue
    .line 192
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getDisplaySmallestWidth()I

    move-result v9

    .line 194
    .local v9, "screenWidth":I
    iget-object v3, p0, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->mNowView:Landroid/view/View;

    .line 196
    .local v3, "nowView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v11

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/genie_connect/android/db/config/AppConfig;->getTimeZoneOfEvent()Ljava/util/TimeZone;

    move-result-object v1

    .line 199
    .local v1, "eventTimeZone":Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 200
    .local v6, "nowMillis":J
    invoke-virtual {v1, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v11

    int-to-long v12, v11

    add-long v4, v6, v12

    .line 202
    .local v4, "now":J
    iget-object v11, p0, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->mRulerView:Lcom/eventgenie/android/ui/calendar/TimeRulerView;

    const-string v12, ""

    invoke-virtual {v11, v4, v5, v12}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->getTimeVerticalOffset(JLjava/lang/String;)I

    move-result v10

    .line 203
    .local v10, "top":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int v0, v10, v11

    .line 204
    .local v0, "bottom":I
    const/4 v2, 0x0

    .line 205
    .local v2, "left":I
    move v8, v9

    .line 207
    .local v8, "right":I
    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 208
    const/4 v11, 0x0

    invoke-virtual {v3, v11, v10, v8, v0}, Landroid/view/View;->layout(IIII)V

    .line 209
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->ensureChildren()V

    .line 112
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->mRulerView:Lcom/eventgenie/android/ui/calendar/TimeRulerView;

    .line 113
    .local v15, "rulerView":Lcom/eventgenie/android/ui/calendar/TimeRulerView;
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getDisplaySmallestWidth()I

    move-result v16

    .line 115
    .local v16, "screenWidth":I
    move/from16 v19, v16

    .line 116
    .local v19, "viewWidth":I
    invoke-virtual {v15}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->getHeaderWidth()I

    move-result v9

    .line 118
    .local v9, "headerWidth":I
    const/16 v20, 0x2e

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v10

    .line 119
    .local v10, "hourRulerView":I
    sub-int v20, v19, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->mColumns:I

    move/from16 v21, v0

    div-int v7, v20, v21

    .line 121
    .local v7, "columnWidth":I
    sub-int v17, v16, v10

    .line 130
    .local v17, "spannedColumnWidth":I
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->getHeight()I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    move/from16 v3, v22

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->layout(IIII)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->getChildCount()I

    move-result v8

    .line 133
    .local v8, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v8, :cond_6

    .line 134
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 136
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 133
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 138
    :cond_1
    instance-of v0, v6, Lcom/eventgenie/android/ui/calendar/BlockHeaderView;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object v4, v6

    .line 139
    check-cast v4, Lcom/eventgenie/android/ui/calendar/BlockView;

    .line 140
    .local v4, "blockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    const/16 v18, 0x0

    .line 141
    .local v18, "top":I
    const/16 v20, 0x28

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v5

    .line 142
    .local v5, "bottom":I
    invoke-virtual {v4}, Lcom/eventgenie/android/ui/calendar/BlockView;->getColumn()I

    move-result v20

    mul-int v20, v20, v7

    add-int v12, v9, v20

    .line 143
    .local v12, "left":I
    add-int v14, v12, v7

    .line 144
    .local v14, "right":I
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v12, v0, v14, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 147
    .end local v4    # "blockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    .end local v5    # "bottom":I
    .end local v12    # "left":I
    .end local v14    # "right":I
    .end local v18    # "top":I
    :cond_2
    instance-of v0, v6, Lcom/eventgenie/android/ui/calendar/BlockNonTrackView;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object v4, v6

    .line 148
    check-cast v4, Lcom/eventgenie/android/ui/calendar/BlockView;

    .line 149
    .restart local v4    # "blockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    invoke-virtual {v4}, Lcom/eventgenie/android/ui/calendar/BlockView;->getStartTime()J

    move-result-wide v20

    const-string v22, ""

    move-wide/from16 v0, v20

    move-object/from16 v2, v22

    invoke-virtual {v15, v0, v1, v2}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->getTimeVerticalOffset(JLjava/lang/String;)I

    move-result v18

    .line 150
    .restart local v18    # "top":I
    invoke-virtual {v4}, Lcom/eventgenie/android/ui/calendar/BlockView;->getEndTime()J

    move-result-wide v20

    const-string v22, ""

    move-wide/from16 v0, v20

    move-object/from16 v2, v22

    invoke-virtual {v15, v0, v1, v2}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->getTimeVerticalOffset(JLjava/lang/String;)I

    move-result v5

    .line 151
    .restart local v5    # "bottom":I
    invoke-virtual {v4}, Lcom/eventgenie/android/ui/calendar/BlockView;->getColumn()I

    move-result v20

    mul-int v20, v20, v7

    add-int v12, v9, v20

    .line 152
    .restart local v12    # "left":I
    add-int v14, v12, v7

    .line 154
    .restart local v14    # "right":I
    invoke-virtual {v4}, Lcom/eventgenie/android/ui/calendar/BlockView;->getColumn()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 155
    move v12, v9

    .line 156
    add-int v14, v12, v17

    .line 159
    :cond_3
    const/16 v20, 0x3

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v13

    .line 160
    .local v13, "offset":I
    sub-int v20, v5, v13

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v6, v12, v0, v14, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 163
    .end local v4    # "blockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    .end local v5    # "bottom":I
    .end local v12    # "left":I
    .end local v13    # "offset":I
    .end local v14    # "right":I
    .end local v18    # "top":I
    :cond_4
    instance-of v0, v6, Lcom/eventgenie/android/ui/calendar/BlockView;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object v4, v6

    .line 164
    check-cast v4, Lcom/eventgenie/android/ui/calendar/BlockView;

    .line 165
    .restart local v4    # "blockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    invoke-virtual {v4}, Lcom/eventgenie/android/ui/calendar/BlockView;->getStartTime()J

    move-result-wide v20

    invoke-virtual {v4}, Lcom/eventgenie/android/ui/calendar/BlockView;->getTitle()Ljava/lang/String;

    move-result-object v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v22

    invoke-virtual {v15, v0, v1, v2}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->getTimeVerticalOffset(JLjava/lang/String;)I

    move-result v18

    .line 166
    .restart local v18    # "top":I
    invoke-virtual {v4}, Lcom/eventgenie/android/ui/calendar/BlockView;->getEndTime()J

    move-result-wide v20

    invoke-virtual {v4}, Lcom/eventgenie/android/ui/calendar/BlockView;->getTitle()Ljava/lang/String;

    move-result-object v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v22

    invoke-virtual {v15, v0, v1, v2}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->getTimeVerticalOffset(JLjava/lang/String;)I

    move-result v5

    .line 167
    .restart local v5    # "bottom":I
    invoke-virtual {v4}, Lcom/eventgenie/android/ui/calendar/BlockView;->getColumn()I

    move-result v20

    mul-int v20, v20, v7

    add-int v12, v9, v20

    .line 168
    .restart local v12    # "left":I
    add-int v14, v12, v7

    .line 170
    .restart local v14    # "right":I
    invoke-virtual {v4}, Lcom/eventgenie/android/ui/calendar/BlockView;->getColumn()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 171
    move v12, v9

    .line 172
    add-int v14, v12, v17

    .line 183
    :cond_5
    move/from16 v0, v18

    invoke-virtual {v6, v12, v0, v14, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 187
    .end local v4    # "blockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    .end local v5    # "bottom":I
    .end local v6    # "child":Landroid/view/View;
    .end local v12    # "left":I
    .end local v14    # "right":I
    .end local v18    # "top":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->layoutNowView()V

    .line 189
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->ensureChildren()V

    .line 97
    iget-object v2, p0, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->mRulerView:Lcom/eventgenie/android/ui/calendar/TimeRulerView;

    invoke-virtual {v2, p1, p2}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->measure(II)V

    .line 98
    iget-object v2, p0, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->mNowView:Landroid/view/View;

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    .line 100
    iget-object v2, p0, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->mRulerView:Lcom/eventgenie/android/ui/calendar/TimeRulerView;

    invoke-virtual {v2}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->getMeasuredWidth()I

    move-result v1

    .line 101
    .local v1, "width":I
    iget-object v2, p0, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->mRulerView:Lcom/eventgenie/android/ui/calendar/TimeRulerView;

    invoke-virtual {v2}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->getMeasuredHeight()I

    move-result v0

    .line 103
    .local v0, "height":I
    invoke-static {v1, p1}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->resolveSize(II)I

    move-result v2

    invoke-static {v0, p2}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->setMeasuredDimension(II)V

    .line 106
    return-void
.end method

.method public removeAllBlocks()V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->ensureChildren()V

    .line 82
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->removeAllViews()V

    .line 83
    iget-object v0, p0, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->mRulerView:Lcom/eventgenie/android/ui/calendar/TimeRulerView;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->addView(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->mNowView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->addView(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method public setColumns(I)V
    .locals 0
    .param p1, "columns"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->mColumns:I

    .line 213
    return-void
.end method

.class public Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;
.super Lcom/eventgenie/android/ui/calendar/BlocksLayout;
.source "FluidBlocksLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method private static getMaxEndTime(Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/ui/calendar/BlockView;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "blockViewRow":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/ui/calendar/BlockView;>;"
    const-wide/16 v2, 0x0

    .line 131
    .local v2, "max":J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/calendar/BlockView;

    .line 132
    .local v0, "blockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    invoke-virtual {v0}, Lcom/eventgenie/android/ui/calendar/BlockView;->getEndTime()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/eventgenie/android/ui/calendar/BlockView;->getEndTime()J

    move-result-wide v2

    goto :goto_0

    .line 136
    .end local v0    # "blockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    :cond_1
    return-wide v2
.end method

.method private static getMinStartTime(Ljava/util/ArrayList;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/eventgenie/android/ui/calendar/BlockView;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "blockViewRow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/ui/calendar/BlockView;>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 142
    .local v2, "min":J
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/calendar/BlockView;

    .line 143
    .local v0, "blockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    invoke-virtual {v0}, Lcom/eventgenie/android/ui/calendar/BlockView;->getStartTime()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/eventgenie/android/ui/calendar/BlockView;->getStartTime()J

    move-result-wide v2

    goto :goto_0

    .line 147
    .end local v0    # "blockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    :cond_1
    return-wide v2
.end method

.method private layoutBlock(Lcom/eventgenie/android/ui/calendar/BlockView;IIII)V
    .locals 9
    .param p1, "blockView"    # Lcom/eventgenie/android/ui/calendar/BlockView;
    .param p2, "columns"    # I
    .param p3, "index"    # I
    .param p4, "headerWidth"    # I
    .param p5, "spannedColumnWidth"    # I

    .prologue
    .line 58
    div-int v1, p5, p2

    .line 60
    .local v1, "columnWidth":I
    iget-object v5, p0, Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;->mRulerView:Lcom/eventgenie/android/ui/calendar/TimeRulerView;

    invoke-virtual {p1}, Lcom/eventgenie/android/ui/calendar/BlockView;->getStartTime()J

    move-result-wide v6

    const-string v8, ""

    invoke-virtual {v5, v6, v7, v8}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->getTimeVerticalOffset(JLjava/lang/String;)I

    move-result v4

    .line 61
    .local v4, "top":I
    iget-object v5, p0, Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;->mRulerView:Lcom/eventgenie/android/ui/calendar/TimeRulerView;

    invoke-virtual {p1}, Lcom/eventgenie/android/ui/calendar/BlockView;->getEndTime()J

    move-result-wide v6

    const-string v8, ""

    invoke-virtual {v5, v6, v7, v8}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->getTimeVerticalOffset(JLjava/lang/String;)I

    move-result v0

    .line 63
    .local v0, "bottom":I
    mul-int v5, p3, v1

    add-int v2, p4, v5

    .line 64
    .local v2, "left":I
    add-int v3, v2, v1

    .line 66
    .local v3, "right":I
    invoke-virtual {p1, v2, v4, v3, v0}, Lcom/eventgenie/android/ui/calendar/BlockView;->layout(IIII)V

    .line 67
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;->ensureChildren()V

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;->mRulerView:Lcom/eventgenie/android/ui/calendar/TimeRulerView;

    move-object/from16 v20, v0

    .line 75
    .local v20, "rulerView":Lcom/eventgenie/android/ui/calendar/TimeRulerView;
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getDeviceInformation()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getDisplaySmallestWidth()I

    move-result v21

    .line 76
    .local v21, "screenWidth":I
    move/from16 v22, v21

    .line 78
    .local v22, "viewWidth":I
    invoke-virtual/range {v20 .. v20}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->getHeaderWidth()I

    move-result v6

    .line 79
    .local v6, "headerWidth":I
    const/16 v2, 0x2e

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v17

    .line 80
    .local v17, "hourRulerView":I
    sub-int v7, v22, v17

    .line 87
    .local v7, "columnWith":I
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;->getHeight()I

    move-result v5

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v2, v4, v1, v5}, Lcom/eventgenie/android/ui/calendar/TimeRulerView;->layout(IIII)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;->getChildCount()I

    move-result v16

    .line 90
    .local v16, "count":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v14, "blockViewRow":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/ui/calendar/BlockView;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    .line 93
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 95
    .local v15, "child":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    .line 92
    :cond_0
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 98
    :cond_1
    instance-of v2, v15, Lcom/eventgenie/android/ui/calendar/BlockView;

    if-eqz v2, :cond_0

    move-object v3, v15

    .line 99
    check-cast v3, Lcom/eventgenie/android/ui/calendar/BlockView;

    .line 101
    .local v3, "blockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3}, Lcom/eventgenie/android/ui/calendar/BlockView;->getStartTime()J

    move-result-wide v4

    invoke-static {v14}, Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;->getMaxEndTime(Ljava/util/List;)J

    move-result-wide v12

    cmp-long v2, v4, v12

    if-ltz v2, :cond_2

    .line 105
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "blockViewRow":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/ui/calendar/BlockView;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .restart local v14    # "blockViewRow":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/ui/calendar/BlockView;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;->layoutBlock(Lcom/eventgenie/android/ui/calendar/BlockView;IIII)V

    .line 121
    :goto_2
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    :cond_2
    const/4 v11, 0x0

    .line 111
    .local v11, "k":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/eventgenie/android/ui/calendar/BlockView;

    .line 112
    .local v9, "colidingBlockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v10, v2, 0x1

    move-object/from16 v8, p0

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;->layoutBlock(Lcom/eventgenie/android/ui/calendar/BlockView;IIII)V

    .line 114
    add-int/lit8 v11, v11, 0x1

    .line 115
    goto :goto_3

    .line 116
    .end local v9    # "colidingBlockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    :cond_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    move-object/from16 v2, p0

    move v5, v11

    invoke-direct/range {v2 .. v7}, Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;->layoutBlock(Lcom/eventgenie/android/ui/calendar/BlockView;IIII)V

    goto :goto_2

    .line 126
    .end local v3    # "blockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    .end local v11    # "k":I
    .end local v15    # "child":Landroid/view/View;
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;->layoutNowView()V

    .line 127
    return-void
.end method

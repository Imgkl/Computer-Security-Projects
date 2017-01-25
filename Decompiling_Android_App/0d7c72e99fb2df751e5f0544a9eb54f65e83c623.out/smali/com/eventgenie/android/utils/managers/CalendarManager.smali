.class public Lcom/eventgenie/android/utils/managers/CalendarManager;
.super Ljava/lang/Object;
.source "CalendarManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/managers/CalendarManager$1;,
        Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeListener;,
        Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderSync;,
        Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderListener;,
        Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;
    }
.end annotation


# static fields
.field private static final MAX_COLUMNS:I = 0x3

.field public static final NO_TYPE:I


# instance fields
.field private final mColumns:I

.field private final mContext:Landroid/content/Context;

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/ui/calendar/CalendarPanelView;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftSwipeIndicator:Landroid/view/View;

.field private mMarginScrollView:Lcom/eventgenie/android/ui/ObservableScrollView;

.field private mPageControl:Lcom/eventgenie/android/ui/PageControl;

.field private mPanelCount:I

.field private mPanels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/ui/calendar/CalendarPanelView;",
            ">;"
        }
    .end annotation
.end field

.field private mRightSwipeIndicator:Landroid/view/View;

.field private final mScrollSync:Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;

.field private final mSwipeHeaderSync:Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderSync;

.field private mSwipeView:Lcom/eventgenie/android/ui/SwipeView;

.field private mSwipeViewHeader:Lcom/eventgenie/android/ui/SwipeView;

.field private final mTrackCount:I

.field private mTrackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/eventgenie/android/container/Track;",
            ">;"
        }
    .end annotation
.end field

.field private mTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dayId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v1, Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;

    invoke-direct {v1, p0, v4}, Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;-><init>(Lcom/eventgenie/android/utils/managers/CalendarManager;Lcom/eventgenie/android/utils/managers/CalendarManager$1;)V

    iput-object v1, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mScrollSync:Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;

    .line 63
    new-instance v1, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderSync;

    invoke-direct {v1, p0, v4}, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderSync;-><init>(Lcom/eventgenie/android/utils/managers/CalendarManager;Lcom/eventgenie/android/utils/managers/CalendarManager$1;)V

    iput-object v1, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mSwipeHeaderSync:Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderSync;

    .line 130
    iput-object p1, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mContext:Landroid/content/Context;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanels:Ljava/util/List;

    .line 133
    iput v2, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mTrackCount:I

    .line 134
    const/4 v1, 0x3

    iput v1, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mColumns:I

    .line 135
    iput v3, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanelCount:I

    .line 137
    new-instance v0, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;

    invoke-direct {v0, p1, v2, v3}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;-><init>(Landroid/content/Context;ZZ)V

    .line 138
    .local v0, "cpv":Lcom/eventgenie/android/ui/calendar/CalendarPanelView;
    invoke-virtual {v0}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->getBlocksView()Lcom/eventgenie/android/ui/calendar/BlocksLayout;

    move-result-object v1

    iget v2, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mColumns:I

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->setColumns(I)V

    .line 139
    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "dayId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/Track;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/Track;>;"
    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v5, Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;

    invoke-direct {v5, p0, v6}, Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;-><init>(Lcom/eventgenie/android/utils/managers/CalendarManager;Lcom/eventgenie/android/utils/managers/CalendarManager$1;)V

    iput-object v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mScrollSync:Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;

    .line 63
    new-instance v5, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderSync;

    invoke-direct {v5, p0, v6}, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderSync;-><init>(Lcom/eventgenie/android/utils/managers/CalendarManager;Lcom/eventgenie/android/utils/managers/CalendarManager$1;)V

    iput-object v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mSwipeHeaderSync:Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderSync;

    .line 85
    iput-object p1, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mTracks:Ljava/util/List;

    .line 88
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mTrackMap:Ljava/util/Map;

    .line 90
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eventgenie/android/container/Track;

    .line 91
    .local v4, "track":Lcom/eventgenie/android/container/Track;
    iget-object v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mTrackMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/eventgenie/android/container/Track;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    .end local v4    # "track":Lcom/eventgenie/android/container/Track;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanels:Ljava/util/List;

    .line 95
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mHeaders:Ljava/util/List;

    .line 97
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mTrackCount:I

    .line 99
    iget v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mTrackCount:I

    if-ge v5, v8, :cond_2

    .line 100
    iget v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mTrackCount:I

    iput v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mColumns:I

    .line 106
    :goto_1
    iget v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mColumns:I

    if-lez v5, :cond_3

    .line 107
    iget v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mTrackCount:I

    iget v6, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mColumns:I

    div-int/2addr v5, v6

    iput v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanelCount:I

    .line 108
    iget v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mTrackCount:I

    iget v6, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mColumns:I

    rem-int/2addr v5, v6

    if-lez v5, :cond_1

    .line 109
    iget v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanelCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanelCount:I

    .line 118
    :cond_1
    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanelCount:I

    if-ge v2, v5, :cond_4

    .line 119
    new-instance v1, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;

    invoke-direct {v1, p1}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;-><init>(Landroid/content/Context;)V

    .line 120
    .local v1, "cpv":Lcom/eventgenie/android/ui/calendar/CalendarPanelView;
    invoke-virtual {v1}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->getBlocksView()Lcom/eventgenie/android/ui/calendar/BlocksLayout;

    move-result-object v5

    iget v6, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mColumns:I

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->setColumns(I)V

    .line 121
    iget-object v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanels:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;

    const/4 v5, 0x1

    invoke-direct {v0, p1, v5, v7}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;-><init>(Landroid/content/Context;ZZ)V

    .line 124
    .local v0, "cph":Lcom/eventgenie/android/ui/calendar/CalendarPanelView;
    invoke-virtual {v0}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->getBlocksView()Lcom/eventgenie/android/ui/calendar/BlocksLayout;

    move-result-object v5

    iget v6, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mColumns:I

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->setColumns(I)V

    .line 125
    iget-object v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mHeaders:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 102
    .end local v0    # "cph":Lcom/eventgenie/android/ui/calendar/CalendarPanelView;
    .end local v1    # "cpv":Lcom/eventgenie/android/ui/calendar/CalendarPanelView;
    .end local v2    # "i":I
    :cond_2
    iput v8, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mColumns:I

    goto :goto_1

    .line 112
    :cond_3
    iput v7, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanelCount:I

    goto :goto_2

    .line 127
    .restart local v2    # "i":I
    :cond_4
    return-void
.end method

.method static synthetic access$1000(Lcom/eventgenie/android/utils/managers/CalendarManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/managers/CalendarManager;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/managers/CalendarManager;->updateIndicators(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/eventgenie/android/utils/managers/CalendarManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/managers/CalendarManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanels:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/utils/managers/CalendarManager;)Lcom/eventgenie/android/ui/ObservableScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/managers/CalendarManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mMarginScrollView:Lcom/eventgenie/android/ui/ObservableScrollView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/eventgenie/android/utils/managers/CalendarManager;)Lcom/eventgenie/android/ui/SwipeView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/managers/CalendarManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mSwipeView:Lcom/eventgenie/android/ui/SwipeView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/eventgenie/android/utils/managers/CalendarManager;)Lcom/eventgenie/android/ui/PageControl;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/managers/CalendarManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPageControl:Lcom/eventgenie/android/ui/PageControl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/eventgenie/android/utils/managers/CalendarManager;)Lcom/eventgenie/android/ui/SwipeView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/managers/CalendarManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mSwipeViewHeader:Lcom/eventgenie/android/ui/SwipeView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/eventgenie/android/utils/managers/CalendarManager;)Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/utils/managers/CalendarManager;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mScrollSync:Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;

    return-object v0
.end method

.method private addHeaderBlock(Lcom/eventgenie/android/container/Track;)V
    .locals 15
    .param p1, "track"    # Lcom/eventgenie/android/container/Track;

    .prologue
    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/eventgenie/android/container/Track;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/utils/managers/CalendarManager;->getColumnForTrack(Ljava/lang/String;)I

    move-result v13

    .line 144
    .local v13, "col":I
    new-instance v1, Lcom/eventgenie/android/ui/calendar/BlockHeaderView;

    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mContext:Landroid/content/Context;

    const-wide/16 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/eventgenie/android/container/Track;->getName()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/eventgenie/android/container/Track;->getColour()Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v1 .. v14}, Lcom/eventgenie/android/ui/calendar/BlockHeaderView;-><init>(Landroid/content/Context;JLjava/lang/String;JJZZZILjava/lang/String;)V

    .line 155
    .local v1, "blockView":Lcom/eventgenie/android/ui/calendar/BlockHeaderView;
    invoke-virtual/range {p1 .. p1}, Lcom/eventgenie/android/container/Track;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/eventgenie/android/utils/managers/CalendarManager;->getLayoutForTrack(Ljava/lang/String;Z)Lcom/eventgenie/android/ui/calendar/BlocksLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->addBlock(Lcom/eventgenie/android/ui/calendar/BlockView;)V

    .line 156
    return-void
.end method

.method private getColumnForTrack(Ljava/lang/String;)I
    .locals 6
    .param p1, "trackName"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mTrackMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eventgenie/android/container/Track;

    .line 252
    .local v4, "track":Lcom/eventgenie/android/container/Track;
    iget-object v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mTracks:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 254
    .local v3, "order":I
    const/4 v0, 0x0

    .line 255
    .local v0, "column":I
    const/4 v2, 0x0

    .line 256
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 257
    iget v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mColumns:I

    add-int/lit8 v5, v5, -0x1

    if-lt v2, v5, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 259
    const/4 v2, 0x0

    .line 256
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    :cond_1
    return v0
.end method

.method private getLayoutForTrack(Ljava/lang/String;Z)Lcom/eventgenie/android/ui/calendar/BlocksLayout;
    .locals 7
    .param p1, "trackName"    # Ljava/lang/String;
    .param p2, "isHeader"    # Z

    .prologue
    .line 270
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mTrackMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eventgenie/android/container/Track;

    .line 271
    .local v4, "track":Lcom/eventgenie/android/container/Track;
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mTracks:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 273
    .local v2, "order":I
    const/4 v3, 0x0

    .line 274
    .local v3, "panelIndex":I
    const/4 v1, 0x0

    .line 275
    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 276
    iget v6, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mColumns:I

    add-int/lit8 v6, v6, -0x1

    if-lt v1, v6, :cond_0

    .line 277
    add-int/lit8 v3, v3, 0x1

    .line 278
    const/4 v1, 0x0

    .line 275
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 283
    :cond_1
    if-eqz p2, :cond_2

    iget-object v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mHeaders:Ljava/util/List;

    .line 284
    .local v5, "views":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/ui/calendar/CalendarPanelView;>;"
    :goto_2
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;

    invoke-virtual {v6}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->getBlocksView()Lcom/eventgenie/android/ui/calendar/BlocksLayout;

    move-result-object v6

    return-object v6

    .line 283
    .end local v5    # "views":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/ui/calendar/CalendarPanelView;>;"
    :cond_2
    iget-object v5, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanels:Ljava/util/List;

    goto :goto_2
.end method

.method private updateIndicators(I)V
    .locals 3
    .param p1, "newPage"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 313
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mRightSwipeIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mLeftSwipeIndicator:Landroid/view/View;

    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanelCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mRightSwipeIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    :cond_2
    iget v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanelCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mRightSwipeIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 321
    :cond_3
    if-lez p1, :cond_4

    .line 322
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mLeftSwipeIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :cond_4
    if-nez p1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mLeftSwipeIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addHeaderBlocks()V
    .locals 3

    .prologue
    .line 159
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/container/Track;

    .line 160
    .local v1, "track":Lcom/eventgenie/android/container/Track;
    invoke-direct {p0, v1}, Lcom/eventgenie/android/utils/managers/CalendarManager;->addHeaderBlock(Lcom/eventgenie/android/container/Track;)V

    goto :goto_0

    .line 162
    .end local v1    # "track":Lcom/eventgenie/android/container/Track;
    :cond_0
    return-void
.end method

.method public addMyAgendaSessionBlock(Landroid/content/Context;JLjava/lang/String;JJLjava/lang/String;Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;ZZLjava/lang/Integer;Z)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # J
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "start"    # J
    .param p7, "end"    # J
    .param p9, "colour"    # Ljava/lang/String;
    .param p10, "itemType"    # Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
    .param p11, "hasNote"    # Z
    .param p12, "showThreeDots"    # Z
    .param p13, "status"    # Ljava/lang/Integer;
    .param p14, "isWaitlisted"    # Z

    .prologue
    .line 165
    sget-object v4, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->MEETING:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    move-object/from16 v0, p10

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->ADHOC:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    move-object/from16 v0, p10

    if-eq v0, v4, :cond_0

    const/4 v12, 0x1

    .line 167
    .local v12, "isFavourite":Z
    :goto_0
    new-instance v3, Lcom/eventgenie/android/ui/calendar/BlockView;

    const/16 v16, 0x0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p10

    move-object/from16 v17, p9

    move-object/from16 v18, p13

    move/from16 v19, p14

    invoke-direct/range {v3 .. v19}, Lcom/eventgenie/android/ui/calendar/BlockView;-><init>(Landroid/content/Context;JLjava/lang/String;JJZZZLcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;ILjava/lang/String;Ljava/lang/Integer;Z)V

    .line 182
    .local v3, "blockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanels:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;

    invoke-virtual {v4}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->getBlocksView()Lcom/eventgenie/android/ui/calendar/BlocksLayout;

    move-result-object v2

    check-cast v2, Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;

    .line 184
    .local v2, "layout":Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;
    invoke-virtual {v2, v3}, Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;->addBlock(Lcom/eventgenie/android/ui/calendar/BlockView;)V

    .line 185
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/eventgenie/android/ui/calendar/BlockView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-void

    .line 165
    .end local v2    # "layout":Lcom/eventgenie/android/ui/calendar/FluidBlocksLayout;
    .end local v3    # "blockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    .end local v12    # "isFavourite":Z
    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public addScheduleSessionBlock(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZZIZ)V
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # J
    .param p4, "track"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "start"    # J
    .param p8, "end"    # J
    .param p10, "colour"    # Ljava/lang/String;
    .param p11, "isFavourite"    # Z
    .param p12, "hasNote"    # Z
    .param p13, "showThreeDots"    # Z
    .param p14, "type"    # I
    .param p15, "isWaitlisted"    # Z

    .prologue
    .line 195
    if-nez p14, :cond_1

    if-eqz p4, :cond_1

    .line 196
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/eventgenie/android/utils/managers/CalendarManager;->getColumnForTrack(Ljava/lang/String;)I

    move-result v16

    .line 198
    .local v16, "col":I
    new-instance v3, Lcom/eventgenie/android/ui/calendar/BlockView;

    sget-object v15, Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;->OTHER:Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    const/16 v18, 0x0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v17, p10

    move/from16 v19, p15

    invoke-direct/range {v3 .. v19}, Lcom/eventgenie/android/ui/calendar/BlockView;-><init>(Landroid/content/Context;JLjava/lang/String;JJZZZLcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;ILjava/lang/String;Ljava/lang/Integer;Z)V

    .line 199
    .local v3, "blockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/eventgenie/android/utils/managers/CalendarManager;->getLayoutForTrack(Ljava/lang/String;Z)Lcom/eventgenie/android/ui/calendar/BlocksLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->addBlock(Lcom/eventgenie/android/ui/calendar/BlockView;)V

    .line 200
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/eventgenie/android/ui/calendar/BlockView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    .end local v3    # "blockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    .end local v16    # "col":I
    :cond_0
    return-void

    .line 201
    :cond_1
    if-eqz p14, :cond_0

    .line 202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;

    .line 203
    .local v33, "panel":Lcom/eventgenie/android/ui/calendar/CalendarPanelView;
    new-instance v3, Lcom/eventgenie/android/ui/calendar/BlockNonTrackView;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    move-object/from16 v17, v3

    move-object/from16 v18, p1

    move-wide/from16 v19, p2

    move-object/from16 v21, p5

    move-wide/from16 v22, p6

    move-wide/from16 v24, p8

    move-object/from16 v30, p10

    move/from16 v31, p14

    move/from16 v32, p15

    invoke-direct/range {v17 .. v32}, Lcom/eventgenie/android/ui/calendar/BlockNonTrackView;-><init>(Landroid/content/Context;JLjava/lang/String;JJZZZILjava/lang/String;IZ)V

    .line 204
    .restart local v3    # "blockView":Lcom/eventgenie/android/ui/calendar/BlockView;
    invoke-virtual/range {v33 .. v33}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->getBlocksView()Lcom/eventgenie/android/ui/calendar/BlocksLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->addBlock(Lcom/eventgenie/android/ui/calendar/BlockView;)V

    goto :goto_0
.end method

.method public attachToSwipeView(Lcom/eventgenie/android/ui/SwipeView;Lcom/eventgenie/android/ui/PageControl;Lcom/eventgenie/android/ui/SwipeView;Lcom/eventgenie/android/ui/ObservableScrollView;Landroid/view/View;)V
    .locals 8
    .param p1, "swipeView"    # Lcom/eventgenie/android/ui/SwipeView;
    .param p2, "pageControl"    # Lcom/eventgenie/android/ui/PageControl;
    .param p3, "header"    # Lcom/eventgenie/android/ui/SwipeView;
    .param p4, "scrollView"    # Lcom/eventgenie/android/ui/ObservableScrollView;
    .param p5, "pageControlBlock"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 212
    iput-object p1, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mSwipeView:Lcom/eventgenie/android/ui/SwipeView;

    .line 213
    iput-object p3, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mSwipeViewHeader:Lcom/eventgenie/android/ui/SwipeView;

    .line 214
    iput-object p4, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mMarginScrollView:Lcom/eventgenie/android/ui/ObservableScrollView;

    .line 215
    iput-object p2, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPageControl:Lcom/eventgenie/android/ui/PageControl;

    .line 217
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;

    .line 218
    .local v2, "panel":Lcom/eventgenie/android/ui/calendar/CalendarPanelView;
    invoke-virtual {p1, v2}, Lcom/eventgenie/android/ui/SwipeView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 220
    .end local v2    # "panel":Lcom/eventgenie/android/ui/calendar/CalendarPanelView;
    :cond_0
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 221
    invoke-virtual {p1, p2}, Lcom/eventgenie/android/ui/SwipeView;->setPageControl(Lcom/eventgenie/android/ui/PageControl;)V

    .line 223
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    sget v4, Lcom/eventgenie/android/R$id;->left_swipe_indicator:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mLeftSwipeIndicator:Landroid/view/View;

    .line 224
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    sget v4, Lcom/eventgenie/android/R$id;->right_swipe_indicator:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mRightSwipeIndicator:Landroid/view/View;

    .line 225
    invoke-direct {p0, v5}, Lcom/eventgenie/android/utils/managers/CalendarManager;->updateIndicators(I)V

    .line 232
    :goto_1
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 233
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanels:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;

    invoke-virtual {v3}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->getScrollView()Lcom/eventgenie/android/ui/ObservableScrollView;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mScrollSync:Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/ui/ObservableScrollView;->setScrollViewListener(Lcom/eventgenie/android/ui/ScrollViewListener;)V

    .line 234
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mScrollSync:Lcom/eventgenie/android/utils/managers/CalendarManager$ScrollSync;

    invoke-virtual {p4, v3}, Lcom/eventgenie/android/ui/ObservableScrollView;->setScrollViewListener(Lcom/eventgenie/android/ui/ScrollViewListener;)V

    .line 235
    new-instance v3, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeListener;

    invoke-direct {v3, p0, v7}, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeListener;-><init>(Lcom/eventgenie/android/utils/managers/CalendarManager;Lcom/eventgenie/android/utils/managers/CalendarManager$1;)V

    invoke-virtual {p1, v3}, Lcom/eventgenie/android/ui/SwipeView;->setOnPageChangedListener(Lcom/eventgenie/android/ui/SwipeView$OnPageChangedListener;)V

    .line 238
    :cond_1
    if-eqz p3, :cond_4

    .line 239
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mHeaders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;

    .line 240
    .local v0, "headView":Lcom/eventgenie/android/ui/calendar/CalendarPanelView;
    invoke-virtual {p3, v0}, Lcom/eventgenie/android/ui/SwipeView;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 228
    .end local v0    # "headView":Lcom/eventgenie/android/ui/calendar/CalendarPanelView;
    :cond_2
    invoke-virtual {p2, v6}, Lcom/eventgenie/android/ui/PageControl;->setVisibility(I)V

    .line 229
    invoke-virtual {p5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 243
    :cond_3
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mSwipeHeaderSync:Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderSync;

    invoke-virtual {p1, v3}, Lcom/eventgenie/android/ui/SwipeView;->setScrollViewListener(Lcom/eventgenie/android/ui/ScrollViewListener;)V

    .line 244
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mSwipeHeaderSync:Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderSync;

    invoke-virtual {p3, v3}, Lcom/eventgenie/android/ui/SwipeView;->setScrollViewListener(Lcom/eventgenie/android/ui/ScrollViewListener;)V

    .line 245
    new-instance v3, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderListener;

    invoke-direct {v3, p0, v7}, Lcom/eventgenie/android/utils/managers/CalendarManager$SwipeHeaderListener;-><init>(Lcom/eventgenie/android/utils/managers/CalendarManager;Lcom/eventgenie/android/utils/managers/CalendarManager$1;)V

    invoke-virtual {p3, v3}, Lcom/eventgenie/android/ui/SwipeView;->setOnPageChangedListener(Lcom/eventgenie/android/ui/SwipeView$OnPageChangedListener;)V

    .line 248
    :cond_4
    return-void
.end method

.method public getPanels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/ui/calendar/CalendarPanelView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanels:Ljava/util/List;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 293
    move-object v3, p1

    check-cast v3, Lcom/eventgenie/android/ui/calendar/BlockView;

    invoke-virtual {v3}, Lcom/eventgenie/android/ui/calendar/BlockView;->getItemType()Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    move-result-object v2

    .line 294
    .local v2, "type":Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
    check-cast p1, Lcom/eventgenie/android/ui/calendar/BlockView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/calendar/BlockView;->getBlockId()J

    move-result-wide v0

    .line 296
    .local v0, "id":J
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v0, v1}, Lcom/eventgenie/android/ui/help/SessionHelper;->onScheduleItemClick(Landroid/content/Context;Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;J)V

    .line 297
    return-void
.end method

.method public removeAllSessionBlocks()V
    .locals 3

    .prologue
    .line 300
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;

    .line 301
    .local v1, "panel":Lcom/eventgenie/android/ui/calendar/CalendarPanelView;
    invoke-virtual {v1}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->getBlocksView()Lcom/eventgenie/android/ui/calendar/BlocksLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/ui/calendar/BlocksLayout;->removeAllBlocks()V

    goto :goto_0

    .line 303
    .end local v1    # "panel":Lcom/eventgenie/android/ui/calendar/CalendarPanelView;
    :cond_0
    return-void
.end method

.method public showNowView()V
    .locals 4

    .prologue
    .line 306
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/CalendarManager;->mPanels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;

    .line 307
    .local v1, "panel":Lcom/eventgenie/android/ui/calendar/CalendarPanelView;
    invoke-virtual {v1}, Lcom/eventgenie/android/ui/calendar/CalendarPanelView;->getNowView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 309
    .end local v1    # "panel":Lcom/eventgenie/android/ui/calendar/CalendarPanelView;
    :cond_0
    return-void
.end method

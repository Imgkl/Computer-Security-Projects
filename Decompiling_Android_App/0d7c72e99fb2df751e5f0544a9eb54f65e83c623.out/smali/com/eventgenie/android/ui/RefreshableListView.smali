.class public Lcom/eventgenie/android/ui/RefreshableListView;
.super Landroid/widget/FrameLayout;
.source "RefreshableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/ui/RefreshableListView$onListLoadMoreListener;,
        Lcom/eventgenie/android/ui/RefreshableListView$onListRefreshListener;,
        Lcom/eventgenie/android/ui/RefreshableListView$ListControl;
    }
.end annotation


# instance fields
.field private ListLoadMoreListener:Lcom/eventgenie/android/ui/RefreshableListView$onListLoadMoreListener;

.field private ListrefreshLister:Lcom/eventgenie/android/ui/RefreshableListView$onListRefreshListener;

.field private dragLength:I

.field private itemsFromBottom:I

.field private list:Lcom/eventgenie/android/ui/RefreshableListView$ListControl;

.field private progress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/eventgenie/android/ui/RefreshableListView;->dragLength:I

    .line 28
    const/16 v0, 0xa

    iput v0, p0, Lcom/eventgenie/android/ui/RefreshableListView;->itemsFromBottom:I

    .line 21
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/RefreshableListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/eventgenie/android/ui/RefreshableListView;->dragLength:I

    .line 28
    const/16 v0, 0xa

    iput v0, p0, Lcom/eventgenie/android/ui/RefreshableListView;->itemsFromBottom:I

    .line 20
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/RefreshableListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/eventgenie/android/ui/RefreshableListView;->dragLength:I

    .line 28
    const/16 v0, 0xa

    iput v0, p0, Lcom/eventgenie/android/ui/RefreshableListView;->itemsFromBottom:I

    .line 19
    invoke-direct {p0, p1}, Lcom/eventgenie/android/ui/RefreshableListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/eventgenie/android/ui/RefreshableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/RefreshableListView;

    .prologue
    .line 17
    iget v0, p0, Lcom/eventgenie/android/ui/RefreshableListView;->dragLength:I

    return v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/ui/RefreshableListView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/RefreshableListView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/ui/RefreshableListView;)Lcom/eventgenie/android/ui/RefreshableListView$onListRefreshListener;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/RefreshableListView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/eventgenie/android/ui/RefreshableListView;->ListrefreshLister:Lcom/eventgenie/android/ui/RefreshableListView$onListRefreshListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/eventgenie/android/ui/RefreshableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/RefreshableListView;

    .prologue
    .line 17
    iget v0, p0, Lcom/eventgenie/android/ui/RefreshableListView;->itemsFromBottom:I

    return v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/ui/RefreshableListView;)Lcom/eventgenie/android/ui/RefreshableListView$onListLoadMoreListener;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/RefreshableListView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/eventgenie/android/ui/RefreshableListView;->ListLoadMoreListener:Lcom/eventgenie/android/ui/RefreshableListView$onListLoadMoreListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, -0x2

    const/4 v11, -0x1

    .line 32
    new-instance v8, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;

    invoke-direct {v8, p0, p1}, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;-><init>(Lcom/eventgenie/android/ui/RefreshableListView;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/eventgenie/android/ui/RefreshableListView;->list:Lcom/eventgenie/android/ui/RefreshableListView$ListControl;

    .line 33
    iget-object v8, p0, Lcom/eventgenie/android/ui/RefreshableListView;->list:Lcom/eventgenie/android/ui/RefreshableListView$ListControl;

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/ui/RefreshableListView;->addView(Landroid/view/View;)V

    .line 35
    iget-object v8, p0, Lcom/eventgenie/android/ui/RefreshableListView;->list:Lcom/eventgenie/android/ui/RefreshableListView$ListControl;

    invoke-virtual {v8}, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 36
    .local v2, "listParams":Landroid/view/ViewGroup$LayoutParams;
    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 38
    iget-object v8, p0, Lcom/eventgenie/android/ui/RefreshableListView;->list:Lcom/eventgenie/android/ui/RefreshableListView$ListControl;

    invoke-virtual {v8, v2}, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .local v6, "top":Landroid/widget/LinearLayout;
    const/16 v8, 0x30

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 43
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    invoke-virtual {p0, v6}, Lcom/eventgenie/android/ui/RefreshableListView;->addView(Landroid/view/View;)V

    .line 45
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 46
    .local v7, "topParams":Landroid/view/ViewGroup$LayoutParams;
    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 47
    iput v12, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "left":Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/ProgressBar;

    const/4 v9, 0x0

    const v10, 0x1010078

    invoke-direct {v8, p1, v9, v10}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p0, Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;

    .line 53
    iget-object v8, p0, Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 54
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .local v4, "right":Landroid/widget/FrameLayout;
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v8, p0, Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    .local v1, "leftParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v13, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 61
    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 62
    iput v12, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v8, p0, Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 66
    .local v3, "progressParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x40000000    # 2.0f

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 67
    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 68
    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 69
    iget-object v8, p0, Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 72
    .local v5, "rightParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 73
    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 74
    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 75
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    return-void
.end method


# virtual methods
.method public finishLoadingMore()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/eventgenie/android/ui/RefreshableListView;->list:Lcom/eventgenie/android/ui/RefreshableListView$ListControl;

    const/4 v1, 0x0

    # setter for: Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->loadingMore:Z
    invoke-static {v0, v1}, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->access$002(Lcom/eventgenie/android/ui/RefreshableListView$ListControl;Z)Z

    .line 134
    return-void
.end method

.method public finishRefresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 126
    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 127
    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 128
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 129
    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView;->list:Lcom/eventgenie/android/ui/RefreshableListView$ListControl;

    iput-boolean v2, v1, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->refreshing:Z

    .line 131
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/eventgenie/android/ui/RefreshableListView;->list:Lcom/eventgenie/android/ui/RefreshableListView$ListControl;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/ui/RefreshableListView;->list:Lcom/eventgenie/android/ui/RefreshableListView$ListControl;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/eventgenie/android/ui/RefreshableListView;->list:Lcom/eventgenie/android/ui/RefreshableListView$ListControl;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    return-void
.end method

.method public setDistanceFromBottom(I)V
    .locals 0
    .param p1, "itemsFromBottom"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/eventgenie/android/ui/RefreshableListView;->itemsFromBottom:I

    .line 106
    return-void
.end method

.method public setDragLength(I)V
    .locals 0
    .param p1, "dragLength"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/eventgenie/android/ui/RefreshableListView;->dragLength:I

    .line 99
    return-void
.end method

.method public setOnListLoadMoreListener(Lcom/eventgenie/android/ui/RefreshableListView$onListLoadMoreListener;)V
    .locals 0
    .param p1, "listLoadMoreListener"    # Lcom/eventgenie/android/ui/RefreshableListView$onListLoadMoreListener;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/eventgenie/android/ui/RefreshableListView;->ListLoadMoreListener:Lcom/eventgenie/android/ui/RefreshableListView$onListLoadMoreListener;

    .line 120
    return-void
.end method

.method public setOnListRefreshListener(Lcom/eventgenie/android/ui/RefreshableListView$onListRefreshListener;)V
    .locals 0
    .param p1, "ListrefreshLister"    # Lcom/eventgenie/android/ui/RefreshableListView$onListRefreshListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/eventgenie/android/ui/RefreshableListView;->ListrefreshLister:Lcom/eventgenie/android/ui/RefreshableListView$onListRefreshListener;

    .line 113
    return-void
.end method

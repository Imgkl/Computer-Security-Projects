.class Lcom/eventgenie/android/ui/RefreshableListView$ListControl;
.super Landroid/widget/ListView;
.source "RefreshableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/ui/RefreshableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListControl"
.end annotation


# instance fields
.field private HittingTop:Z

.field private loadingMore:Z

.field refreshing:Z

.field private startY:D

.field final synthetic this$0:Lcom/eventgenie/android/ui/RefreshableListView;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/ui/RefreshableListView;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 140
    iput-object p1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 146
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->refreshing:Z

    .line 185
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->HittingTop:Z

    .line 186
    const-wide v0, 0x40f86a0000000000L    # 100000.0

    iput-wide v0, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->startY:D

    .line 188
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->loadingMore:Z

    .line 140
    invoke-direct {p0}, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/eventgenie/android/ui/RefreshableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 139
    iput-object p1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    invoke-direct {p0, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->refreshing:Z

    .line 185
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->HittingTop:Z

    .line 186
    const-wide v0, 0x40f86a0000000000L    # 100000.0

    iput-wide v0, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->startY:D

    .line 188
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->loadingMore:Z

    .line 139
    invoke-direct {p0}, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/eventgenie/android/ui/RefreshableListView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 138
    iput-object p1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->refreshing:Z

    .line 185
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->HittingTop:Z

    .line 186
    const-wide v0, 0x40f86a0000000000L    # 100000.0

    iput-wide v0, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->startY:D

    .line 188
    iput-boolean v2, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->loadingMore:Z

    .line 138
    invoke-direct {p0}, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/eventgenie/android/ui/RefreshableListView$ListControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/ui/RefreshableListView$ListControl;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->loadingMore:Z

    return p1
.end method

.method private init()V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0, p0}, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 145
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x1

    const-wide v10, 0x40f86a0000000000L    # 100000.0

    .line 149
    iget-boolean v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->HittingTop:Z

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 182
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 152
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v6, v1

    iput-wide v6, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->startY:D

    goto :goto_0

    .line 155
    :pswitch_1
    iget-boolean v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->refreshing:Z

    if-nez v1, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v6, v1

    iget-wide v8, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->startY:D

    sub-double/2addr v6, v8

    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    # getter for: Lcom/eventgenie/android/ui/RefreshableListView;->dragLength:I
    invoke-static {v1}, Lcom/eventgenie/android/ui/RefreshableListView;->access$100(Lcom/eventgenie/android/ui/RefreshableListView;)I

    move-result v1

    int-to-double v8, v1

    cmpg-double v1, v6, v8

    if-gtz v1, :cond_1

    .line 157
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v8, v1

    iget-wide v10, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->startY:D

    sub-double/2addr v8, v10

    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    # getter for: Lcom/eventgenie/android/ui/RefreshableListView;->dragLength:I
    invoke-static {v1}, Lcom/eventgenie/android/ui/RefreshableListView;->access$100(Lcom/eventgenie/android/ui/RefreshableListView;)I

    move-result v1

    int-to-double v10, v1

    div-double/2addr v8, v10

    sub-double v2, v6, v8

    .line 158
    .local v2, "percent":D
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v4, v6, v2

    .line 159
    .local v4, "weight":D
    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    # getter for: Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/eventgenie/android/ui/RefreshableListView;->access$200(Lcom/eventgenie/android/ui/RefreshableListView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 160
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    double-to-float v1, v4

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 161
    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    # getter for: Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/eventgenie/android/ui/RefreshableListView;->access$200(Lcom/eventgenie/android/ui/RefreshableListView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 163
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "percent":D
    .end local v4    # "weight":D
    :cond_1
    iput-boolean v12, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->refreshing:Z

    .line 164
    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    # getter for: Lcom/eventgenie/android/ui/RefreshableListView;->ListrefreshLister:Lcom/eventgenie/android/ui/RefreshableListView$onListRefreshListener;
    invoke-static {v1}, Lcom/eventgenie/android/ui/RefreshableListView;->access$300(Lcom/eventgenie/android/ui/RefreshableListView;)Lcom/eventgenie/android/ui/RefreshableListView$onListRefreshListener;

    move-result-object v1

    iget-object v6, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    invoke-interface {v1, v6}, Lcom/eventgenie/android/ui/RefreshableListView$onListRefreshListener;->Refresh(Lcom/eventgenie/android/ui/RefreshableListView;)V

    .line 165
    iput-wide v10, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->startY:D

    .line 166
    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    # getter for: Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/eventgenie/android/ui/RefreshableListView;->access$200(Lcom/eventgenie/android/ui/RefreshableListView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 167
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 168
    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    # getter for: Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/eventgenie/android/ui/RefreshableListView;->access$200(Lcom/eventgenie/android/ui/RefreshableListView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 169
    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    # getter for: Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/eventgenie/android/ui/RefreshableListView;->access$200(Lcom/eventgenie/android/ui/RefreshableListView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 170
    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    # getter for: Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/eventgenie/android/ui/RefreshableListView;->access$200(Lcom/eventgenie/android/ui/RefreshableListView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 174
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_2
    iput-wide v10, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->startY:D

    .line 175
    iget-boolean v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->refreshing:Z

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    # getter for: Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/eventgenie/android/ui/RefreshableListView;->access$200(Lcom/eventgenie/android/ui/RefreshableListView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 177
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 178
    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    # getter for: Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/eventgenie/android/ui/RefreshableListView;->access$200(Lcom/eventgenie/android/ui/RefreshableListView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 192
    if-nez p2, :cond_2

    .line 193
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->HittingTop:Z

    .line 203
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->loadingMore:Z

    if-nez v1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    add-int v1, p2, p3

    sub-int v1, p4, v1

    iget-object v2, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    # getter for: Lcom/eventgenie/android/ui/RefreshableListView;->itemsFromBottom:I
    invoke-static {v2}, Lcom/eventgenie/android/ui/RefreshableListView;->access$400(Lcom/eventgenie/android/ui/RefreshableListView;)I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 207
    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    # getter for: Lcom/eventgenie/android/ui/RefreshableListView;->ListrefreshLister:Lcom/eventgenie/android/ui/RefreshableListView$onListRefreshListener;
    invoke-static {v1}, Lcom/eventgenie/android/ui/RefreshableListView;->access$300(Lcom/eventgenie/android/ui/RefreshableListView;)Lcom/eventgenie/android/ui/RefreshableListView$onListRefreshListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    # getter for: Lcom/eventgenie/android/ui/RefreshableListView;->ListLoadMoreListener:Lcom/eventgenie/android/ui/RefreshableListView$onListLoadMoreListener;
    invoke-static {v1}, Lcom/eventgenie/android/ui/RefreshableListView;->access$500(Lcom/eventgenie/android/ui/RefreshableListView;)Lcom/eventgenie/android/ui/RefreshableListView$onListLoadMoreListener;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    invoke-interface {v1, v2}, Lcom/eventgenie/android/ui/RefreshableListView$onListLoadMoreListener;->LoadMore(Lcom/eventgenie/android/ui/RefreshableListView;)V

    .line 209
    :cond_1
    return-void

    .line 195
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->HittingTop:Z

    .line 196
    const-wide v2, 0x40f86a0000000000L    # 100000.0

    iput-wide v2, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->startY:D

    .line 197
    iget-boolean v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->refreshing:Z

    if-nez v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    # getter for: Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/eventgenie/android/ui/RefreshableListView;->access$200(Lcom/eventgenie/android/ui/RefreshableListView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 199
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 200
    iget-object v1, p0, Lcom/eventgenie/android/ui/RefreshableListView$ListControl;->this$0:Lcom/eventgenie/android/ui/RefreshableListView;

    # getter for: Lcom/eventgenie/android/ui/RefreshableListView;->progress:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/eventgenie/android/ui/RefreshableListView;->access$200(Lcom/eventgenie/android/ui/RefreshableListView;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 210
    return-void
.end method

.class public abstract Lcom/eventgenie/android/activities/base/GenieListActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "GenieListActivity.java"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mEmpty:Landroid/widget/TextView;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field private mList:Landroid/widget/ListView;

.field private mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mHandler:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mFinishedStart:Z

    .line 52
    new-instance v0, Lcom/eventgenie/android/activities/base/GenieListActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/base/GenieListActivity$1;-><init>(Lcom/eventgenie/android/activities/base/GenieListActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Lcom/eventgenie/android/activities/base/GenieListActivity$2;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/base/GenieListActivity$2;-><init>(Lcom/eventgenie/android/activities/base/GenieListActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/base/GenieListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/base/GenieListActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    sget v0, Lcom/eventgenie/android/R$layout;->generic_list:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getEmptyTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->ensureList()V

    .line 87
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method protected isValid(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 116
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onContentChanged()V

    .line 117
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mList:Landroid/widget/ListView;

    .line 120
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mList:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    if-eqz v0, :cond_1

    .line 126
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mFinishedStart:Z

    .line 134
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onDestroy()V

    .line 143
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 157
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->ensureList()V

    .line 168
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 169
    return-void
.end method

.method public setEmptyListText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mEmpty:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mEmpty:Landroid/widget/TextView;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 174
    return-void
.end method

.method public setEmptyListText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mEmpty:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mEmpty:Landroid/widget/TextView;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 189
    monitor-enter p0

    .line 190
    :try_start_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->ensureList()V

    .line 191
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 192
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    monitor-exit p0

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 204
    return-void
.end method

.class public abstract Lcom/commonsware/cwac/endless/EndlessAdapter;
.super Lcom/commonsware/cwac/adapter/AdapterWrapper;
.source "EndlessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isSerialized:Z

.field private keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private pendingResource:I

.field private pendingView:Landroid/view/View;

.field private runInBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrapped"    # Landroid/widget/ListAdapter;
    .param p3, "pendingResource"    # I

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-direct {p0, p2}, Lcom/commonsware/cwac/adapter/AdapterWrapper;-><init>(Landroid/widget/ListAdapter;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingResource:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->isSerialized:Z

    .line 62
    iput-boolean v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->runInBackground:Z

    .line 95
    iput-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->context:Landroid/content/Context;

    .line 96
    iput p3, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingResource:I

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wrapped"    # Landroid/widget/ListAdapter;
    .param p3, "pendingResource"    # I
    .param p4, "keepOnAppending"    # Z

    .prologue
    const/4 v1, 0x1

    .line 111
    invoke-direct {p0, p2}, Lcom/commonsware/cwac/adapter/AdapterWrapper;-><init>(Landroid/widget/ListAdapter;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingResource:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->isSerialized:Z

    .line 62
    iput-boolean v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->runInBackground:Z

    .line 112
    iput-object p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->context:Landroid/content/Context;

    .line 113
    iput p3, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingResource:I

    .line 114
    invoke-direct {p0, p4}, Lcom/commonsware/cwac/endless/EndlessAdapter;->setKeepOnAppending(Z)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "wrapped"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v1, 0x1

    .line 68
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/adapter/AdapterWrapper;-><init>(Landroid/widget/ListAdapter;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingResource:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->isSerialized:Z

    .line 62
    iput-boolean v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->runInBackground:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/widget/ListAdapter;Z)V
    .locals 2
    .param p1, "wrapped"    # Landroid/widget/ListAdapter;
    .param p2, "keepOnAppending"    # Z

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/adapter/AdapterWrapper;-><init>(Landroid/widget/ListAdapter;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingResource:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->isSerialized:Z

    .line 62
    iput-boolean v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->runInBackground:Z

    .line 81
    invoke-direct {p0, p2}, Lcom/commonsware/cwac/endless/EndlessAdapter;->setKeepOnAppending(Z)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/commonsware/cwac/endless/EndlessAdapter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/commonsware/cwac/endless/EndlessAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->setKeepOnAppending(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/commonsware/cwac/endless/EndlessAdapter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/commonsware/cwac/endless/EndlessAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    return-object v0
.end method

.method private varargs executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<TT;**>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TT;**>;"
    .local p2, "params":[Ljava/lang/Object;, "[TT;"
    iget-boolean v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->isSerialized:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 292
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setKeepOnAppending(Z)V
    .locals 2
    .param p1, "newValue"    # Z

    .prologue
    .line 300
    iget-object v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    .line 302
    .local v0, "same":Z
    :goto_0
    iget-object v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 304
    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->notifyDataSetChanged()V

    .line 307
    :cond_0
    return-void

    .line 300
    .end local v0    # "same":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract appendCachedData()V
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method protected buildTask()Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;
    .locals 1

    .prologue
    .line 284
    new-instance v0, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;

    invoke-direct {v0, p0}, Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;-><init>(Lcom/commonsware/cwac/endless/EndlessAdapter;)V

    return-object v0
.end method

.method protected abstract cacheInBackground()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-super {p0}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 203
    invoke-super {p0}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 207
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 185
    const/4 v0, -0x1

    .line 188
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getPendingView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 364
    iget-object v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 367
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingResource:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 370
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "You must either override getPendingView() or supply a pending View resource via the constructor"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 241
    invoke-super {p0}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getCount()I

    move-result v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->keepOnAppending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 243
    invoke-virtual {p0, p3}, Lcom/commonsware/cwac/endless/EndlessAdapter;->getPendingView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    .line 245
    iget-boolean v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->runInBackground:Z

    if-eqz v1, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->buildTask()Lcom/commonsware/cwac/endless/EndlessAdapter$AppendTask;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-direct {p0, v1, v2}, Lcom/commonsware/cwac/endless/EndlessAdapter;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 258
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    .line 261
    :goto_1
    return-object v1

    .line 250
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->cacheInBackground()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->setKeepOnAppending(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->onException(Landroid/view/View;Ljava/lang/Exception;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->setKeepOnAppending(Z)V

    goto :goto_0

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 217
    invoke-super {p0}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 221
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/commonsware/cwac/adapter/AdapterWrapper;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isSerialized()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->isSerialized:Z

    return v0
.end method

.method public onDataReady()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->pendingView:Landroid/view/View;

    .line 162
    invoke-virtual {p0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->notifyDataSetChanged()V

    .line 163
    return-void
.end method

.method protected onException(Landroid/view/View;Ljava/lang/Exception;)Z
    .locals 2
    .param p1, "pendingView"    # Landroid/view/View;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 278
    const-string v0, "EndlessAdapter"

    const-string v1, "Exception in cacheInBackground()"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public restartAppending()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->setKeepOnAppending(Z)V

    .line 131
    return-void
.end method

.method public setRunInBackground(Z)V
    .locals 0
    .param p1, "runInBackground"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->runInBackground:Z

    .line 153
    return-void
.end method

.method public setSerialized(Z)V
    .locals 0
    .param p1, "isSerialized"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/commonsware/cwac/endless/EndlessAdapter;->isSerialized:Z

    .line 123
    return-void
.end method

.method public stopAppending()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/commonsware/cwac/endless/EndlessAdapter;->setKeepOnAppending(Z)V

    .line 127
    return-void
.end method

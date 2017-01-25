.class abstract Lcom/urbanairship/location/PendingLocationResult;
.super Ljava/lang/Object;
.source "PendingLocationResult.java"

# interfaces
.implements Lcom/urbanairship/PendingResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/urbanairship/PendingResult",
        "<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field private isCanceled:Z

.field private result:Landroid/location/Location;

.field private resultCallback:Lcom/urbanairship/PendingResult$ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/urbanairship/PendingResult$ResultCallback",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/location/PendingLocationResult;->isCanceled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    monitor-exit p0

    return-void

    .line 61
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/urbanairship/location/PendingLocationResult;->onCancel()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/location/PendingLocationResult;->isCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCanceled()Z
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/location/PendingLocationResult;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/location/PendingLocationResult;->isCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/PendingLocationResult;->result:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract onCancel()V
.end method

.method public declared-synchronized onResult(Lcom/urbanairship/PendingResult$ResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/urbanairship/PendingResult$ResultCallback",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "resultCallback":Lcom/urbanairship/PendingResult$ResultCallback;, "Lcom/urbanairship/PendingResult$ResultCallback<Landroid/location/Location;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/urbanairship/location/PendingLocationResult;->isCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/location/PendingLocationResult;->resultCallback:Lcom/urbanairship/PendingResult$ResultCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 48
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/urbanairship/location/PendingLocationResult;->resultCallback:Lcom/urbanairship/PendingResult$ResultCallback;

    .line 50
    iget-object v0, p0, Lcom/urbanairship/location/PendingLocationResult;->result:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/urbanairship/location/PendingLocationResult;->resultCallback:Lcom/urbanairship/PendingResult$ResultCallback;

    iget-object v1, p0, Lcom/urbanairship/location/PendingLocationResult;->result:Landroid/location/Location;

    invoke-interface {v0, v1}, Lcom/urbanairship/PendingResult$ResultCallback;->onResult(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setResult(Landroid/location/Location;)V
    .locals 1
    .param p1, "result"    # Landroid/location/Location;

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/location/PendingLocationResult;->isDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/urbanairship/location/PendingLocationResult;->result:Landroid/location/Location;

    .line 76
    iget-object v0, p0, Lcom/urbanairship/location/PendingLocationResult;->resultCallback:Lcom/urbanairship/PendingResult$ResultCallback;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/urbanairship/location/PendingLocationResult;->resultCallback:Lcom/urbanairship/PendingResult$ResultCallback;

    invoke-interface {v0, p1}, Lcom/urbanairship/PendingResult$ResultCallback;->onResult(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

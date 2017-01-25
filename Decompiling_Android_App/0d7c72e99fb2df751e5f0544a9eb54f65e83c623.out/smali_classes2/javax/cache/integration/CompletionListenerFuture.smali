.class public Ljavax/cache/integration/CompletionListenerFuture;
.super Ljava/lang/Object;
.source "CompletionListenerFuture.java"

# interfaces
.implements Ljavax/cache/integration/CompletionListener;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/cache/integration/CompletionListener;",
        "Ljava/util/concurrent/Future",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private exception:Ljava/lang/Exception;

.field private isCompleted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/cache/integration/CompletionListenerFuture;->isCompleted:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/cache/integration/CompletionListenerFuture;->exception:Ljava/lang/Exception;

    .line 61
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CompletionListenerFutures can\'t be cancelled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Ljavax/cache/integration/CompletionListenerFuture;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Ljavax/cache/integration/CompletionListenerFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 129
    monitor-enter p0

    .line 130
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Ljavax/cache/integration/CompletionListenerFuture;->isCompleted:Z

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 134
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/cache/integration/CompletionListenerFuture;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 135
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 137
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Ljavax/cache/integration/CompletionListenerFuture;->exception:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Void;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget-boolean v0, p0, Ljavax/cache/integration/CompletionListenerFuture;->isCompleted:Z

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p3, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 164
    :cond_0
    iget-boolean v0, p0, Ljavax/cache/integration/CompletionListenerFuture;->isCompleted:Z

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Ljavax/cache/integration/CompletionListenerFuture;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 166
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 168
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Ljavax/cache/integration/CompletionListenerFuture;->exception:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 171
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-boolean v0, p0, Ljavax/cache/integration/CompletionListenerFuture;->isCompleted:Z

    monitor-exit p0

    return v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-boolean v0, p0, Ljavax/cache/integration/CompletionListenerFuture;->isCompleted:Z

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to use a CompletionListenerFuture instance more than once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 73
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ljavax/cache/integration/CompletionListenerFuture;->isCompleted:Z

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 76
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-boolean v0, p0, Ljavax/cache/integration/CompletionListenerFuture;->isCompleted:Z

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to use a CompletionListenerFuture instance more than once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 91
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ljavax/cache/integration/CompletionListenerFuture;->isCompleted:Z

    .line 92
    iput-object p1, p0, Ljavax/cache/integration/CompletionListenerFuture;->exception:Ljava/lang/Exception;

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 95
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    return-void
.end method

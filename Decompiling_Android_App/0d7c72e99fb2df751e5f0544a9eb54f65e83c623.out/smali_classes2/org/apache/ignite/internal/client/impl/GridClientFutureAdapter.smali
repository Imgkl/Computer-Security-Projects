.class public Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "GridClientFutureAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClientFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$1;,
        Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;",
        "Lorg/apache/ignite/internal/client/GridClientFuture",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DONE:I = 0x1

.field private static final INIT:I

.field private static final log:Ljava/util/logging/Logger;

.field private static final serialVersionUID:J


# instance fields
.field private final cbs:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile done:Z

.field private err:Ljava/lang/Throwable;

.field private res:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->$assertionsDisabled:Z

    .line 42
    const-class v0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->log:Ljava/util/logging/Logger;

    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->cbs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>;"
    .local p1, "res":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->cbs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "err"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->cbs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 79
    return-void
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private fireDone()V
    .locals 6

    .prologue
    .line 239
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 243
    :cond_0
    const/4 v2, 0x0

    .line 245
    .local v2, "err":Ljava/lang/Error;
    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->cbs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;

    .local v0, "cb":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;
    if-eqz v0, :cond_2

    .line 247
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;->proceed()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/Error;
    if-nez v2, :cond_1

    .line 251
    move-object v2, v1

    goto :goto_0

    .line 253
    :cond_1
    sget-object v3, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Failed to notify future callback due to unhandled error."

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 256
    .end local v1    # "e":Ljava/lang/Error;
    :cond_2
    if-eqz v2, :cond_3

    .line 257
    throw v2

    .line 258
    :cond_3
    return-void
.end method

.method private getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->err:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->res:Ljava/lang/Object;

    return-object v0

    .line 123
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->err:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/Error;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->err:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 126
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->err:Ljava/lang/Throwable;

    instance-of v0, v0, Lorg/apache/ignite/internal/client/GridClientException;

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->err:Ljava/lang/Throwable;

    check-cast v0, Lorg/apache/ignite/internal/client/GridClientException;

    throw v0

    .line 129
    :cond_3
    new-instance v0, Lorg/apache/ignite/internal/client/GridClientException;

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->err:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>;"
    .local p1, "res":Ljava/lang/Object;, "TR;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    const/4 v0, 0x0

    .line 166
    .local v0, "notify":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v3, v4}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->compareAndSetState(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->res:Ljava/lang/Object;

    .line 168
    iput-object p2, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->err:Ljava/lang/Throwable;

    .line 170
    const/4 v0, 0x1

    .line 172
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->releaseShared(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->fireDone()V

    :cond_0
    :goto_0
    return v1

    .line 180
    :cond_1
    if-eqz v0, :cond_2

    .line 181
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->fireDone()V

    :cond_2
    move v1, v2

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 181
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->fireDone()V

    :cond_3
    throw v1
.end method


# virtual methods
.method public chain(Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback",
            "<TR;TT;>;)",
            "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>;"
    .local p1, "cb":Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback<TR;TT;>;"
    const/4 v3, 0x0

    .line 224
    new-instance v4, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    invoke-direct {v4}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;-><init>()V

    .line 226
    .local v4, "fut":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TT;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->cbs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;Lorg/apache/ignite/internal/client/GridClientFutureListener;Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$1;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->fireDone()V

    .line 231
    :cond_0
    return-object v4
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>;"
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->done:Z

    if-nez v1, :cond_0

    .line 85
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->acquireSharedInterruptibly(I)V

    .line 87
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 92
    new-instance v1, Lorg/apache/ignite/internal/client/GridClientException;

    const-string v2, "Operation was interrupted."

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>;"
    const/4 v1, 0x0

    .line 98
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v2, "timeout >= 0"

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 101
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->done:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->tryAcquireSharedNanos(IJ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    new-instance v1, Lorg/apache/ignite/internal/client/GridClientFutureTimeoutException;

    const-string v2, "Failed to get future result due to waiting timed out."

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/client/GridClientFutureTimeoutException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lorg/apache/ignite/internal/client/GridClientException;

    const-string v2, "Operation was interrupted."

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/internal/client/GridClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 108
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->getResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs listen([Lorg/apache/ignite/internal/client/GridClientFutureListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/client/GridClientFutureListener",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>;"
    .local p1, "lsnrs":[Lorg/apache/ignite/internal/client/GridClientFutureListener;, "[Lorg/apache/ignite/internal/client/GridClientFutureListener<TR;>;"
    const/4 v2, 0x0

    .line 207
    sget-boolean v0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 209
    :cond_0
    move-object v6, p1

    .local v6, "arr$":[Lorg/apache/ignite/internal/client/GridClientFutureListener;
    array-length v8, v6

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v3, v6, v7

    .line 210
    .local v3, "lsnr":Lorg/apache/ignite/internal/client/GridClientFutureListener;, "Lorg/apache/ignite/internal/client/GridClientFutureListener<TR;>;"
    iget-object v9, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->cbs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;

    move-object v1, p0

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$DoneCallback;-><init>(Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;Lorg/apache/ignite/internal/client/GridClientFutureListener;Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter$1;)V

    invoke-virtual {v9, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 212
    .end local v3    # "lsnr":Lorg/apache/ignite/internal/client/GridClientFutureListener;, "Lorg/apache/ignite/internal/client/GridClientFutureListener<TR;>;"
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->fireDone()V

    .line 214
    :cond_2
    return-void
.end method

.method public onDone(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>;"
    .local p1, "res":Ljava/lang/Object;, "TR;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 144
    return-void
.end method

.method public onDone(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "err"    # Ljava/lang/Throwable;

    .prologue
    .line 152
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 155
    return-void
.end method

.method protected final tryAcquireShared(I)I
    .locals 1
    .param p1, "ignore"    # I

    .prologue
    .line 187
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->done:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected final tryReleaseShared(I)Z
    .locals 1
    .param p1, "ignore"    # I

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;, "Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter<TR;>;"
    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;->done:Z

    .line 195
    return v0
.end method

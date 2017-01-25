.class public Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "GridFutureAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/IgniteInternalFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/future/GridFutureAdapter$1;,
        Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ChainFuture;,
        Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CANCELLED:I = 0x1

.field private static final DONE:I = 0x2

.field private static final ERR:B = 0x1t

.field private static final INIT:I = 0x0

.field private static final RES:B = 0x2t

.field private static final serialVersionUID:J


# instance fields
.field private volatile endTime:J

.field private lsnr:Lorg/apache/ignite/lang/IgniteInClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;>;"
        }
    .end annotation
.end field

.field private res:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private resFlag:B

.field private final startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 61
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->startTime:J

    .line 426
    return-void
.end method

.method private notifyListener(Lorg/apache/ignite/lang/IgniteInClosure;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    .local p1, "lsnr":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-Lorg/apache/ignite/internal/IgniteInternalFuture<TR;>;>;"
    const/4 v3, 0x0

    .line 224
    sget-boolean v1, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 227
    :cond_0
    :try_start_0
    invoke-interface {p1, p0}, Lorg/apache/ignite/lang/IgniteInClosure;->apply(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 238
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify listener (is grid stopped?) [fut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lsnr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 236
    throw v0

    .line 233
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private notifyListeners()V
    .locals 2

    .prologue
    .line 204
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->lsnr:Lorg/apache/ignite/lang/IgniteInClosure;

    .line 207
    .local v0, "lsnr0":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-Lorg/apache/ignite/internal/IgniteInternalFuture<TR;>;>;"
    if-nez v0, :cond_0

    .line 208
    monitor-exit p0

    .line 216
    :goto_0
    return-void

    .line 210
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->lsnr:Lorg/apache/ignite/lang/IgniteInClosure;

    .line 211
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    sget-boolean v1, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 211
    .end local v0    # "lsnr0":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-Lorg/apache/ignite/internal/IgniteInternalFuture<TR;>;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 215
    .restart local v0    # "lsnr0":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-Lorg/apache/ignite/internal/IgniteInternalFuture<TR;>;>;"
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->notifyListener(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_0
.end method

.method private onDone(Ljava/lang/Object;Ljava/lang/Throwable;Z)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "cancel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Throwable;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    .local p1, "res":Ljava/lang/Object;, "TR;"
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    const/4 v0, 0x0

    .line 324
    .local v0, "notify":Z
    const/4 v4, 0x0

    if-eqz p3, :cond_0

    move v3, v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, v4, v3}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->compareAndSetState(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 325
    if-eqz p2, :cond_2

    .line 326
    const/4 v2, 0x1

    iput-byte v2, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->resFlag:B

    .line 327
    iput-object p2, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->res:Ljava/lang/Object;

    .line 334
    :goto_0
    const/4 v0, 0x1

    .line 336
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->releaseShared(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    if-eqz v0, :cond_1

    .line 345
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->notifyListeners()V

    :cond_1
    :goto_1
    return v1

    .line 330
    :cond_2
    const/4 v2, 0x2

    :try_start_1
    iput-byte v2, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->resFlag:B

    .line 331
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->res:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 345
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->notifyListeners()V

    :cond_3
    throw v1

    .line 344
    :cond_4
    if-eqz v0, :cond_5

    .line 345
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->notifyListeners()V

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method private state()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->getState()I

    move-result v0

    .line 377
    .local v0, "s":I
    if-nez v0, :cond_0

    const-string v1, "INIT"

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v1, "CANCELLED"

    goto :goto_0

    :cond_1
    const-string v1, "DONE"

    goto :goto_0
.end method


# virtual methods
.method public cancel()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;TT;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    .local p1, "doneCb":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-Lorg/apache/ignite/internal/IgniteInternalFuture<TR;>;TT;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ChainFuture;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ChainFuture;-><init>(Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Lorg/apache/ignite/lang/IgniteClosure;)V

    return-object v0
.end method

.method public duration()J
    .locals 6

    .prologue
    .line 76
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->endTime:J

    .line 78
    .local v0, "endTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->startTime:J

    sub-long/2addr v2, v4

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->startTime:J

    sub-long v2, v0, v2

    goto :goto_0
.end method

.method public endTime()J
    .locals 2

    .prologue
    .line 85
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->endTime:J

    return-wide v0
.end method

.method public error()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 90
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    iget-byte v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->resFlag:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->res:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    const/4 v6, 0x1

    .line 101
    :try_start_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->endTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 102
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->acquireSharedInterruptibly(I)V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->getState()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 105
    new-instance v1, Lorg/apache/ignite/internal/IgniteFutureCancelledCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Future was cancelled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/IgniteFutureCancelledCheckedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 117
    new-instance v1, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v1

    .line 107
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_1
    sget-boolean v1, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-byte v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->resFlag:B

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 109
    :cond_2
    iget-byte v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->resFlag:B

    if-ne v1, v6, :cond_3

    .line 110
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->res:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v1

    throw v1

    .line 112
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->res:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method

.method public get(J)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeout cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 130
    const-string/jumbo v1, "unit"

    invoke-static {p3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->get0(J)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 129
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 138
    new-instance v1, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;

    const-string v2, "Got interrupted while waiting for future to complete."

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;-><init>(Ljava/lang/String;Ljava/lang/InterruptedException;)V

    throw v1
.end method

.method protected get0(J)Ljava/lang/Object;
    .locals 5
    .param p1, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    const/4 v4, 0x1

    .line 150
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->endTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->tryAcquireSharedNanos(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException;

    const-string v1, "Timeout was reached before computation completed."

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->getState()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 154
    new-instance v0, Lorg/apache/ignite/internal/IgniteFutureCancelledCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Future was cancelled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteFutureCancelledCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-byte v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->resFlag:B

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 158
    :cond_2
    iget-byte v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->resFlag:B

    if-ne v0, v4, :cond_3

    .line 159
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->res:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->cast(Ljava/lang/Throwable;)Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v0

    throw v0

    .line 161
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->res:Ljava/lang/Object;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    const/4 v0, 0x1

    .line 267
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 4

    .prologue
    .line 254
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->endTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailed()Z
    .locals 6

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    const/4 v0, 0x1

    .line 262
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->endTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-byte v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->resFlag:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listen(Lorg/apache/ignite/lang/IgniteInClosure;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    .local p1, "lsnr0":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-Lorg/apache/ignite/internal/IgniteInternalFuture<TR;>;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 168
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isDone()Z

    move-result v0

    .line 170
    .local v0, "done":Z
    if-nez v0, :cond_4

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isDone()Z

    move-result v0

    .line 174
    if-nez v0, :cond_3

    .line 175
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->lsnr:Lorg/apache/ignite/lang/IgniteInClosure;

    if-nez v1, :cond_1

    .line 176
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->lsnr:Lorg/apache/ignite/lang/IgniteInClosure;

    .line 183
    :goto_0
    monitor-exit p0

    .line 191
    :goto_1
    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->lsnr:Lorg/apache/ignite/lang/IgniteInClosure;

    instance-of v1, v1, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;

    if-eqz v1, :cond_2

    .line 178
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->lsnr:Lorg/apache/ignite/lang/IgniteInClosure;

    check-cast v1, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;->add(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 180
    :cond_2
    :try_start_1
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/ignite/lang/IgniteInClosure;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->lsnr:Lorg/apache/ignite/lang/IgniteInClosure;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;-><init>([Lorg/apache/ignite/lang/IgniteInClosure;Lorg/apache/ignite/internal/util/future/GridFutureAdapter$1;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->lsnr:Lorg/apache/ignite/lang/IgniteInClosure;

    goto :goto_0

    .line 185
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :cond_4
    sget-boolean v1, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 190
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->notifyListener(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_1
.end method

.method public onCancelled()Z
    .locals 2

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    const/4 v1, 0x0

    .line 355
    const/4 v0, 0x1

    invoke-direct {p0, v1, v1, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;Z)Z

    move-result v0

    return v0
.end method

.method public final onDone()Z
    .locals 1

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0, v0, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public final onDone(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    .local p1, "res":Ljava/lang/Object;, "TR;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
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
    .line 311
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    .local p1, "res":Ljava/lang/Object;, "TR;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;Z)Z

    move-result v0

    return v0
.end method

.method public final onDone(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 299
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public result()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    iget-byte v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->resFlag:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->res:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startTime()J
    .locals 2

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->startTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 382
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    const-class v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    const-string v1, "state"

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->state()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final tryAcquireShared(I)I
    .locals 4
    .param p1, "ignore"    # I

    .prologue
    .line 360
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->endTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected final tryReleaseShared(I)Z
    .locals 2
    .param p1, "ignore"    # I

    .prologue
    .line 365
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->endTime:J

    .line 368
    const/4 v0, 0x1

    return v0
.end method

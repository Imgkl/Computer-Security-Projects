.class public Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;
.super Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;
.source "GridNioAsyncNotifyFilter.java"


# instance fields
.field private gridName:Ljava/lang/String;

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private workerPool:Lorg/apache/ignite/internal/util/worker/GridWorkerPool;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p1, "gridName"    # Ljava/lang/String;
    .param p2, "exec"    # Ljava/util/concurrent/Executor;
    .param p3, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 47
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterAdapter;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->gridName:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->log:Lorg/apache/ignite/IgniteLogger;

    .line 52
    new-instance v0, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;

    invoke-direct {v0, p2, p3}, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;-><init>(Ljava/util/concurrent/Executor;Lorg/apache/ignite/IgniteLogger;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->workerPool:Lorg/apache/ignite/internal/util/worker/GridWorkerPool;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "x2"    # Lorg/apache/ignite/IgniteCheckedException;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->handleException(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V

    return-void
.end method

.method private handleException(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V
    .locals 4
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "ex"    # Lorg/apache/ignite/IgniteCheckedException;

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->proceedExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to forward exception to the underlying filter (will ignore) [ses="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "originalEx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "ex"    # Lorg/apache/ignite/IgniteCheckedException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->proceedExceptionCaught(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/IgniteCheckedException;)V

    .line 106
    return-void
.end method

.method public onMessageReceived(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V
    .locals 8
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v7, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->workerPool:Lorg/apache/ignite/internal/util/worker/GridWorkerPool;

    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$3;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->gridName:Ljava/lang/String;

    const-string v3, "message-received-notify"

    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->log:Lorg/apache/ignite/IgniteLogger;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$3;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->execute(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 101
    return-void
.end method

.method public onSessionClose(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->proceedSessionClose(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public onSessionClosed(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 7
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->workerPool:Lorg/apache/ignite/internal/util/worker/GridWorkerPool;

    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$2;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->gridName:Ljava/lang/String;

    const-string v3, "session-closed-notify"

    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->log:Lorg/apache/ignite/IgniteLogger;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$2;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->execute(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 87
    return-void
.end method

.method public onSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->proceedSessionIdleTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 121
    return-void
.end method

.method public onSessionOpened(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 7
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->workerPool:Lorg/apache/ignite/internal/util/worker/GridWorkerPool;

    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$1;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->gridName:Ljava/lang/String;

    const-string v3, "session-opened-notify"

    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->log:Lorg/apache/ignite/IgniteLogger;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter$1;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->execute(Lorg/apache/ignite/internal/util/worker/GridWorker;)V

    .line 72
    return-void
.end method

.method public onSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioSession;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->proceedSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v0

    return-object v0
.end method

.method public onSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->proceedSessionWriteTimeout(Lorg/apache/ignite/internal/util/nio/GridNioSession;)V

    .line 126
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioAsyncNotifyFilter;->workerPool:Lorg/apache/ignite/internal/util/worker/GridWorkerPool;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/worker/GridWorkerPool;->join(Z)V

    .line 58
    return-void
.end method

.class public Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;
.super Ljava/lang/Object;
.source "GridNioSessionImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/nio/GridNioSession;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final accepted:Z

.field private volatile bytesRcvd:J

.field private volatile bytesSent:J

.field private final closeTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private createTime:J

.field private filterChain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

.field private volatile lastRcvTime:J

.field private volatile lastSndTime:J

.field private final locAddr:Ljava/net/InetSocketAddress;

.field private final meta:[Ljava/lang/Object;

.field private volatile readsPaused:Z

.field private final rmtAddr:Ljava/net/InetSocketAddress;

.field private volatile sndSchedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Z)V
    .locals 3
    .param p1, "filterChain"    # Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;
    .param p2, "locAddr"    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "rmtAddr"    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "accepted"    # Z

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v2, 0x40

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->meta:[Ljava/lang/Object;

    .line 46
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->closeTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->filterChain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    .line 85
    iput-object p2, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->locAddr:Ljava/net/InetSocketAddress;

    .line 86
    iput-object p3, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->rmtAddr:Ljava/net/InetSocketAddress;

    .line 87
    iput-boolean p4, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->accepted:Z

    .line 89
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    .line 91
    .local v0, "now":J
    iput-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->sndSchedTime:J

    .line 92
    iput-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->createTime:J

    .line 93
    iput-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->lastSndTime:J

    .line 94
    iput-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->lastRcvTime:J

    .line 95
    return-void
.end method


# virtual methods
.method public accepted()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->accepted:Z

    return v0
.end method

.method public addMeta(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # I
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "val":Ljava/lang/Object;, "TT;"
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->meta:[Ljava/lang/Object;

    array-length v1, v1

    if-lt p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 202
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->meta:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 204
    .local v0, "prev":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->meta:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 206
    return-object v0
.end method

.method public bytesReceived()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->bytesRcvd:J

    return-wide v0
.end method

.method public bytesReceived(I)V
    .locals 4
    .param p1, "cnt"    # I

    .prologue
    .line 255
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->bytesRcvd:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->bytesRcvd:J

    .line 257
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->lastRcvTime:J

    .line 258
    return-void
.end method

.method public bytesSent()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->bytesSent:J

    return-wide v0
.end method

.method public bytesSent(I)V
    .locals 4
    .param p1, "cnt"    # I

    .prologue
    .line 242
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->bytesSent:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->bytesSent:J

    .line 244
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->lastSndTime:J

    .line 245
    return-void
.end method

.method protected chain()Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/util/nio/GridNioFilterChain",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->filterChain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    return-object v0
.end method

.method public close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->filterChain:Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    invoke-virtual {v1, p0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onSessionClose(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 142
    :goto_0
    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public closeTime()J
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->closeTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public closed()Z
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->closeTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

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

.method public createTime()J
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->createTime:J

    return-wide v0
.end method

.method public lastReceiveTime()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->lastRcvTime:J

    return-wide v0
.end method

.method public lastSendScheduleTime()J
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->sndSchedTime:J

    return-wide v0
.end method

.method public lastSendTime()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->lastSndTime:J

    return-wide v0
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->locAddr:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public meta(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 193
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->meta:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->meta:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public pauseReads()Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->chain()Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onPauseReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 131
    :goto_0
    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 131
    new-instance v1, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public readsPaused(Z)V
    .locals 0
    .param p1, "readsPaused"    # Z

    .prologue
    .line 288
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->readsPaused:Z

    .line 289
    return-void
.end method

.method public readsPaused()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->readsPaused:Z

    return v0
.end method

.method public recoveryDescriptor()Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public recoveryDescriptor(Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;)V
    .locals 1
    .param p1, "recoveryDesc"    # Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    .prologue
    .line 300
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remoteAddress()Ljava/net/InetSocketAddress;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->rmtAddr:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public removeMeta(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 211
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->meta:[Ljava/lang/Object;

    array-length v1, v1

    if-lt p1, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 213
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->meta:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 215
    .local v0, "prev":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->meta:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, p1

    .line 217
    return-object v0
.end method

.method public resetSendScheduleTime()V
    .locals 2

    .prologue
    .line 264
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->sndSchedTime:J

    .line 265
    return-void
.end method

.method public resumeReads()Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->chain()Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onResumeReads(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 119
    :goto_0
    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 119
    new-instance v1, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 2
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 100
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->resetSendScheduleTime()V

    .line 102
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->chain()Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;->onSessionWrite(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 107
    :goto_0
    return-object v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 107
    new-instance v1, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setClosed()Z
    .locals 6

    .prologue
    .line 274
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->closeTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
.super Ljava/lang/Object;
.source "GridNioRecoveryDescriptor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private acked:J

.field private connectCnt:J

.field private connected:Z

.field private handshakeReq:Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastAck:J

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private final msgFuts:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final node:Lorg/apache/ignite/cluster/ClusterNode;

.field private nodeLeft:Z

.field private final queueLimit:I

.field private rcvCnt:J

.field private resendCnt:I

.field private reserved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/IgniteLogger;)V
    .locals 1
    .param p1, "queueLimit"    # I
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p3, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 79
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gtz p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->msgFuts:Ljava/util/ArrayDeque;

    .line 83
    iput p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->queueLimit:I

    .line 84
    iput-object p2, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->node:Lorg/apache/ignite/cluster/ClusterNode;

    .line 85
    iput-object p3, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->log:Lorg/apache/ignite/IgniteLogger;

    .line 86
    return-void
.end method

.method private completeOnNodeLeft([Lorg/apache/ignite/internal/util/nio/GridNioFuture;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "futs":[Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "[Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 357
    .local v3, "msg":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    check-cast v3, Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;

    .end local v3    # "msg":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send message, node has left: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;->onDone(Ljava/lang/Throwable;)Z

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_0
    return-void
.end method


# virtual methods
.method public ackReceived(J)V
    .locals 7
    .param p1, "rcvCnt"    # J

    .prologue
    .line 172
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handle acknowledgment [acked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->acked:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rcvCnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msgFuts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->msgFuts:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 176
    :cond_0
    :goto_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->acked:J

    cmp-long v1, v2, p1

    if-gez v1, :cond_3

    .line 177
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->msgFuts:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 179
    .local v0, "fut":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 181
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 183
    :cond_2
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->acked:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->acked:J

    goto :goto_0

    .line 185
    .end local v0    # "fut":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    :cond_3
    return-void
.end method

.method public add(Lorg/apache/ignite/internal/util/nio/GridNioFuture;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "fut":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    const/4 v0, 0x1

    .line 153
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 155
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->skipRecovery()Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    iget v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->resendCnt:I

    if-nez v1, :cond_3

    .line 157
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->msgFuts:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 159
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->msgFuts:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->queueLimit:I

    if-ge v1, v2, :cond_2

    .line 165
    :cond_1
    :goto_0
    return v0

    .line 159
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :cond_3
    iget v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->resendCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->resendCnt:I

    goto :goto_0
.end method

.method public connected()V
    .locals 2

    .prologue
    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->reserved:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 268
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 253
    :cond_0
    :try_start_1
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->connected:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 255
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->connected:Z

    .line 257
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->handshakeReq:Lorg/apache/ignite/lang/IgniteBiTuple;

    if-eqz v1, :cond_3

    .line 258
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->handshakeReq:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteInClosure;

    .line 260
    .local v0, "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Ljava/lang/Boolean;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 262
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/lang/IgniteInClosure;->apply(Ljava/lang/Object;)V

    .line 264
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->handshakeReq:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 267
    .end local v0    # "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Ljava/lang/Boolean;>;"
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 268
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    return-void
.end method

.method public incrementConnectCount()J
    .locals 4

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->connectCnt:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->connectCnt:J

    return-wide v0
.end method

.method public lastAcknowledged()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->lastAck:J

    return-wide v0
.end method

.method public lastAcknowledged(J)V
    .locals 1
    .param p1, "lastAck"    # J

    .prologue
    .line 124
    iput-wide p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->lastAck:J

    .line 125
    return-void
.end method

.method public messagesFutures()Ljava/util/Deque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque",
            "<",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->msgFuts:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method public node()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->node:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method public nodeAlive(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 4
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 219
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHandshake(J)V
    .locals 1
    .param p1, "rcvCnt"    # J

    .prologue
    .line 242
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->ackReceived(J)V

    .line 244
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->msgFuts:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->resendCnt:I

    .line 245
    return-void
.end method

.method public onNodeLeft()V
    .locals 4

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 193
    .local v1, "futs":[Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "[Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    monitor-enter p0

    .line 194
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->nodeLeft:Z

    .line 196
    iget-boolean v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->reserved:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->msgFuts:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->msgFuts:Ljava/util/ArrayDeque;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->msgFuts:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    new-array v3, v3, [Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-object v1, v0

    .line 199
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->msgFuts:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 201
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    if-eqz v1, :cond_1

    .line 204
    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->completeOnNodeLeft([Lorg/apache/ignite/internal/util/nio/GridNioFuture;)V

    .line 205
    :cond_1
    return-void

    .line 201
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onReceived()J
    .locals 4

    .prologue
    .line 108
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->rcvCnt:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->rcvCnt:J

    .line 110
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->rcvCnt:J

    return-wide v0
.end method

.method public queueLimit()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->queueLimit:I

    return v0
.end method

.method public received()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->rcvCnt:J

    return-wide v0
.end method

.method public receivedCount()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->rcvCnt:J

    return-wide v0
.end method

.method public release()V
    .locals 5

    .prologue
    .line 275
    const/4 v2, 0x0

    .line 277
    .local v2, "futs":[Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "[Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    monitor-enter p0

    .line 278
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->connected:Z

    .line 280
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->handshakeReq:Lorg/apache/ignite/lang/IgniteBiTuple;

    if-eqz v3, :cond_3

    .line 281
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->handshakeReq:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteInClosure;

    .line 283
    .local v1, "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Ljava/lang/Boolean;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 300
    .end local v1    # "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 285
    .restart local v1    # "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Ljava/lang/Boolean;>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->handshakeReq:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 287
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/ignite/lang/IgniteInClosure;->apply(Ljava/lang/Object;)V

    .line 295
    .end local v1    # "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Ljava/lang/Boolean;>;"
    :goto_0
    iget-boolean v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->nodeLeft:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->msgFuts:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 296
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->msgFuts:Ljava/util/ArrayDeque;

    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->msgFuts:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-object v2, v0

    .line 298
    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->msgFuts:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 300
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    if-eqz v2, :cond_2

    .line 303
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->completeOnNodeLeft([Lorg/apache/ignite/internal/util/nio/GridNioFuture;)V

    .line 304
    :cond_2
    return-void

    .line 290
    :cond_3
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->reserved:Z

    .line 292
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public reserve()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 227
    monitor-enter p0

    .line 228
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->connected:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->reserved:Z

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 231
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->connected:Z

    if-nez v1, :cond_1

    .line 232
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->reserved:Z

    .line 234
    :cond_1
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->connected:Z

    if-nez v1, :cond_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryReserve(JLorg/apache/ignite/lang/IgniteInClosure;)Z
    .locals 7
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "c":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 312
    monitor-enter p0

    .line 313
    :try_start_0
    iget-boolean v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->connected:Z

    if-eqz v5, :cond_0

    .line 314
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p3, v1}, Lorg/apache/ignite/lang/IgniteInClosure;->apply(Ljava/lang/Object;)V

    .line 316
    monitor-exit p0

    move v1, v4

    .line 347
    :goto_0
    return v1

    .line 319
    :cond_0
    iget-boolean v5, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->reserved:Z

    if-eqz v5, :cond_6

    .line 320
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->handshakeReq:Lorg/apache/ignite/lang/IgniteBiTuple;

    if-eqz v1, :cond_5

    .line 321
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->handshakeReq:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 349
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 323
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->handshakeReq:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 325
    .local v2, "id0":J
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    cmp-long v1, v2, p1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v2, v3}, Ljava/lang/AssertionError;-><init>(J)V

    throw v1

    .line 327
    :cond_2
    cmp-long v1, p1, v2

    if-lez v1, :cond_4

    .line 328
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->handshakeReq:Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteInClosure;

    .line 330
    .local v0, "c0":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Ljava/lang/Boolean;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 332
    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/lang/IgniteInClosure;->apply(Ljava/lang/Object;)V

    .line 334
    new-instance v1, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v1, v5, p3}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->handshakeReq:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 342
    .end local v0    # "c0":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Ljava/lang/Boolean;>;"
    .end local v2    # "id0":J
    :goto_1
    monitor-exit p0

    move v1, v4

    goto :goto_0

    .line 337
    .restart local v2    # "id0":J
    :cond_4
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p3, v1}, Lorg/apache/ignite/lang/IgniteInClosure;->apply(Ljava/lang/Object;)V

    goto :goto_1

    .line 340
    .end local v2    # "id0":J
    :cond_5
    new-instance v1, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v1, v5, p3}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->handshakeReq:Lorg/apache/ignite/lang/IgniteBiTuple;

    goto :goto_1

    .line 345
    :cond_6
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->reserved:Z

    .line 347
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

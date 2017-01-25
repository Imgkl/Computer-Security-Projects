.class Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;
.super Ljava/lang/Object;
.source "GridCacheTxFinishSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TxFinishSync"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cnt:I

.field private final nodeId:Ljava/util/UUID;

.field private nodeLeft:Z

.field private pendingFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

.field private final threadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;Ljava/util/UUID;J)V
    .locals 1
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "threadId"    # J

    .prologue
    .line 206
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.TxFinishSync;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->nodeId:Ljava/util/UUID;

    .line 208
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->threadId:J

    .line 209
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$1;)V
    .locals 1
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;
    .param p2, "x1"    # Ljava/util/UUID;
    .param p3, "x2"    # J
    .param p5, "x3"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$1;

    .prologue
    .line 186
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.TxFinishSync;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;Ljava/util/UUID;J)V

    return-void
.end method


# virtual methods
.method public awaitAckAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.TxFinishSync;"
    monitor-enter p0

    .line 238
    :try_start_0
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->cnt:I

    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x0

    monitor-exit p0

    .line 253
    :goto_0
    return-object v0

    .line 241
    :cond_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->nodeLeft:Z

    if-eqz v0, :cond_1

    .line 242
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to wait for finish synchronizer state (node left grid): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->nodeId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    monitor-exit p0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 245
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->pendingFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    if-nez v0, :cond_3

    .line 246
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating transaction synchronizer future [nodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->nodeId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->threadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->trace(Ljava/lang/String;)V

    .line 250
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->pendingFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 253
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->pendingFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onNodeLeft()V
    .locals 4

    .prologue
    .line 280
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.TxFinishSync;"
    monitor-enter p0

    .line 281
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->nodeLeft:Z

    .line 283
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->pendingFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->pendingFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to wait for transaction synchronizer completed state (node left grid): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->nodeId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->pendingFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 289
    :cond_0
    monitor-exit p0

    .line 290
    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive()V
    .locals 4

    .prologue
    .line 261
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.TxFinishSync;"
    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving transaction synchronizer to completed state [nodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->nodeId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->threadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->trace(Ljava/lang/String;)V

    .line 266
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->cnt:I

    .line 268
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->pendingFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->pendingFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->pendingFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 273
    :cond_1
    monitor-exit p0

    .line 274
    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSend()V
    .locals 4

    .prologue
    .line 216
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;, "Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync<TK;TV;>.TxFinishSync;"
    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->access$300(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moved transaction synchronizer to waiting state [nodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->nodeId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->threadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->trace(Ljava/lang/String;)V

    .line 221
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->cnt:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->nodeLeft:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 223
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->nodeLeft:Z

    if-eqz v0, :cond_2

    .line 224
    monitor-exit p0

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync$TxFinishSync;->cnt:I

    .line 228
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

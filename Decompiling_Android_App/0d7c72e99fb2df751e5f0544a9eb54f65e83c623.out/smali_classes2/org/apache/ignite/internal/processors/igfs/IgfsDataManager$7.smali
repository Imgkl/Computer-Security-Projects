.class Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;
.super Ljava/lang/Object;
.source "IgfsDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->putSafe(Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

.field final synthetic val$data:[B

.field final synthetic val$key:Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B)V
    .locals 0

    .prologue
    .line 1208
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->val$key:Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1211
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$1900(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->val$key:Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->val$data:[B

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1217
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->maxPendingPuts:J
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2000(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 1218
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2100(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1221
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->val$data:[B

    array-length v2, v2

    int-to-long v2, v2

    # -= operator for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->curPendingPuts:J
    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2222(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;J)J

    .line 1223
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsCond:Ljava/util/concurrent/locks/Condition;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2300(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1226
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2100(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1230
    :cond_0
    :goto_0
    return-void

    .line 1226
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2100(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to put IGFS data block into cache [key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->val$key:Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", err="

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1217
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->maxPendingPuts:J
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2000(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 1218
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2100(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1221
    :try_start_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->val$data:[B

    array-length v2, v2

    int-to-long v2, v2

    # -= operator for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->curPendingPuts:J
    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2222(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;J)J

    .line 1223
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsCond:Ljava/util/concurrent/locks/Condition;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2300(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1226
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2100(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2100(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 1217
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->maxPendingPuts:J
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2000(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 1218
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2100(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1221
    :try_start_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->val$data:[B

    array-length v3, v3

    int-to-long v4, v3

    # -= operator for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->curPendingPuts:J
    invoke-static {v2, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2222(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;J)J

    .line 1223
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsCond:Ljava/util/concurrent/locks/Condition;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2300(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1226
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2100(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_1
    throw v1

    :catchall_3
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2100(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.class Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;
.super Ljava/lang/Object;
.source "GridCacheMvccManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFreed(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    .prologue
    .line 159
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->isNear()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onLocked(Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    .prologue
    .line 151
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->isNear()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)V
    .locals 9
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "prev"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .param p3, "owner"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    const/16 v8, 0x5d

    .line 104
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 105
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-ne p3, p2, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New and previous owner are identical instances: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 107
    :cond_1
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New and previous owners have identical versions [owner="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", prev="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 109
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 110
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received owner changed callback ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", owner="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", prev="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 113
    :cond_3
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->local()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->nearLocal()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 114
    :cond_4
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$000(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 116
    .local v2, "futCol":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;>;"
    if-eqz v2, :cond_7

    .line 117
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    .line 118
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;
    instance-of v5, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture;

    if-eqz v5, :cond_5

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;->isDone()Z

    move-result v5

    if-nez v5, :cond_5

    move-object v4, v1

    .line 119
    check-cast v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture;

    .line 126
    .local v4, "mvccFut":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture<Ljava/lang/Boolean;>;"
    invoke-interface {v4, p1, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture;->onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    .end local v1    # "fut":Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;
    .end local v2    # "futCol":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;>;"
    .end local v4    # "mvccFut":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture<Ljava/lang/Boolean;>;"
    :cond_6
    return-void

    .line 133
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 134
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Lock future not found for owner change callback (will try transaction futures) [owner="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", prev="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 138
    :cond_8
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v5

    invoke-virtual {v5, p1, p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 139
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 140
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found transaction for changed owner: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 145
    :cond_9
    :goto_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Ljava/util/Queue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;

    .line 146
    .local v0, "f":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->recheck(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_1

    .line 142
    .end local v0    # "f":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_a
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 143
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v5, v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find transaction for changed owner: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

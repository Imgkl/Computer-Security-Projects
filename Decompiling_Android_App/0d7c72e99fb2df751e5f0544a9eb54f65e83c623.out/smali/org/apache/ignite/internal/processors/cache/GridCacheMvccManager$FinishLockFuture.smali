.class Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridCacheMvccManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinishLockFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final pendingLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

.field private final topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1051
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 8
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;",
            ">;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1068
    .local p2, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 1060
    new-instance v5, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v5}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->pendingLocks:Ljava/util/Map;

    .line 1069
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    sget-object v5, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->ZERO:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {p3, v5}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v5

    if-gtz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1071
    :cond_0
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 1073
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 1076
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->localCandidates([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v4

    .line 1078
    .local v4, "locs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1079
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 1081
    .local v0, "cands":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v6, 0x0

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->versionFilter()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1083
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1084
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->pendingLocks:Ljava/util/Map;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1087
    .end local v0    # "cands":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    .end local v4    # "locs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :catch_0
    move-exception v3

    .line 1088
    .local v3, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->exchLog:Lorg/apache/ignite/IgniteLogger;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1089
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->exchLog:Lorg/apache/ignite/IgniteLogger;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got removed entry when adding it to finish lock future (will ignore): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1093
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v3    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_2
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->exchLog:Lorg/apache/ignite/IgniteLogger;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1094
    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->exchLog:Lorg/apache/ignite/IgniteLogger;
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pending lock set [topVer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", locks="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->pendingLocks:Ljava/util/Map;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1095
    :cond_3
    return-void
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;

    .prologue
    .line 1051
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

.method private versionFilter()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1101
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topologyVersion()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1103
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;)V

    return-object v0
.end method


# virtual methods
.method recheck()V
    .locals 7

    .prologue
    .line 1117
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->pendingLocks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1118
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 1120
    .local v3, "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->cacheId()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 1122
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 1124
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-nez v1, :cond_0

    .line 1125
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1127
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->recheck(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_0

    .line 1130
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v3    # "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1131
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v4, v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "After rechecking finished future: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1133
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->pendingLocks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1134
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->exchLog:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1135
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->exchLog:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finish lock future is done: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1137
    :cond_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->onDone()Z

    .line 1139
    :cond_4
    return-void
.end method

.method recheck(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    .locals 6
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1146
    if-nez p1, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->exchLog:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1150
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->exchLog:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rechecking entry for completion [entry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", finFut="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1152
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->pendingLocks:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1154
    .local v1, "cands":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    if-eqz v1, :cond_0

    .line 1155
    monitor-enter v1

    .line 1156
    :try_start_0
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1157
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 1160
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->removed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1161
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1173
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1164
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    :cond_4
    :try_start_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1165
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->pendingLocks:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    :cond_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->pendingLocks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1168
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->onDone()Z

    .line 1170
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->exchLog:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1171
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->exchLog:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finish lock future is done: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1173
    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1179
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->pendingLocks:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1180
    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6}, Ljava/util/HashMap;-><init>(IF)V

    .line 1182
    .local v4, "txs":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->pendingLocks:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1183
    .local v1, "cands":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 1184
    .local v0, "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    iget-object v6, v6, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->tx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1186
    .end local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v1    # "cands":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    const-class v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "txs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", super="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p0, v6}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1189
    .end local v4    # "txs":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :goto_1
    return-object v5

    :cond_2
    const-class v5, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager$FinishLockFuture;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p0, v6}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

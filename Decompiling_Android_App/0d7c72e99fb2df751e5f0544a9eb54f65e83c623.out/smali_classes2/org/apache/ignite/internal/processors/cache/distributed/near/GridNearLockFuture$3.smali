.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;
.super Ljava/lang/Object;
.source "GridNearLockFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->proceedMapping(Lorg/jsr166/ConcurrentLinkedDeque8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C2",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;",
        "Ljava/lang/Exception;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

.field final synthetic val$mappedKeys:Ljava/util/Collection;

.field final synthetic val$mappings:Lorg/jsr166/ConcurrentLinkedDeque8;

.field final synthetic val$node:Lorg/apache/ignite/cluster/ClusterNode;

.field final synthetic val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;Lorg/apache/ignite/cluster/ClusterNode;Lorg/jsr166/ConcurrentLinkedDeque8;)V
    .locals 0

    .prologue
    .line 960
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->val$mappedKeys:Ljava/util/Collection;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->val$node:Lorg/apache/ignite/cluster/ClusterNode;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->val$mappings:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;Ljava/lang/Exception;)Ljava/lang/Boolean;
    .locals 30
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 962
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture.3;"
    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isLockTimeoutOrCancelled(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->error()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->isLockTimeoutOrCancelled(Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 964
    :cond_0
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1080
    :goto_0
    return-object v4

    .line 966
    :cond_1
    if-eqz p2, :cond_2

    .line 967
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Ljava/lang/Throwable;)V

    .line 969
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 972
    :cond_2
    if-nez p1, :cond_3

    .line 973
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    new-instance v6, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Lock response is null for future: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Ljava/lang/Throwable;)V

    .line 975
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 978
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->error()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 979
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->error()Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Ljava/lang/Throwable;)V

    .line 981
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 984
    :cond_4
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 985
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Acquired lock for local DHT mapping [locId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mappedKeys="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->val$mappedKeys:Ljava/util/Collection;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", fut="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 989
    :cond_5
    const/16 v23, 0x0

    .line 991
    .local v23, "i":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->val$mappedKeys:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 993
    .local v26, "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->val$req:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v4, v0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 996
    .local v2, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$400(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 999
    .local v27, "oldValTup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->hasValue()Z

    move-result v18

    .line 1000
    .local v18, "hasBytes":Z
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->rawGet()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v17

    .line 1001
    .local v17, "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->value(I)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v3

    .line 1003
    .local v3, "newVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->dhtVersion(I)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    .line 1004
    .local v5, "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->mappedVersion(I)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    .line 1007
    .local v8, "mappedVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$500(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Z

    move-result v4

    if-eqz v4, :cond_c

    if-eqz v27, :cond_c

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v29, 0x1

    .line 1009
    .local v29, "record":Z
    :goto_3
    if-nez v3, :cond_7

    .line 1010
    if-eqz v27, :cond_7

    .line 1011
    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1012
    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "newVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    check-cast v3, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 1014
    .restart local v3    # "newVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_6
    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    check-cast v17, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 1020
    .restart local v17    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->val$node:Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$700(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->resetFromPrimary(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    .line 1022
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$600(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->committedVersions()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->rolledbackVersions()Ljava/util/Collection;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->pending()Ljava/util/Collection;

    move-result-object v11

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->readyNearLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$800(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$900(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->onePhaseCommit()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1026
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->filterResult(I)Z

    move-result v28

    .line 1028
    .local v28, "pass":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v6

    if-eqz v28, :cond_d

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v4

    :goto_4
    invoke-virtual {v6, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filters([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 1031
    .end local v28    # "pass":Z
    :cond_8
    if-eqz v29, :cond_a

    .line 1032
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v4

    const/16 v6, 0x40

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1033
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->events()Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;

    move-result-object v9

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->partition()I

    move-result v10

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v14, 0x40

    if-eqz v3, :cond_e

    const/16 v16, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$800(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;->resolveTaskName()Ljava/lang/String;

    move-result-object v21

    :goto_6
    move-object v15, v3

    invoke-virtual/range {v9 .. v21}, Lorg/apache/ignite/internal/processors/cache/GridCacheEventManager;->addEvent(ILorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;ILorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/CacheObject;ZLjava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1048
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v6

    if-eqz v17, :cond_10

    const/4 v4, 0x1

    :goto_7
    invoke-virtual {v6, v4}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onRead(Z)V

    .line 1051
    :cond_a
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1052
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Processed response for entry [res="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1068
    :cond_b
    add-int/lit8 v23, v23, 0x1

    .line 1069
    goto/16 :goto_1

    .line 1007
    .end local v29    # "record":Z
    :cond_c
    const/16 v29, 0x0

    goto/16 :goto_3

    .line 1028
    .restart local v28    # "pass":Z
    .restart local v29    # "record":Z
    :cond_d
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->alwaysFalse0Arr()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto/16 :goto_4

    .line 1033
    .end local v28    # "pass":Z
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_5

    :cond_f
    const/16 v21, 0x0

    goto :goto_6

    .line 1048
    :cond_10
    const/4 v4, 0x0

    goto :goto_7

    .line 1057
    .end local v3    # "newVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v5    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v8    # "mappedVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v17    # "oldVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v18    # "hasBytes":Z
    .end local v27    # "oldValTup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .end local v29    # "record":Z
    :catch_0
    move-exception v25

    .line 1058
    .local v25, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_2
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1059
    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$300()Lorg/apache/ignite/IgniteLogger;

    move-result-object v4

    const-string v6, "Failed to add candidates because entry was removed (will renew)."

    invoke-interface {v4, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1063
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$100(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;

    move/from16 v0, v23

    invoke-interface {v6, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 1074
    .end local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v26    # "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :catch_1
    move-exception v22

    .line 1075
    .local v22, "ex":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Ljava/lang/Throwable;)V

    .line 1077
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    .line 1072
    .end local v22    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v24    # "i$":Ljava/util/Iterator;
    :cond_12
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->val$mappings:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-static {v4, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;->access$1200(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture;Lorg/jsr166/ConcurrentLinkedDeque8;)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1080
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 960
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture.3;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Exception;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockFuture$3;->apply(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;Ljava/lang/Exception;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

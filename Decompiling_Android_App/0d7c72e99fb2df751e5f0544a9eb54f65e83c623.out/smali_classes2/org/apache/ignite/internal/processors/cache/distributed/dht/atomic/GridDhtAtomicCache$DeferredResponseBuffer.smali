.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;
.super Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.source "GridDhtAtomicCache.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeferredResponseBuffer"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final endTime:J

.field private guard:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final nodeId:Ljava/util/UUID;

.field private respVers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

.field private final timeoutId:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/UUID;)V
    .locals 4
    .param p2, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 2869
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>.DeferredResponseBuffer;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 2852
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->guard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2855
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->respVers:Ljava/util/Collection;

    .line 2870
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->nodeId:Ljava/util/UUID;

    .line 2872
    invoke-static {p2}, Lorg/apache/ignite/lang/IgniteUuid;->fromUuid(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->timeoutId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 2874
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$3700()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->endTime:J

    .line 2875
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;
    .param p2, "x1"    # Ljava/util/UUID;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$1;

    .prologue
    .line 2847
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>.DeferredResponseBuffer;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/UUID;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;

    .prologue
    .line 2847
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->finish()V

    return-void
.end method

.method private finish()V
    .locals 7

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>.DeferredResponseBuffer;"
    const/16 v6, 0x5d

    .line 2946
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$4000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->respVers:Ljava/util/Collection;

    invoke-direct {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;-><init>(ILjava/util/Collection;)V

    .line 2950
    .local v2, "msg":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$4100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalGateway;->readLock()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2953
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$4300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->nodeId:Ljava/util/UUID;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$4200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2956
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$4400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2974
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$5000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->nodeId:Ljava/util/UUID;

    invoke-interface {v3, v4, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2975
    return-void

    .line 2956
    :catchall_0
    move-exception v3

    :try_start_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$4400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->gateway()Lorg/apache/ignite/internal/GridKernalGateway;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalGateway;->readUnlock()V

    throw v3
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2959
    :catch_0
    move-exception v1

    .line 2960
    .local v1, "ignored":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$4500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2961
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$4600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send deferred dht update response to remote node (grid is stopping) [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->nodeId:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 2964
    .end local v1    # "ignored":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 2965
    .local v1, "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$4700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2966
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$4800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send deferred dht update response to remote node (did node leave grid?) [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->nodeId:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2969
    .end local v1    # "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_2
    move-exception v0

    .line 2970
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$4900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send deferred dht update response to remote node [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->nodeId:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addResponse(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 5
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>.DeferredResponseBuffer;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2908
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2910
    const/4 v0, 0x0

    .line 2913
    .local v0, "snd":Z
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->guard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 2922
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2939
    :goto_0
    return v1

    .line 2916
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->respVers:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2918
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->respVers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$3800()I

    move-result v3

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->guard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 2919
    const/4 v0, 0x1

    .line 2922
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2925
    if-eqz v0, :cond_2

    .line 2927
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2930
    :try_start_2
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->finish()V

    .line 2932
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->access$3900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2935
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :cond_2
    move v1, v2

    .line 2939
    goto :goto_0

    .line 2922
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1

    .line 2935
    :catchall_1
    move-exception v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public endTime()J
    .locals 2

    .prologue
    .line 2884
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>.DeferredResponseBuffer;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->endTime:J

    return-wide v0
.end method

.method public onTimeout()V
    .locals 3

    .prologue
    .line 2889
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>.DeferredResponseBuffer;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->guard:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2890
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2893
    :try_start_0
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2896
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2899
    :cond_0
    return-void

    .line 2896
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public timeoutId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 2879
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>.DeferredResponseBuffer;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->timeoutId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

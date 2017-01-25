.class public Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManagerAdapter;
.source "GridCacheDeploymentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;,
        Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManagerAdapter",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private allParticipants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation
.end field

.field private depEnabled:Z

.field private deps:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private volatile globalLdr:Ljava/lang/ClassLoader;

.field private final ignoreOwnership:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final locDep:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            ">;"
        }
    .end annotation
.end field

.field private volatile locDepOwner:Z

.field private final undeploys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/util/typedef/CA;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManagerAdapter;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->undeploys:Ljava/util/Map;

    .line 56
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->deps:Ljava/util/concurrent/ConcurrentMap;

    .line 59
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->allParticipants:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->locDep:Ljava/util/concurrent/atomic/AtomicReference;

    .line 71
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership:Ljava/lang/ThreadLocal;

    .line 857
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->deps:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->allParticipants:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;Ljava/lang/ClassLoader;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
    .param p1, "x1"    # Ljava/lang/ClassLoader;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->onUndeploy0(Ljava/lang/ClassLoader;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    return-void
.end method

.method private addEntries(Ljava/lang/ClassLoader;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V
    .locals 5
    .param p1, "ldr"    # Ljava/lang/ClassLoader;
    .param p3, "cache"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 285
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entries()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 286
    .local v1, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v4

    invoke-direct {p0, p1, v1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->undeploy(Ljava/lang/ClassLoader;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v4

    invoke-direct {p0, p1, v1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->undeploy(Ljava/lang/ClassLoader;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 290
    .local v3, "undeploy":Z
    :goto_1
    if-eqz v3, :cond_0

    .line 291
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    .end local v3    # "undeploy":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-direct {p0, p1, v1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->undeploy(Ljava/lang/ClassLoader;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)Z

    move-result v3

    goto :goto_1

    .line 293
    .end local v1    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_4
    return-void
.end method

.method private addGlobalParticipants(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Z)Ljava/util/Map;
    .locals 6
    .param p1, "sndNodeId"    # Ljava/util/UUID;
    .param p2, "sndLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "locDepOwner"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 502
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    .local p3, "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    const/4 v0, 0x0

    .line 504
    .local v0, "added":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    if-eqz p3, :cond_2

    .line 505
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 506
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/UUID;

    .line 507
    .local v4, "nodeId":Ljava/util/UUID;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/lang/IgniteUuid;

    .line 509
    .local v3, "ldrVer":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->allParticipants:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 510
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->allParticipants:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    if-nez v0, :cond_1

    .line 513
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/IgniteUtils;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v0

    .line 515
    :cond_1
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 520
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ldrVer":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v4    # "nodeId":Ljava/util/UUID;
    :cond_2
    if-eqz p4, :cond_6

    .line 521
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-nez p1, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 522
    :cond_3
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    if-nez p2, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 524
    :cond_4
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->allParticipants:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 525
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->allParticipants:Ljava/util/Map;

    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    if-nez v0, :cond_5

    .line 528
    const/4 v5, 0x1

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v0

    .line 530
    :cond_5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_6
    return-object v0
.end method

.method private onUndeploy0(Ljava/lang/ClassLoader;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 9
    .param p1, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    .local p2, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    const/16 v8, 0x5d

    const/4 v7, 0x1

    .line 232
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    .line 234
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-direct {p0, p1, v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->addEntries(Ljava/lang/ClassLoader;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    .line 238
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->isNear()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 239
    check-cast v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v4

    invoke-direct {p0, p1, v1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->addEntries(Ljava/lang/ClassLoader;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)V

    .line 241
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished searching keys for undeploy [keysCnt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 244
    :cond_1
    invoke-virtual {v0, v1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearLocally(Ljava/util/Collection;Z)V

    .line 246
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 247
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->clearLocally(Ljava/util/Collection;Z)V

    .line 249
    :cond_2
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v2

    .line 251
    .local v2, "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>;"
    if-eqz v2, :cond_3

    .line 252
    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onUndeploy(Ljava/lang/ClassLoader;)V

    .line 255
    :cond_3
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->onUndeploy(Ljava/lang/ClassLoader;)I

    move-result v3

    .line 259
    .local v3, "swapUndeployCnt":I
    :goto_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->system()Z

    move-result v4

    if-nez v4, :cond_4

    .line 260
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, ""

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndWarn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 261
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleared all cache entries for undeployed class loader [[cacheName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namexx()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", undeployCnt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", swapUndeployCnt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clsLdr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cleared all cache entries for undeployed class loader for cache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->namexx()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndWarn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 267
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "  ^-- Cache auto-undeployment happens in SHARED deployment mode (to turn off, switch to CONTINUOUS mode)"

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndWarn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 270
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, ""

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndWarn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 274
    :cond_4
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$1;)V

    iput-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLdr:Ljava/lang/ClassLoader;

    .line 275
    return-void

    .line 255
    .end local v3    # "swapUndeployCnt":I
    :cond_5
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->swap()Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->onUndeploy(Ljava/lang/ClassLoader;)I

    move-result v3

    goto/16 :goto_0
.end method

.method private undeploy(Ljava/lang/ClassLoader;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;)Z
    .locals 12
    .param p1, "ldr"    # Ljava/lang/ClassLoader;
    .param p2, "e"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p3, "cache"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    .prologue
    .line 302
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    .line 304
    .local v2, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-virtual {p3, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 306
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-nez v0, :cond_1

    .line 307
    const/4 v5, 0x0

    .line 340
    :cond_0
    :goto_0
    return v5

    .line 313
    :cond_1
    :try_start_0
    sget-object v9, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->GLOBAL:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->peek(Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v6

    .line 315
    .local v6, "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v2, v9, v10}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v3

    .line 317
    .local v3, "key0":Ljava/lang/Object;
    sget-boolean v9, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->$assertionsDisabled:Z

    if-nez v9, :cond_2

    if-nez v3, :cond_2

    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Key cannot be null for cache entry: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 321
    .end local v3    # "key0":Ljava/lang/Object;
    .end local v6    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_0
    move-exception v1

    .line 322
    .local v1, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    const/4 v5, 0x0

    goto :goto_0

    .line 319
    .end local v1    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v3    # "key0":Ljava/lang/Object;
    .restart local v6    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_2
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 329
    .local v7, "val0":Ljava/lang/Object;
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectObjectClassLoader(Ljava/lang/Object;)Ljava/lang/ClassLoader;

    move-result-object v4

    .line 330
    .local v4, "keyLdr":Ljava/lang/ClassLoader;
    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectObjectClassLoader(Ljava/lang/Object;)Ljava/lang/ClassLoader;

    move-result-object v8

    .line 332
    .local v8, "valLdr":Ljava/lang/ClassLoader;
    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {p1, v8}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    const/4 v5, 0x1

    .line 334
    .local v5, "res":Z
    :goto_1
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 335
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Finished examining entry [entryCls="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", key="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", keyCls="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", valCls="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    :goto_2
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", keyLdr="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", valLdr="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", res="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v11, 0x5d

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 324
    .end local v3    # "key0":Ljava/lang/Object;
    .end local v4    # "keyLdr":Ljava/lang/ClassLoader;
    .end local v5    # "res":Z
    .end local v6    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v7    # "val0":Ljava/lang/Object;
    .end local v8    # "valLdr":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v1

    .line 326
    .local v1, "ignore":Lorg/apache/ignite/IgniteException;
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 332
    .end local v1    # "ignore":Lorg/apache/ignite/IgniteException;
    .restart local v3    # "key0":Ljava/lang/Object;
    .restart local v4    # "keyLdr":Ljava/lang/ClassLoader;
    .restart local v6    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v7    # "val0":Ljava/lang/Object;
    .restart local v8    # "valLdr":Ljava/lang/ClassLoader;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 335
    .restart local v5    # "res":Z
    :cond_5
    const-string v9, "null"

    goto :goto_2
.end method


# virtual methods
.method public addDeploymentContext(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)V
    .locals 9
    .param p1, "info"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .prologue
    .line 462
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    .line 465
    .local v2, "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->deps:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;

    .line 467
    .local v0, "depInfo":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    if-nez v0, :cond_0

    .line 468
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;

    .end local v0    # "depInfo":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    invoke-virtual {v2}, Lorg/apache/ignite/lang/IgniteUuid;->globalId()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->userVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->participants()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;-><init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$1;)V

    .line 471
    .restart local v0    # "depInfo":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->deps:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;

    .line 473
    .local v7, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    if-eqz v7, :cond_1

    .line 474
    move-object v0, v7

    .line 479
    .end local v7    # "old":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->participants()Ljava/util/Map;

    move-result-object v8

    .line 481
    .local v8, "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    if-eqz v8, :cond_1

    .line 482
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0, v8, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->addParticipants(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 483
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->deps:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 491
    .end local v8    # "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :cond_1
    return-void
.end method

.method public getClassLoader(Lorg/apache/ignite/lang/IgniteUuid;)Ljava/lang/ClassLoader;
    .locals 2
    .param p1, "ldrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 745
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 747
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridDeploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getDeployment(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v0

    .line 749
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClassLoaderId(Ljava/lang/ClassLoader;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .param p1, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 734
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    if-nez p1, :cond_0

    .line 735
    const/4 v0, 0x0

    .line 737
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridDeploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getClassLoaderId(Ljava/lang/ClassLoader;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    goto :goto_0
.end method

.method public globalDeploymentInfo()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    const/4 v0, 0x0

    .line 687
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->depEnabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 689
    :cond_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->locDepOwner:Z

    if-eqz v1, :cond_2

    .line 716
    :cond_1
    :goto_0
    return-object v0

    .line 694
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/configuration/DeploymentMode;->CONTINUOUS:Lorg/apache/ignite/configuration/DeploymentMode;

    if-eq v1, v2, :cond_1

    .line 697
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->deps:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;

    .line 698
    .local v6, "d":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->senderId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 703
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participants()Ljava/util/Map;

    move-result-object v4

    .line 705
    .local v4, "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    if-eqz v4, :cond_3

    .line 706
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/UUID;

    .line 707
    .local v9, "id":Ljava/util/UUID;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 709
    new-instance v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->loaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->userVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->mode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v3

    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->locDepOwner:Z

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/util/Map;Z)V

    goto :goto_0
.end method

.method public globalLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 142
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLdr:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public ignoreOwnership(Z)V
    .locals 2
    .param p1, "ignore"    # Z

    .prologue
    .line 165
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership:Ljava/lang/ThreadLocal;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public isGlobalLoader()Z
    .locals 2

    .prologue
    .line 756
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridDeploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->isGlobalLoader(Ljava/lang/ClassLoader;)Z

    move-result v0

    return v0
.end method

.method public localLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 128
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->locDep:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 130
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0
.end method

.method public onEnter()V
    .locals 2

    .prologue
    .line 149
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->locDepOwner:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->depEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->ignoreOwnership:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->internal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 155
    .local v0, "ldr":Ljava/lang/ClassLoader;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->p2pLoader(Ljava/lang/ClassLoader;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->locDepOwner:Z

    .line 159
    .end local v0    # "ldr":Ljava/lang/ClassLoader;
    :cond_0
    return-void
.end method

.method public onUndeploy(Ljava/lang/ClassLoader;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 4
    .param p1, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    .local p2, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 204
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received onUndeploy() request [ldr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cctx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 207
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->undeploys:Ljava/util/Map;

    monitor-enter v2

    .line 208
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->undeploys:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 210
    .local v0, "queue":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/typedef/CA;>;"
    if-nez v0, :cond_2

    .line 211
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->undeploys:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "queue":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/typedef/CA;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "queue":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/typedef/CA;>;"
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_2
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$3;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;Ljava/lang/ClassLoader;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 224
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->unwindUndeploys()V

    .line 225
    :cond_3
    return-void

    .line 219
    .end local v0    # "queue":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/typedef/CA;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public p2pContext(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/util/Map;Z)V
    .locals 19
    .param p1, "sndId"    # Ljava/util/UUID;
    .param p2, "ldrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "userVer"    # Ljava/lang/String;
    .param p4, "mode"    # Lorg/apache/ignite/configuration/DeploymentMode;
    .param p6, "locDepOwner"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/configuration/DeploymentMode;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    .local p5, "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->depEnabled:Z

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 355
    :cond_0
    sget-object v7, Lorg/apache/ignite/configuration/DeploymentMode;->PRIVATE:Lorg/apache/ignite/configuration/DeploymentMode;

    move-object/from16 v0, p4

    if-eq v0, v7, :cond_1

    sget-object v7, Lorg/apache/ignite/configuration/DeploymentMode;->ISOLATED:Lorg/apache/ignite/configuration/DeploymentMode;

    move-object/from16 v0, p4

    if-ne v0, v7, :cond_5

    .line 356
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v17

    .line 358
    .local v17, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v17, :cond_3

    .line 359
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 360
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring p2p context (sender has left) [sndId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ldrId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", userVer="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", participants="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 454
    .end local v17    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    :goto_0
    return-void

    .line 366
    .restart local v17    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_3
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->isDaemon()Z

    move-result v14

    .line 369
    .local v14, "daemon":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 370
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring deployment in PRIVATE or ISOLATED mode [sndId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ldrId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", userVer="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", participants="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", daemon="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 374
    :cond_4
    if-nez v14, :cond_2

    .line 375
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring deployment in PRIVATE or ISOLATED mode [sndId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ldrId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", userVer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", participants="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", daemon="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 383
    .end local v14    # "daemon":Z
    .end local v17    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v7

    move-object/from16 v0, p4

    if-eq v0, v7, :cond_6

    .line 384
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Local and remote deployment mode mismatch (please fix configuration and restart) [locDepMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", rmtDepMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", rmtNodeId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 391
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 392
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting p2p context [sndId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ldrId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", userVer="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", seqNum="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/lang/IgniteUuid;->localId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", participants="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", locDepOwner="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 399
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->deps:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;

    .line 401
    .local v6, "depInfo":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    if-nez v6, :cond_8

    .line 402
    new-instance v6, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;

    .end local v6    # "depInfo":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    const/4 v12, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;-><init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$1;)V

    .line 404
    .restart local v6    # "depInfo":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->deps:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v7, v0, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;

    .line 406
    .local v18, "old":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    if-eqz v18, :cond_9

    .line 407
    move-object/from16 v6, v18

    .line 412
    .end local v18    # "old":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    :cond_8
    if-eqz p5, :cond_9

    .line 413
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v0, p5

    invoke-virtual {v6, v0, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->addParticipants(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 414
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->deps:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v7, v0, v6}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 423
    :cond_9
    const/4 v13, 0x0

    .line 425
    .local v13, "added":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    if-eqz p6, :cond_a

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->addGlobalParticipants(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v13

    .line 428
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    if-nez v7, :cond_c

    .line 430
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->deps:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v7, v0, v6}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 432
    if-eqz v13, :cond_b

    .line 433
    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->allParticipants:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_c
    if-eqz p5, :cond_10

    .line 439
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/UUID;

    .line 440
    .local v16, "id":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    if-nez v7, :cond_d

    .line 441
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->removeParticipant(Ljava/util/UUID;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 442
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->deps:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v7, v0, v6}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 444
    :cond_e
    if-eqz v13, :cond_f

    .line 445
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :cond_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->allParticipants:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 452
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "id":Ljava/util/UUID;
    :cond_10
    if-eqz v13, :cond_2

    invoke-interface {v13}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 453
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridDeploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->allParticipants:Ljava/util/Map;

    invoke-virtual {v7, v8, v13}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->addCacheParticipants(Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public prepare(Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;)V
    .locals 5
    .param p1, "deployable"    # Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;

    .prologue
    .line 658
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->depEnabled:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 661
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;->deployInfo()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    move-result-object v2

    if-nez v2, :cond_3

    .line 662
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalDeploymentInfo()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    move-result-object v0

    .line 664
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;
    if-nez v0, :cond_1

    .line 665
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->locDep:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 667
    .local v1, "locDep0":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-eqz v1, :cond_1

    .line 669
    new-instance v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;
    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)V

    .line 671
    .restart local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->locDepOwner:Z

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->localDeploymentOwner(Z)V

    .line 675
    .end local v1    # "locDep0":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :cond_1
    if-eqz v0, :cond_2

    .line 676
    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeployable;->prepare(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)V

    .line 678
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 679
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prepared grid cache deployable [dep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deployable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 681
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;
    :cond_3
    return-void
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    const/4 v2, 0x0

    .line 721
    const-string v0, ">>> "

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> Cache deployment manager memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   Undeploys: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->undeploys:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   Cached deployments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->deps:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   All participants: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->allParticipants:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 726
    return-void
.end method

.method public registerClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 581
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 585
    :goto_0
    return-void

    .line 584
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->registerClass(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public registerClass(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 7
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v6, 0x5d

    const/4 v5, 0x0

    .line 593
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploymentEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 595
    :cond_0
    if-eqz p1, :cond_1

    const-class v3, Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 650
    :cond_1
    :goto_0
    return-void

    .line 598
    :cond_2
    if-nez p2, :cond_3

    .line 599
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p2

    .line 602
    :cond_3
    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->p2pLoader(Ljava/lang/ClassLoader;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 605
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->locDep:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 607
    .local v1, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {p2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->hasParent(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 609
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->locDep:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    check-cast v1, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 612
    .restart local v1    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->local()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 615
    :cond_5
    if-eqz v1, :cond_6

    .line 616
    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 618
    .local v0, "curLdr":Ljava/lang/ClassLoader;
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 623
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployedClass(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_1

    .line 629
    .end local v0    # "curLdr":Ljava/lang/ClassLoader;
    :cond_6
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridDeploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->deploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v2

    .line 631
    .local v2, "newDep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-eqz v2, :cond_9

    .line 632
    if-eqz v1, :cond_8

    .line 634
    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->sampleClassName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployedClass(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 635
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->locDep:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 639
    :cond_7
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encountered incompatible class loaders for cache [class1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", class2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->sampleClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 642
    :cond_8
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->locDep:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_0

    .line 646
    :cond_9
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to deploy class for local deployment [clsName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ldr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public registerClass(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 564
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    if-nez p1, :cond_0

    .line 574
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return-void

    .line 567
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 568
    check-cast v0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    .line 570
    .local v0, "p":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->deployClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->registerClass(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 573
    .end local v0    # "p":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    :cond_1
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/Class;

    .end local p1    # "obj":Ljava/lang/Object;
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->registerClass(Ljava/lang/Class;)V

    goto :goto_0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_1
.end method

.method public registerClasses(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 554
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    .local p1, "objs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-eqz p1, :cond_0

    .line 555
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 556
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->registerClass(Ljava/lang/Object;)V

    goto :goto_0

    .line 557
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public varargs registerClasses([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 544
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->registerClasses(Ljava/lang/Iterable;)V

    .line 545
    return-void
.end method

.method public start0()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridConfig()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CacheClassLoader;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;Ljava/lang/ClassLoader;Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLdr:Ljava/lang/ClassLoader;

    .line 84
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridDeploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->enabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->depEnabled:Z

    .line 86
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->depEnabled:Z

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$2;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$2;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/16 v2, 0xb

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xc

    aput v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 116
    :cond_0
    return-void
.end method

.method protected stop0(Z)V
    .locals 3
    .param p1, "cancel"    # Z

    .prologue
    .line 120
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    .line 122
    :cond_0
    return-void
.end method

.method public unwind(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 7
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .prologue
    .line 176
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager<TK;TV;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->undeploys:Ljava/util/Map;

    monitor-enter v5

    .line 177
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->undeploys:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 178
    .local v3, "q":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/typedef/CA;>;"
    monitor-exit v5

    .line 180
    if-nez v3, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 178
    .end local v3    # "q":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/typedef/CA;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 183
    .restart local v3    # "q":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/util/typedef/CA;>;"
    :cond_1
    const/4 v1, 0x0

    .line 185
    .local v1, "cnt":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/typedef/CA;

    .line 186
    .local v0, "c":Lorg/apache/ignite/internal/util/typedef/CA;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/CA;->apply()V

    .line 188
    add-int/lit8 v1, v1, 0x1

    .line 189
    goto :goto_1

    .line 191
    .end local v0    # "c":Lorg/apache/ignite/internal/util/typedef/CA;
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unwound undeploys count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

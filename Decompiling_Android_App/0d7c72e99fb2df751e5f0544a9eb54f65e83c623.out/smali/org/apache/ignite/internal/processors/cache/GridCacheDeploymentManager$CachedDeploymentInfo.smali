.class Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;
.super Ljava/lang/Object;
.source "GridCacheDeploymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedDeploymentInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final depMode:Lorg/apache/ignite/configuration/DeploymentMode;

.field private final ldrId:Lorg/apache/ignite/lang/IgniteUuid;

.field private participants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final participantsLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final sndId:Ljava/util/UUID;

.field private final userVer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 857
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/util/Map;)V
    .locals 1
    .param p1, "sndId"    # Ljava/util/UUID;
    .param p2, "ldrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "userVer"    # Ljava/lang/String;
    .param p4, "depMode"    # Lorg/apache/ignite/configuration/DeploymentMode;
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 885
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    .local p5, "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participantsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 886
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/ignite/lang/IgniteUuid;->globalId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 888
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->sndId:Ljava/util/UUID;

    .line 889
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->ldrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 890
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->userVer:Ljava/lang/String;

    .line 891
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 892
    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participants:Ljava/util/Map;

    .line 894
    return-void

    .line 892
    :cond_2
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-direct {v0, p5}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/UUID;
    .param p2, "x1"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lorg/apache/ignite/configuration/DeploymentMode;
    .param p5, "x4"    # Ljava/util/Map;
    .param p6, "x5"    # Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$1;

    .prologue
    .line 857
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;-><init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method addParticipants(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 902
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    .local p1, "newParticipants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .local p2, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participantsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 905
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participants:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participants:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 906
    const/4 v2, 0x0

    .line 925
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participantsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v2

    .line 908
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 909
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v3}, Lorg/apache/ignite/lang/IgniteUuid;->globalId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 925
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participantsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 911
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    if-nez v2, :cond_1

    .line 915
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participants:Ljava/util/Map;

    if-nez v2, :cond_3

    .line 916
    new-instance v2, Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-direct {v2}, Lorg/jsr166/ConcurrentLinkedHashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participants:Ljava/util/Map;

    .line 918
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 919
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 922
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    :cond_4
    const/4 v2, 0x1

    .line 925
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participantsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method loaderId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 964
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->ldrId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public mode()Lorg/apache/ignite/configuration/DeploymentMode;
    .locals 1

    .prologue
    .line 978
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    return-object v0
.end method

.method participants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 950
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participants:Ljava/util/Map;

    return-object v0
.end method

.method removeParticipant(Ljava/util/UUID;)Z
    .locals 2
    .param p1, "leftNodeId"    # Ljava/util/UUID;

    .prologue
    .line 934
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 936
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participantsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 939
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participants:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participants:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 942
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participantsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 939
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 942
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->participantsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method senderId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 957
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->sndId:Ljava/util/UUID;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 983
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method userVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 971
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;, "Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager$CachedDeploymentInfo;->userVer:Ljava/lang/String;

    return-object v0
.end method

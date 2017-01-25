.class public Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;
.super Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStoreAdapter;
.source "GridDeploymentPerLoaderStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;",
            ">;"
        }
    .end annotation
.end field

.field private ctxLdr:Ljava/lang/ClassLoader;

.field private discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private final mux:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/spi/deployment/DeploymentSpi;Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;)V
    .locals 1
    .param p1, "spi"    # Lorg/apache/ignite/spi/deployment/DeploymentSpi;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p3, "comm"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStoreAdapter;-><init>(Lorg/apache/ignite/spi/deployment/DeploymentSpi;Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;)V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->cache:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->mux:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->mux:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->cache:Ljava/util/Map;

    return-object v0
.end method

.method private scheduleUndeploy(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;J)V
    .locals 8
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    .param p2, "timeout"    # J

    .prologue
    .line 332
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->mux:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 334
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->undeployed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->pendingUndeploy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->onUndeployScheduled()V

    .line 337
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$2;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$2;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;Lorg/apache/ignite/lang/IgniteUuid;JLorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 357
    :cond_1
    return-void
.end method


# virtual methods
.method public addParticipants(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "allParticipants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .local p2, "addedParticipants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 323
    :cond_0
    return-void
.end method

.method public bridge synthetic explicitDeploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStoreAdapter;->explicitDeploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v0

    return-object v0
.end method

.method public explicitUndeploy(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 8
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "rsrcName"    # Ljava/lang/String;

    .prologue
    .line 361
    sget-boolean v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 362
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 364
    :cond_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 366
    .local v3, "undeployed":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->mux:Ljava/lang/Object;

    monitor-enter v5

    .line 367
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->cache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 368
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;

    .line 370
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->senderNodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 371
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->hasName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 372
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 374
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->undeploy()V

    .line 376
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 379
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Undeployed Private or Isolated deployment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;>;"
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;

    .line 386
    .restart local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->recordUndeployed()V

    goto :goto_1

    .line 387
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    :cond_4
    return-void
.end method

.method public getDeployment(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 30
    .param p1, "meta"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;

    .prologue
    .line 184
    sget-boolean v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 186
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 189
    :cond_1
    sget-boolean v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 190
    :cond_2
    sget-boolean v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId()Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 191
    :cond_3
    sget-boolean v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->sequenceNumber()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid sequence number (must be positive): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 193
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 194
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting to peer-load class based on deployment metadata: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 196
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v24

    .line 198
    .local v24, "snd":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v24, :cond_7

    .line 199
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create Private or Isolated mode deployment (sender node left grid): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 201
    const/4 v11, 0x0

    .line 316
    :cond_6
    :goto_0
    return-object v11

    .line 206
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->mux:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 207
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->cache:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;

    .line 209
    .local v11, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    if-nez v11, :cond_f

    .line 210
    const-wide/16 v28, 0x0

    .line 214
    .local v28, "undeployTimeout":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->cache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;

    .line 215
    .local v22, "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->senderNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->undeployed()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->pendingUndeploy()Z

    move-result v5

    if-nez v5, :cond_8

    .line 217
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->sequenceNumber()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->sequenceNumber()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_a

    .line 219
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->existingDeployedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 220
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 221
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received request for a class with newer sequence number (will schedule current class for undeployment) [cls="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newSeq="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->sequenceNumber()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", oldSeq="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->sequenceNumber()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", senderNodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", curClsLdrId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newClsLdrId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 230
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->scheduleUndeploy(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;J)V

    goto/16 :goto_1

    .line 303
    .end local v11    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    .end local v22    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v28    # "undeployTimeout":J
    :catchall_0
    move-exception v5

    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 235
    .restart local v11    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    .restart local v22    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v28    # "undeployTimeout":J
    :cond_a
    :try_start_1
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->sequenceNumber()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->sequenceNumber()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_c

    .line 236
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->deployedClass(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 237
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->timestamp()J

    move-result-wide v8

    sub-long v26, v6, v8

    .line 239
    .local v26, "time":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v6

    cmp-long v5, v26, v6

    if-gez v5, :cond_b

    .line 242
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v6

    sub-long v28, v6, v26

    .line 244
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 245
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received execution request for a stale class (will deploy and schedule undeployment in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[cls="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", curSeq="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->sequenceNumber()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", rcvdSeq="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->sequenceNumber()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", senderNodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", curClsLdrId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", rcvdClsLdrId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 254
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received execution request for a class that has been redeployed (will ignore): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 257
    const/4 v11, 0x0

    monitor-exit v25

    goto/16 :goto_0

    .line 262
    .end local v26    # "time":J
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sequence number does not correspond to class loader ID [seqNum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->sequenceNumber()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dep="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 265
    const/4 v11, 0x0

    monitor-exit v25

    goto/16 :goto_0

    .line 270
    .end local v22    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->parentLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-nez v5, :cond_10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctxLdr:Ljava/lang/ClassLoader;

    .line 273
    .local v10, "parent":Ljava/lang/ClassLoader;
    :goto_2
    if-nez v10, :cond_e

    .line 274
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 277
    :cond_e
    new-instance v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->userVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v11

    .end local v11    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId()Ljava/util/UUID;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->comm:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v14}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingLocalClassPathExclude()[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingMissedResourcesCacheSize()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v4 .. v20}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/configuration/DeploymentMode;ZLorg/apache/ignite/internal/GridKernalContext;Ljava/lang/ClassLoader;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;JLorg/apache/ignite/IgniteLogger;[Ljava/lang/String;IZZ)V

    .line 294
    .local v4, "clsLdr":Ljava/lang/ClassLoader;
    new-instance v11, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->userVersion()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v12, p0

    move-object v14, v4

    move-object/from16 v17, v24

    invoke-direct/range {v11 .. v18}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/ClassLoader;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)V

    .line 297
    .restart local v11    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->cache:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-interface {v5, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-wide/16 v6, 0x0

    cmp-long v5, v28, v6

    if-lez v5, :cond_f

    .line 301
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v11, v1, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->scheduleUndeploy(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;J)V

    .line 303
    .end local v4    # "clsLdr":Ljava/lang/ClassLoader;
    .end local v10    # "parent":Ljava/lang/ClassLoader;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v28    # "undeployTimeout":J
    :cond_f
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    if-eqz v11, :cond_6

    .line 307
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v11, v5, v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->deployedClass(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v21

    .line 309
    .local v21, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v21, :cond_6

    .line 310
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load peer class [alias="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dep="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 312
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 270
    .end local v21    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v28    # "undeployTimeout":J
    :cond_10
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->parentLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    goto/16 :goto_2
.end method

.method public getDeployment(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 2
    .param p1, "ldrId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 177
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    monitor-exit v1

    return-object v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeployments()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->mux:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->cache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onKernalStart()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 135
    .local v4, "rmv":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->mux:Ljava/lang/Object;

    monitor-enter v6

    .line 136
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->cache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;

    .line 139
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->senderNodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    .line 141
    .local v3, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v3, :cond_0

    .line 142
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->undeploy()V

    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 146
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;>;"
    .end local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;>;"
    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;

    .line 152
    .restart local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->recordUndeployed()V

    goto :goto_1

    .line 154
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Registered deployment discovery listener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 156
    :cond_3
    return-void
.end method

.method public onKernalStop()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    .line 163
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistered deployment discovery listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method

.method public start()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctxLdr:Ljava/lang/ClassLoader;

    .line 68
    new-instance v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$1;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .line 98
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/16 v2, 0xc

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xb

    aput v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 103
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 111
    .local v0, "cp":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->mux:Ljava/lang/Object;

    monitor-enter v4

    .line 112
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->cache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;

    .line 115
    .local v1, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->undeploy()V

    .line 117
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    .end local v1    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 120
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->cache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 121
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;

    .line 124
    .restart local v1    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;->recordUndeployed()V

    goto :goto_1

    .line 126
    .end local v1    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore$IsolatedDeployment;
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;->stopInfo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 128
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

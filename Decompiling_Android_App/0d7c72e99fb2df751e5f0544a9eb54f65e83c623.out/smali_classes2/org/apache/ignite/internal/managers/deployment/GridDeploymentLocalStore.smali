.class Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;
.super Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStoreAdapter;
.source "GridDeploymentLocalStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore$1;,
        Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore$LocalDeploymentListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mux:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->$assertionsDisabled:Z

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
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStoreAdapter;-><init>(Lorg/apache/ignite/spi/deployment/DeploymentSpi;Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;)V

    .line 46
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->mux:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;
    .param p1, "x1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->undeploy(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private deploy(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Z)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 19
    .param p1, "depMode"    # Lorg/apache/ignite/configuration/DeploymentMode;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "recordEvt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/configuration/DeploymentMode;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;"
        }
    .end annotation

    .prologue
    .line 240
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 242
    .local v4, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->mux:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 243
    const/4 v15, 0x0

    .line 246
    .local v15, "fireEvt":Z
    const/4 v11, 0x0

    .line 249
    .local v11, "cachedDeps":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 250
    .local v14, "deps":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    invoke-virtual {v14}, Lorg/jsr166/ConcurrentLinkedDeque8;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 251
    .local v12, "d":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, p2

    if-ne v5, v0, :cond_1

    .line 253
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p4, v5, v6

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->addDeployedClass(Ljava/lang/Class;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v15

    .line 255
    move-object v11, v14

    .line 257
    move-object v4, v12

    .line 263
    .end local v12    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :cond_2
    if-eqz v11, :cond_0

    move-object v13, v4

    .line 267
    .end local v4    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .end local v14    # "deps":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    .local v13, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :goto_0
    if-eqz v11, :cond_7

    .line 268
    :try_start_1
    sget-boolean v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    if-nez v13, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    :catchall_0
    move-exception v5

    move-object v4, v13

    .end local v13    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .restart local v4    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :goto_1
    if-eqz v15, :cond_3

    .line 316
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->recordDeploy(Ljava/lang/Class;Ljava/lang/String;Z)V

    :cond_3
    throw v5

    .line 318
    :catchall_1
    move-exception v5

    :goto_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 270
    .end local v4    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .restart local v13    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->cache:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p4

    invoke-interface {v5, v0, v11}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 274
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v11}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    :cond_5
    if-eqz v15, :cond_6

    .line 316
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->recordDeploy(Ljava/lang/Class;Ljava/lang/String;Z)V

    :cond_6
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v4, v13

    .line 320
    .end local v13    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .restart local v4    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :goto_3
    return-object v13

    .line 279
    .end local v4    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .restart local v13    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/lang/IgniteUuid;->fromUuid(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    .line 281
    .local v7, "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->userVersion(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v8

    .line 283
    .local v8, "userVer":Ljava/lang/String;
    new-instance v4, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v10}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;-><init>(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/ClassLoader;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 285
    .end local v13    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .restart local v4    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    const/4 v5, 0x1

    :try_start_6
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p4, v5, v6

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->addDeployedClass(Ljava/lang/Class;[Ljava/lang/String;)Z

    move-result v15

    .line 287
    sget-boolean v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->$assertionsDisabled:Z

    if-nez v5, :cond_8

    if-nez v15, :cond_8

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Class was not added to newly created deployment [cls="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", depMode="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", dep="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v9, 0x5d

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 315
    .end local v7    # "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v8    # "userVer":Ljava/lang/String;
    :catchall_2
    move-exception v5

    goto/16 :goto_1

    .line 290
    .restart local v7    # "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v8    # "userVer":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->newDeque()Lorg/apache/ignite/lang/IgniteCallable;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-static {v5, v0, v6}, Lorg/apache/ignite/internal/util/typedef/F;->addIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 293
    .restart local v14    # "deps":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    invoke-virtual {v14}, Lorg/jsr166/ConcurrentLinkedDeque8;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 294
    invoke-virtual {v14}, Lorg/jsr166/ConcurrentLinkedDeque8;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 295
    .restart local v12    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    invoke-virtual {v12}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->undeployed()Z

    move-result v5

    if-nez v5, :cond_9

    .line 296
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found more than one active deployment for the same resource [cls="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", depMode="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", dep="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v9, 0x5d

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 299
    const/4 v13, 0x0

    .line 315
    if-eqz v15, :cond_a

    .line 316
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->recordDeploy(Ljava/lang/Class;Ljava/lang/String;Z)V

    :cond_a
    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3

    .line 305
    .end local v12    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_b
    :try_start_8
    invoke-virtual {v14, v4}, Lorg/jsr166/ConcurrentLinkedDeque8;->addFirst(Ljava/lang/Object;)V

    .line 307
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 309
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v14}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 312
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Created new deployment: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 315
    :cond_d
    if-eqz v15, :cond_e

    .line 316
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->recordDeploy(Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 318
    :cond_e
    monitor-exit v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v13, v4

    .line 320
    goto/16 :goto_3

    .line 318
    .end local v4    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .end local v7    # "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v8    # "userVer":Ljava/lang/String;
    .end local v14    # "deps":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    .restart local v13    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :catchall_3
    move-exception v5

    move-object v4, v13

    .end local v13    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .restart local v4    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    goto/16 :goto_2

    :cond_f
    move-object v13, v4

    .end local v4    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .restart local v13    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    goto/16 :goto_0
.end method

.method private deployment(Ljava/lang/String;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 218
    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 220
    .local v1, "deps":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 223
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->undeployed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAlias(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 479
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->isTask(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    const-class v2, Lorg/apache/ignite/compute/ComputeTaskName;

    invoke-virtual {p1, p2, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->annotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/compute/ComputeTaskName;

    .line 484
    .local v1, "ann":Lorg/apache/ignite/compute/ComputeTaskName;
    if-eqz v1, :cond_0

    .line 485
    invoke-interface {v1}, Lorg/apache/ignite/compute/ComputeTaskName;->value()Ljava/lang/String;

    move-result-object v0

    .line 488
    .end local v1    # "ann":Lorg/apache/ignite/compute/ComputeTaskName;
    :cond_0
    return-object v0
.end method

.method private recordDeploy(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 7
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "recordEvt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v4, 0x21

    const/16 v5, 0x1e

    .line 381
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 383
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->isTask(Ljava/lang/Class;)Z

    move-result v1

    .line 385
    .local v1, "isTask":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_3

    const-string v3, "Task"

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " locally deployed: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, "msg":Ljava/lang/String;
    if-eqz p3, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v6

    if-eqz v1, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    new-instance v0, Lorg/apache/ignite/events/DeploymentEvent;

    invoke-direct {v0}, Lorg/apache/ignite/events/DeploymentEvent;-><init>()V

    .line 390
    .local v0, "evt":Lorg/apache/ignite/events/DeploymentEvent;
    invoke-virtual {v0, v2}, Lorg/apache/ignite/events/DeploymentEvent;->message(Ljava/lang/String;)V

    .line 391
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/ignite/events/DeploymentEvent;->node(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 392
    if-eqz v1, :cond_5

    :goto_2
    invoke-virtual {v0, v4}, Lorg/apache/ignite/events/DeploymentEvent;->type(I)V

    .line 393
    invoke-virtual {v0, p2}, Lorg/apache/ignite/events/DeploymentEvent;->alias(Ljava/lang/String;)V

    .line 395
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 399
    .end local v0    # "evt":Lorg/apache/ignite/events/DeploymentEvent;
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isGrid(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isJdk(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 404
    :cond_2
    :goto_3
    return-void

    .line 385
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    const-string v3, "Class"

    goto :goto_0

    .restart local v2    # "msg":Ljava/lang/String;
    :cond_4
    move v3, v5

    .line 387
    goto :goto_1

    .restart local v0    # "evt":Lorg/apache/ignite/events/DeploymentEvent;
    :cond_5
    move v4, v5

    .line 392
    goto :goto_2

    .line 402
    .end local v0    # "evt":Lorg/apache/ignite/events/DeploymentEvent;
    :cond_6
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 403
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3, v2}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private recordDeployFailed(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)V
    .locals 8
    .param p2, "clsLdr"    # Ljava/lang/ClassLoader;
    .param p3, "recordEvt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v6, 0x23

    const/16 v5, 0x20

    .line 415
    sget-boolean v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 416
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 418
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->isTask(Ljava/lang/Class;)Z

    move-result v1

    .line 420
    .local v1, "isTask":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to deploy "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_4

    const-string v4, "task"

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " [cls="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", clsLdr="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x5d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "msg":Ljava/lang/String;
    if-eqz p3, :cond_2

    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v7

    if-eqz v1, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 423
    if-eqz v1, :cond_6

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getTaskName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, "taskName":Ljava/lang/String;
    :goto_2
    new-instance v0, Lorg/apache/ignite/events/DeploymentEvent;

    invoke-direct {v0}, Lorg/apache/ignite/events/DeploymentEvent;-><init>()V

    .line 427
    .local v0, "evt":Lorg/apache/ignite/events/DeploymentEvent;
    invoke-virtual {v0, v2}, Lorg/apache/ignite/events/DeploymentEvent;->message(Ljava/lang/String;)V

    .line 428
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/ignite/events/DeploymentEvent;->node(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 429
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->isTask(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_3
    invoke-virtual {v0, v5}, Lorg/apache/ignite/events/DeploymentEvent;->type(I)V

    .line 430
    invoke-virtual {v0, v3}, Lorg/apache/ignite/events/DeploymentEvent;->alias(Ljava/lang/String;)V

    .line 432
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 435
    .end local v0    # "evt":Lorg/apache/ignite/events/DeploymentEvent;
    .end local v3    # "taskName":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 436
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4, v2}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 437
    :cond_3
    return-void

    .line 420
    .end local v2    # "msg":Ljava/lang/String;
    :cond_4
    const-string v4, "class"

    goto :goto_0

    .restart local v2    # "msg":Ljava/lang/String;
    :cond_5
    move v4, v6

    .line 422
    goto :goto_1

    .line 423
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .restart local v0    # "evt":Lorg/apache/ignite/events/DeploymentEvent;
    .restart local v3    # "taskName":Ljava/lang/String;
    :cond_7
    move v5, v6

    .line 429
    goto :goto_3
.end method

.method private recordUndeploy(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .locals 9
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .prologue
    const/16 v6, 0x22

    const/16 v7, 0x1f

    .line 445
    sget-boolean v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->undeployed()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 447
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 449
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployedClasses()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 450
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->isTask(Ljava/lang/Class;)Z

    move-result v3

    .line 452
    .local v3, "isTask":Z
    if-eqz v3, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Task locally undeployed: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 454
    .local v4, "msg":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v8

    if-eqz v3, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 455
    new-instance v1, Lorg/apache/ignite/events/DeploymentEvent;

    invoke-direct {v1}, Lorg/apache/ignite/events/DeploymentEvent;-><init>()V

    .line 457
    .local v1, "evt":Lorg/apache/ignite/events/DeploymentEvent;
    invoke-virtual {v1, v4}, Lorg/apache/ignite/events/DeploymentEvent;->message(Ljava/lang/String;)V

    .line 458
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/ignite/events/DeploymentEvent;->node(Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 459
    if-eqz v3, :cond_6

    move v5, v6

    :goto_3
    invoke-virtual {v1, v5}, Lorg/apache/ignite/events/DeploymentEvent;->type(I)V

    .line 460
    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->getAlias(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/ignite/events/DeploymentEvent;->alias(Ljava/lang/String;)V

    .line 462
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 465
    .end local v1    # "evt":Lorg/apache/ignite/events/DeploymentEvent;
    :cond_3
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 466
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5, v4}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 452
    .end local v4    # "msg":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class locally undeployed: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .restart local v4    # "msg":Ljava/lang/String;
    :cond_5
    move v5, v7

    .line 454
    goto :goto_2

    .restart local v1    # "evt":Lorg/apache/ignite/events/DeploymentEvent;
    :cond_6
    move v5, v7

    .line 459
    goto :goto_3

    .line 469
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "evt":Lorg/apache/ignite/events/DeploymentEvent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isTask":Z
    .end local v4    # "msg":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private undeploy(Ljava/lang/ClassLoader;)V
    .locals 10
    .param p1, "ldr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 495
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 497
    .local v2, "doomed":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->mux:Ljava/lang/Object;

    monitor-enter v7

    .line 498
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 499
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 501
    .local v1, "deps":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    invoke-virtual {v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 502
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 504
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    if-ne v6, p1, :cond_1

    .line 505
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->undeploy()V

    .line 507
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 509
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 512
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removed undeployed class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 519
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .end local v1    # "deps":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    .end local v4    # "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;>;"
    .end local v5    # "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 516
    .restart local v1    # "deps":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    .restart local v4    # "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;>;"
    .restart local v5    # "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 517
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 519
    .end local v1    # "deps":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    .end local v5    # "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 522
    .restart local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->obsolete()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 524
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->onUndeployed(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    .line 527
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v6

    instance-of v6, v6, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    if-eqz v6, :cond_4

    .line 528
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;

    invoke-virtual {v6, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshaller;->onUndeploy(Ljava/lang/ClassLoader;)V

    .line 530
    :cond_4
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->clearSerializationCaches()V

    .line 533
    invoke-static {p1}, Lorg/apache/ignite/internal/util/GridAnnotationsCache;->onUndeployed(Ljava/lang/ClassLoader;)V

    .line 534
    invoke-static {p1}, Lorg/apache/ignite/internal/util/GridClassLoaderCache;->onUndeployed(Ljava/lang/ClassLoader;)V

    .line 537
    :cond_5
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->recordUndeploy(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    goto :goto_2

    .line 539
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :cond_6
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
    .line 368
    .local p1, "allParticipants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .local p2, "addedParticipants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 369
    :cond_0
    return-void
.end method

.method public explicitDeploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 10
    .param p2, "clsLdr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x1

    .line 328
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 331
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->spi:Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    invoke-interface {v0, p2, p1}, Lorg/apache/ignite/spi/deployment/DeploymentSpi;->register(Ljava/lang/ClassLoader;Ljava/lang/Class;)Z

    .line 333
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->deployment(Ljava/lang/String;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v6

    .line 335
    .local v6, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v6, :cond_1

    .line 336
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->spi:Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/deployment/DeploymentSpi;->findResource(Ljava/lang/String;)Lorg/apache/ignite/spi/deployment/DeploymentResource;

    move-result-object v8

    .line 338
    .local v8, "rsrc":Lorg/apache/ignite/spi/deployment/DeploymentResource;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Lorg/apache/ignite/spi/deployment/DeploymentResource;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 339
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v1

    invoke-interface {v8}, Lorg/apache/ignite/spi/deployment/DeploymentResource;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v8}, Lorg/apache/ignite/spi/deployment/DeploymentResource;->getResourceClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v8}, Lorg/apache/ignite/spi/deployment/DeploymentResource;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->deploy(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Z)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :try_end_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 343
    .end local v8    # "rsrc":Lorg/apache/ignite/spi/deployment/DeploymentResource;
    :cond_1
    return-object v6

    .line 345
    .end local v6    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :catch_0
    move-exception v7

    .line 346
    .local v7, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    invoke-direct {p0, p1, p2, v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->recordDeployFailed(Ljava/lang/Class;Ljava/lang/ClassLoader;Z)V

    .line 349
    invoke-virtual {v7}, Lorg/apache/ignite/spi/IgniteSpiException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/ignite/IgniteCheckedException;

    if-eqz v0, :cond_2

    .line 350
    invoke-virtual {v7}, Lorg/apache/ignite/spi/IgniteSpiException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteCheckedException;

    throw v0

    .line 352
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to deploy class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public explicitUndeploy(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "rsrcName"    # Ljava/lang/String;

    .prologue
    .line 358
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 362
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->spi:Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    invoke-interface {v0, p2}, Lorg/apache/ignite/spi/deployment/DeploymentSpi;->unregister(Ljava/lang/String;)Z

    .line 363
    return-void
.end method

.method public getDeployment(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 17
    .param p1, "meta"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deployment meta for local deployment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias()Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "alias":Ljava/lang/String;
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v5, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Meta is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 131
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->deployment(Ljava/lang/String;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v13

    .line 133
    .local v13, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-eqz v13, :cond_3

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquired deployment class from local cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_2
    move-object v1, v13

    .line 210
    :goto_0
    return-object v1

    .line 140
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->spi:Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    invoke-interface {v1, v5}, Lorg/apache/ignite/spi/deployment/DeploymentSpi;->findResource(Ljava/lang/String;)Lorg/apache/ignite/spi/deployment/DeploymentResource;

    move-result-object v16

    .line 142
    .local v16, "rsrc":Lorg/apache/ignite/spi/deployment/DeploymentResource;
    if-eqz v16, :cond_7

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v2

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/spi/deployment/DeploymentResource;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/spi/deployment/DeploymentResource;->getResourceClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->record()Z

    move-result v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->deploy(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Z)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v13

    .line 146
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-nez v13, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 148
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquired deployment class from SPI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 207
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquired deployment class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_6
    move-object v1, v13

    .line 210
    goto :goto_0

    .line 153
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 155
    .local v8, "ldr":Ljava/lang/ClassLoader;
    if-nez v8, :cond_8

    .line 156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 159
    if-nez v8, :cond_8

    .line 160
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 163
    :cond_8
    instance-of v1, v8, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    if-eqz v1, :cond_a

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping local auto-deploy (nested execution) [ldr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", meta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 167
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 172
    :cond_a
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className()Ljava/lang/String;

    move-result-object v12

    .line 174
    .local v12, "clsName":Ljava/lang/String;
    if-eqz v12, :cond_d

    .end local v12    # "clsName":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x1

    invoke-static {v12, v1, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    .line 176
    .local v9, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->spi:Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    invoke-interface {v1, v8, v9}, Lorg/apache/ignite/spi/deployment/DeploymentSpi;->register(Ljava/lang/ClassLoader;Ljava/lang/Class;)Z

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->spi:Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/spi/deployment/DeploymentSpi;->findResource(Ljava/lang/String;)Lorg/apache/ignite/spi/deployment/DeploymentResource;

    move-result-object v16

    .line 180
    if-eqz v16, :cond_e

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/spi/deployment/DeploymentResource;->getResourceClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieved auto-loaded resource from spi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 184
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->record()Z

    move-result v11

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->deploy(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Z)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v13

    .line 186
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    if-nez v13, :cond_5

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    .end local v9    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v15

    .line 195
    .local v15, "ignored":Ljava/lang/ClassNotFoundException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load class for local auto-deployment [ldr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", meta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 198
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_0

    .end local v15    # "ignored":Ljava/lang/ClassNotFoundException;
    .restart local v12    # "clsName":Ljava/lang/String;
    :cond_d
    move-object v12, v5

    .line 174
    goto/16 :goto_1

    .line 189
    .end local v12    # "clsName":Ljava/lang/String;
    .restart local v9    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find resource from deployment SPI even after registering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/spi/IgniteSpiException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 200
    .end local v9    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v14

    .line 201
    .local v14, "e":Lorg/apache/ignite/spi/IgniteSpiException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to deploy local class with meta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v14}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 203
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public getDeployment(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 6
    .param p1, "ldrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 107
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->mux:Ljava/lang/Object;

    monitor-enter v5

    .line 108
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 109
    .local v1, "deps":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    invoke-virtual {v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 110
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    monitor-exit v5

    .line 118
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .end local v1    # "deps":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    .line 112
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->getUsedDeployments()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 115
    .restart local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 112
    .end local v0    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 118
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeployments()Ljava/util/Collection;
    .locals 7
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
    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v2, "deps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->mux:Ljava/lang/Object;

    monitor-enter v6

    .line 96
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 97
    .local v1, "depList":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    invoke-virtual {v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 98
    .local v0, "d":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    invoke-interface {v2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 99
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    .end local v0    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .end local v1    # "depList":Lorg/jsr166/ConcurrentLinkedDeque8;, "Lorg/jsr166/ConcurrentLinkedDeque8<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    return-object v2
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->spi:Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    new-instance v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore$LocalDeploymentListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore$LocalDeploymentListener;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore$1;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/deployment/DeploymentSpi;->setListener(Lorg/apache/ignite/spi/deployment/DeploymentListener;)V

    .line 65
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 9

    .prologue
    .line 71
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->spi:Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lorg/apache/ignite/spi/deployment/DeploymentSpi;->setListener(Lorg/apache/ignite/spi/deployment/DeploymentListener;)V

    .line 75
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->mux:Ljava/lang/Object;

    monitor-enter v7

    .line 76
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 78
    .local v1, "cp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 79
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v8}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 80
    .end local v1    # "cp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v1    # "cp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 83
    .local v2, "deps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 84
    .local v0, "cls":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->undeploy(Ljava/lang/ClassLoader;)V

    goto :goto_1

    .line 87
    .end local v0    # "cls":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .end local v2    # "deps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 88
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;->stopInfo()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 89
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

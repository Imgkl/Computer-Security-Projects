.class public Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;
.source "IgfsProcessor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CTX_TO_IGFS:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsContext;",
            "Lorg/apache/ignite/IgniteFileSystem;",
            ">;"
        }
    .end annotation
.end field

.field private static final NULL_NAME:Ljava/lang/String;


# instance fields
.field private final igfsCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->$assertionsDisabled:Z

    .line 51
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->NULL_NAME:Ljava/lang/String;

    .line 54
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->CTX_TO_IGFS:Lorg/apache/ignite/lang/IgniteClosure;

    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 61
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->igfsCache:Ljava/util/concurrent/ConcurrentMap;

    .line 69
    return-void
.end method

.method private checkIgfsOnRemoteNode(Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 18
    .param p1, "rmtNode"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    const-string v2, "org.apache.ignite.igfs"

    invoke-interface {v1, v2}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;

    .line 366
    .local v15, "locAttrs":[Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    const-string v1, "org.apache.ignite.igfs"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;

    .line 368
    .local v17, "rmtAttrs":[Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    invoke-static {v15}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    :cond_0
    return-void

    .line 371
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-eqz v17, :cond_2

    if-nez v15, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 373
    :cond_3
    move-object/from16 v8, v17

    .local v8, "arr$":[Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    array-length v12, v8

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v8    # "arr$":[Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v16, v8, v11

    .line 374
    .local v16, "rmtAttr":Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    move-object v9, v15

    .local v9, "arr$":[Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    array-length v13, v9

    .local v13, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_1
    if-ge v10, v13, :cond_7

    aget-object v14, v9, v10

    .line 376
    .local v14, "locAttr":Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 377
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->metaCacheName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->metaCacheName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 378
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Meta cache names should be different for different IGFS instances configuration (fix configuration or set -DIGNITE_SKIP_CONFIGURATION_CONSISTENCY_CHECK=true system property) [metaCacheName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->metaCacheName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", locNodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rmtNodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", locIgfsName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rmtIgfsName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 387
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->dataCacheName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->dataCacheName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 388
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data cache names should be different for different IGFS instances configuration (fix configuration or set -DIGNITE_SKIP_CONFIGURATION_CONSISTENCY_CHECK=true system property)[dataCacheName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->dataCacheName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", locNodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rmtNodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", locIgfsName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rmtIgfsName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_5
    const-string v2, "Data block size"

    const-string v3, "BlockSize"

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->blockSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->blockSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->checkSame(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    const-string v2, "Affinity mapper group size"

    const-string v3, "GrpSize"

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->groupSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->groupSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->checkSame(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    const-string v2, "Meta cache name"

    const-string v3, "MetaCacheName"

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->metaCacheName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->metaCacheName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->checkSame(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    const-string v2, "Data cache name"

    const-string v3, "DataCacheName"

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->dataCacheName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->dataCacheName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->checkSame(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    const-string v2, "Default mode"

    const-string v3, "DefaultMode"

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->defaultMode()Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v5

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->defaultMode()Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->checkSame(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    const-string v2, "Path modes"

    const-string v3, "PathModes"

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->pathModes()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->pathModes()Ljava/util/Map;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->checkSame(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    const-string v2, "Fragmentizer enabled"

    const-string v3, "FragmentizerEnabled"

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->fragmentizerEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->fragmentizerEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;->igfsName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->checkSame(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 373
    .end local v14    # "locAttr":Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;
    :cond_7
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto/16 :goto_0
.end method

.method private checkSame(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "rmtNodeId"    # Ljava/util/UUID;
    .param p4, "rmtVal"    # Ljava/lang/Object;
    .param p5, "locVal"    # Ljava/lang/Object;
    .param p6, "igfsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-static {p4, p5}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be the same on all nodes in grid for IGFS configuration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(fix configuration or set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "IGNITE_SKIP_CONFIGURATION_CONSISTENCY_CHECK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=true system "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "property ) [rmtNodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rmt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", loc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ggfName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_0
    return-void
.end method

.method private config(Ljava/lang/String;)Lorg/apache/ignite/configuration/CacheConfiguration;
    .locals 5
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 350
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/ignite/configuration/CacheConfiguration;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 351
    .local v1, "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 355
    .end local v1    # "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    :goto_1
    return-object v1

    .line 350
    .restart local v1    # "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .end local v1    # "ccfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private maskName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 247
    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->NULL_NAME:Ljava/lang/String;

    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private validateLocalIgfsConfigurations([Lorg/apache/ignite/configuration/FileSystemConfiguration;)V
    .locals 26
    .param p1, "cfgs"    # [Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 258
    .local v7, "cfgNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v4, p1

    .local v4, "arr$":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_13

    aget-object v6, v4, v10

    .line 259
    .local v6, "cfg":Lorg/apache/ignite/configuration/FileSystemConfiguration;
    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getName()Ljava/lang/String;

    move-result-object v18

    .line 261
    .local v18, "name":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 262
    new-instance v22, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Duplicate IGFS name found (check configuration and assign unique name to each): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 265
    :cond_0
    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDataCacheName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->config(Ljava/lang/String;)Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v8

    .line 266
    .local v8, "dataCacheCfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMetaCacheName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->config(Ljava/lang/String;)Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v16

    .line 268
    .local v16, "metaCacheCfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    if-nez v8, :cond_1

    .line 269
    new-instance v22, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Data cache is not configured locally for IGFS: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 271
    :cond_1
    invoke-static {v8}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 272
    new-instance v22, Lorg/apache/ignite/IgniteCheckedException;

    const-string v23, "IGFS data cache cannot start with enabled query indexing."

    invoke-direct/range {v22 .. v23}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 274
    :cond_2
    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v22

    sget-object v23, Lorg/apache/ignite/cache/CacheAtomicityMode;->TRANSACTIONAL:Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 275
    new-instance v22, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Data cache should be transactional: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDataCacheName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 277
    :cond_3
    if-nez v16, :cond_4

    .line 278
    new-instance v22, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Metadata cache is not configured locally for IGFS: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 280
    :cond_4
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 281
    new-instance v22, Lorg/apache/ignite/IgniteCheckedException;

    const-string v23, "IGFS metadata cache cannot start with enabled query indexing."

    invoke-direct/range {v22 .. v23}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 283
    :cond_5
    invoke-static/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 284
    new-instance v22, Lorg/apache/ignite/IgniteCheckedException;

    const-string v23, "IGFS metadata cache cannot start with enabled query indexing."

    invoke-direct/range {v22 .. v23}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 286
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicityMode()Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-result-object v22

    sget-object v23, Lorg/apache/ignite/cache/CacheAtomicityMode;->TRANSACTIONAL:Lorg/apache/ignite/cache/CacheAtomicityMode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_7

    .line 287
    new-instance v22, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Meta cache should be transactional: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMetaCacheName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 289
    :cond_7
    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDataCacheName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMetaCacheName()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 290
    new-instance v22, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot use same cache as both data and meta cache: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 292
    :cond_8
    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinityMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/apache/ignite/igfs/IgfsGroupDataBlocksKeyMapper;

    move/from16 v22, v0

    if-nez v22, :cond_9

    .line 293
    new-instance v22, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Invalid IGFS data cache configuration (key affinity mapper class should be "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-class v24, Lorg/apache/ignite/igfs/IgfsGroupDataBlocksKeyMapper;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 296
    :cond_9
    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMaxSpaceSize()J

    move-result-wide v14

    .line 298
    .local v14, "maxSpaceSize":J
    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-lez v22, :cond_b

    .line 300
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v12

    .line 301
    .local v12, "maxHeapSize":J
    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->getOffHeapMaxMemory()J

    move-result-wide v20

    .line 303
    .local v20, "offHeapSize":J
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-gez v22, :cond_a

    cmp-long v22, v14, v12

    if-lez v22, :cond_a

    .line 305
    new-instance v22, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Maximum IGFS space size cannot be greater that size of available heap memory [maxHeapSize="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", maxIgfsSpaceSize="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x5d

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 307
    :cond_a
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-lez v22, :cond_b

    add-long v22, v12, v20

    cmp-long v22, v14, v22

    if-lez v22, :cond_b

    .line 309
    new-instance v22, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Maximum IGFS space size cannot be greater than size of available heap memory and offheap storage [maxHeapSize="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", offHeapSize="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", maxIgfsSpaceSize="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x5d

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 314
    .end local v12    # "maxHeapSize":J
    .end local v20    # "offHeapSize":J
    :cond_b
    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v22

    sget-object v23, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 315
    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->getBackups()I

    move-result v5

    .line 317
    .local v5, "backups":I
    if-eqz v5, :cond_c

    .line 318
    new-instance v22, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "IGFS data cache cannot be used with backups (set backup count to 0 and restart the grid): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDataCacheName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 322
    .end local v5    # "backups":I
    :cond_c
    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMaxSpaceSize()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_d

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->getMemoryMode()Lorg/apache/ignite/cache/CacheMemoryMode;

    move-result-object v22

    sget-object v23, Lorg/apache/ignite/cache/CacheMemoryMode;->OFFHEAP_VALUES:Lorg/apache/ignite/cache/CacheMemoryMode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "IGFS max space size is not specified but data cache values are stored off-heap (max space will be limited to 80% of max JVM heap size): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 326
    :cond_d
    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDefaultMode()Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v22

    sget-object v23, Lorg/apache/ignite/igfs/IgfsMode;->PROXY:Lorg/apache/ignite/igfs/IgfsMode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_f

    const/16 v19, 0x1

    .line 328
    .local v19, "secondary":Z
    :goto_1
    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPathModes()Ljava/util/Map;

    move-result-object v22

    if-eqz v22, :cond_10

    .line 329
    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPathModes()Ljava/util/Map;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10    # "i$":I
    .local v9, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 330
    .local v17, "mode":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    sget-object v23, Lorg/apache/ignite/igfs/IgfsMode;->PROXY:Lorg/apache/ignite/igfs/IgfsMode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 331
    const/16 v19, 0x1

    goto :goto_2

    .line 326
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v17    # "mode":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;>;"
    .end local v19    # "secondary":Z
    .restart local v10    # "i$":I
    :cond_f
    const/16 v19, 0x0

    goto :goto_1

    .line 335
    .end local v10    # "i$":I
    .restart local v19    # "secondary":Z
    :cond_10
    if-eqz v19, :cond_11

    .line 337
    invoke-virtual {v6}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getSecondaryFileSystem()Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v22

    if-eqz v22, :cond_12

    const/16 v22, 0x1

    :goto_3
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "secondaryFileSystem cannot be null when mode is not "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-object v24, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->assertParameter(ZLjava/lang/String;)V

    .line 341
    :cond_11
    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v9, v10, 0x1

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto/16 :goto_0

    .line 337
    .end local v10    # "i$":I
    :cond_12
    const/16 v22, 0x0

    goto :goto_3

    .line 343
    .end local v6    # "cfg":Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .end local v8    # "dataCacheCfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v14    # "maxSpaceSize":J
    .end local v16    # "metaCacheCfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "secondary":Z
    .restart local v10    # "i$":I
    :cond_13
    return-void
.end method


# virtual methods
.method public createJob(Lorg/apache/ignite/igfs/mapreduce/IgfsJob;Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsPath;JJLorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;)Lorg/apache/ignite/compute/ComputeJob;
    .locals 10
    .param p1, "job"    # Lorg/apache/ignite/igfs/mapreduce/IgfsJob;
    .param p2, "igfsName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p4, "start"    # J
    .param p6, "len"    # J
    .param p8, "recRslv"    # Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 239
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsJobImpl;-><init>(Lorg/apache/ignite/igfs/mapreduce/IgfsJob;Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsPath;JJLorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;)V

    return-object v0
.end method

.method public endpoints(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 231
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->igfsCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->maskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    .line 233
    .local v0, "igfsCtx":Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->server()Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;->endpoints()Ljava/util/Collection;

    move-result-object v1

    goto :goto_0
.end method

.method public igfs(Ljava/lang/String;)Lorg/apache/ignite/IgniteFileSystem;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 224
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->igfsCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->maskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    .line 226
    .local v0, "igfsCtx":Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    move-result-object v1

    goto :goto_0
.end method

.method public igfss()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/IgniteFileSystem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->igfsCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->CTX_TO_IGFS:Lorg/apache/ignite/lang/IgniteClosure;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onKernalStart()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    :cond_0
    return-void

    .line 156
    :cond_1
    const-string v5, "IGNITE_SKIP_CONFIGURATION_CONSISTENCY_CHECK"

    invoke-static {v5}, Lorg/apache/ignite/IgniteSystemProperties;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 157
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->remoteNodes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cluster/ClusterNode;

    .line 158
    .local v4, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->checkIgfsOnRemoteNode(Lorg/apache/ignite/cluster/ClusterNode;)V

    goto :goto_0

    .line 161
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->igfsCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    .line 162
    .local v2, "igfsCtx":Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->managers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/igfs/IgfsManager;

    .line 163
    .local v3, "mgr":Lorg/apache/ignite/internal/processors/igfs/IgfsManager;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsManager;->onKernalStart()V

    goto :goto_1
.end method

.method public onKernalStop(Z)V
    .locals 8
    .param p1, "cancel"    # Z

    .prologue
    .line 192
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->igfsCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    .line 193
    .local v1, "igfsCtx":Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 194
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping igfs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 196
    :cond_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->managers()Ljava/util/List;

    move-result-object v4

    .line 198
    .local v4, "mgrs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/igfs/IgfsManager;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/igfs/IgfsManager;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/igfs/IgfsManager;

    .line 201
    .local v3, "mgr":Lorg/apache/ignite/internal/processors/igfs/IgfsManager;
    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsManager;->onKernalStop(Z)V

    goto :goto_0

    .line 205
    .end local v1    # "igfsCtx":Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/igfs/IgfsManager;>;"
    .end local v3    # "mgr":Lorg/apache/ignite/internal/processors/igfs/IgfsManager;
    .end local v4    # "mgrs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/igfs/IgfsManager;>;"
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 206
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Finished executing IGFS processor onKernalStop() callback."

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 207
    :cond_3
    return-void
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    const-string v0, ">>>"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> IGFS processor memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

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

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   igfsCacheSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->igfsCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public start()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 73
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFileSystemConfiguration()[Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v18

    .line 78
    .local v18, "cfgs":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    array-length v3, v0

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 80
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->validateLocalIgfsConfigurations([Lorg/apache/ignite/configuration/FileSystemConfiguration;)V

    .line 83
    move-object/from16 v13, v18

    .local v13, "arr$":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    array-length v0, v13

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    move/from16 v21, v20

    .end local v20    # "i$":I
    .local v21, "i$":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    aget-object v17, v13, v21

    .line 84
    .local v17, "cfg":Lorg/apache/ignite/configuration/FileSystemConfiguration;
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    new-instance v4, Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;-><init>(Lorg/apache/ignite/configuration/FileSystemConfiguration;)V

    new-instance v5, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;-><init>()V

    new-instance v6, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    invoke-direct {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;-><init>()V

    new-instance v7, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;

    invoke-direct {v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;-><init>()V

    new-instance v8, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    invoke-direct {v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;-><init>()V

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/configuration/FileSystemConfiguration;Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/internal/processors/igfs/IgfsServerManager;Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;)V

    .line 93
    .local v2, "igfsCtx":Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->managers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .end local v21    # "i$":I
    .local v20, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/ignite/internal/processors/igfs/IgfsManager;

    .line 94
    .local v24, "mgr":Lorg/apache/ignite/internal/processors/igfs/IgfsManager;
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsManager;->start(Lorg/apache/ignite/internal/processors/igfs/IgfsContext;)V

    goto :goto_2

    .line 96
    .end local v24    # "mgr":Lorg/apache/ignite/internal/processors/igfs/IgfsManager;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->igfsCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->maskName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    add-int/lit8 v20, v21, 0x1

    .local v20, "i$":I
    move/from16 v21, v20

    .end local v20    # "i$":I
    .restart local v21    # "i$":I
    goto :goto_1

    .line 99
    .end local v2    # "igfsCtx":Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    .end local v17    # "cfg":Lorg/apache/ignite/configuration/FileSystemConfiguration;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 100
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v4, "IGFS processor started."

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 102
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v19

    .line 108
    .local v19, "gridCfg":Lorg/apache/ignite/configuration/IgniteConfiguration;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFileSystemConfiguration()[Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v16, "cacheCfgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/configuration/CacheConfiguration;>;"
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    new-instance v4, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor$2;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;Ljava/util/Map;)V

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v3, v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->forEach([Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteInClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)V

    .line 120
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v14, "attrVals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->$assertionsDisabled:Z

    if-nez v3, :cond_7

    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFileSystemConfiguration()[Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v3

    if-nez v3, :cond_7

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 124
    :cond_7
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFileSystemConfiguration()[Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v13

    array-length v0, v13

    move/from16 v23, v0

    const/16 v20, 0x0

    .end local v21    # "i$":I
    .restart local v20    # "i$":I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    aget-object v22, v13, v20

    .line 125
    .local v22, "igfsCfg":Lorg/apache/ignite/configuration/FileSystemConfiguration;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDataCacheName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/ignite/configuration/CacheConfiguration;

    .line 127
    .local v15, "cacheCfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    if-nez v15, :cond_9

    .line 124
    :cond_8
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 130
    :cond_9
    invoke-virtual {v15}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinityMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v12

    .line 132
    .local v12, "affMapper":Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    instance-of v3, v12, Lorg/apache/ignite/igfs/IgfsGroupDataBlocksKeyMapper;

    if-eqz v3, :cond_8

    .line 137
    new-instance v3, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getBlockSize()I

    move-result v5

    check-cast v12, Lorg/apache/ignite/igfs/IgfsGroupDataBlocksKeyMapper;

    .end local v12    # "affMapper":Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    invoke-virtual {v12}, Lorg/apache/ignite/igfs/IgfsGroupDataBlocksKeyMapper;->groupSize()I

    move-result v6

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMetaCacheName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDataCacheName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDefaultMode()Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v9

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPathModes()Ljava/util/Map;

    move-result-object v10

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->isFragmentizerEnabled()Z

    move-result v11

    invoke-direct/range {v3 .. v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;Ljava/util/Map;Z)V

    invoke-interface {v14, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 148
    .end local v15    # "cacheCfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v22    # "igfsCfg":Lorg/apache/ignite/configuration/FileSystemConfiguration;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-string v4, "org.apache.ignite.igfs"

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/igfs/IgfsAttributes;

    invoke-interface {v14, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/ignite/internal/GridKernalContext;->addNodeAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public stop(Z)V
    .locals 8
    .param p1, "cancel"    # Z

    .prologue
    .line 169
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->igfsCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    .line 170
    .local v1, "igfsCtx":Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping igfs: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 173
    :cond_0
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->managers()Ljava/util/List;

    move-result-object v4

    .line 175
    .local v4, "mgrs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/igfs/IgfsManager;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/igfs/IgfsManager;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/igfs/IgfsManager;

    .line 178
    .local v3, "mgr":Lorg/apache/ignite/internal/processors/igfs/IgfsManager;
    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsManager;->stop(Z)V

    goto :goto_1

    .line 181
    .end local v3    # "mgr":Lorg/apache/ignite/internal/processors/igfs/IgfsManager;
    :cond_1
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->stop()V

    goto :goto_0

    .line 184
    .end local v1    # "igfsCtx":Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/igfs/IgfsManager;>;"
    .end local v4    # "mgrs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/igfs/IgfsManager;>;"
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->igfsCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 186
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 187
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "IGFS processor stopped."

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 188
    :cond_3
    return-void
.end method

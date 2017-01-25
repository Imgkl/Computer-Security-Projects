.class public Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "GridTaskSessionProcessor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final sesMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/GridTaskSessionImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 37
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lorg/jsr166/ConcurrentHashMap8;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->sesMap:Ljava/util/concurrent/ConcurrentMap;

    .line 45
    return-void
.end method


# virtual methods
.method public createTaskSession(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;Ljava/lang/String;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/String;Ljava/util/Collection;JJLjava/util/Collection;Ljava/util/Map;ZLjava/util/UUID;)Lorg/apache/ignite/internal/GridTaskSessionImpl;
    .locals 21
    .param p1, "sesId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "taskNodeId"    # Ljava/util/UUID;
    .param p3, "taskName"    # Ljava/lang/String;
    .param p4, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "taskClsName"    # Ljava/lang/String;
    .param p6    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "startTime"    # J
    .param p9, "endTime"    # J
    .param p13, "fullSup"    # Z
    .param p14, "subjId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;JJ",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobSibling;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/GridTaskSessionImpl;"
        }
    .end annotation

    .prologue
    .line 92
    .local p6, "top":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .local p11, "siblings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    .local p12, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez p13, :cond_2

    .line 93
    new-instance v3, Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p1

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v18, p14

    invoke-direct/range {v3 .. v18}, Lorg/apache/ignite/internal/GridTaskSessionImpl;-><init>(Ljava/util/UUID;Ljava/lang/String;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection;JJLjava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/GridKernalContext;ZLjava/util/UUID;)V

    .line 138
    :cond_0
    :goto_0
    return-object v3

    .line 140
    .local v3, "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->sesMap:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .end local v3    # "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->sesMap:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/GridTaskSessionImpl;

    .line 112
    .restart local v3    # "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    if-nez v3, :cond_3

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->sesMap:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v19, v0

    new-instance v3, Lorg/apache/ignite/internal/GridTaskSessionImpl;

    .end local v3    # "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p1

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v18, p14

    invoke-direct/range {v3 .. v18}, Lorg/apache/ignite/internal/GridTaskSessionImpl;-><init>(Ljava/util/UUID;Ljava/lang/String;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Collection;JJLjava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/GridKernalContext;ZLjava/util/UUID;)V

    .restart local v3    # "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/GridTaskSessionImpl;

    .line 130
    .local v2, "old":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    if-eqz v2, :cond_0

    .line 131
    move-object v3, v2

    .line 137
    .end local v2    # "old":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    :cond_3
    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->acquire()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0
.end method

.method public getSession(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/GridTaskSessionImpl;
    .locals 1
    .param p1, "sesId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->sesMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/GridTaskSessionImpl;

    return-object v0
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    const-string v0, ">>>"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> Task session processor memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

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

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>  sesMapSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->sesMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method public removeSession(Lorg/apache/ignite/lang/IgniteUuid;)Z
    .locals 2
    .param p1, "sesId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 159
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->sesMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/GridTaskSessionImpl;

    .line 161
    .local v0, "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->isFullSupport()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 163
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->release()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->sesMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    const/4 v1, 0x1

    .line 169
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Session processor started."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public stop(Z)V
    .locals 2
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Session processor stopped."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

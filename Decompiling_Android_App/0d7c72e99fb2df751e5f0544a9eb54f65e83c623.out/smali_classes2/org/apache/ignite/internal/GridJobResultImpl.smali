.class public Lorg/apache/ignite/internal/GridJobResultImpl;
.super Ljava/lang/Object;
.source "GridJobResultImpl.java"

# interfaces
.implements Lorg/apache/ignite/compute/ComputeJobResult;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private data:Ljava/lang/Object;

.field private ex:Lorg/apache/ignite/IgniteException;

.field private hasRes:Z

.field private isCancelled:Z

.field private isOccupied:Z

.field private final job:Lorg/apache/ignite/compute/ComputeJob;

.field private final jobCtx:Lorg/apache/ignite/internal/GridJobContextImpl;

.field private node:Lorg/apache/ignite/cluster/ClusterNode;

.field private final sib:Lorg/apache/ignite/internal/GridJobSiblingImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/GridJobResultImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/GridJobResultImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridJobSiblingImpl;)V
    .locals 2
    .param p1, "job"    # Lorg/apache/ignite/compute/ComputeJob;
    .param p2, "jobId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p4, "sib"    # Lorg/apache/ignite/internal/GridJobSiblingImpl;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-boolean v0, Lorg/apache/ignite/internal/GridJobResultImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/GridJobResultImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/GridJobResultImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 71
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->job:Lorg/apache/ignite/compute/ComputeJob;

    .line 72
    iput-object p3, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;

    .line 73
    iput-object p4, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->sib:Lorg/apache/ignite/internal/GridJobSiblingImpl;

    .line 75
    new-instance v0, Lorg/apache/ignite/internal/GridJobContextImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lorg/apache/ignite/internal/GridJobContextImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/lang/IgniteUuid;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->jobCtx:Lorg/apache/ignite/internal/GridJobContextImpl;

    .line 76
    return-void
.end method


# virtual methods
.method public declared-synchronized clearData()V
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->data:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->data:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getException()Lorg/apache/ignite/IgniteException;
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->ex:Lorg/apache/ignite/IgniteException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getJob()Lorg/apache/ignite/compute/ComputeJob;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->job:Lorg/apache/ignite/compute/ComputeJob;

    return-object v0
.end method

.method public getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->jobCtx:Lorg/apache/ignite/internal/GridJobContextImpl;

    return-object v0
.end method

.method public declared-synchronized getNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSibling()Lorg/apache/ignite/internal/GridJobSiblingImpl;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->sib:Lorg/apache/ignite/internal/GridJobSiblingImpl;

    return-object v0
.end method

.method public declared-synchronized hasResponse()Z
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->hasRes:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->isCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOccupied()Z
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->isOccupied:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResponse(Ljava/lang/Object;Lorg/apache/ignite/IgniteException;Ljava/util/Map;Z)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ex"    # Lorg/apache/ignite/IgniteException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "isCancelled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/IgniteException;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p3, "jobAttrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->data:Ljava/lang/Object;

    .line 135
    iput-object p2, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->ex:Lorg/apache/ignite/IgniteException;

    .line 136
    iput-boolean p4, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->isCancelled:Z

    .line 138
    if-eqz p3, :cond_0

    .line 139
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->jobCtx:Lorg/apache/ignite/internal/GridJobContextImpl;

    invoke-virtual {v0, p3}, Lorg/apache/ignite/internal/GridJobContextImpl;->setAttributes(Ljava/util/Map;)V

    .line 141
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->hasRes:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetResponse()V
    .locals 1

    .prologue
    .line 167
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->data:Ljava/lang/Object;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->ex:Lorg/apache/ignite/IgniteException;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->hasRes:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNode(Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->node:Lorg/apache/ignite/cluster/ClusterNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOccupied(Z)V
    .locals 1
    .param p1, "isOccupied"    # Z

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lorg/apache/ignite/internal/GridJobResultImpl;->isOccupied:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-class v0, Lorg/apache/ignite/internal/GridJobResultImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

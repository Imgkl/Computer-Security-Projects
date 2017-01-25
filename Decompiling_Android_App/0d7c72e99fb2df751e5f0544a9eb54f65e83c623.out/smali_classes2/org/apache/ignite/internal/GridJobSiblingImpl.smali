.class public Lorg/apache/ignite/internal/GridJobSiblingImpl;
.super Ljava/lang/Object;
.source "GridJobSiblingImpl.java"

# interfaces
.implements Lorg/apache/ignite/compute/ComputeJobSibling;
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private transient ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private isJobDone:Z

.field private jobId:Lorg/apache/ignite/lang/IgniteUuid;

.field private jobTopic:Ljava/lang/Object;

.field private nodeId:Ljava/util/UUID;

.field private sesId:Lorg/apache/ignite/lang/IgniteUuid;

.field private taskTopic:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/GridJobSiblingImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "sesId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "jobId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "nodeId"    # Ljava/util/UUID;
    .param p4, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-boolean v0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 75
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_3
    iput-object p1, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 79
    iput-object p2, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 80
    iput-object p3, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->nodeId:Ljava/util/UUID;

    .line 81
    iput-object p4, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 82
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 140
    iget-object v5, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->session()Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->getSession(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v4

    .line 142
    .local v4, "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    if-nez v4, :cond_2

    .line 143
    iget-object v5, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->remoteNodes()Ljava/util/Collection;

    move-result-object v3

    .line 145
    .local v3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 147
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB_CANCEL:Lorg/apache/ignite/internal/GridTopic;

    new-instance v7, Lorg/apache/ignite/internal/GridJobCancelRequest;

    iget-object v8, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v9, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {v7, v8, v9}, Lorg/apache/ignite/internal/GridJobCancelRequest;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    sget-object v8, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v5, v3, v6, v7, v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Ljava/util/Collection;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v7, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v5, v6, v7, v10}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelJob(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Z)V

    .line 176
    .end local v3    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_1
    return-void

    .line 149
    .restart local v3    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v5

    throw v5

    .line 160
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v3    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTopology()Ljava/util/Collection;

    move-result-object v6

    new-array v7, v10, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v5, v6, v7}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nodes(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    .line 161
    .local v2, "node":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v5, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 163
    iget-object v5, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v5, v6, v7, v10}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->cancelJob(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Z)V

    goto :goto_0

    .line 166
    :cond_4
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB_CANCEL:Lorg/apache/ignite/internal/GridTopic;

    new-instance v7, Lorg/apache/ignite/internal/GridJobCancelRequest;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {v7, v8, v9}, Lorg/apache/ignite/internal/GridJobCancelRequest;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;)V

    sget-object v8, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    invoke-virtual {v5, v2, v6, v7, v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    .line 170
    .restart local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v5, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->pingNode(Ljava/util/UUID;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 171
    iget-object v5, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    const-class v6, Lorg/apache/ignite/internal/GridJobSiblingImpl;

    invoke-interface {v5, v6}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send cancel request to node [nodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public getJobId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public declared-synchronized isJobDone()Z
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->isJobDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized jobTopic()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->jobTopic:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 133
    sget-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB:Lorg/apache/ignite/internal/GridTopic;

    iget-object v1, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->nodeId:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/GridTopic;->topic(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->jobTopic:Ljava/lang/Object;

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->jobTopic:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->nodeId:Ljava/util/UUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nodeId(Ljava/util/UUID;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->nodeId:Ljava/util/UUID;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->taskTopic:Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->jobTopic:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onJobDone()V
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->isJobDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 189
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 190
    return-void
.end method

.method public declared-synchronized taskTopic()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->taskTopic:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 123
    sget-object v0, Lorg/apache/ignite/internal/GridTopic;->TOPIC_TASK:Lorg/apache/ignite/internal/GridTopic;

    iget-object v1, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->nodeId:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/GridTopic;->topic(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->taskTopic:Ljava/lang/Object;

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->taskTopic:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const-class v0, Lorg/apache/ignite/internal/GridJobSiblingImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 182
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSiblingImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 183
    return-void
.end method

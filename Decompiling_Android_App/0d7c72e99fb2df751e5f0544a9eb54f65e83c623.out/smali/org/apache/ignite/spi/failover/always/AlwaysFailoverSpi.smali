.class public Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "AlwaysFailoverSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/failover/FailoverSpi;
.implements Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpiMBean;


# annotations
.annotation runtime Lorg/apache/ignite/spi/IgniteSpiConsistencyChecked;
    optional = true
.end annotation

.annotation runtime Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    value = true
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_MAX_FAILOVER_ATTEMPTS:I = 0x5

.field public static final FAILED_NODE_LIST_ATTR:Ljava/lang/String; = "gg:failover:failednodelist"

.field public static final MAX_FAILOVER_ATTEMPT_ATTR:Ljava/lang/String; = "gg:failover:maxattempts"


# instance fields
.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private maxFailoverAttempts:I

.field private totalFailoverJobs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    .line 103
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->maxFailoverAttempts:I

    return-void
.end method


# virtual methods
.method public failover(Lorg/apache/ignite/spi/failover/FailoverContext;Ljava/util/List;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 11
    .param p1, "ctx"    # Lorg/apache/ignite/spi/failover/FailoverContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/spi/failover/FailoverContext;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/cluster/ClusterNode;"
        }
    .end annotation

    .prologue
    .local p2, "top":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/16 v10, 0x5d

    const/4 v6, 0x0

    .line 163
    sget-boolean v7, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 164
    :cond_0
    sget-boolean v7, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    if-nez p2, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 166
    :cond_1
    iget-object v7, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 167
    iget-object v7, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received failed job result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 169
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 170
    iget-object v7, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v8, "Received empty topology for failover and is forced to fail."

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    move-object v5, v6

    .line 232
    :cond_3
    :goto_0
    return-object v5

    .line 176
    :cond_4
    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v7

    const-string v8, "gg:failover:failednodelist"

    invoke-interface {v7, v8}, Lorg/apache/ignite/compute/ComputeJobContext;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 178
    .local v1, "failedNodes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    if-nez v1, :cond_5

    .line 179
    const/4 v7, 0x1

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashSet(I)Ljava/util/HashSet;

    move-result-object v1

    .line 181
    :cond_5
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 183
    .local v2, "failoverCnt":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->maxFailoverAttempts:I

    if-lt v7, v8, :cond_6

    .line 184
    iget-object v7, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Job failover failed because number of maximum failover attempts is exceeded [failedJob="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/compute/ComputeJobResult;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", maxFailoverAttempts="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->maxFailoverAttempts:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    move-object v5, v6

    .line 187
    goto :goto_0

    .line 190
    :cond_6
    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/compute/ComputeJobResult;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .local v4, "newTop":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/cluster/ClusterNode;

    .line 196
    .local v5, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 197
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    .end local v5    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 200
    iget-object v7, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received topology with only nodes that job had failed on (forced to fail) [failedNodes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    move-object v5, v6

    .line 204
    goto/16 :goto_0

    .line 208
    :cond_9
    :try_start_0
    invoke-interface {p1, v4}, Lorg/apache/ignite/spi/failover/FailoverContext;->getBalancedNode(Ljava/util/List;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v5

    .line 210
    .restart local v5    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v5, :cond_a

    .line 211
    iget-object v7, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Load balancer returned null node for topology: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 219
    :goto_2
    if-eqz v5, :cond_3

    .line 220
    iget-object v7, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed over job to a new node [newNode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", oldNode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/compute/ComputeJobResult;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", sesId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/compute/ComputeTaskSession;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", job="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/compute/ComputeJobResult;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", jobCtx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", task="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/compute/ComputeTaskSession;->getTaskName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 229
    .end local v5    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Lorg/apache/ignite/IgniteException;
    iget-object v7, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get next balanced node for failover: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v5, v6

    .line 232
    goto/16 :goto_0

    .line 214
    .end local v0    # "e":Lorg/apache/ignite/IgniteException;
    .restart local v5    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_a
    :try_start_1
    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v7

    const-string v8, "gg:failover:failednodelist"

    invoke-interface {v7, v8, v1}, Lorg/apache/ignite/compute/ComputeJobContext;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    iget v7, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->totalFailoverJobs:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->totalFailoverJobs:I
    :try_end_1
    .catch Lorg/apache/ignite/IgniteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method protected getConsistentAttributeNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    const-string v0, "gg:failover:maxattempts"

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumFailoverAttempts()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->maxFailoverAttempts:I

    return v0
.end method

.method public getNodeAttributes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 131
    const-string v0, "gg:failover:maxattempts"

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->maxFailoverAttempts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTotalFailoverJobsCount()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->totalFailoverJobs:I

    return v0
.end method

.method public setMaximumFailoverAttempts(I)V
    .locals 0
    .param p1, "maxFailoverAttempts"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 121
    iput p1, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->maxFailoverAttempts:I

    .line 122
    return-void
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 3
    .param p1, "gridName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->startStopwatch()V

    .line 139
    iget v0, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->maxFailoverAttempts:I

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string v1, "maxFailoverAttempts >= 0"

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->assertParameter(ZLjava/lang/String;)V

    .line 141
    iget-object v0, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "maximumFailoverAttempts"

    iget v2, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->maxFailoverAttempts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 144
    :cond_0
    const-class v0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpiMBean;

    invoke-virtual {p0, p1, p0, v0}, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->registerMBean(Ljava/lang/String;Lorg/apache/ignite/spi/IgniteSpiManagementMBean;Ljava/lang/Class;)V

    .line 147
    iget-object v0, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 149
    :cond_1
    return-void

    .line 139
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public spiStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->unregisterMBean()V

    .line 156
    iget-object v0, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 158
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    const-class v0, Lorg/apache/ignite/spi/failover/always/AlwaysFailoverSpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

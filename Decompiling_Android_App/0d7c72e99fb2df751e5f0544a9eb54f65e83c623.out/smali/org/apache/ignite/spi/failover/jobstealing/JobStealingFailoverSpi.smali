.class public Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "JobStealingFailoverSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/failover/FailoverSpi;
.implements Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpiMBean;


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

.field static final FAILED_NODE_LIST_ATTR:Ljava/lang/String; = "gg:failover:failednodelist"

.field static final FAILOVER_ATTEMPT_COUNT_ATTR:Ljava/lang/String; = "gg:failover:attemptcount"

.field private static final MAX_FAILOVER_ATTEMPT_ATTR:Ljava/lang/String; = "gg:failover:maxattempts"


# instance fields
.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private maxFailoverAttempts:I

.field private totalFailedOverJobs:I

.field private totalStolenJobs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    .line 120
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->maxFailoverAttempts:I

    return-void
.end method


# virtual methods
.method public failover(Lorg/apache/ignite/spi/failover/FailoverContext;Ljava/util/List;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 12
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
    .line 193
    .local p2, "top":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v9, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 194
    :cond_0
    sget-boolean v9, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    if-nez p2, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 196
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 197
    iget-object v9, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v10, "Received empty subgrid and is forced to fail."

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 200
    const/4 v7, 0x0

    .line 337
    :cond_2
    :goto_0
    return-object v7

    .line 203
    :cond_3
    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v9

    const-string v10, "gg:failover:attemptcount"

    invoke-interface {v9, v10}, Lorg/apache/ignite/compute/ComputeJobContext;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 205
    .local v2, "failoverCnt":Ljava/lang/Integer;
    if-nez v2, :cond_4

    .line 206
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 208
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v10, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->maxFailoverAttempts:I

    if-le v9, v10, :cond_5

    .line 209
    iget-object v9, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failover count exceeded maximum failover attempts parameter [failedJob="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/compute/ComputeJobResult;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", maxFailoverAttempts="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->maxFailoverAttempts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 212
    const/4 v7, 0x0

    goto :goto_0

    .line 215
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v10, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->maxFailoverAttempts:I

    if-ne v9, v10, :cond_6

    .line 216
    iget-object v9, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Job failover failed because number of maximum failover attempts is exceeded [failedJob="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/compute/ComputeJobResult;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", maxFailoverAttempts="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->maxFailoverAttempts:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 219
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 223
    :cond_6
    const/4 v7, 0x0

    .line 224
    .local v7, "thief":Lorg/apache/ignite/cluster/ClusterNode;
    const/4 v4, 0x0

    .line 226
    .local v4, "isNodeFailed":Z
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v9

    const-string v10, "ignite.collision.thief.node"

    invoke-interface {v9, v10}, Lorg/apache/ignite/compute/ComputeJobContext;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/UUID;

    .line 228
    .local v8, "thiefId":Ljava/util/UUID;
    if-eqz v8, :cond_e

    .line 230
    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v9

    const-string v10, "ignite.collision.thief.node"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lorg/apache/ignite/compute/ComputeJobContext;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p0}, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->getSpiContext()Lorg/apache/ignite/spi/IgniteSpiContext;

    move-result-object v9

    invoke-interface {v9, v8}, Lorg/apache/ignite/spi/IgniteSpiContext;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    .line 234
    if-eqz v7, :cond_d

    .line 236
    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/compute/ComputeJobResult;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 237
    iget-object v9, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Job stealer node is equal to job node (will fail-over using load-balancing): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 240
    const/4 v4, 0x1

    .line 242
    const/4 v7, 0x0

    .line 251
    :cond_7
    :goto_1
    iget-object v9, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 252
    iget-object v9, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failing-over stolen job [from="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/compute/ComputeJobResult;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", to="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 266
    :cond_8
    :goto_2
    if-nez v7, :cond_11

    .line 267
    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v9

    const-string v10, "gg:failover:failednodelist"

    invoke-interface {v9, v10}, Lorg/apache/ignite/compute/ComputeJobContext;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 269
    .local v1, "failedNodes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    if-nez v1, :cond_9

    .line 270
    const/4 v9, 0x1

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashSet(I)Ljava/util/HashSet;

    move-result-object v1

    .line 272
    :cond_9
    if-eqz v4, :cond_a

    .line 273
    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/compute/ComputeJobResult;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_a
    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v9

    const-string v10, "gg:failover:failednodelist"

    invoke-interface {v9, v10, v1}, Lorg/apache/ignite/compute/ComputeJobContext;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    .local v6, "newTop":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/cluster/ClusterNode;

    .line 283
    .local v5, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 284
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 334
    .end local v1    # "failedNodes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v6    # "newTop":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v8    # "thiefId":Ljava/util/UUID;
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Lorg/apache/ignite/IgniteException;
    iget-object v9, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to get next balanced node for failover: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 337
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 244
    .end local v0    # "e":Lorg/apache/ignite/IgniteException;
    .restart local v8    # "thiefId":Ljava/util/UUID;
    :cond_c
    :try_start_1
    invoke-interface {p2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 245
    iget-object v9, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Thief node is not part of task topology  (will fail-over using load-balancing) [thief="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", topSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 248
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 256
    :cond_d
    const/4 v4, 0x1

    .line 258
    iget-object v9, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Thief node left grid (will fail-over using load balancing): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 262
    :cond_e
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 287
    .restart local v1    # "failedNodes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "newTop":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_f
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 288
    iget-object v9, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received topology with only nodes that job had failed on (forced to fail) [failedNodes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 292
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 295
    :cond_10
    invoke-interface {p1, v6}, Lorg/apache/ignite/spi/failover/FailoverContext;->getBalancedNode(Ljava/util/List;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    .line 297
    if-nez v7, :cond_11

    .line 298
    iget-object v9, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Load balancer returned null node for topology: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 301
    .end local v1    # "failedNodes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "newTop":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_11
    if-eqz v4, :cond_12

    .line 303
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 307
    :cond_12
    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v9

    const-string v10, "gg:failover:attemptcount"

    invoke-interface {v9, v10, v2}, Lorg/apache/ignite/compute/ComputeJobContext;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 309
    if-eqz v7, :cond_2

    .line 310
    iget v9, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->totalFailedOverJobs:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->totalFailedOverJobs:I

    .line 312
    if-eqz v4, :cond_13

    .line 313
    iget-object v9, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed over job to a new node [newNode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", oldNode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/compute/ComputeJobResult;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sesId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/compute/ComputeTaskSession;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", job="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/compute/ComputeJobResult;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", jobCtx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", task="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/compute/ComputeTaskSession;->getTaskName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 321
    :cond_13
    iget v9, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->totalStolenJobs:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->totalStolenJobs:I

    .line 322
    iget-object v9, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v9}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 323
    iget-object v9, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stealing job to a new node [newNode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", oldNode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/compute/ComputeJobResult;->getNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sesId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/compute/ComputeTaskSession;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", job="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/compute/ComputeJobResult;->getJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", jobCtx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getJobResult()Lorg/apache/ignite/compute/ComputeJobResult;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/compute/ComputeJobResult;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", task="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/apache/ignite/spi/failover/FailoverContext;->getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/ignite/compute/ComputeTaskSession;->getTaskName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x5d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
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
    .line 343
    const-string v0, "gg:failover:maxattempts"

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumFailoverAttempts()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->maxFailoverAttempts:I

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
    .line 161
    const-string v0, "gg:failover:maxattempts"

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->createSpiAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->maxFailoverAttempts:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTotalFailedOverJobsCount()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->totalFailedOverJobs:I

    return v0
.end method

.method public getTotalStolenJobsCount()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->totalStolenJobs:I

    return v0
.end method

.method public setMaximumFailoverAttempts(I)V
    .locals 0
    .param p1, "maxFailoverAttempts"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 146
    iput p1, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->maxFailoverAttempts:I

    .line 147
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
    .line 167
    invoke-virtual {p0}, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->startStopwatch()V

    .line 169
    iget v0, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->maxFailoverAttempts:I

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string v1, "maximumFailoverAttempts >= 0"

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->assertParameter(ZLjava/lang/String;)V

    .line 171
    iget-object v0, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "maxFailoverAttempts"

    iget v2, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->maxFailoverAttempts:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 174
    :cond_0
    const-class v0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpiMBean;

    invoke-virtual {p0, p1, p0, v0}, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->registerMBean(Ljava/lang/String;Lorg/apache/ignite/spi/IgniteSpiManagementMBean;Ljava/lang/Class;)V

    .line 177
    iget-object v0, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 179
    :cond_1
    return-void

    .line 169
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
    .line 183
    invoke-virtual {p0}, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->unregisterMBean()V

    .line 186
    iget-object v0, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 188
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    const-class v0, Lorg/apache/ignite/spi/failover/jobstealing/JobStealingFailoverSpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

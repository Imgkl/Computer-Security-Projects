.class public Lorg/apache/ignite/internal/GridJobSessionImpl;
.super Ljava/lang/Object;
.source "GridJobSessionImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/GridTaskSessionInternal;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private final jobId:Lorg/apache/ignite/lang/IgniteUuid;

.field private final ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/GridJobSessionImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/GridTaskSessionImpl;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "ses"    # Lorg/apache/ignite/internal/GridTaskSessionImpl;
    .param p3, "jobId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-boolean v0, Lorg/apache/ignite/internal/GridJobSessionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/GridJobSessionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/GridJobSessionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/GridJobSessionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_3
    iput-object p1, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 55
    iput-object p2, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    .line 56
    iput-object p3, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 57
    return-void
.end method


# virtual methods
.method public addAttributeListener(Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;Z)V
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;
    .param p2, "rewind"    # Z

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->addAttributeListener(Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;Z)V

    .line 222
    return-void
.end method

.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getAttributes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCheckpointSpi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getCheckpointSpi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getEndTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    return-object v0
.end method

.method public getJobId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public getJobSibling(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/compute/ComputeJobSibling;
    .locals 3
    .param p1, "jobId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getJobSiblings()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/compute/ComputeJobSibling;

    .line 183
    .local v1, "sib":Lorg/apache/ignite/compute/ComputeJobSibling;
    invoke-interface {v1}, Lorg/apache/ignite/compute/ComputeJobSibling;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    .end local v1    # "sib":Lorg/apache/ignite/compute/ComputeJobSibling;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getJobSiblings()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobSibling;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v3, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getJobSiblings()Ljava/util/Collection;

    move-result-object v2

    .line 158
    .local v2, "sibs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    if-nez v2, :cond_2

    .line 159
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridJobSessionImpl;->isTaskNode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    sget-boolean v3, Lorg/apache/ignite/internal/GridJobSessionImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->isFullSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 163
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->taskFuture(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    .line 165
    .local v1, "fut":Lorg/apache/ignite/internal/ComputeTaskInternalFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture<Ljava/lang/Object;>;"
    invoke-virtual {v1}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeTaskSession;->getJobSiblings()Ljava/util/Collection;

    move-result-object v3

    .line 177
    .end local v1    # "fut":Lorg/apache/ignite/internal/ComputeTaskInternalFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture<Ljava/lang/Object;>;"
    :goto_0
    return-object v3

    .line 170
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    iget-object v4, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v4}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->requestJobSiblings(Lorg/apache/ignite/compute/ComputeTaskSession;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->setJobSiblings(Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v3, v2

    .line 177
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v3

    throw v3
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTaskClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaskNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskNodeId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getTopology()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTopology()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFullSupport()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->isFullSupport()Z

    move-result v0

    return v0
.end method

.method public isTaskNode()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->isTaskNode()Z

    move-result v0

    return v0
.end method

.method public loadCheckpoint(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0, p0, p1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->loadCheckpoint0(Lorg/apache/ignite/internal/GridTaskSessionInternal;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public mapFuture()Lorg/apache/ignite/lang/IgniteFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 295
    new-instance v0, Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public onClosed()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->onClosed()V

    .line 72
    return-void
.end method

.method public refreshJobSiblings()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobSibling;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridJobSessionImpl;->isTaskNode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->requestJobSiblings(Lorg/apache/ignite/compute/ComputeTaskSession;)Ljava/util/Collection;

    move-result-object v2

    .line 135
    .local v2, "sibs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->setJobSiblings(Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v2    # "sibs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    :goto_0
    return-object v2

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v3

    throw v3

    .line 144
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->isFullSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 146
    iget-object v3, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->taskFuture(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    .line 148
    .local v1, "fut":Lorg/apache/ignite/internal/ComputeTaskInternalFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture<Ljava/lang/Object;>;"
    invoke-virtual {v1}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeTaskSession;->getJobSiblings()Ljava/util/Collection;

    move-result-object v2

    goto :goto_0

    .line 151
    .end local v1    # "fut":Lorg/apache/ignite/internal/ComputeTaskInternalFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture<Ljava/lang/Object;>;"
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getJobSiblings()Ljava/util/Collection;

    move-result-object v2

    goto :goto_0
.end method

.method public removeAttributeListener(Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;)Z
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->removeAttributeListener(Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;)Z

    move-result v0

    return v0
.end method

.method public removeCheckpoint(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0, p0, p1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->removeCheckpoint0(Lorg/apache/ignite/internal/GridTaskSessionInternal;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveCheckpoint(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 253
    sget-object v3, Lorg/apache/ignite/compute/ComputeTaskSessionScope;->SESSION_SCOPE:Lorg/apache/ignite/compute/ComputeTaskSessionScope;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/GridJobSessionImpl;->saveCheckpoint(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/compute/ComputeTaskSessionScope;J)V

    .line 254
    return-void
.end method

.method public saveCheckpoint(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/compute/ComputeTaskSessionScope;J)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "scope"    # Lorg/apache/ignite/compute/ComputeTaskSessionScope;
    .param p4, "timeout"    # J

    .prologue
    .line 258
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/GridJobSessionImpl;->saveCheckpoint(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/compute/ComputeTaskSessionScope;JZ)V

    .line 259
    return-void
.end method

.method public saveCheckpoint(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/compute/ComputeTaskSessionScope;JZ)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "scope"    # Lorg/apache/ignite/compute/ComputeTaskSessionScope;
    .param p4, "timeout"    # J
    .param p6, "overwrite"    # Z

    .prologue
    .line 264
    iget-object v1, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->saveCheckpoint0(Lorg/apache/ignite/internal/GridTaskSessionInternal;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/compute/ComputeTaskSessionScope;JZ)V

    .line 265
    return-void
.end method

.method public session()Lorg/apache/ignite/internal/GridTaskSessionInternal;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    return-object v0
.end method

.method public setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 191
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/GridJobSessionImpl;->setAttributes(Ljava/util/Map;)V

    .line 192
    return-void
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->setAttributes(Ljava/util/Map;)V

    .line 204
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridJobSessionImpl;->isTaskNode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->setAttributes(Lorg/apache/ignite/internal/GridJobSessionImpl;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public subjectId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->subjectId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    const-class v0, Lorg/apache/ignite/internal/GridJobSessionImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public waitForAttribute(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;J)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->waitForAttribute(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public waitForAttribute(Ljava/lang/Object;Ljava/lang/Object;J)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;J)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->waitForAttribute(Ljava/lang/Object;Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public waitForAttributes(Ljava/util/Collection;J)Ljava/util/Map;
    .locals 2
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;J)",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->waitForAttributes(Ljava/util/Collection;J)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public waitForAttributes(Ljava/util/Map;J)Z
    .locals 2
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;J)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobSessionImpl;->ses:Lorg/apache/ignite/internal/GridTaskSessionImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->waitForAttributes(Ljava/util/Map;J)Z

    move-result v0

    return v0
.end method

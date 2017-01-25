.class public Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "GridResourceProcessor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final JOB_INJECTIONS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TASK_INJECTIONS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private gridInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector",
            "<",
            "Lorg/apache/ignite/internal/IgniteEx;",
            ">;"
        }
    .end annotation
.end field

.field private final ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

.field private logInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector",
            "<",
            "Lorg/apache/ignite/IgniteLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

.field private rsrcCtx:Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;

.field private springBeanInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

.field private springCtxInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

.field private srvcInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/services/Service;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    const-class v0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->$assertionsDisabled:Z

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Lorg/apache/ignite/resources/TaskSessionResource;

    aput-object v3, v0, v2

    const-class v3, Lorg/apache/ignite/resources/JobContextResource;

    aput-object v3, v0, v1

    const-class v3, Lorg/apache/ignite/resources/IgniteInstanceResource;

    aput-object v3, v0, v5

    const-class v3, Lorg/apache/ignite/resources/SpringApplicationContextResource;

    aput-object v3, v0, v6

    const-class v3, Lorg/apache/ignite/resources/SpringResource;

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-class v4, Lorg/apache/ignite/resources/LoggerResource;

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-class v4, Lorg/apache/ignite/resources/ServiceResource;

    aput-object v4, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->JOB_INJECTIONS:Ljava/util/Collection;

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Lorg/apache/ignite/resources/TaskSessionResource;

    aput-object v3, v0, v2

    const-class v2, Lorg/apache/ignite/resources/LoadBalancerResource;

    aput-object v2, v0, v1

    const-class v1, Lorg/apache/ignite/resources/TaskContinuousMapperResource;

    aput-object v1, v0, v5

    const-class v1, Lorg/apache/ignite/resources/IgniteInstanceResource;

    aput-object v1, v0, v6

    const-class v1, Lorg/apache/ignite/resources/SpringApplicationContextResource;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Lorg/apache/ignite/resources/SpringResource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lorg/apache/ignite/resources/LoggerResource;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lorg/apache/ignite/resources/ServiceResource;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->TASK_INJECTIONS:Ljava/util/Collection;

    return-void

    :cond_0
    move v0, v2

    .line 41
    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 79
    new-instance v0, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    .line 85
    new-instance v0, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    .line 95
    new-instance v0, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->gridInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    .line 96
    new-instance v0, Lorg/apache/ignite/internal/processors/resource/GridResourceLoggerInjector;

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/resource/GridResourceLoggerInjector;-><init>(Lorg/apache/ignite/IgniteLogger;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->logInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    .line 97
    new-instance v0, Lorg/apache/ignite/internal/processors/resource/GridResourceServiceInjector;

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/resource/GridResourceServiceInjector;-><init>(Lorg/apache/ignite/Ignite;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->srvcInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    .line 98
    return-void
.end method

.method private injectToJob(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Object;Lorg/apache/ignite/compute/ComputeTaskSession;Lorg/apache/ignite/internal/GridJobContextImpl;)V
    .locals 12
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .param p3, "job"    # Ljava/lang/Object;
    .param p4, "ses"    # Lorg/apache/ignite/compute/ComputeTaskSession;
    .param p5, "jobCtx"    # Lorg/apache/ignite/internal/GridJobContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/compute/ComputeTaskSession;",
            "Lorg/apache/ignite/internal/GridJobContextImpl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 305
    .local p2, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    sget-object v2, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->JOB_INJECTIONS:Ljava/util/Collection;

    invoke-virtual {v1, p1, p3, v2}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->filter(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Object;Ljava/util/Collection;)[Ljava/lang/Class;

    move-result-object v9

    .line 307
    .local v9, "filtered":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    array-length v1, v9

    if-lez v1, :cond_7

    .line 308
    move-object v8, v9

    .local v8, "arr$":[Ljava/lang/Class;
    array-length v11, v8

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_7

    aget-object v7, v8, v10

    .line 309
    .local v7, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v1, Lorg/apache/ignite/resources/TaskSessionResource;

    if-ne v7, v1, :cond_0

    .line 310
    const-class v3, Lorg/apache/ignite/resources/TaskSessionResource;

    move-object v1, p0

    move-object v2, p3

    move-object/from16 v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectBasicResource(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)V

    .line 308
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 311
    :cond_0
    const-class v1, Lorg/apache/ignite/resources/JobContextResource;

    if-ne v7, v1, :cond_1

    .line 312
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v3, Lorg/apache/ignite/resources/JobContextResource;

    new-instance v4, Lorg/apache/ignite/internal/processors/resource/GridResourceJobContextInjector;

    move-object/from16 v0, p5

    invoke-direct {v4, v0}, Lorg/apache/ignite/internal/processors/resource/GridResourceJobContextInjector;-><init>(Lorg/apache/ignite/compute/ComputeJobContext;)V

    move-object v2, p3

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    goto :goto_1

    .line 314
    :cond_1
    const-class v1, Lorg/apache/ignite/resources/IgniteInstanceResource;

    if-ne v7, v1, :cond_2

    .line 315
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v3, Lorg/apache/ignite/resources/IgniteInstanceResource;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->gridInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v2, p3

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    goto :goto_1

    .line 316
    :cond_2
    const-class v1, Lorg/apache/ignite/resources/SpringApplicationContextResource;

    if-ne v7, v1, :cond_3

    .line 317
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v3, Lorg/apache/ignite/resources/SpringApplicationContextResource;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->springCtxInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v2, p3

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    goto :goto_1

    .line 318
    :cond_3
    const-class v1, Lorg/apache/ignite/resources/SpringResource;

    if-ne v7, v1, :cond_4

    .line 319
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v3, Lorg/apache/ignite/resources/SpringResource;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->springBeanInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v2, p3

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    goto :goto_1

    .line 320
    :cond_4
    const-class v1, Lorg/apache/ignite/resources/LoggerResource;

    if-ne v7, v1, :cond_5

    .line 321
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v3, Lorg/apache/ignite/resources/LoggerResource;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->logInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v2, p3

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    goto :goto_1

    .line 323
    :cond_5
    sget-boolean v1, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_6

    const-class v1, Lorg/apache/ignite/resources/ServiceResource;

    if-eq v7, v1, :cond_6

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 325
    :cond_6
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v3, Lorg/apache/ignite/resources/ServiceResource;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->srvcInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v2, p3

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    goto :goto_1

    .line 329
    .end local v7    # "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v8    # "arr$":[Ljava/lang/Class;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_7
    return-void
.end method

.method private unwrapJob(Lorg/apache/ignite/compute/ComputeJob;)Lorg/apache/ignite/compute/ComputeJob;
    .locals 1
    .param p1, "job"    # Lorg/apache/ignite/compute/ComputeJob;

    .prologue
    .line 338
    instance-of v0, p1, Lorg/apache/ignite/internal/util/lang/GridComputeJobWrapper;

    if-eqz v0, :cond_0

    .line 339
    check-cast p1, Lorg/apache/ignite/internal/util/lang/GridComputeJobWrapper;

    .end local p1    # "job":Lorg/apache/ignite/compute/ComputeJob;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/lang/GridComputeJobWrapper;->wrappedJob()Lorg/apache/ignite/compute/ComputeJob;

    move-result-object p1

    .line 341
    :cond_0
    return-object p1
.end method

.method private unwrapTarget(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->rsrcCtx:Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->rsrcCtx:Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;->unwrapTarget(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "target":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public cleanup(Lorg/apache/ignite/lifecycle/LifecycleBean;)V
    .locals 6
    .param p1, "lifecycleBean"    # Lorg/apache/ignite/lifecycle/LifecycleBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 475
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up resources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 479
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->unwrapTarget(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 482
    .local v1, "obj":Ljava/lang/Object;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/LoggerResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 483
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/ServiceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 484
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringApplicationContextResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 485
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 486
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/IgniteInstanceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 487
    return-void
.end method

.method public cleanup(Lorg/apache/ignite/services/Service;)V
    .locals 6
    .param p1, "svc"    # Lorg/apache/ignite/services/Service;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 518
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up resources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 522
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->unwrapTarget(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 525
    .local v1, "obj":Ljava/lang/Object;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/LoggerResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 526
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/ServiceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 527
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringApplicationContextResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 528
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 529
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/IgniteInstanceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 530
    return-void
.end method

.method public cleanup(Lorg/apache/ignite/spi/IgniteSpi;)V
    .locals 6
    .param p1, "spi"    # Lorg/apache/ignite/spi/IgniteSpi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 433
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up resources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 437
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->unwrapTarget(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 439
    .local v1, "obj":Ljava/lang/Object;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/LoggerResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 440
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/ServiceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 441
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringApplicationContextResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 442
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 443
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/IgniteInstanceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 444
    return-void
.end method

.method public cleanupGeneric(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 249
    if-eqz p1, :cond_1

    .line 250
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up resources: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 254
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->unwrapTarget(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 257
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/LoggerResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 258
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/ServiceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 259
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringApplicationContextResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 260
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 261
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/IgniteInstanceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 263
    :cond_1
    return-void
.end method

.method getResourceIoc()Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    return-object v0
.end method

.method public inject(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 6
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .param p3, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 171
    .local p2, "depCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Injecting resources: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 175
    :cond_0
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->unwrapTarget(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 177
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/IgniteInstanceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->gridInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v1, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 178
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringApplicationContextResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->springCtxInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v1, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 179
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->springBeanInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v1, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 180
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/LoggerResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->logInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v1, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 181
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/ServiceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->srvcInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v1, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 182
    return-void
.end method

.method public inject(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/compute/ComputeTaskSession;Lorg/apache/ignite/internal/GridJobContextImpl;)V
    .locals 10
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .param p3, "job"    # Lorg/apache/ignite/compute/ComputeJob;
    .param p4, "ses"    # Lorg/apache/ignite/compute/ComputeTaskSession;
    .param p5, "jobCtx"    # Lorg/apache/ignite/internal/GridJobContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/compute/ComputeTaskSession;",
            "Lorg/apache/ignite/internal/GridJobContextImpl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 277
    .local p2, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Injecting resources: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 281
    :cond_0
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->unwrapJob(Lorg/apache/ignite/compute/ComputeJob;)Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->unwrapTarget(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "obj":Ljava/lang/Object;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 283
    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectToJob(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Object;Lorg/apache/ignite/compute/ComputeTaskSession;Lorg/apache/ignite/internal/GridJobContextImpl;)V

    .line 285
    instance-of v0, v3, Lorg/apache/ignite/internal/GridInternalWrapper;

    if-eqz v0, :cond_1

    .line 286
    check-cast v3, Lorg/apache/ignite/internal/GridInternalWrapper;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-interface {v3}, Lorg/apache/ignite/internal/GridInternalWrapper;->userObject()Ljava/lang/Object;

    move-result-object v7

    .line 288
    .local v7, "usrObj":Ljava/lang/Object;
    if-eqz v7, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    move-object v9, p5

    .line 289
    invoke-direct/range {v4 .. v9}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectToJob(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Object;Lorg/apache/ignite/compute/ComputeTaskSession;Lorg/apache/ignite/internal/GridJobContextImpl;)V

    .line 291
    .end local v7    # "usrObj":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public inject(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Lorg/apache/ignite/compute/ComputeTask;Lorg/apache/ignite/internal/GridTaskSessionImpl;Lorg/apache/ignite/compute/ComputeLoadBalancer;Lorg/apache/ignite/compute/ComputeTaskContinuousMapper;)V
    .locals 11
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .param p3, "ses"    # Lorg/apache/ignite/internal/GridTaskSessionImpl;
    .param p4, "balancer"    # Lorg/apache/ignite/compute/ComputeLoadBalancer;
    .param p5, "mapper"    # Lorg/apache/ignite/compute/ComputeTaskContinuousMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<**>;",
            "Lorg/apache/ignite/internal/GridTaskSessionImpl;",
            "Lorg/apache/ignite/compute/ComputeLoadBalancer;",
            "Lorg/apache/ignite/compute/ComputeTaskContinuousMapper;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 356
    .local p2, "task":Lorg/apache/ignite/compute/ComputeTask;, "Lorg/apache/ignite/compute/ComputeTask<**>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Injecting resources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 360
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->unwrapTarget(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 362
    .local v1, "obj":Ljava/lang/Object;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    sget-object v2, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->TASK_INJECTIONS:Ljava/util/Collection;

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->filter(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Object;Ljava/util/Collection;)[Ljava/lang/Class;

    move-result-object v8

    .line 364
    .local v8, "filtered":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    array-length v0, v8

    if-nez v0, :cond_2

    .line 390
    :cond_1
    return-void

    .line 367
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 369
    .local v5, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v8

    .local v7, "arr$":[Ljava/lang/Class;
    array-length v10, v7

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v6, v7, v9

    .line 370
    .local v6, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v0, Lorg/apache/ignite/resources/TaskSessionResource;

    if-ne v6, v0, :cond_3

    .line 371
    const-class v2, Lorg/apache/ignite/resources/TaskSessionResource;

    move-object v0, p0

    move-object v3, p3

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectBasicResource(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)V

    .line 369
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 372
    :cond_3
    const-class v0, Lorg/apache/ignite/resources/LoadBalancerResource;

    if-ne v6, v0, :cond_4

    .line 373
    const-class v2, Lorg/apache/ignite/resources/LoadBalancerResource;

    move-object v0, p0

    move-object v3, p4

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectBasicResource(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)V

    goto :goto_1

    .line 374
    :cond_4
    const-class v0, Lorg/apache/ignite/resources/TaskContinuousMapperResource;

    if-ne v6, v0, :cond_5

    .line 375
    const-class v2, Lorg/apache/ignite/resources/TaskContinuousMapperResource;

    move-object v0, p0

    move-object/from16 v3, p5

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectBasicResource(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)V

    goto :goto_1

    .line 376
    :cond_5
    const-class v0, Lorg/apache/ignite/resources/IgniteInstanceResource;

    if-ne v6, v0, :cond_6

    .line 377
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/IgniteInstanceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->gridInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    goto :goto_1

    .line 378
    :cond_6
    const-class v0, Lorg/apache/ignite/resources/SpringApplicationContextResource;

    if-ne v6, v0, :cond_7

    .line 379
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringApplicationContextResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->springCtxInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    goto :goto_1

    .line 380
    :cond_7
    const-class v0, Lorg/apache/ignite/resources/SpringResource;

    if-ne v6, v0, :cond_8

    .line 381
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->springBeanInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    goto :goto_1

    .line 382
    :cond_8
    const-class v0, Lorg/apache/ignite/resources/LoggerResource;

    if-ne v6, v0, :cond_9

    .line 383
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/LoggerResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->logInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    goto :goto_1

    .line 385
    :cond_9
    sget-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_a

    const-class v0, Lorg/apache/ignite/resources/ServiceResource;

    if-eq v6, v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 387
    :cond_a
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/ServiceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->srvcInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    goto :goto_1
.end method

.method public inject(Lorg/apache/ignite/lifecycle/LifecycleBean;)V
    .locals 6
    .param p1, "lifecycleBean"    # Lorg/apache/ignite/lifecycle/LifecycleBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 453
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Injecting resources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 457
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->unwrapTarget(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 460
    .local v1, "obj":Ljava/lang/Object;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringApplicationContextResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->springCtxInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 461
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->springBeanInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 462
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/IgniteInstanceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->gridInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 463
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/LoggerResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->logInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 464
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/ServiceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->srvcInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 465
    return-void
.end method

.method public inject(Lorg/apache/ignite/services/Service;)V
    .locals 6
    .param p1, "svc"    # Lorg/apache/ignite/services/Service;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 496
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Injecting resources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 500
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->unwrapTarget(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 503
    .local v1, "obj":Ljava/lang/Object;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringApplicationContextResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->springCtxInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 504
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->springBeanInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 505
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/IgniteInstanceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->gridInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 506
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/LoggerResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->logInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 507
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/ServiceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->srvcInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 508
    return-void
.end method

.method public inject(Lorg/apache/ignite/spi/IgniteSpi;)V
    .locals 6
    .param p1, "spi"    # Lorg/apache/ignite/spi/IgniteSpi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 411
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Injecting resources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 415
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->unwrapTarget(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 418
    .local v1, "obj":Ljava/lang/Object;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringApplicationContextResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->springCtxInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 419
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->springBeanInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 420
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/LoggerResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->logInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 421
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/ServiceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->srvcInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 422
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/IgniteInstanceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->gridInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 423
    return-void
.end method

.method public injectBasicResource(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p3, "rsrc"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p2, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v4, 0x0

    .line 566
    sget-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p3, Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid injection."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 569
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    new-instance v3, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    invoke-direct {v3, p3}, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;-><init>(Ljava/lang/Object;)V

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 570
    return-void
.end method

.method public injectBasicResource(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p3, "rsrc"    # Ljava/lang/Object;
    .param p4, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 547
    .local p2, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p5, "depCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p3, Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid injection."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 550
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    new-instance v3, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    invoke-direct {v3, p3}, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;-><init>(Ljava/lang/Object;)V

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 551
    return-void
.end method

.method public injectCacheName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 192
    sget-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 194
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Injecting cache name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 198
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->unwrapTarget(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 200
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/CacheNameResource;

    new-instance v3, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    invoke-direct {v3, p2}, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;-><init>(Ljava/lang/Object;)V

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 201
    return-void
.end method

.method public injectGeneric(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 228
    sget-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 230
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Injecting resources: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 234
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->unwrapTarget(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 237
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringApplicationContextResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->springCtxInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 238
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/SpringResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->springBeanInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 239
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/IgniteInstanceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->gridInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 240
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/LoggerResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->logInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 241
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/ServiceResource;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->srvcInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    .line 242
    return-void
.end method

.method public injectStoreSession(Ljava/lang/Object;Lorg/apache/ignite/cache/store/CacheStoreSession;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "ses"    # Lorg/apache/ignite/cache/store/CacheStoreSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 212
    sget-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Injecting cache store session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 218
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->unwrapTarget(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 220
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    const-class v2, Lorg/apache/ignite/resources/CacheStoreSessionResource;

    new-instance v3, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;

    invoke-direct {v3, p2}, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;-><init>(Ljava/lang/Object;)V

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->inject(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public invokeAnnotated(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 10
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .param p2, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 143
    .local p3, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-eqz p2, :cond_0

    .line 144
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, p1, v8, p3}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->getMethodsWithAnnotation(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Class;)[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;

    move-result-object v6

    .line 146
    .local v6, "rsrcMtds":[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    move-object v0, v6

    .local v0, "arr$":[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 147
    .local v5, "rsrcMtd":Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    .line 150
    .local v4, "mtd":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 152
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, p2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v7, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to invoke annotated method [job="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mtd="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ann="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 160
    .end local v0    # "arr$":[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "mtd":Ljava/lang/reflect/Method;
    .end local v5    # "rsrcMtd":Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    .end local v6    # "rsrcMtds":[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    :cond_0
    return-void

    .line 154
    .restart local v0    # "arr$":[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "mtd":Ljava/lang/reflect/Method;
    .restart local v5    # "rsrcMtd":Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    .restart local v6    # "rsrcMtds":[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public isAnnotationPresent(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .param p2, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 401
    .local p3, "annCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    invoke-virtual {v0, p2, p3, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->isAnnotationPresent(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)Z

    move-result v0

    return v0
.end method

.method public onUndeployed(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .locals 2
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->onUndeployed(Ljava/lang/ClassLoader;)V

    .line 133
    return-void
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 594
    const-string v0, ">>>"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> Resource processor memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

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

    .line 597
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->printMemoryStats()V

    .line 598
    return-void
.end method

.method public setSpringContext(Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)V
    .locals 1
    .param p1, "rsrcCtx"    # Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->rsrcCtx:Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;

    .line 122
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;->springContextInjector()Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->springCtxInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    .line 123
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;->springBeanInjector()Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->springBeanInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    .line 124
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->nullInjector:Lorg/apache/ignite/internal/processors/resource/GridResourceInjector;

    goto :goto_1
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Started resource processor."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method

.method public stop(Z)V
    .locals 2
    .param p1, "cancel"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->ioc:Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/resource/GridResourceIoc;->undeployAll()V

    .line 110
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Stopped resource processor."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

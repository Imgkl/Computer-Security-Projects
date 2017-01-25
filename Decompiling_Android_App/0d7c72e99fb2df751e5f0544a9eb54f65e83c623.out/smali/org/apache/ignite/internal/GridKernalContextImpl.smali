.class public Lorg/apache/ignite/internal/GridKernalContextImpl;
.super Ljava/lang/Object;
.source "GridKernalContextImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/GridKernalContext;
.implements Ljava/io/Externalizable;


# annotations
.annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J

.field private static final stash:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private affProc:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private attrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private authProc:Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private cacheObjProc:Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private cacheProc:Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

.field private clockSrc:Lorg/apache/ignite/internal/processors/clock/GridClockSource;

.field private clockSyncProc:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private closProc:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private cluster:Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private colMgr:Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private comps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/GridComponent;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private contProc:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private cpMgr:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private dataLdrProc:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private dataStructuresProc:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private depMgr:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private discoMgr:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private evtMgr:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field protected execSvc:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private failoverMgr:Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private grid:Lorg/apache/ignite/internal/IgniteEx;

.field private gw:Lorg/apache/ignite/internal/GridKernalGateway;

.field private hadoopProc:Lorg/apache/ignite/internal/processors/hadoop/HadoopProcessorAdapter;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private igfsExecSvc:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private igfsHelper:Lorg/apache/ignite/internal/processors/igfs/IgfsHelper;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private igfsProc:Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private indexingMgr:Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private ioMgr:Lorg/apache/ignite/internal/managers/communication/GridIoManager;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private jobProc:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private loadMgr:Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private marshCachePool:Ljava/util/concurrent/ExecutorService;

.field private marshCtx:Lorg/apache/ignite/internal/MarshallerContextImpl;

.field private metricsProc:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private mgmtExecSvc:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private offheapProc:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private p2pExecSvc:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final perf:Lorg/apache/ignite/internal/GridPerformanceSuggestions;

.field private pluginProc:Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private portProc:Lorg/apache/ignite/internal/processors/port/GridPortProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private qryProc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected restExecSvc:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private restProc:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private rsrcProc:Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private scheduleProc:Lorg/apache/ignite/internal/processors/schedule/IgniteScheduleProcessorAdapter;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private volatile segFlag:Z

.field private segProc:Lorg/apache/ignite/internal/processors/segmentation/GridSegmentationProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private sesProc:Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private spring:Lorg/apache/ignite/internal/util/spring/IgniteSpringHelper;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private svcProc:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private swapspaceMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field protected sysExecSvc:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private taskProc:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private timeProc:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private utilityCachePool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/GridKernalContextImpl;->$assertionsDisabled:Z

    .line 84
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/GridKernalContextImpl;->stash:Ljava/lang/ThreadLocal;

    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->comps:Ljava/util/List;

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->attrs:Ljava/util/Map;

    .line 299
    new-instance v0, Lorg/apache/ignite/internal/processors/clock/GridJvmClockSource;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/clock/GridJvmClockSource;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->clockSrc:Lorg/apache/ignite/internal/processors/clock/GridClockSource;

    .line 302
    new-instance v0, Lorg/apache/ignite/internal/GridPerformanceSuggestions;

    invoke-direct {v0}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->perf:Lorg/apache/ignite/internal/GridPerformanceSuggestions;

    .line 312
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/GridLoggerProxy;Lorg/apache/ignite/internal/IgniteEx;Lorg/apache/ignite/configuration/IgniteConfiguration;Lorg/apache/ignite/internal/GridKernalGateway;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 3
    .param p1, "log"    # Lorg/apache/ignite/internal/GridLoggerProxy;
    .param p2, "grid"    # Lorg/apache/ignite/internal/IgniteEx;
    .param p3, "cfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;
    .param p4, "gw"    # Lorg/apache/ignite/internal/GridKernalGateway;
    .param p5, "utilityCachePool"    # Ljava/util/concurrent/ExecutorService;
    .param p6, "marshCachePool"    # Ljava/util/concurrent/ExecutorService;
    .param p7, "execSvc"    # Ljava/util/concurrent/ExecutorService;
    .param p8, "sysExecSvc"    # Ljava/util/concurrent/ExecutorService;
    .param p9, "p2pExecSvc"    # Ljava/util/concurrent/ExecutorService;
    .param p10, "mgmtExecSvc"    # Ljava/util/concurrent/ExecutorService;
    .param p11, "igfsExecSvc"    # Ljava/util/concurrent/ExecutorService;
    .param p12, "restExecSvc"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->comps:Ljava/util/List;

    .line 277
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->attrs:Ljava/util/Map;

    .line 299
    new-instance v1, Lorg/apache/ignite/internal/processors/clock/GridJvmClockSource;

    invoke-direct {v1}, Lorg/apache/ignite/internal/processors/clock/GridJvmClockSource;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->clockSrc:Lorg/apache/ignite/internal/processors/clock/GridClockSource;

    .line 302
    new-instance v1, Lorg/apache/ignite/internal/GridPerformanceSuggestions;

    invoke-direct {v1}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->perf:Lorg/apache/ignite/internal/GridPerformanceSuggestions;

    .line 343
    sget-boolean v1, Lorg/apache/ignite/internal/GridKernalContextImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 344
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/GridKernalContextImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 345
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/GridKernalContextImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez p4, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 347
    :cond_2
    iput-object p2, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->grid:Lorg/apache/ignite/internal/IgniteEx;

    .line 348
    iput-object p3, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    .line 349
    iput-object p4, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->gw:Lorg/apache/ignite/internal/GridKernalGateway;

    .line 350
    iput-object p5, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->utilityCachePool:Ljava/util/concurrent/ExecutorService;

    .line 351
    iput-object p6, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->marshCachePool:Ljava/util/concurrent/ExecutorService;

    .line 352
    iput-object p7, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->execSvc:Ljava/util/concurrent/ExecutorService;

    .line 353
    iput-object p8, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->sysExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 354
    iput-object p9, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->p2pExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 355
    iput-object p10, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->mgmtExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 356
    iput-object p11, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->igfsExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 357
    iput-object p12, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->restExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 359
    new-instance v1, Lorg/apache/ignite/internal/MarshallerContextImpl;

    invoke-direct {v1}, Lorg/apache/ignite/internal/MarshallerContextImpl;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->marshCtx:Lorg/apache/ignite/internal/MarshallerContextImpl;

    .line 362
    :try_start_0
    sget-object v1, Lorg/apache/ignite/internal/IgniteComponentType;->SPRING:Lorg/apache/ignite/internal/IgniteComponentType;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/IgniteComponentType;->create(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/spring/IgniteSpringHelper;

    iput-object v1, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->spring:Lorg/apache/ignite/internal/util/spring/IgniteSpringHelper;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_3
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "ignored":Lorg/apache/ignite/IgniteCheckedException;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/GridLoggerProxy;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 366
    const-string v1, "Failed to load spring component, will not be able to extract userVersion from META-INF/ignite.xml."

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/apache/ignite/internal/GridComponent;)V
    .locals 1
    .param p1, "comp"    # Lorg/apache/ignite/internal/GridComponent;

    .prologue
    .line 385
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->add(Lorg/apache/ignite/internal/GridComponent;Z)V

    .line 386
    return-void
.end method

.method public add(Lorg/apache/ignite/internal/GridComponent;Z)V
    .locals 3
    .param p1, "comp"    # Lorg/apache/ignite/internal/GridComponent;
    .param p2, "addToList"    # Z

    .prologue
    .line 392
    sget-boolean v0, Lorg/apache/ignite/internal/GridKernalContextImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 399
    :cond_0
    instance-of v0, p1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 400
    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->depMgr:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    .line 480
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 481
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->comps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_2
    return-void

    .line 401
    :cond_3
    instance-of v0, p1, Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 402
    check-cast v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->ioMgr:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    goto :goto_0

    .line 403
    :cond_4
    instance-of v0, p1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 404
    check-cast v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->discoMgr:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    goto :goto_0

    .line 405
    :cond_5
    instance-of v0, p1, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 406
    check-cast v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->cpMgr:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    goto :goto_0

    .line 407
    :cond_6
    instance-of v0, p1, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    if-eqz v0, :cond_7

    move-object v0, p1

    .line 408
    check-cast v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->evtMgr:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    goto :goto_0

    .line 409
    :cond_7
    instance-of v0, p1, Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;

    if-eqz v0, :cond_8

    move-object v0, p1

    .line 410
    check-cast v0, Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->failoverMgr:Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;

    goto :goto_0

    .line 411
    :cond_8
    instance-of v0, p1, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;

    if-eqz v0, :cond_9

    move-object v0, p1

    .line 412
    check-cast v0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->colMgr:Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;

    goto :goto_0

    .line 413
    :cond_9
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    if-eqz v0, :cond_a

    move-object v0, p1

    .line 414
    check-cast v0, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->authProc:Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    goto :goto_0

    .line 415
    :cond_a
    instance-of v0, p1, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;

    if-eqz v0, :cond_b

    move-object v0, p1

    .line 416
    check-cast v0, Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->loadMgr:Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;

    goto :goto_0

    .line 417
    :cond_b
    instance-of v0, p1, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    if-eqz v0, :cond_c

    move-object v0, p1

    .line 418
    check-cast v0, Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->swapspaceMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    goto :goto_0

    .line 419
    :cond_c
    instance-of v0, p1, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;

    if-eqz v0, :cond_d

    move-object v0, p1

    .line 420
    check-cast v0, Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->indexingMgr:Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;

    goto :goto_0

    .line 427
    :cond_d
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    if-eqz v0, :cond_e

    move-object v0, p1

    .line 428
    check-cast v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->taskProc:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    goto :goto_0

    .line 429
    :cond_e
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    if-eqz v0, :cond_f

    move-object v0, p1

    .line 430
    check-cast v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->jobProc:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    goto :goto_0

    .line 431
    :cond_f
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    if-eqz v0, :cond_10

    move-object v0, p1

    .line 432
    check-cast v0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->timeProc:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    goto/16 :goto_0

    .line 433
    :cond_10
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    if-eqz v0, :cond_11

    move-object v0, p1

    .line 434
    check-cast v0, Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->clockSyncProc:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    goto/16 :goto_0

    .line 435
    :cond_11
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    if-eqz v0, :cond_12

    move-object v0, p1

    .line 436
    check-cast v0, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->rsrcProc:Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    goto/16 :goto_0

    .line 437
    :cond_12
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;

    if-eqz v0, :cond_13

    move-object v0, p1

    .line 438
    check-cast v0, Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->metricsProc:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;

    goto/16 :goto_0

    .line 439
    :cond_13
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    if-eqz v0, :cond_14

    move-object v0, p1

    .line 440
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->cacheProc:Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    goto/16 :goto_0

    .line 441
    :cond_14
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;

    if-eqz v0, :cond_15

    move-object v0, p1

    .line 442
    check-cast v0, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->sesProc:Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;

    goto/16 :goto_0

    .line 443
    :cond_15
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    if-eqz v0, :cond_16

    move-object v0, p1

    .line 444
    check-cast v0, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->portProc:Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    goto/16 :goto_0

    .line 445
    :cond_16
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    if-eqz v0, :cond_17

    move-object v0, p1

    .line 446
    check-cast v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->closProc:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    goto/16 :goto_0

    .line 447
    :cond_17
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    if-eqz v0, :cond_18

    move-object v0, p1

    .line 448
    check-cast v0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->svcProc:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    goto/16 :goto_0

    .line 449
    :cond_18
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/schedule/IgniteScheduleProcessorAdapter;

    if-eqz v0, :cond_19

    move-object v0, p1

    .line 450
    check-cast v0, Lorg/apache/ignite/internal/processors/schedule/IgniteScheduleProcessorAdapter;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->scheduleProc:Lorg/apache/ignite/internal/processors/schedule/IgniteScheduleProcessorAdapter;

    goto/16 :goto_0

    .line 451
    :cond_19
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/segmentation/GridSegmentationProcessor;

    if-eqz v0, :cond_1a

    move-object v0, p1

    .line 452
    check-cast v0, Lorg/apache/ignite/internal/processors/segmentation/GridSegmentationProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->segProc:Lorg/apache/ignite/internal/processors/segmentation/GridSegmentationProcessor;

    goto/16 :goto_0

    .line 453
    :cond_1a
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    if-eqz v0, :cond_1b

    move-object v0, p1

    .line 454
    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->affProc:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    goto/16 :goto_0

    .line 455
    :cond_1b
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    if-eqz v0, :cond_1c

    move-object v0, p1

    .line 456
    check-cast v0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->restProc:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    goto/16 :goto_0

    .line 457
    :cond_1c
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    if-eqz v0, :cond_1d

    move-object v0, p1

    .line 458
    check-cast v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->dataLdrProc:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    goto/16 :goto_0

    .line 459
    :cond_1d
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;

    if-eqz v0, :cond_1e

    move-object v0, p1

    .line 460
    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->igfsProc:Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;

    goto/16 :goto_0

    .line 461
    :cond_1e
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    if-eqz v0, :cond_1f

    move-object v0, p1

    .line 462
    check-cast v0, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->offheapProc:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    goto/16 :goto_0

    .line 463
    :cond_1f
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    if-eqz v0, :cond_20

    move-object v0, p1

    .line 464
    check-cast v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->contProc:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    goto/16 :goto_0

    .line 465
    :cond_20
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/hadoop/HadoopProcessorAdapter;

    if-eqz v0, :cond_21

    move-object v0, p1

    .line 466
    check-cast v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopProcessorAdapter;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->hadoopProc:Lorg/apache/ignite/internal/processors/hadoop/HadoopProcessorAdapter;

    goto/16 :goto_0

    .line 467
    :cond_21
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    if-eqz v0, :cond_22

    move-object v0, p1

    .line 468
    check-cast v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->cacheObjProc:Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    goto/16 :goto_0

    .line 469
    :cond_22
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;

    if-eqz v0, :cond_23

    move-object v0, p1

    .line 470
    check-cast v0, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->pluginProc:Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;

    goto/16 :goto_0

    .line 471
    :cond_23
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    if-eqz v0, :cond_24

    move-object v0, p1

    .line 472
    check-cast v0, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->qryProc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    goto/16 :goto_0

    .line 473
    :cond_24
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    if-eqz v0, :cond_25

    move-object v0, p1

    .line 474
    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->dataStructuresProc:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    goto/16 :goto_0

    .line 475
    :cond_25
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;

    if-eqz v0, :cond_26

    move-object v0, p1

    .line 476
    check-cast v0, Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->cluster:Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;

    goto/16 :goto_0

    .line 478
    :cond_26
    sget-boolean v0, Lorg/apache/ignite/internal/GridKernalContextImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/apache/ignite/internal/GridPluginComponent;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown manager class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public addHelper(Ljava/lang/Object;)V
    .locals 3
    .param p1, "helper"    # Ljava/lang/Object;

    .prologue
    .line 488
    sget-boolean v0, Lorg/apache/ignite/internal/GridKernalContextImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 490
    :cond_0
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsHelper;

    if-eqz v0, :cond_2

    .line 491
    check-cast p1, Lorg/apache/ignite/internal/processors/igfs/IgfsHelper;

    .end local p1    # "helper":Ljava/lang/Object;
    iput-object p1, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->igfsHelper:Lorg/apache/ignite/internal/processors/igfs/IgfsHelper;

    .line 494
    :cond_1
    return-void

    .line 493
    .restart local p1    # "helper":Ljava/lang/Object;
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/GridKernalContextImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown helper class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public addNodeAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 880
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public affinity()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->affProc:Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;

    return-object v0
.end method

.method public cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->cacheProc:Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    return-object v0
.end method

.method public cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->cacheObjProc:Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    return-object v0
.end method

.method public checkpoint()Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->cpMgr:Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    return-object v0
.end method

.method public clockSync()Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->clockSyncProc:Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;

    return-object v0
.end method

.method public closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->closProc:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    return-object v0
.end method

.method public cluster()Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->cluster:Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;

    return-object v0
.end method

.method public collision()Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->colMgr:Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;

    return-object v0
.end method

.method public components()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/GridComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->comps:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public config()Lorg/apache/ignite/configuration/IgniteConfiguration;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    return-object v0
.end method

.method public continuous()Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->contProc:Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    return-object v0
.end method

.method public createComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 785
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->pluginProc:Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->createComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 787
    .local v0, "res":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 793
    .end local v0    # "res":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    .line 790
    .restart local v0    # "res":Ljava/lang/Object;, "TT;"
    :cond_0
    const-class v1, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 791
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/dr/os/GridOsCacheDrManager;

    .end local v0    # "res":Ljava/lang/Object;, "TT;"
    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/dr/os/GridOsCacheDrManager;-><init>()V

    goto :goto_0

    .line 792
    .restart local v0    # "res":Ljava/lang/Object;, "TT;"
    :cond_1
    const-class v1, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 793
    new-instance v0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;

    .end local v0    # "res":Ljava/lang/Object;, "TT;"
    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    goto :goto_0

    .line 795
    .restart local v0    # "res":Ljava/lang/Object;, "TT;"
    :cond_2
    new-instance v1, Lorg/apache/ignite/IgniteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported component type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dataStream()Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 666
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->dataLdrProc:Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    return-object v0
.end method

.method public dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->dataStructuresProc:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    return-object v0
.end method

.method public deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->depMgr:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    return-object v0
.end method

.method public discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->discoMgr:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    return-object v0
.end method

.method public event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->evtMgr:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    return-object v0
.end method

.method public exceptionRegistry()Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;
    .locals 1

    .prologue
    .line 865
    invoke-static {}, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;->get()Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;

    move-result-object v0

    return-object v0
.end method

.method public failover()Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->failoverMgr:Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;

    return-object v0
.end method

.method public gateway()Lorg/apache/ignite/internal/GridKernalGateway;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->gw:Lorg/apache/ignite/internal/GridKernalGateway;

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->execSvc:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getIgfsExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->igfsExecSvc:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getManagementExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->mgmtExecSvc:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getPeerClassLoadingExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->p2pExecSvc:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getRestExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->restExecSvc:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getSystemExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->sysExecSvc:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public grid()Lorg/apache/ignite/internal/IgniteEx;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->grid:Lorg/apache/ignite/internal/IgniteEx;

    return-object v0
.end method

.method public gridName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hadoop()Lorg/apache/ignite/internal/processors/hadoop/HadoopProcessorAdapter;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->hadoopProc:Lorg/apache/ignite/internal/processors/hadoop/HadoopProcessorAdapter;

    return-object v0
.end method

.method public hasNodeAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 875
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->igfsProc:Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;

    return-object v0
.end method

.method public igfsHelper()Lorg/apache/ignite/internal/processors/igfs/IgfsHelper;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->igfsHelper:Lorg/apache/ignite/internal/processors/igfs/IgfsHelper;

    return-object v0
.end method

.method public indexing()Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->indexingMgr:Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;

    return-object v0
.end method

.method public io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->ioMgr:Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    return-object v0
.end method

.method public isDaemon()Z
    .locals 2

    .prologue
    .line 764
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "true"

    const-string v1, "IGNITE_DAEMON"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopping()Z
    .locals 2

    .prologue
    .line 498
    iget-object v1, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->gw:Lorg/apache/ignite/internal/GridKernalGateway;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalGateway;->getState()Lorg/apache/ignite/internal/GridKernalState;

    move-result-object v0

    .line 500
    .local v0, "state":Lorg/apache/ignite/internal/GridKernalState;
    sget-object v1, Lorg/apache/ignite/internal/GridKernalState;->STOPPING:Lorg/apache/ignite/internal/GridKernalState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/apache/ignite/internal/GridKernalState;->STOPPED:Lorg/apache/ignite/internal/GridKernalState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/ignite/internal/GridComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->comps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->jobProc:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    return-object v0
.end method

.method public jobMetric()Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->metricsProc:Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;

    return-object v0
.end method

.method public loadBalancing()Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->loadMgr:Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;

    return-object v0
.end method

.method public localNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public log()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 716
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    return-object v0
.end method

.method public log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/IgniteLogger;"
        }
    .end annotation

    .prologue
    .line 721
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    return-object v0
.end method

.method public markSegmented()V
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->segFlag:Z

    .line 727
    return-void
.end method

.method public marshallerCachePool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->marshCachePool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public marshallerContext()Lorg/apache/ignite/internal/MarshallerContextImpl;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->marshCtx:Lorg/apache/ignite/internal/MarshallerContextImpl;

    return-object v0
.end method

.method public nodeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 870
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->attrs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nodeAttributes()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 885
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->attrs:Ljava/util/Map;

    return-object v0
.end method

.method public offheap()Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->offheapProc:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    return-object v0
.end method

.method public performance()Lorg/apache/ignite/internal/GridPerformanceSuggestions;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->perf:Lorg/apache/ignite/internal/GridPerformanceSuggestions;

    return-object v0
.end method

.method public pluginProvider(Ljava/lang/String;)Lorg/apache/ignite/plugin/PluginProvider;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/plugin/PluginNotFoundException;
        }
    .end annotation

    .prologue
    .line 774
    iget-object v1, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->pluginProc:Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;->pluginProvider(Ljava/lang/String;)Lorg/apache/ignite/plugin/PluginProvider;

    move-result-object v0

    .line 776
    .local v0, "plugin":Lorg/apache/ignite/plugin/PluginProvider;
    if-nez v0, :cond_0

    .line 777
    new-instance v1, Lorg/apache/ignite/plugin/PluginNotFoundException;

    invoke-direct {v1, p1}, Lorg/apache/ignite/plugin/PluginNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 779
    :cond_0
    return-object v0
.end method

.method public plugins()Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->pluginProc:Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;

    return-object v0
.end method

.method public ports()Lorg/apache/ignite/internal/processors/port/GridPortProcessor;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->portProc:Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    return-object v0
.end method

.method public printMemoryStats()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 755
    const-string v2, ">>> "

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> Grid memory stats [grid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->gridName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    iget-object v2, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->comps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/GridComponent;

    .line 759
    .local v0, "comp":Lorg/apache/ignite/internal/GridComponent;
    invoke-interface {v0}, Lorg/apache/ignite/internal/GridComponent;->printMemoryStats()V

    goto :goto_0

    .line 760
    .end local v0    # "comp":Lorg/apache/ignite/internal/GridComponent;
    :cond_0
    return-void
.end method

.method public query()Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->qryProc:Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 812
    sget-object v0, Lorg/apache/ignite/internal/GridKernalContextImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 813
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 823
    :try_start_0
    sget-object v1, Lorg/apache/ignite/internal/GridKernalContextImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/ignite/internal/IgnitionEx;->gridx(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteKernal;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 829
    sget-object v2, Lorg/apache/ignite/internal/GridKernalContextImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    return-object v1

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    new-instance v1, Ljava/io/InvalidObjectException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->withCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/InvalidObjectException;

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 829
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    sget-object v2, Lorg/apache/ignite/internal/GridKernalContextImpl;->stash:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    throw v1
.end method

.method public resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->rsrcProc:Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    return-object v0
.end method

.method public rest()Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->restProc:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    return-object v0
.end method

.method public schedule()Lorg/apache/ignite/internal/processors/schedule/IgniteScheduleProcessorAdapter;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->scheduleProc:Lorg/apache/ignite/internal/processors/schedule/IgniteScheduleProcessorAdapter;

    return-object v0
.end method

.method public security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->authProc:Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    return-object v0
.end method

.method public segmentation()Lorg/apache/ignite/internal/processors/segmentation/GridSegmentationProcessor;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->segProc:Lorg/apache/ignite/internal/processors/segmentation/GridSegmentationProcessor;

    return-object v0
.end method

.method public segmented()Z
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->segFlag:Z

    return v0
.end method

.method public service()Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->svcProc:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    return-object v0
.end method

.method public session()Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->sesProc:Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;

    return-object v0
.end method

.method public swap()Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->swapspaceMgr:Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;

    return-object v0
.end method

.method public task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->taskProc:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    return-object v0
.end method

.method public timeSource()Lorg/apache/ignite/internal/processors/clock/GridClockSource;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->clockSrc:Lorg/apache/ignite/internal/processors/clock/GridClockSource;

    return-object v0
.end method

.method public timeSource(Lorg/apache/ignite/internal/processors/clock/GridClockSource;)V
    .locals 0
    .param p1, "clockSrc"    # Lorg/apache/ignite/internal/processors/clock/GridClockSource;

    .prologue
    .line 745
    iput-object p1, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->clockSrc:Lorg/apache/ignite/internal/processors/clock/GridClockSource;

    .line 746
    return-void
.end method

.method public timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->timeProc:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 900
    const-class v0, Lorg/apache/ignite/internal/GridKernalContextImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userVersion(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 2
    .param p1, "ldr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 769
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->spring:Lorg/apache/ignite/internal/util/spring/IgniteSpringHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->spring:Lorg/apache/ignite/internal/util/spring/IgniteSpringHelper;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridKernalContextImpl;->log()Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/apache/ignite/internal/util/spring/IgniteSpringHelper;->userVersion(Ljava/lang/ClassLoader;Lorg/apache/ignite/IgniteLogger;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public utilityCachePool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->utilityCachePool:Ljava/util/concurrent/ExecutorService;

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
    .line 807
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalContextImpl;->grid:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteEx;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 808
    return-void
.end method

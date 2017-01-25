.class public Lorg/apache/ignite/configuration/IgniteConfiguration;
.super Ljava/lang/Object;
.source "IgniteConfiguration.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final AVAILABLE_PROC_CNT:I

.field public static final COURTESY_LOGGER_NAME:Ljava/lang/String; = "org.apache.ignite.CourtesyConfigNotice"

.field public static final DFLT_ALL_SEG_RESOLVERS_PASS_REQ:Z = true

.field public static final DFLT_CACHE_SANITY_CHECK_ENABLED:Z = true

.field public static final DFLT_CLOCK_SYNC_FREQUENCY:I = 0x1d4c0

.field public static final DFLT_CLOCK_SYNC_SAMPLES:I = 0x8

.field public static final DFLT_DEPLOYMENT_MODE:Lorg/apache/ignite/configuration/DeploymentMode;

.field public static final DFLT_DISCOVERY_STARTUP_DELAY:J = 0xea60L

.field public static final DFLT_MARSHAL_LOCAL_JOBS:Z = false

.field public static final DFLT_METRICS_EXPIRE_TIME:J = 0x7fffffffffffffffL

.field public static final DFLT_METRICS_HISTORY_SIZE:I = 0x2710

.field public static final DFLT_METRICS_LOG_FREQ:J = 0xea60L

.field public static final DFLT_METRICS_UPDATE_FREQ:J = 0x7d0L

.field public static final DFLT_MGMT_THREAD_CNT:I = 0x4

.field public static final DFLT_NETWORK_TIMEOUT:J = 0x1388L

.field public static final DFLT_P2P_ENABLED:Z = false

.field public static final DFLT_P2P_MISSED_RESOURCES_CACHE_SIZE:I = 0x64

.field public static final DFLT_P2P_THREAD_CNT:I = 0x2

.field public static final DFLT_PUBLIC_KEEP_ALIVE_TIME:J = 0x0L

.field public static final DFLT_PUBLIC_THREADPOOL_QUEUE_CAP:I = 0x7fffffff

.field public static final DFLT_PUBLIC_THREAD_CNT:I

.field public static final DFLT_SEG_CHK_FREQ:J = 0x2710L

.field public static final DFLT_SEG_PLC:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

.field public static final DFLT_SEG_RESOLVE_ATTEMPTS:I = 0x2

.field public static final DFLT_SEND_RETRY_CNT:I = 0x3

.field public static final DFLT_SEND_RETRY_DELAY:J = 0x3e8L

.field public static final DFLT_SYSTEM_CORE_THREAD_CNT:I

.field public static final DFLT_SYSTEM_KEEP_ALIVE_TIME:J = 0x0L

.field public static final DFLT_SYSTEM_MAX_THREAD_CNT:I

.field public static final DFLT_SYSTEM_THREADPOOL_QUEUE_CAP:I = 0x7fffffff

.field public static final DFLT_TCP_PORT:I = 0x2bcb

.field public static final DFLT_TIME_SERVER_PORT_BASE:I = 0x797c

.field public static final DFLT_TIME_SERVER_PORT_RANGE:I = 0x64

.field public static final DFLT_WAIT_FOR_SEG_ON_START:Z = true


# instance fields
.field private addrRslvr:Lorg/apache/ignite/configuration/AddressResolver;

.field private allResolversPassReq:Z

.field private atomicCfg:Lorg/apache/ignite/configuration/AtomicConfiguration;

.field private cacheCfg:[Lorg/apache/ignite/configuration/CacheConfiguration;

.field private cacheSanityCheckEnabled:Z

.field private classLdr:Ljava/lang/ClassLoader;

.field private clientMode:Ljava/lang/Boolean;

.field private clockSyncFreq:J

.field private clockSyncSamples:I

.field private colSpi:Lorg/apache/ignite/spi/collision/CollisionSpi;

.field private commSpi:Lorg/apache/ignite/spi/communication/CommunicationSpi;

.field private connectorCfg:Lorg/apache/ignite/configuration/ConnectorConfiguration;

.field private cpSpi:[Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

.field private daemon:Z

.field private deployMode:Lorg/apache/ignite/configuration/DeploymentMode;

.field private deploySpi:Lorg/apache/ignite/spi/deployment/DeploymentSpi;

.field private discoSpi:Lorg/apache/ignite/spi/discovery/DiscoverySpi;

.field private discoStartupDelay:J

.field private evtSpi:Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;

.field private failSpi:[Lorg/apache/ignite/spi/failover/FailoverSpi;

.field private ggHome:Ljava/lang/String;

.field private ggWork:Ljava/lang/String;

.field private gridName:Ljava/lang/String;

.field private hadoopCfg:Lorg/apache/ignite/configuration/HadoopConfiguration;

.field private igfsCfg:[Lorg/apache/ignite/configuration/FileSystemConfiguration;

.field private igfsPoolSize:I

.field private inclEvtTypes:[I

.field private includeProps:[Ljava/lang/String;

.field private indexingSpi:Lorg/apache/ignite/spi/indexing/IndexingSpi;

.field private lifecycleBeans:[Lorg/apache/ignite/lifecycle/LifecycleBean;

.field private loadBalancingSpi:[Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;

.field private locHost:Ljava/lang/String;

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private lsnrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<+",
            "Lorg/apache/ignite/events/Event;",
            ">;[I>;"
        }
    .end annotation
.end field

.field private marsh:Lorg/apache/ignite/marshaller/Marshaller;

.field private marshLocJobs:Z

.field private mbeanSrv:Ljavax/management/MBeanServer;

.field private metricsExpTime:J

.field private metricsHistSize:I

.field private metricsLogFreq:J

.field private metricsUpdateFreq:J

.field private mgmtPoolSize:I

.field private nearCacheCfg:[Lorg/apache/ignite/configuration/NearCacheConfiguration;

.field private netTimeout:J

.field private nodeId:Ljava/util/UUID;

.field private p2pEnabled:Z

.field private p2pLocClsPathExcl:[Ljava/lang/String;

.field private p2pMissedCacheSize:I

.field private p2pPoolSize:I

.field private pluginCfgs:[Lorg/apache/ignite/plugin/PluginConfiguration;

.field private pubPoolSize:I

.field private segChkFreq:J

.field private segPlc:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

.field private segResolveAttempts:I

.field private segResolvers:[Lorg/apache/ignite/plugin/segmentation/GridSegmentationResolver;

.field private sndRetryCnt:I

.field private sndRetryDelay:J

.field private svcCfgs:[Lorg/apache/ignite/services/ServiceConfiguration;

.field private swapSpaceSpi:Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

.field private sysPoolSize:I

.field private timeSrvPortBase:I

.field private timeSrvPortRange:I

.field private txCfg:Lorg/apache/ignite/configuration/TransactionConfiguration;

.field private userAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private waitForSegOnStart:Z

.field private warmupClos:Lorg/apache/ignite/lang/IgniteInClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Lorg/apache/ignite/configuration/IgniteConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    const-class v0, Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->$assertionsDisabled:Z

    .line 119
    sget-object v0, Lorg/apache/ignite/configuration/DeploymentMode;->SHARED:Lorg/apache/ignite/configuration/DeploymentMode;

    sput-object v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_DEPLOYMENT_MODE:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 131
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->AVAILABLE_PROC_CNT:I

    .line 134
    const/16 v0, 0x8

    sget v1, Lorg/apache/ignite/configuration/IgniteConfiguration;->AVAILABLE_PROC_CNT:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_PUBLIC_THREAD_CNT:I

    .line 143
    sget v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_PUBLIC_THREAD_CNT:I

    sput v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_SYSTEM_CORE_THREAD_CNT:I

    .line 146
    sget v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_PUBLIC_THREAD_CNT:I

    sput v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_SYSTEM_MAX_THREAD_CNT:I

    .line 161
    sget-object v0, Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;->STOP:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    sput-object v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_SEG_PLC:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/32 v6, 0xea60

    const/16 v4, 0x64

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    sget v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_PUBLIC_THREAD_CNT:I

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->pubPoolSize:I

    .line 200
    sget v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_SYSTEM_CORE_THREAD_CNT:I

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->sysPoolSize:I

    .line 203
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->mgmtPoolSize:I

    .line 206
    sget v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->AVAILABLE_PROC_CNT:I

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->igfsPoolSize:I

    .line 209
    iput v3, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->p2pPoolSize:I

    .line 227
    iput-boolean v1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->marshLocJobs:Z

    .line 233
    iput-boolean v1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->p2pEnabled:Z

    .line 242
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->netTimeout:J

    .line 245
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->sndRetryDelay:J

    .line 248
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->sndRetryCnt:I

    .line 251
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->clockSyncSamples:I

    .line 254
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->clockSyncFreq:J

    .line 257
    const/16 v0, 0x2710

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsHistSize:I

    .line 260
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsUpdateFreq:J

    .line 263
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsExpTime:J

    .line 272
    sget-object v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_SEG_PLC:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->segPlc:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    .line 278
    iput v3, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->segResolveAttempts:I

    .line 281
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->waitForSegOnStart:Z

    .line 284
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->allResolversPassReq:Z

    .line 287
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->segChkFreq:J

    .line 329
    new-instance v0, Lorg/apache/ignite/configuration/TransactionConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/configuration/TransactionConfiguration;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->txCfg:Lorg/apache/ignite/configuration/TransactionConfiguration;

    .line 335
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->cacheSanityCheckEnabled:Z

    .line 338
    iput-wide v6, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->discoStartupDelay:J

    .line 341
    sget-object v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_DEPLOYMENT_MODE:Lorg/apache/ignite/configuration/DeploymentMode;

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->deployMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 344
    iput v4, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->p2pMissedCacheSize:I

    .line 350
    const/16 v0, 0x797c

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->timeSrvPortBase:I

    .line 353
    iput v4, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->timeSrvPortRange:I

    .line 359
    iput-wide v6, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsLogFreq:J

    .line 375
    new-instance v0, Lorg/apache/ignite/configuration/ConnectorConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/configuration/ConnectorConfiguration;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->connectorCfg:Lorg/apache/ignite/configuration/ConnectorConfiguration;

    .line 381
    new-instance v0, Lorg/apache/ignite/configuration/AtomicConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/configuration/AtomicConfiguration;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->atomicCfg:Lorg/apache/ignite/configuration/AtomicConfiguration;

    .line 391
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/configuration/IgniteConfiguration;)V
    .locals 8
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;

    .prologue
    const-wide/32 v6, 0xea60

    const/16 v4, 0x64

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    sget v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_PUBLIC_THREAD_CNT:I

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->pubPoolSize:I

    .line 200
    sget v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_SYSTEM_CORE_THREAD_CNT:I

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->sysPoolSize:I

    .line 203
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->mgmtPoolSize:I

    .line 206
    sget v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->AVAILABLE_PROC_CNT:I

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->igfsPoolSize:I

    .line 209
    iput v3, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->p2pPoolSize:I

    .line 227
    iput-boolean v1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->marshLocJobs:Z

    .line 233
    iput-boolean v1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->p2pEnabled:Z

    .line 242
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->netTimeout:J

    .line 245
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->sndRetryDelay:J

    .line 248
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->sndRetryCnt:I

    .line 251
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->clockSyncSamples:I

    .line 254
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->clockSyncFreq:J

    .line 257
    const/16 v0, 0x2710

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsHistSize:I

    .line 260
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsUpdateFreq:J

    .line 263
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsExpTime:J

    .line 272
    sget-object v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_SEG_PLC:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->segPlc:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    .line 278
    iput v3, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->segResolveAttempts:I

    .line 281
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->waitForSegOnStart:Z

    .line 284
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->allResolversPassReq:Z

    .line 287
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->segChkFreq:J

    .line 329
    new-instance v0, Lorg/apache/ignite/configuration/TransactionConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/configuration/TransactionConfiguration;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->txCfg:Lorg/apache/ignite/configuration/TransactionConfiguration;

    .line 335
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->cacheSanityCheckEnabled:Z

    .line 338
    iput-wide v6, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->discoStartupDelay:J

    .line 341
    sget-object v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->DFLT_DEPLOYMENT_MODE:Lorg/apache/ignite/configuration/DeploymentMode;

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->deployMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 344
    iput v4, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->p2pMissedCacheSize:I

    .line 350
    const/16 v0, 0x797c

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->timeSrvPortBase:I

    .line 353
    iput v4, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->timeSrvPortRange:I

    .line 359
    iput-wide v6, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsLogFreq:J

    .line 375
    new-instance v0, Lorg/apache/ignite/configuration/ConnectorConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/configuration/ConnectorConfiguration;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->connectorCfg:Lorg/apache/ignite/configuration/ConnectorConfiguration;

    .line 381
    new-instance v0, Lorg/apache/ignite/configuration/AtomicConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/configuration/AtomicConfiguration;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->atomicCfg:Lorg/apache/ignite/configuration/AtomicConfiguration;

    .line 400
    sget-boolean v0, Lorg/apache/ignite/configuration/IgniteConfiguration;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 403
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDiscoverySpi()Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->discoSpi:Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    .line 404
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCommunicationSpi()Lorg/apache/ignite/spi/communication/CommunicationSpi;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->commSpi:Lorg/apache/ignite/spi/communication/CommunicationSpi;

    .line 405
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentSpi()Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->deploySpi:Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    .line 406
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getEventStorageSpi()Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->evtSpi:Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;

    .line 407
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCheckpointSpi()[Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->cpSpi:[Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    .line 408
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCollisionSpi()Lorg/apache/ignite/spi/collision/CollisionSpi;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->colSpi:Lorg/apache/ignite/spi/collision/CollisionSpi;

    .line 409
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFailoverSpi()[Lorg/apache/ignite/spi/failover/FailoverSpi;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->failSpi:[Lorg/apache/ignite/spi/failover/FailoverSpi;

    .line 410
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLoadBalancingSpi()[Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->loadBalancingSpi:[Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;

    .line 411
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIndexingSpi()Lorg/apache/ignite/spi/indexing/IndexingSpi;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->indexingSpi:Lorg/apache/ignite/spi/indexing/IndexingSpi;

    .line 412
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSwapSpaceSpi()Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->swapSpaceSpi:Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    .line 417
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getAddressResolver()Lorg/apache/ignite/configuration/AddressResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->addrRslvr:Lorg/apache/ignite/configuration/AddressResolver;

    .line 418
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isAllSegmentationResolversPassRequired()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->allResolversPassReq:Z

    .line 419
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getAtomicConfiguration()Lorg/apache/ignite/configuration/AtomicConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->atomicCfg:Lorg/apache/ignite/configuration/AtomicConfiguration;

    .line 420
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->daemon:Z

    .line 421
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->cacheCfg:[Lorg/apache/ignite/configuration/CacheConfiguration;

    .line 422
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isCacheSanityCheckEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->cacheSanityCheckEnabled:Z

    .line 423
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->connectorCfg:Lorg/apache/ignite/configuration/ConnectorConfiguration;

    .line 424
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->classLdr:Ljava/lang/ClassLoader;

    .line 425
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isClientMode()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->clientMode:Ljava/lang/Boolean;

    .line 426
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getClockSyncFrequency()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->clockSyncFreq:J

    .line 427
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getClockSyncSamples()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->clockSyncSamples:I

    .line 428
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->deployMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 429
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDiscoveryStartupDelay()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->discoStartupDelay:J

    .line 430
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPublicThreadPoolSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->pubPoolSize:I

    .line 431
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIgniteHome()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->ggHome:Ljava/lang/String;

    .line 432
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getWorkDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->ggWork:Ljava/lang/String;

    .line 433
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->gridName:Ljava/lang/String;

    .line 434
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getFileSystemConfiguration()[Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->igfsCfg:[Lorg/apache/ignite/configuration/FileSystemConfiguration;

    .line 435
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIgfsThreadPoolSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->igfsPoolSize:I

    .line 436
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getHadoopConfiguration()Lorg/apache/ignite/configuration/HadoopConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->hadoopCfg:Lorg/apache/ignite/configuration/HadoopConfiguration;

    .line 437
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIncludeEventTypes()[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->inclEvtTypes:[I

    .line 438
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIncludeProperties()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->includeProps:[Ljava/lang/String;

    .line 439
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLifecycleBeans()[Lorg/apache/ignite/lifecycle/LifecycleBean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->lifecycleBeans:[Lorg/apache/ignite/lifecycle/LifecycleBean;

    .line 440
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->locHost:Ljava/lang/String;

    .line 441
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->log:Lorg/apache/ignite/IgniteLogger;

    .line 442
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLocalEventListeners()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->lsnrs:Ljava/util/Map;

    .line 443
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    .line 444
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isMarshalLocalJobs()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->marshLocJobs:Z

    .line 445
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->mbeanSrv:Ljavax/management/MBeanServer;

    .line 446
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMetricsHistorySize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsHistSize:I

    .line 447
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMetricsExpireTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsExpTime:J

    .line 448
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMetricsLogFrequency()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsLogFreq:J

    .line 449
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMetricsUpdateFrequency()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsUpdateFreq:J

    .line 450
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getManagementThreadPoolSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->mgmtPoolSize:I

    .line 451
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->netTimeout:J

    .line 452
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->nodeId:Ljava/util/UUID;

    .line 453
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->p2pEnabled:Z

    .line 454
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingLocalClassPathExclude()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->p2pLocClsPathExcl:[Ljava/lang/String;

    .line 455
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingMissedResourcesCacheSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->p2pMissedCacheSize:I

    .line 456
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingThreadPoolSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->p2pPoolSize:I

    .line 457
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPluginConfigurations()[Lorg/apache/ignite/plugin/PluginConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->pluginCfgs:[Lorg/apache/ignite/plugin/PluginConfiguration;

    .line 458
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSegmentCheckFrequency()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->segChkFreq:J

    .line 459
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSegmentationPolicy()Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->segPlc:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    .line 460
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSegmentationResolveAttempts()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->segResolveAttempts:I

    .line 461
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSegmentationResolvers()[Lorg/apache/ignite/plugin/segmentation/GridSegmentationResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->segResolvers:[Lorg/apache/ignite/plugin/segmentation/GridSegmentationResolver;

    .line 462
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkSendRetryCount()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->sndRetryCnt:I

    .line 463
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkSendRetryDelay()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->sndRetryDelay:J

    .line 464
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getServiceConfiguration()[Lorg/apache/ignite/services/ServiceConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->svcCfgs:[Lorg/apache/ignite/services/ServiceConfiguration;

    .line 465
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSystemThreadPoolSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->sysPoolSize:I

    .line 466
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTimeServerPortBase()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->timeSrvPortBase:I

    .line 467
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTimeServerPortRange()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->timeSrvPortRange:I

    .line 468
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->txCfg:Lorg/apache/ignite/configuration/TransactionConfiguration;

    .line 469
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getUserAttributes()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->userAttrs:Ljava/util/Map;

    .line 470
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isWaitForSegmentOnStart()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->waitForSegOnStart:Z

    .line 471
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getWarmupClosure()Lorg/apache/ignite/lang/IgniteInClosure;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->warmupClos:Lorg/apache/ignite/lang/IgniteInClosure;

    .line 472
    return-void
.end method


# virtual methods
.method public getAddressResolver()Lorg/apache/ignite/configuration/AddressResolver;
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->addrRslvr:Lorg/apache/ignite/configuration/AddressResolver;

    return-object v0
.end method

.method public getAtomicConfiguration()Lorg/apache/ignite/configuration/AtomicConfiguration;
    .locals 1

    .prologue
    .line 1923
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->atomicCfg:Lorg/apache/ignite/configuration/AtomicConfiguration;

    return-object v0
.end method

.method public getCacheConfiguration()[Lorg/apache/ignite/configuration/CacheConfiguration;
    .locals 1

    .prologue
    .line 1553
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->cacheCfg:[Lorg/apache/ignite/configuration/CacheConfiguration;

    return-object v0
.end method

.method public getCheckpointSpi()[Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->cpSpi:[Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1948
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->classLdr:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getClockSyncFrequency()J
    .locals 2

    .prologue
    .line 1073
    iget-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->clockSyncFreq:J

    return-wide v0
.end method

.method public getClockSyncSamples()I
    .locals 1

    .prologue
    .line 1053
    iget v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->clockSyncSamples:I

    return v0
.end method

.method public getCollisionSpi()Lorg/apache/ignite/spi/collision/CollisionSpi;
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->colSpi:Lorg/apache/ignite/spi/collision/CollisionSpi;

    return-object v0
.end method

.method public getCommunicationSpi()Lorg/apache/ignite/spi/communication/CommunicationSpi;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->commSpi:Lorg/apache/ignite/spi/communication/CommunicationSpi;

    return-object v0
.end method

.method public getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->connectorCfg:Lorg/apache/ignite/configuration/ConnectorConfiguration;

    return-object v0
.end method

.method public getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;
    .locals 1

    .prologue
    .line 1522
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->deployMode:Lorg/apache/ignite/configuration/DeploymentMode;

    return-object v0
.end method

.method public getDeploymentSpi()Lorg/apache/ignite/spi/deployment/DeploymentSpi;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->deploySpi:Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    return-object v0
.end method

.method public getDiscoverySpi()Lorg/apache/ignite/spi/discovery/DiscoverySpi;
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->discoSpi:Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    return-object v0
.end method

.method public getDiscoveryStartupDelay()J
    .locals 2

    .prologue
    .line 1420
    iget-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->discoStartupDelay:J

    return-wide v0
.end method

.method public getEventStorageSpi()Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->evtSpi:Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;

    return-object v0
.end method

.method public getFailoverSpi()[Lorg/apache/ignite/spi/failover/FailoverSpi;
    .locals 1

    .prologue
    .line 1378
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->failSpi:[Lorg/apache/ignite/spi/failover/FailoverSpi;

    return-object v0
.end method

.method public getFileSystemConfiguration()[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .locals 1

    .prologue
    .line 1784
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->igfsCfg:[Lorg/apache/ignite/configuration/FileSystemConfiguration;

    return-object v0
.end method

.method public getGridLogger()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method public getGridName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->gridName:Ljava/lang/String;

    return-object v0
.end method

.method public getHadoopConfiguration()Lorg/apache/ignite/configuration/HadoopConfiguration;
    .locals 1

    .prologue
    .line 1802
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->hadoopCfg:Lorg/apache/ignite/configuration/HadoopConfiguration;

    return-object v0
.end method

.method public getIgfsThreadPoolSize()I
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->igfsPoolSize:I

    return v0
.end method

.method public getIgniteHome()Ljava/lang/String;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->ggHome:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeEventTypes()[I
    .locals 1

    .prologue
    .line 1650
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->inclEvtTypes:[I

    return-object v0
.end method

.method public getIncludeProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1739
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->includeProps:[Ljava/lang/String;

    return-object v0
.end method

.method public getIndexingSpi()Lorg/apache/ignite/spi/indexing/IndexingSpi;
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->indexingSpi:Lorg/apache/ignite/spi/indexing/IndexingSpi;

    return-object v0
.end method

.method public getLifecycleBeans()[Lorg/apache/ignite/lifecycle/LifecycleBean;
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->lifecycleBeans:[Lorg/apache/ignite/lifecycle/LifecycleBean;

    return-object v0
.end method

.method public getLoadBalancingSpi()[Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->loadBalancingSpi:[Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;

    return-object v0
.end method

.method public getLocalEventListeners()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<+",
            "Lorg/apache/ignite/events/Event;",
            ">;[I>;"
        }
    .end annotation

    .prologue
    .line 1854
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->lsnrs:Ljava/util/Map;

    return-object v0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1687
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->locHost:Ljava/lang/String;

    return-object v0
.end method

.method public getMBeanServer()Ljavax/management/MBeanServer;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->mbeanSrv:Ljavax/management/MBeanServer;

    return-object v0
.end method

.method public getManagementThreadPoolSize()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->mgmtPoolSize:I

    return v0
.end method

.method public getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    return-object v0
.end method

.method public getMetricsExpireTime()J
    .locals 2

    .prologue
    .line 953
    iget-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsExpTime:J

    return-wide v0
.end method

.method public getMetricsHistorySize()I
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsHistSize:I

    return v0
.end method

.method public getMetricsLogFrequency()J
    .locals 2

    .prologue
    .line 1762
    iget-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsLogFreq:J

    return-wide v0
.end method

.method public getMetricsUpdateFrequency()J
    .locals 2

    .prologue
    .line 926
    iget-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsUpdateFreq:J

    return-wide v0
.end method

.method public getNearCacheConfiguration()[Lorg/apache/ignite/configuration/NearCacheConfiguration;
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->nearCacheCfg:[Lorg/apache/ignite/configuration/NearCacheConfiguration;

    return-object v0
.end method

.method public getNetworkSendRetryCount()I
    .locals 1

    .prologue
    .line 1030
    iget v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->sndRetryCnt:I

    return v0
.end method

.method public getNetworkSendRetryDelay()J
    .locals 2

    .prologue
    .line 1004
    iget-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->sndRetryDelay:J

    return-wide v0
.end method

.method public getNetworkTimeout()J
    .locals 2

    .prologue
    .line 977
    iget-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->netTimeout:J

    return-wide v0
.end method

.method public getNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public getPeerClassLoadingLocalClassPathExclude()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->p2pLocClsPathExcl:[Ljava/lang/String;

    return-object v0
.end method

.method public getPeerClassLoadingMissedResourcesCacheSize()I
    .locals 1

    .prologue
    .line 1544
    iget v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->p2pMissedCacheSize:I

    return v0
.end method

.method public getPeerClassLoadingThreadPoolSize()I
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->p2pPoolSize:I

    return v0
.end method

.method public getPluginConfigurations()[Lorg/apache/ignite/plugin/PluginConfiguration;
    .locals 1

    .prologue
    .line 1909
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->pluginCfgs:[Lorg/apache/ignite/plugin/PluginConfiguration;

    return-object v0
.end method

.method public getPublicThreadPoolSize()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->pubPoolSize:I

    return v0
.end method

.method public getSegmentCheckFrequency()J
    .locals 2

    .prologue
    .line 1274
    iget-wide v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->segChkFreq:J

    return-wide v0
.end method

.method public getSegmentationPolicy()Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->segPlc:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    return-object v0
.end method

.method public getSegmentationResolveAttempts()I
    .locals 1

    .prologue
    .line 1230
    iget v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->segResolveAttempts:I

    return v0
.end method

.method public getSegmentationResolvers()[Lorg/apache/ignite/plugin/segmentation/GridSegmentationResolver;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->segResolvers:[Lorg/apache/ignite/plugin/segmentation/GridSegmentationResolver;

    return-object v0
.end method

.method public getServiceConfiguration()[Lorg/apache/ignite/services/ServiceConfiguration;
    .locals 1

    .prologue
    .line 1834
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->svcCfgs:[Lorg/apache/ignite/services/ServiceConfiguration;

    return-object v0
.end method

.method public getSwapSpaceSpi()Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;
    .locals 1

    .prologue
    .line 1466
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->swapSpaceSpi:Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    return-object v0
.end method

.method public getSystemThreadPoolSize()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->sysPoolSize:I

    return v0
.end method

.method public getTimeServerPortBase()I
    .locals 1

    .prologue
    .line 1699
    iget v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->timeSrvPortBase:I

    return v0
.end method

.method public getTimeServerPortRange()I
    .locals 1

    .prologue
    .line 1717
    iget v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->timeSrvPortRange:I

    return v0
.end method

.method public getTransactionConfiguration()Lorg/apache/ignite/configuration/TransactionConfiguration;
    .locals 1

    .prologue
    .line 1893
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->txCfg:Lorg/apache/ignite/configuration/TransactionConfiguration;

    return-object v0
.end method

.method public getUserAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->userAttrs:Ljava/util/Map;

    return-object v0
.end method

.method public getWarmupClosure()Lorg/apache/ignite/lang/IgniteInClosure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Lorg/apache/ignite/configuration/IgniteConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1874
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->warmupClos:Lorg/apache/ignite/lang/IgniteInClosure;

    return-object v0
.end method

.method public getWorkDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->ggWork:Ljava/lang/String;

    return-object v0
.end method

.method public isAllSegmentationResolversPassRequired()Z
    .locals 1

    .prologue
    .line 1208
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->allResolversPassReq:Z

    return v0
.end method

.method public isCacheSanityCheckEnabled()Z
    .locals 1

    .prologue
    .line 1623
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->cacheSanityCheckEnabled:Z

    return v0
.end method

.method public isClientMode()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->clientMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isDaemon()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->daemon:Z

    return v0
.end method

.method public isMarshalLocalJobs()Z
    .locals 1

    .prologue
    .line 838
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->marshLocJobs:Z

    return v0
.end method

.method public isPeerClassLoadingEnabled()Z
    .locals 1

    .prologue
    .line 826
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->p2pEnabled:Z

    return v0
.end method

.method public isWaitForSegmentOnStart()Z
    .locals 1

    .prologue
    .line 1182
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->waitForSegOnStart:Z

    return v0
.end method

.method public setAddressResolver(Lorg/apache/ignite/configuration/AddressResolver;)V
    .locals 0
    .param p1, "addrRslvr"    # Lorg/apache/ignite/configuration/AddressResolver;

    .prologue
    .line 1503
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->addrRslvr:Lorg/apache/ignite/configuration/AddressResolver;

    .line 1504
    return-void
.end method

.method public setAllSegmentationResolversPassRequired(Z)V
    .locals 0
    .param p1, "allResolversPassReq"    # Z

    .prologue
    .line 1218
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->allResolversPassReq:Z

    .line 1219
    return-void
.end method

.method public setAtomicConfiguration(Lorg/apache/ignite/configuration/AtomicConfiguration;)V
    .locals 0
    .param p1, "atomicCfg"    # Lorg/apache/ignite/configuration/AtomicConfiguration;

    .prologue
    .line 1930
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->atomicCfg:Lorg/apache/ignite/configuration/AtomicConfiguration;

    .line 1931
    return-void
.end method

.method public varargs setCacheConfiguration([Lorg/apache/ignite/configuration/CacheConfiguration;)V
    .locals 1
    .param p1, "cacheCfg"    # [Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    .line 1563
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Lorg/apache/ignite/configuration/CacheConfiguration;

    .end local p1    # "cacheCfg":[Lorg/apache/ignite/configuration/CacheConfiguration;
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->cacheCfg:[Lorg/apache/ignite/configuration/CacheConfiguration;

    .line 1564
    return-void
.end method

.method public setCacheSanityCheckEnabled(Z)V
    .locals 0
    .param p1, "cacheSanityCheckEnabled"    # Z

    .prologue
    .line 1633
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->cacheSanityCheckEnabled:Z

    .line 1634
    return-void
.end method

.method public varargs setCheckpointSpi([Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;)V
    .locals 0
    .param p1, "cpSpi"    # [Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    .prologue
    .line 1368
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->cpSpi:[Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;

    .line 1369
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "classLdr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1941
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->classLdr:Ljava/lang/ClassLoader;

    .line 1942
    return-void
.end method

.method public setClientMode(Z)V
    .locals 1
    .param p1, "clientMode"    # Z

    .prologue
    .line 1600
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->clientMode:Ljava/lang/Boolean;

    .line 1601
    return-void
.end method

.method public setClockSyncFrequency(J)V
    .locals 1
    .param p1, "clockSyncFreq"    # J

    .prologue
    .line 1082
    iput-wide p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->clockSyncFreq:J

    .line 1083
    return-void
.end method

.method public setClockSyncSamples(I)V
    .locals 0
    .param p1, "clockSyncSamples"    # I

    .prologue
    .line 1062
    iput p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->clockSyncSamples:I

    .line 1063
    return-void
.end method

.method public setCollisionSpi(Lorg/apache/ignite/spi/collision/CollisionSpi;)V
    .locals 0
    .param p1, "colSpi"    # Lorg/apache/ignite/spi/collision/CollisionSpi;

    .prologue
    .line 1328
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->colSpi:Lorg/apache/ignite/spi/collision/CollisionSpi;

    .line 1329
    return-void
.end method

.method public setCommunicationSpi(Lorg/apache/ignite/spi/communication/CommunicationSpi;)V
    .locals 0
    .param p1, "commSpi"    # Lorg/apache/ignite/spi/communication/CommunicationSpi;

    .prologue
    .line 1303
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->commSpi:Lorg/apache/ignite/spi/communication/CommunicationSpi;

    .line 1304
    return-void
.end method

.method public setConnectorConfiguration(Lorg/apache/ignite/configuration/ConnectorConfiguration;)V
    .locals 0
    .param p1, "connectorCfg"    # Lorg/apache/ignite/configuration/ConnectorConfiguration;

    .prologue
    .line 1825
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->connectorCfg:Lorg/apache/ignite/configuration/ConnectorConfiguration;

    .line 1826
    return-void
.end method

.method public setDaemon(Z)V
    .locals 0
    .param p1, "daemon"    # Z

    .prologue
    .line 519
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->daemon:Z

    .line 520
    return-void
.end method

.method public setDeploymentMode(Lorg/apache/ignite/configuration/DeploymentMode;)V
    .locals 0
    .param p1, "deployMode"    # Lorg/apache/ignite/configuration/DeploymentMode;

    .prologue
    .line 1512
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->deployMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 1513
    return-void
.end method

.method public setDeploymentSpi(Lorg/apache/ignite/spi/deployment/DeploymentSpi;)V
    .locals 0
    .param p1, "deploySpi"    # Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    .prologue
    .line 1348
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->deploySpi:Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    .line 1349
    return-void
.end method

.method public setDiscoverySpi(Lorg/apache/ignite/spi/discovery/DiscoverySpi;)V
    .locals 0
    .param p1, "discoSpi"    # Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    .prologue
    .line 1149
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->discoSpi:Lorg/apache/ignite/spi/discovery/DiscoverySpi;

    .line 1150
    return-void
.end method

.method public setDiscoveryStartupDelay(J)V
    .locals 1
    .param p1, "discoStartupDelay"    # J

    .prologue
    .line 1431
    iput-wide p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->discoStartupDelay:J

    .line 1432
    return-void
.end method

.method public setEventStorageSpi(Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;)V
    .locals 0
    .param p1, "evtSpi"    # Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;

    .prologue
    .line 1129
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->evtSpi:Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;

    .line 1130
    return-void
.end method

.method public varargs setFailoverSpi([Lorg/apache/ignite/spi/failover/FailoverSpi;)V
    .locals 0
    .param p1, "failSpi"    # [Lorg/apache/ignite/spi/failover/FailoverSpi;

    .prologue
    .line 1389
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->failSpi:[Lorg/apache/ignite/spi/failover/FailoverSpi;

    .line 1390
    return-void
.end method

.method public varargs setFileSystemConfiguration([Lorg/apache/ignite/configuration/FileSystemConfiguration;)V
    .locals 0
    .param p1, "igfsCfg"    # [Lorg/apache/ignite/configuration/FileSystemConfiguration;

    .prologue
    .line 1793
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->igfsCfg:[Lorg/apache/ignite/configuration/FileSystemConfiguration;

    .line 1794
    return-void
.end method

.method public setGridLogger(Lorg/apache/ignite/IgniteLogger;)V
    .locals 0
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 584
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->log:Lorg/apache/ignite/IgniteLogger;

    .line 585
    return-void
.end method

.method public setGridName(Ljava/lang/String;)V
    .locals 0
    .param p1, "gridName"    # Ljava/lang/String;

    .prologue
    .line 529
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->gridName:Ljava/lang/String;

    .line 530
    return-void
.end method

.method public setHadoopConfiguration(Lorg/apache/ignite/configuration/HadoopConfiguration;)V
    .locals 0
    .param p1, "hadoopCfg"    # Lorg/apache/ignite/configuration/HadoopConfiguration;

    .prologue
    .line 1811
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->hadoopCfg:Lorg/apache/ignite/configuration/HadoopConfiguration;

    .line 1812
    return-void
.end method

.method public setIgfsThreadPoolSize(I)V
    .locals 0
    .param p1, "poolSize"    # I

    .prologue
    .line 697
    iput p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->igfsPoolSize:I

    .line 698
    return-void
.end method

.method public setIgniteHome(Ljava/lang/String;)V
    .locals 0
    .param p1, "ggHome"    # Ljava/lang/String;

    .prologue
    .line 722
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->ggHome:Ljava/lang/String;

    .line 723
    return-void
.end method

.method public varargs setIncludeEventTypes([I)V
    .locals 0
    .param p1, "inclEvtTypes"    # [I

    .prologue
    .line 1660
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->inclEvtTypes:[I

    .line 1661
    return-void
.end method

.method public varargs setIncludeProperties([Ljava/lang/String;)V
    .locals 0
    .param p1, "includeProps"    # [Ljava/lang/String;

    .prologue
    .line 1749
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->includeProps:[Ljava/lang/String;

    .line 1750
    return-void
.end method

.method public setIndexingSpi(Lorg/apache/ignite/spi/indexing/IndexingSpi;)V
    .locals 0
    .param p1, "indexingSpi"    # Lorg/apache/ignite/spi/indexing/IndexingSpi;

    .prologue
    .line 1476
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->indexingSpi:Lorg/apache/ignite/spi/indexing/IndexingSpi;

    .line 1477
    return-void
.end method

.method public varargs setLifecycleBeans([Lorg/apache/ignite/lifecycle/LifecycleBean;)V
    .locals 0
    .param p1, "lifecycleBeans"    # [Lorg/apache/ignite/lifecycle/LifecycleBean;

    .prologue
    .line 1109
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->lifecycleBeans:[Lorg/apache/ignite/lifecycle/LifecycleBean;

    .line 1110
    return-void
.end method

.method public varargs setLoadBalancingSpi([Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;)V
    .locals 0
    .param p1, "loadBalancingSpi"    # [Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;

    .prologue
    .line 1442
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->loadBalancingSpi:[Lorg/apache/ignite/spi/loadbalancing/LoadBalancingSpi;

    .line 1443
    return-void
.end method

.method public setLocalEventListeners(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<+",
            "Lorg/apache/ignite/events/Event;",
            ">;[I>;)V"
        }
    .end annotation

    .prologue
    .line 1864
    .local p1, "lsnrs":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgnitePredicate<+Lorg/apache/ignite/events/Event;>;[I>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->lsnrs:Ljava/util/Map;

    .line 1865
    return-void
.end method

.method public setLocalHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "locHost"    # Ljava/lang/String;

    .prologue
    .line 1670
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->locHost:Ljava/lang/String;

    .line 1671
    return-void
.end method

.method public setMBeanServer(Ljavax/management/MBeanServer;)V
    .locals 0
    .param p1, "mbeanSrv"    # Ljavax/management/MBeanServer;

    .prologue
    .line 767
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->mbeanSrv:Ljavax/management/MBeanServer;

    .line 768
    return-void
.end method

.method public setManagementThreadPoolSize(I)V
    .locals 0
    .param p1, "poolSize"    # I

    .prologue
    .line 677
    iput p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->mgmtPoolSize:I

    .line 678
    return-void
.end method

.method public setMarshalLocalJobs(Z)V
    .locals 0
    .param p1, "marshLocJobs"    # Z

    .prologue
    .line 847
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->marshLocJobs:Z

    .line 848
    return-void
.end method

.method public setMarshaller(Lorg/apache/ignite/marshaller/Marshaller;)V
    .locals 0
    .param p1, "marsh"    # Lorg/apache/ignite/marshaller/Marshaller;

    .prologue
    .line 807
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    .line 808
    return-void
.end method

.method public setMetricsExpireTime(J)V
    .locals 1
    .param p1, "metricsExpTime"    # J

    .prologue
    .line 964
    iput-wide p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsExpTime:J

    .line 965
    return-void
.end method

.method public setMetricsHistorySize(I)V
    .locals 0
    .param p1, "metricsHistSize"    # I

    .prologue
    .line 905
    iput p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsHistSize:I

    .line 906
    return-void
.end method

.method public setMetricsLogFrequency(J)V
    .locals 1
    .param p1, "metricsLogFreq"    # J

    .prologue
    .line 1775
    iput-wide p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsLogFreq:J

    .line 1776
    return-void
.end method

.method public setMetricsUpdateFrequency(J)V
    .locals 1
    .param p1, "metricsUpdateFreq"    # J

    .prologue
    .line 941
    iput-wide p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->metricsUpdateFreq:J

    .line 942
    return-void
.end method

.method public varargs setNearCacheConfiguration([Lorg/apache/ignite/configuration/NearCacheConfiguration;)V
    .locals 1
    .param p1, "nearCacheCfg"    # [Lorg/apache/ignite/configuration/NearCacheConfiguration;

    .prologue
    .line 1582
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Lorg/apache/ignite/configuration/NearCacheConfiguration;

    .end local p1    # "nearCacheCfg":[Lorg/apache/ignite/configuration/NearCacheConfiguration;
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->nearCacheCfg:[Lorg/apache/ignite/configuration/NearCacheConfiguration;

    .line 1583
    return-void
.end method

.method public setNetworkSendRetryCount(I)V
    .locals 0
    .param p1, "sndRetryCnt"    # I

    .prologue
    .line 1042
    iput p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->sndRetryCnt:I

    .line 1043
    return-void
.end method

.method public setNetworkSendRetryDelay(J)V
    .locals 1
    .param p1, "sndRetryDelay"    # J

    .prologue
    .line 1016
    iput-wide p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->sndRetryDelay:J

    .line 1017
    return-void
.end method

.method public setNetworkTimeout(J)V
    .locals 1
    .param p1, "netTimeout"    # J

    .prologue
    .line 990
    iput-wide p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->netTimeout:J

    .line 991
    return-void
.end method

.method public setNodeId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 786
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->nodeId:Ljava/util/UUID;

    .line 787
    return-void
.end method

.method public setPeerClassLoadingEnabled(Z)V
    .locals 0
    .param p1, "p2pEnabled"    # Z

    .prologue
    .line 857
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->p2pEnabled:Z

    .line 858
    return-void
.end method

.method public varargs setPeerClassLoadingLocalClassPathExclude([Ljava/lang/String;)V
    .locals 0
    .param p1, "p2pLocClsPathExcl"    # [Ljava/lang/String;

    .prologue
    .line 881
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->p2pLocClsPathExcl:[Ljava/lang/String;

    .line 882
    return-void
.end method

.method public setPeerClassLoadingMissedResourcesCacheSize(I)V
    .locals 0
    .param p1, "p2pMissedCacheSize"    # I

    .prologue
    .line 1532
    iput p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->p2pMissedCacheSize:I

    .line 1533
    return-void
.end method

.method public setPeerClassLoadingThreadPoolSize(I)V
    .locals 0
    .param p1, "poolSize"    # I

    .prologue
    .line 687
    iput p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->p2pPoolSize:I

    .line 688
    return-void
.end method

.method public varargs setPluginConfigurations([Lorg/apache/ignite/plugin/PluginConfiguration;)V
    .locals 0
    .param p1, "pluginCfgs"    # [Lorg/apache/ignite/plugin/PluginConfiguration;

    .prologue
    .line 1916
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->pluginCfgs:[Lorg/apache/ignite/plugin/PluginConfiguration;

    .line 1917
    return-void
.end method

.method public setPublicThreadPoolSize(I)V
    .locals 0
    .param p1, "poolSize"    # I

    .prologue
    .line 657
    iput p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->pubPoolSize:I

    .line 658
    return-void
.end method

.method public setSegmentCheckFrequency(J)V
    .locals 1
    .param p1, "segChkFreq"    # J

    .prologue
    .line 1283
    iput-wide p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->segChkFreq:J

    .line 1284
    return-void
.end method

.method public setSegmentationPolicy(Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;)V
    .locals 0
    .param p1, "segPlc"    # Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    .prologue
    .line 1167
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->segPlc:Lorg/apache/ignite/plugin/segmentation/GridSegmentationPolicy;

    .line 1168
    return-void
.end method

.method public setSegmentationResolveAttempts(I)V
    .locals 0
    .param p1, "segResolveAttempts"    # I

    .prologue
    .line 1239
    iput p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->segResolveAttempts:I

    .line 1240
    return-void
.end method

.method public varargs setSegmentationResolvers([Lorg/apache/ignite/plugin/segmentation/GridSegmentationResolver;)V
    .locals 0
    .param p1, "segResolvers"    # [Lorg/apache/ignite/plugin/segmentation/GridSegmentationResolver;

    .prologue
    .line 1260
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->segResolvers:[Lorg/apache/ignite/plugin/segmentation/GridSegmentationResolver;

    .line 1261
    return-void
.end method

.method public varargs setServiceConfiguration([Lorg/apache/ignite/services/ServiceConfiguration;)V
    .locals 0
    .param p1, "svcCfgs"    # [Lorg/apache/ignite/services/ServiceConfiguration;

    .prologue
    .line 1843
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->svcCfgs:[Lorg/apache/ignite/services/ServiceConfiguration;

    .line 1844
    return-void
.end method

.method public setSwapSpaceSpi(Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;)V
    .locals 0
    .param p1, "swapSpaceSpi"    # Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    .prologue
    .line 1453
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->swapSpaceSpi:Lorg/apache/ignite/spi/swapspace/SwapSpaceSpi;

    .line 1454
    return-void
.end method

.method public setSystemThreadPoolSize(I)V
    .locals 0
    .param p1, "poolSize"    # I

    .prologue
    .line 667
    iput p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->sysPoolSize:I

    .line 668
    return-void
.end method

.method public setTimeServerPortBase(I)V
    .locals 0
    .param p1, "timeSrvPortBase"    # I

    .prologue
    .line 1708
    iput p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->timeSrvPortBase:I

    .line 1709
    return-void
.end method

.method public setTimeServerPortRange(I)V
    .locals 0
    .param p1, "timeSrvPortRange"    # I

    .prologue
    .line 1726
    iput p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->timeSrvPortRange:I

    .line 1727
    return-void
.end method

.method public setTransactionConfiguration(Lorg/apache/ignite/configuration/TransactionConfiguration;)V
    .locals 0
    .param p1, "txCfg"    # Lorg/apache/ignite/configuration/TransactionConfiguration;

    .prologue
    .line 1902
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->txCfg:Lorg/apache/ignite/configuration/TransactionConfiguration;

    .line 1903
    return-void
.end method

.method public setUserAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 563
    .local p1, "userAttrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->userAttrs:Ljava/util/Map;

    .line 564
    return-void
.end method

.method public setWaitForSegmentOnStart(Z)V
    .locals 0
    .param p1, "waitForSegOnStart"    # Z

    .prologue
    .line 1191
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->waitForSegOnStart:Z

    .line 1192
    return-void
.end method

.method public setWarmupClosure(Lorg/apache/ignite/lang/IgniteInClosure;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<",
            "Lorg/apache/ignite/configuration/IgniteConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1884
    .local p1, "warmupClos":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<Lorg/apache/ignite/configuration/IgniteConfiguration;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->warmupClos:Lorg/apache/ignite/lang/IgniteInClosure;

    .line 1885
    return-void
.end method

.method public setWorkDirectory(Ljava/lang/String;)V
    .locals 0
    .param p1, "ggWork"    # Ljava/lang/String;

    .prologue
    .line 747
    iput-object p1, p0, Lorg/apache/ignite/configuration/IgniteConfiguration;->ggWork:Ljava/lang/String;

    .line 748
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1953
    const-class v0, Lorg/apache/ignite/configuration/IgniteConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

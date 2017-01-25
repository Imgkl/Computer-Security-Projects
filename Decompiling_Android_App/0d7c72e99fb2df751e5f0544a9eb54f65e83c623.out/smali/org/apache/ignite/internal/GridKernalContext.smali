.class public interface abstract Lorg/apache/ignite/internal/GridKernalContext;
.super Ljava/lang/Object;
.source "GridKernalContext.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/ignite/internal/GridComponent;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
.end annotation


# virtual methods
.method public abstract addNodeAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract affinity()Lorg/apache/ignite/internal/processors/affinity/GridAffinityProcessor;
.end method

.method public abstract cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
.end method

.method public abstract cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;
.end method

.method public abstract checkpoint()Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;
.end method

.method public abstract clockSync()Lorg/apache/ignite/internal/processors/clock/GridClockSyncProcessor;
.end method

.method public abstract closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
.end method

.method public abstract cluster()Lorg/apache/ignite/internal/processors/cluster/ClusterProcessor;
.end method

.method public abstract collision()Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;
.end method

.method public abstract components()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/GridComponent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract config()Lorg/apache/ignite/configuration/IgniteConfiguration;
.end method

.method public abstract continuous()Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
.end method

.method public abstract createComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract dataStream()Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;
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
.end method

.method public abstract dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;
.end method

.method public abstract deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;
.end method

.method public abstract discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
.end method

.method public abstract event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
.end method

.method public abstract exceptionRegistry()Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;
.end method

.method public abstract failover()Lorg/apache/ignite/internal/managers/failover/GridFailoverManager;
.end method

.method public abstract gateway()Lorg/apache/ignite/internal/GridKernalGateway;
.end method

.method public abstract getExecutorService()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract getIgfsExecutorService()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract getManagementExecutorService()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract getPeerClassLoadingExecutorService()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract getRestExecutorService()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract getSystemExecutorService()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract grid()Lorg/apache/ignite/internal/IgniteEx;
.end method

.method public abstract gridName()Ljava/lang/String;
.end method

.method public abstract hadoop()Lorg/apache/ignite/internal/processors/hadoop/HadoopProcessorAdapter;
.end method

.method public abstract hasNodeAttribute(Ljava/lang/String;)Z
.end method

.method public abstract igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;
.end method

.method public abstract igfsHelper()Lorg/apache/ignite/internal/processors/igfs/IgfsHelper;
.end method

.method public abstract indexing()Lorg/apache/ignite/internal/managers/indexing/GridIndexingManager;
.end method

.method public abstract io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;
.end method

.method public abstract isDaemon()Z
.end method

.method public abstract isStopping()Z
.end method

.method public abstract job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
.end method

.method public abstract jobMetric()Lorg/apache/ignite/internal/processors/jobmetrics/GridJobMetricsProcessor;
.end method

.method public abstract loadBalancing()Lorg/apache/ignite/internal/managers/loadbalancer/GridLoadBalancerManager;
.end method

.method public abstract localNodeId()Ljava/util/UUID;
.end method

.method public abstract log()Lorg/apache/ignite/IgniteLogger;
.end method

.method public abstract log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/IgniteLogger;"
        }
    .end annotation
.end method

.method public abstract markSegmented()V
.end method

.method public abstract marshallerCachePool()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract marshallerContext()Lorg/apache/ignite/internal/MarshallerContextImpl;
.end method

.method public abstract nodeAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract nodeAttributes()Ljava/util/Map;
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
.end method

.method public abstract offheap()Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;
.end method

.method public abstract performance()Lorg/apache/ignite/internal/GridPerformanceSuggestions;
.end method

.method public abstract pluginProvider(Ljava/lang/String;)Lorg/apache/ignite/plugin/PluginProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/plugin/PluginNotFoundException;
        }
    .end annotation
.end method

.method public abstract plugins()Lorg/apache/ignite/internal/processors/plugin/IgnitePluginProcessor;
.end method

.method public abstract ports()Lorg/apache/ignite/internal/processors/port/GridPortProcessor;
.end method

.method public abstract printMemoryStats()V
.end method

.method public abstract query()Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;
.end method

.method public abstract resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;
.end method

.method public abstract rest()Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;
.end method

.method public abstract schedule()Lorg/apache/ignite/internal/processors/schedule/IgniteScheduleProcessorAdapter;
.end method

.method public abstract security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;
.end method

.method public abstract segmentation()Lorg/apache/ignite/internal/processors/segmentation/GridSegmentationProcessor;
.end method

.method public abstract segmented()Z
.end method

.method public abstract service()Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;
.end method

.method public abstract session()Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;
.end method

.method public abstract swap()Lorg/apache/ignite/internal/managers/swapspace/GridSwapSpaceManager;
.end method

.method public abstract task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;
.end method

.method public abstract timeSource()Lorg/apache/ignite/internal/processors/clock/GridClockSource;
.end method

.method public abstract timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;
.end method

.method public abstract userVersion(Ljava/lang/ClassLoader;)Ljava/lang/String;
.end method

.method public abstract utilityCachePool()Ljava/util/concurrent/ExecutorService;
.end method

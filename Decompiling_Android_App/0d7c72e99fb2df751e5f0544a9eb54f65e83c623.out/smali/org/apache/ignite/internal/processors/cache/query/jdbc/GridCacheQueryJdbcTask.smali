.class public Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask;
.super Lorg/apache/ignite/compute/ComputeTaskAdapter;
.source "GridCacheQueryJdbcTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$1;,
        Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$Cursor;,
        Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/compute/ComputeTaskAdapter",
        "<[B[B>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MARSHALLER:Lorg/apache/ignite/marshaller/Marshaller;

.field private static final RMV_DELAY:I = 0x927c0

.field private static final SCHEDULER:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final serialVersionUID:J


# instance fields
.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 46
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask;->$assertionsDisabled:Z

    .line 51
    new-instance v0, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;

    invoke-direct {v0}, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask;->MARSHALLER:Lorg/apache/ignite/marshaller/Marshaller;

    .line 57
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask;->SCHEDULER:Ljava/util/concurrent/ScheduledExecutorService;

    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/ignite/compute/ComputeTaskAdapter;-><init>()V

    .line 358
    return-void
.end method

.method static synthetic access$400()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask;->SCHEDULER:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic map(Ljava/util/List;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 46
    check-cast p2, [B

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask;->map(Ljava/util/List;[B)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/util/List;[B)Ljava/util/Map;
    .locals 11
    .param p2, "arg"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;[B)",
            "Ljava/util/Map",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :try_start_0
    sget-boolean v8, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p2, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :catch_0
    move-exception v3

    .line 100
    .local v3, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v8

    throw v8

    .line 67
    .end local v3    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_0
    :try_start_1
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask;->MARSHALLER:Lorg/apache/ignite/marshaller/Marshaller;

    const/4 v9, 0x0

    invoke-interface {v8, p2, v9}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 69
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x1

    .line 71
    .local v4, "first":Z
    const-string v8, "confNodeId"

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/UUID;

    .line 73
    .local v7, "nodeId":Ljava/util/UUID;
    if-nez v7, :cond_1

    .line 74
    const-string v8, "nodeId"

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "nodeId":Ljava/util/UUID;
    check-cast v7, Ljava/util/UUID;

    .line 76
    .restart local v7    # "nodeId":Ljava/util/UUID;
    if-nez v7, :cond_3

    const/4 v4, 0x1

    .line 79
    :cond_1
    :goto_0
    if-eqz v7, :cond_5

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cluster/ClusterNode;

    .line 81
    .local v6, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v6}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 82
    new-instance v8, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;

    invoke-direct {v8, v0, v4}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;-><init>(Ljava/util/Map;Z)V

    invoke-static {v8, v6}, Lorg/apache/ignite/internal/util/typedef/F;->asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    .line 93
    :goto_1
    return-object v8

    .line 76
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 84
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    new-instance v8, Lorg/apache/ignite/IgniteException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Node doesn\'t exist or left the grid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 87
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_5
    const-string v8, "cache"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    .local v1, "cache":Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask;->ignite:Lorg/apache/ignite/Ignite;

    check-cast v8, Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    .line 91
    .local v2, "discoMgr":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/cluster/ClusterNode;

    .line 92
    .restart local v6    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-virtual {v2, v6, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheAffinityNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 93
    new-instance v8, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;

    invoke-direct {v8, v0, v4}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask$JdbcDriverJob;-><init>(Ljava/util/Map;Z)V

    invoke-static {v8, v6}, Lorg/apache/ignite/internal/util/typedef/F;->asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    goto :goto_1

    .line 96
    .end local v6    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_7
    new-instance v8, Lorg/apache/ignite/IgniteException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t find node with cache: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public bridge synthetic reduce(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask;->reduce(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public reduce(Ljava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    :try_start_0
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/compute/ComputeJobResult;

    .line 112
    .local v3, "res":Lorg/apache/ignite/compute/ComputeJobResult;
    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeJobResult;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v5

    if-nez v5, :cond_0

    .line 113
    const/4 v4, 0x0

    .line 115
    .local v4, "status":B
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask;->MARSHALLER:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v0

    .line 123
    .local v0, "bytes":[B
    :goto_0
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [B

    .line 125
    .local v2, "packet":[B
    const/4 v5, 0x0

    aput-byte v4, v2, v5

    .line 127
    const/4 v5, 0x0

    const/4 v6, 0x1

    array-length v7, v0

    invoke-static {v0, v5, v2, v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 129
    return-object v2

    .line 118
    .end local v0    # "bytes":[B
    .end local v2    # "packet":[B
    .end local v4    # "status":B
    :cond_0
    const/4 v4, 0x1

    .line 120
    .restart local v4    # "status":B
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/query/jdbc/GridCacheQueryJdbcTask;->MARSHALLER:Lorg/apache/ignite/marshaller/Marshaller;

    new-instance v6, Ljava/sql/SQLException;

    invoke-interface {v3}, Lorg/apache/ignite/compute/ComputeJobResult;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/IgniteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "bytes":[B
    goto :goto_0

    .line 131
    .end local v0    # "bytes":[B
    .end local v3    # "res":Lorg/apache/ignite/compute/ComputeJobResult;
    .end local v4    # "status":B
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v5

    throw v5
.end method

.method public result(Lorg/apache/ignite/compute/ComputeJobResult;Ljava/util/List;)Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    .locals 1
    .param p1, "res"    # Lorg/apache/ignite/compute/ComputeJobResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Lorg/apache/ignite/compute/ComputeJobResultPolicy;"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "rcvd":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    sget-object v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->WAIT:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    return-object v0
.end method

.class public Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;
.super Ljava/lang/Object;
.source "GridCacheQueryAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;"
        }
    .end annotation
.end field

.field private final clause:Ljava/lang/String;

.field private final clsName:Ljava/lang/String;

.field private volatile dedup:Z

.field private final filter:Lorg/apache/ignite/lang/IgniteBiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile incBackups:Z

.field private final incMeta:Z

.field private volatile keepAll:Z

.field private keepPortable:Z

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private volatile metrics:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;

.field private volatile pageSize:I

.field private volatile prj:Lorg/apache/ignite/cluster/ClusterGroup;

.field private subjId:Ljava/util/UUID;

.field private taskHash:I

.field private volatile timeout:J

.field private final type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiPredicate;ZZ)V
    .locals 1
    .param p2, "type"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    .param p3, "clsName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "clause"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "incMeta"    # Z
    .param p7, "keepPortable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    .local p5, "filter":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->pageSize:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepAll:Z

    .line 108
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 109
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 112
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    .line 113
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clsName:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clause:Ljava/lang/String;

    .line 115
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->filter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 116
    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->incMeta:Z

    .line 117
    iput-boolean p7, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepPortable:Z

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->logger(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    .line 121
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->metrics:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;

    .line 122
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;Lorg/apache/ignite/IgniteLogger;IJZZZLorg/apache/ignite/cluster/ClusterGroup;Lorg/apache/ignite/lang/IgniteBiPredicate;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/UUID;I)V
    .locals 3
    .param p2, "type"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    .param p3, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p4, "pageSize"    # I
    .param p5, "timeout"    # J
    .param p7, "keepAll"    # Z
    .param p8, "incBackups"    # Z
    .param p9, "dedup"    # Z
    .param p10, "prj"    # Lorg/apache/ignite/cluster/ClusterGroup;
    .param p12, "clsName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13, "clause"    # Ljava/lang/String;
    .param p14, "incMeta"    # Z
    .param p15, "keepPortable"    # Z
    .param p16, "subjId"    # Ljava/util/UUID;
    .param p17, "taskHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;",
            "Lorg/apache/ignite/IgniteLogger;",
            "IJZZZ",
            "Lorg/apache/ignite/cluster/ClusterGroup;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/UUID;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    .local p11, "filter":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/16 v1, 0x400

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->pageSize:I

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepAll:Z

    .line 158
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 159
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    .line 160
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    .line 161
    iput p4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->pageSize:I

    .line 162
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->timeout:J

    .line 163
    iput-boolean p7, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepAll:Z

    .line 164
    iput-boolean p8, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->incBackups:Z

    .line 165
    iput-boolean p9, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->dedup:Z

    .line 166
    iput-object p10, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->prj:Lorg/apache/ignite/cluster/ClusterGroup;

    .line 167
    iput-object p11, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->filter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    .line 168
    iput-object p12, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clsName:Ljava/lang/String;

    .line 169
    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clause:Ljava/lang/String;

    .line 170
    move/from16 v0, p14

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->incMeta:Z

    .line 171
    move/from16 v0, p15

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepPortable:Z

    .line 172
    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->subjId:Ljava/util/UUID;

    .line 173
    move/from16 v0, p17

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->taskHash:I

    .line 174
    return-void
.end method

.method private varargs execute(Lorg/apache/ignite/lang/IgniteReducer;Lorg/apache/ignite/lang/IgniteClosure;[Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .locals 10
    .param p1    # Lorg/apache/ignite/lang/IgniteReducer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/apache/ignite/lang/IgniteClosure;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TT;TR;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    .local p1, "rmtReducer":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<TT;TR;>;"
    .local p2, "rmtTransform":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TR;>;"
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 396
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->nodes()Ljava/util/Collection;

    move-result-object v3

    .line 398
    .local v3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v7, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_READ:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v5, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 400
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 401
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryErrorFuture;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v6

    new-instance v7, Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;

    invoke-direct {v7}, Lorg/apache/ignite/internal/cluster/ClusterGroupEmptyCheckedException;-><init>()V

    invoke-direct {v5, v6, v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryErrorFuture;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Throwable;)V

    .line 432
    :goto_0
    return-object v5

    .line 403
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 404
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Executing query [query="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", nodes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 406
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploymentEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 408
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v5

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->filter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    aput-object p2, v7, v8

    invoke-virtual {v5, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->registerClasses([Ljava/lang/Object;)V

    .line 409
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->registerClasses([Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->subjId:Ljava/util/UUID;

    if-nez v5, :cond_3

    .line 417
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->subjId:Ljava/util/UUID;

    .line 419
    :cond_3
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskNameHash()I

    move-result v5

    iput v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->taskHash:I

    .line 421
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;Lorg/apache/ignite/lang/IgniteReducer;Lorg/apache/ignite/lang/IgniteClosure;[Ljava/lang/Object;)V

    .line 424
    .local v0, "bean":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v4

    .line 426
    .local v4, "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v5, v2, :cond_5

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/cluster/ClusterNode;

    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 428
    .local v2, "loc":Z
    :goto_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SQL_FIELDS:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SPI:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-ne v5, v6, :cond_7

    .line 429
    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->queryFieldsLocal(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v5

    goto/16 :goto_0

    .line 411
    .end local v0    # "bean":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
    .end local v2    # "loc":Z
    .end local v4    # "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryErrorFuture;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryErrorFuture;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v0    # "bean":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
    .restart local v4    # "qryMgr":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    :cond_5
    move v2, v6

    .line 426
    goto :goto_1

    .line 429
    .restart local v2    # "loc":Z
    :cond_6
    invoke-virtual {v4, v0, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->queryFieldsDistributed(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v5

    goto/16 :goto_0

    .line 432
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->queryLocal(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v5

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v4, v0, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->queryDistributed(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private nodes()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v0

    .line 441
    .local v0, "cacheMode":Lorg/apache/ignite/cache/CacheMode;
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter$2;->$SwitchMap$org$apache$ignite$cache$CacheMode:[I

    invoke-virtual {v0}, Lorg/apache/ignite/cache/CacheMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 461
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown cache distribution mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :pswitch_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->prj:Lorg/apache/ignite/cluster/ClusterGroup;

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring query projection because it\'s executed over LOCAL cache (only local node will be queried): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 447
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 458
    :goto_0
    return-object v1

    .line 450
    :pswitch_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->prj:Lorg/apache/ignite/cluster/ClusterGroup;

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->prj:Lorg/apache/ignite/cluster/ClusterGroup;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->nodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cluster/ClusterGroup;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    .line 453
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinityNode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->nodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cluster/ClusterGroup;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->rand(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 458
    :pswitch_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->prj:Lorg/apache/ignite/cluster/ClusterGroup;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->nodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cluster/ClusterGroup;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static nodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cluster/ClusterGroup;)Ljava/util/Collection;
    .locals 4
    .param p1, "prj"    # Lorg/apache/ignite/cluster/ClusterGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;",
            "Lorg/apache/ignite/cluster/ClusterGroup;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 473
    :cond_0
    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->allNodes(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter$1;

    invoke-direct {v3, p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cluster/ClusterGroup;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clause()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clause:Ljava/lang/String;

    return-object v0
.end method

.method public enableDedup(Z)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 0
    .param p1, "dedup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->dedup:Z

    .line 305
    return-object p0
.end method

.method public enableDedup()Z
    .locals 1

    .prologue
    .line 312
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->dedup:Z

    return v0
.end method

.method public varargs execute(Lorg/apache/ignite/lang/IgniteClosure;[Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .locals 1
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    .local p1, "rmtTransform":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TR;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->execute(Lorg/apache/ignite/lang/IgniteReducer;Lorg/apache/ignite/lang/IgniteClosure;[Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs execute(Lorg/apache/ignite/lang/IgniteReducer;[Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .locals 1
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TT;TR;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    .local p1, "rmtReducer":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<TT;TR;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->execute(Lorg/apache/ignite/lang/IgniteReducer;Lorg/apache/ignite/lang/IgniteClosure;[Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs execute([Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    const/4 v0, 0x0

    .line 366
    invoke-direct {p0, v0, v0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->execute(Lorg/apache/ignite/lang/IgniteReducer;Lorg/apache/ignite/lang/IgniteClosure;[Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v0

    return-object v0
.end method

.method public includeBackups(Z)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 0
    .param p1, "incBackups"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->incBackups:Z

    .line 291
    return-object p0
.end method

.method public includeBackups()Z
    .locals 1

    .prologue
    .line 298
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->incBackups:Z

    return v0
.end method

.method public includeMetadata()Z
    .locals 1

    .prologue
    .line 201
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->incMeta:Z

    return v0
.end method

.method public keepAll(Z)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 0
    .param p1, "keepAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepAll:Z

    .line 277
    return-object p0
.end method

.method public keepAll()Z
    .locals 1

    .prologue
    .line 284
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepAll:Z

    return v0
.end method

.method public keepPortable(Z)V
    .locals 0
    .param p1, "keepPortable"    # Z

    .prologue
    .line 217
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepPortable:Z

    .line 218
    return-void
.end method

.method public keepPortable()Z
    .locals 1

    .prologue
    .line 208
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->keepPortable:Z

    return v0
.end method

.method public metrics()Lorg/apache/ignite/cache/query/QueryMetrics;
    .locals 1

    .prologue
    .line 380
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->metrics:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->copy()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onExecuted(Ljava/lang/Object;Ljava/lang/Throwable;JJ)V
    .locals 5
    .param p1, "res"    # Ljava/lang/Object;
    .param p2, "err"    # Ljava/lang/Throwable;
    .param p3, "startTime"    # J
    .param p5, "duration"    # J

    .prologue
    .line 351
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 354
    .local v0, "fail":Z
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->metrics:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;

    invoke-virtual {v1, p5, p6, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;->onQueryExecute(JZ)V

    .line 357
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v1

    invoke-virtual {v1, p5, p6, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->onMetricsUpdate(JZ)V

    .line 359
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query execution finished [qry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", startTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 362
    :cond_0
    return-void

    .line 351
    .end local v0    # "fail":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pageSize()I
    .locals 1

    .prologue
    .line 254
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->pageSize:I

    return v0
.end method

.method public pageSize(I)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 2
    .param p1, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "pageSize > 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 245
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->pageSize:I

    .line 247
    return-object p0

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public projection()Lorg/apache/ignite/cluster/ClusterGroup;
    .locals 1

    .prologue
    .line 326
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->prj:Lorg/apache/ignite/cluster/ClusterGroup;

    return-object v0
.end method

.method public projection(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 0
    .param p1, "prj"    # Lorg/apache/ignite/cluster/ClusterGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterGroup;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->prj:Lorg/apache/ignite/cluster/ClusterGroup;

    .line 319
    return-object p0
.end method

.method public queryClassName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->clsName:Ljava/lang/String;

    return-object v0
.end method

.method public resetMetrics()V
    .locals 1

    .prologue
    .line 384
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->metrics:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetricsAdapter;

    .line 385
    return-void
.end method

.method public scanFilter()Lorg/apache/ignite/lang/IgniteBiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->filter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    return-object v0
.end method

.method public subjectId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 224
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->subjId:Ljava/util/UUID;

    return-object v0
.end method

.method public subjectId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "subjId"    # Ljava/util/UUID;

    .prologue
    .line 238
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->subjId:Ljava/util/UUID;

    .line 239
    return-void
.end method

.method public taskHash()I
    .locals 1

    .prologue
    .line 231
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->taskHash:I

    return v0
.end method

.method public timeout()J
    .locals 2

    .prologue
    .line 270
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->timeout:J

    return-wide v0
.end method

.method public timeout(J)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .locals 3
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "timeout >= 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 261
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->timeout:J

    .line 263
    return-object p0

    .line 259
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;
    .locals 1

    .prologue
    .line 180
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    return-object v0
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SCAN:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->type:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;->SET:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;->isEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Indexing is disabled for cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    return-void
.end method

.class Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;
.super Ljava/lang/Object;
.source "CacheContinuousQueryHandler.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private cacheName:Ljava/lang/String;

.field private ignoreExpired:Z

.field private internal:Z

.field private transient locLsnr:Ljavax/cache/event/CacheEntryUpdatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/event/CacheEntryUpdatedListener",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private notifyExisting:Z

.field private oldValRequired:Z

.field private rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private rmtFilterDep:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;

.field private transient skipPrimaryCheck:Z

.field private sync:Z

.field private taskHash:I

.field private topic:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljavax/cache/event/CacheEntryUpdatedListener;Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;ZZZZZIZ)V
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "topic"    # Ljava/lang/Object;
    .param p5, "internal"    # Z
    .param p6, "notifyExisting"    # Z
    .param p7, "oldValRequired"    # Z
    .param p8, "sync"    # Z
    .param p9, "ignoreExpired"    # Z
    .param p10, "taskHash"    # I
    .param p11, "skipPrimaryCheck"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljavax/cache/event/CacheEntryUpdatedListener",
            "<TK;TV;>;",
            "Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter",
            "<TK;TV;>;ZZZZZIZ)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    .local p3, "locLsnr":Ljavax/cache/event/CacheEntryUpdatedListener;, "Ljavax/cache/event/CacheEntryUpdatedListener<TK;TV;>;"
    .local p4, "rmtFilter":Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;, "Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 118
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->cacheName:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->topic:Ljava/lang/Object;

    .line 122
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->locLsnr:Ljavax/cache/event/CacheEntryUpdatedListener;

    .line 123
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    .line 124
    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->internal:Z

    .line 125
    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->notifyExisting:Z

    .line 126
    iput-boolean p7, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->oldValRequired:Z

    .line 127
    iput-boolean p8, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->sync:Z

    .line 128
    iput-boolean p9, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->ignoreExpired:Z

    .line 129
    iput p10, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->taskHash:I

    .line 130
    iput-boolean p11, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->skipPrimaryCheck:Z

    .line 131
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    .prologue
    .line 43
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->taskHash:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->ignoreExpired:Z

    return v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;
    .param p1, "x1"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->cacheContext(Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->skipPrimaryCheck:Z

    return v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Ljavax/cache/event/CacheEntryUpdatedListener;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->locLsnr:Ljavax/cache/event/CacheEntryUpdatedListener;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->topic:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->sync:Z

    return v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->oldValRequired:Z

    return v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->notifyExisting:Z

    return v0
.end method

.method private cacheContext(Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 445
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->cacheName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    .line 447
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    goto :goto_0
.end method

.method private manager(Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 309
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->cacheContext(Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 311
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->clone()Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    .locals 2

    .prologue
    .line 388
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isForEvents()Z
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isForMessaging()Z
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isForQuery()Z
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public notifyCallback(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/Collection;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 18
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "routineId"    # Ljava/util/UUID;
    .param p4, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<*>;",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    .local p3, "objs":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 318
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 319
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez p3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 320
    :cond_2
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez p4, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 322
    :cond_3
    move-object/from16 v13, p3

    .line 324
    .local v13, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->cacheContext(Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v10

    .line 326
    .local v10, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;

    .line 327
    .local v12, "e":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;
    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v2

    .line 329
    .local v2, "depMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    .line 331
    .local v17, "ldr":Ljava/lang/ClassLoader;
    invoke-interface/range {p4 .. p4}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 332
    invoke-virtual {v12}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->deployInfo()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    move-result-object v11

    .line 334
    .local v11, "depInfo":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    if-eqz v11, :cond_4

    .line 335
    invoke-interface {v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->userVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v6

    invoke-interface {v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->participants()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->localDeploymentOwner()Z

    move-result v8

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->p2pContext(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/util/Map;Z)V

    .line 341
    .end local v11    # "depInfo":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    :cond_4
    :try_start_0
    move-object/from16 v0, v17

    invoke-virtual {v12, v10, v0}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;->unmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v15

    .line 344
    .local v15, "ex":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    const-string v4, "Failed to unmarshal entry."

    invoke-static {v3, v4, v15}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 348
    .end local v2    # "depMgr":Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;
    .end local v12    # "e":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryEntry;
    .end local v15    # "ex":Lorg/apache/ignite/IgniteCheckedException;
    .end local v17    # "ldr":Ljava/lang/ClassLoader;
    :cond_5
    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v3

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->jcache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    move-result-object v9

    .line 350
    .local v9, "cache":Lorg/apache/ignite/IgniteCache;
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v9, v10}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$2;-><init>(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;Lorg/apache/ignite/IgniteCache;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v13, v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v14

    .line 358
    .local v14, "evts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljavax/cache/event/CacheEntryEvent<+TK;+TV;>;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->locLsnr:Ljavax/cache/event/CacheEntryUpdatedListener;

    invoke-interface {v3, v14}, Ljavax/cache/event/CacheEntryUpdatedListener;->onUpdated(Ljava/lang/Iterable;)V

    .line 359
    return-void
.end method

.method public onListenerRegistered(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0
    .param p1, "routineId"    # Ljava/util/UUID;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 291
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    return-void
.end method

.method public orderedTopic()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 382
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->topic:Ljava/lang/Object;

    return-object v0
.end method

.method public p2pMarshal(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 364
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 366
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isGrid(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 367
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;-><init>(Ljava/lang/Object;Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilterDep:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;

    .line 368
    :cond_2
    return-void
.end method

.method public p2pUnmarshal(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 373
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 374
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-interface {p2}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 376
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilterDep:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;

    if-eqz v0, :cond_3

    .line 377
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilterDep:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->unmarshal(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    .line 378
    :cond_3
    return-void
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
    .line 420
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->cacheName:Ljava/lang/String;

    .line 421
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->topic:Ljava/lang/Object;

    .line 423
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 425
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 426
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilterDep:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;

    .line 430
    :goto_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->internal:Z

    .line 431
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->notifyExisting:Z

    .line 432
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->oldValRequired:Z

    .line 433
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->sync:Z

    .line 434
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->ignoreExpired:Z

    .line 435
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->taskHash:I

    .line 436
    return-void

    .line 428
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    goto :goto_0
.end method

.method public register(Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "routineId"    # Ljava/util/UUID;
    .param p3, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 157
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 158
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez p3, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 160
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->locLsnr:Ljavax/cache/event/CacheEntryUpdatedListener;

    if-eqz v1, :cond_3

    .line 161
    invoke-interface {p3}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->locLsnr:Ljavax/cache/event/CacheEntryUpdatedListener;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectGeneric(Ljava/lang/Object;)V

    .line 163
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    if-eqz v1, :cond_4

    .line 164
    invoke-interface {p3}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->injectGeneric(Ljava/lang/Object;)V

    .line 166
    :cond_4
    invoke-interface {p3}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 168
    .local v4, "loc":Z
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;-><init>(Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;ZLjava/util/UUID;)V

    .line 280
    .local v0, "lsnr":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener<TK;TV;>;"
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->manager(Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v6

    .line 282
    .local v6, "mgr":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;
    if-nez v6, :cond_5

    .line 283
    sget-object v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;->DELAYED:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    .line 285
    :goto_0
    return-object v1

    :cond_5
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->internal:Z

    invoke-virtual {v6, p2, v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->registerListener(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryListener;Z)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    move-result-object v1

    goto :goto_0
.end method

.method public unregister(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 3
    .param p1, "routineId"    # Ljava/util/UUID;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 295
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 296
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 298
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->cacheName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    .line 300
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 301
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->continuousQueries()Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->internal:Z

    invoke-virtual {v1, v2, p1}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryManager;->unregisterListener(ZLjava/util/UUID;)V

    .line 302
    :cond_2
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;, "Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->cacheName:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->topic:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 400
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilterDep:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 402
    .local v0, "b":Z
    :goto_0
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 404
    if-eqz v0, :cond_1

    .line 405
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilterDep:Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 409
    :goto_1
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->internal:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 410
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->notifyExisting:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 411
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->oldValRequired:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 412
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->sync:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 413
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->ignoreExpired:Z

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 414
    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->taskHash:I

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 415
    return-void

    .line 400
    .end local v0    # "b":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 407
    .restart local v0    # "b":Z
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;->rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_1
.end method

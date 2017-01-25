.class public abstract Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;
.super Ljava/lang/Object;
.source "GridCacheMessage.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CACHE_MSG_INDEX_FIELD_NAME:Ljava/lang/String; = "CACHE_MSG_IDX"

.field public static final MAX_CACHE_MSG_LOOKUP_INDEX:I = 0x100

.field private static final NULL_MSG_ID:J = -0x1L

.field private static final msgIdx:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final serialVersionUID:J


# instance fields
.field protected cacheId:I

.field private depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private err:Ljava/lang/Exception;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private msgId:J

.field private skipPrepare:Z
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->msgIdx:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->msgId:J

    return-void
.end method

.method public static nextIndexId()I
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->msgIdx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method


# virtual methods
.method public allowForStartup()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public cacheId()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->cacheId:I

    return v0
.end method

.method public cacheId(I)V
    .locals 0
    .param p1, "cacheId"    # I

    .prologue
    .line 150
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->cacheId:I

    .line 151
    return-void
.end method

.method public classError()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->err:Ljava/lang/Exception;

    return-object v0
.end method

.method public deployInfo()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    return-object v0
.end method

.method public finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 235
    return-void
.end method

.method protected final finishUnmarshalCacheObjects(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p3, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 528
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    if-nez p1, :cond_1

    .line 535
    :cond_0
    return-void

    .line 531
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 532
    .local v1, "obj":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v1, :cond_2

    .line 533
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method protected final finishUnmarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p3, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 504
    .local p1, "col":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    if-nez p1, :cond_1

    .line 515
    :cond_0
    return-void

    .line 507
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 509
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 510
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 512
    .local v1, "obj":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v1, :cond_2

    .line 513
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    invoke-interface {v1, v3, p3}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 509
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public ignoreClassErrors()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public lookupIndex()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, -0x1

    return v0
.end method

.method protected final marshalBooleanLinkedMap(Ljava/util/LinkedHashMap;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/LinkedHashMap;
    .locals 5
    .param p1    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<*",
            "Ljava/lang/Boolean;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<[B",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 571
    .local p1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<*Ljava/lang/Boolean;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 573
    :cond_0
    if-nez p1, :cond_2

    .line 574
    const/4 v0, 0x0

    .line 585
    :cond_1
    return-object v0

    .line 576
    :cond_2
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newLinkedHashMap(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 578
    .local v0, "byteMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<[BLjava/lang/Boolean;>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 579
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<*Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploymentEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 580
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepareObject(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 582
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/Object;)[B

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected marshalCollection(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v4, 0x0

    .line 426
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 428
    :cond_0
    if-nez p1, :cond_1

    .line 440
    :goto_0
    return-object v4

    .line 431
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 433
    .local v0, "byteCol":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 434
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploymentEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 435
    invoke-virtual {p0, v2, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepareObject(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 437
    :cond_2
    if-nez v2, :cond_3

    move-object v3, v4

    :goto_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {p2, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/Object;)[B

    move-result-object v3

    goto :goto_2

    .end local v2    # "o":Ljava/lang/Object;
    :cond_4
    move-object v4, v0

    .line 440
    goto :goto_0
.end method

.method protected final marshalInfo(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 4
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 243
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 245
    :cond_0
    if-eqz p1, :cond_2

    .line 246
    invoke-virtual {p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 248
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploymentEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepareObject(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 252
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    .line 254
    .local v0, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V

    .line 257
    invoke-static {v0, p2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepareObject(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 261
    .end local v0    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_2
    return-void
.end method

.method protected final marshalInfos(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 3
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "infos":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 289
    :cond_0
    if-eqz p1, :cond_1

    .line 290
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    .line 291
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    invoke-virtual {p0, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->marshalInfo(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    goto :goto_0

    .line 292
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected final marshalInvokeArguments([Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)[[B
    .locals 5
    .param p1, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 372
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 374
    :cond_0
    if-eqz p1, :cond_1

    array-length v4, p1

    if-nez v4, :cond_3

    .line 375
    :cond_1
    check-cast v3, [[B

    move-object v1, v3

    .line 388
    :cond_2
    return-object v1

    .line 377
    :cond_3
    array-length v4, p1

    new-array v1, v4, [[B

    .line 379
    .local v1, "argsBytes":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 380
    aget-object v0, p1, v2

    .line 382
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploymentEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 383
    invoke-virtual {p0, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepareObject(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 385
    :cond_4
    if-nez v0, :cond_5

    move-object v4, v3

    :goto_1
    aput-object v4, v1, v2

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    :cond_5
    invoke-static {p2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/Object;)[B

    move-result-object v4

    goto :goto_1
.end method

.method protected final marshalTx(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 6
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p1, "txEntries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    const/4 v5, 0x0

    .line 317
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p2, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 319
    :cond_0
    if-eqz p1, :cond_3

    .line 320
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->transferExpiryPolicy()Z

    move-result v3

    .line 322
    .local v3, "transferExpiry":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 323
    .local v1, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v1, p2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->marshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Z)V

    .line 325
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploymentEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 326
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cacheId()I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v0

    .line 328
    .local v0, "cctx":Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 329
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    invoke-interface {v4, v0, v5}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepareObject(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 331
    :cond_2
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 332
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    invoke-interface {v4, v0, v5}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepareObject(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    goto :goto_0

    .line 336
    .end local v0    # "cctx":Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .end local v1    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "transferExpiry":Z
    :cond_3
    return-void
.end method

.method public messageId()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->msgId:J

    return-wide v0
.end method

.method messageId(J)V
    .locals 1
    .param p1, "msgId"    # J

    .prologue
    .line 136
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->msgId:J

    .line 137
    return-void
.end method

.method public onClassError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/Exception;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->err:Ljava/lang/Exception;

    .line 113
    return-void
.end method

.method public final prepare(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)V
    .locals 1
    .param p1, "depInfo"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    if-eq p1, v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 198
    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->local()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    .end local p1    # "depInfo":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    :cond_0
    :goto_0
    return-void

    .line 201
    .restart local p1    # "depInfo":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    :cond_1
    instance-of v0, p1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    .end local p1    # "depInfo":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    :goto_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    goto :goto_0

    .restart local p1    # "depInfo":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)V

    move-object p1, v0

    goto :goto_1
.end method

.method public prepareMarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 223
    return-void
.end method

.method protected final prepareMarshalCacheObjects(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 5
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 477
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    if-nez p1, :cond_1

    .line 490
    :cond_0
    return-void

    .line 480
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploymentEnabled()Z

    move-result v0

    .line 482
    .local v0, "depEnabled":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 483
    .local v2, "obj":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v2, :cond_2

    .line 484
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 486
    if-eqz v0, :cond_2

    .line 487
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepareObject(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    goto :goto_0
.end method

.method protected final prepareMarshalCacheObjects(Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 451
    .local p1, "col":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    if-nez p1, :cond_1

    .line 468
    :cond_0
    return-void

    .line 454
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 456
    .local v3, "size":I
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deploymentEnabled()Z

    move-result v0

    .line 458
    .local v0, "depEnabled":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 459
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 461
    .local v2, "obj":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v2, :cond_2

    .line 462
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V

    .line 464
    if-eqz v0, :cond_2

    .line 465
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepareObject(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    .line 458
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected final prepareObject(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 168
    iget-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->skipPrepare:Z

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->globalDeploymentInfo()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    move-result-object v1

    .line 171
    .local v1, "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepare(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)V

    .line 175
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->skipPrepare:Z

    .line 188
    .end local v1    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local v1    # "d":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 180
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->deploy()Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheDeploymentManager;->registerClass(Ljava/lang/Class;)V

    .line 182
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 184
    .local v2, "ldr":Ljava/lang/ClassLoader;
    instance-of v3, v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    if-eqz v3, :cond_0

    .line 185
    check-cast v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .end local v2    # "ldr":Ljava/lang/ClassLoader;
    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->prepare(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)V

    goto :goto_0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 650
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 652
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 682
    :goto_0
    return v0

    .line 655
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 682
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 657
    :pswitch_0
    const-string v0, "cacheId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->cacheId:I

    .line 659
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 660
    goto :goto_0

    .line 662
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 665
    :pswitch_1
    const-string v0, "depInfo"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    .line 667
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 668
    goto :goto_0

    .line 670
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 673
    :pswitch_2
    const-string v0, "msgId"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->msgId:J

    .line 675
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 676
    goto :goto_0

    .line 678
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 655
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 687
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

.method protected transferExpiryPolicy()Z
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method protected final unmarshalBooleanLinkedMap(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)Ljava/util/LinkedHashMap;
    .locals 6
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p3, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<[B",
            "Ljava/lang/Boolean;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<TK1;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 597
    .local p1, "byteMap":Ljava/util/Map;, "Ljava/util/Map<[BLjava/lang/Boolean;>;"
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p3, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 598
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 600
    :cond_1
    if-nez p1, :cond_3

    .line 601
    const/4 v2, 0x0

    .line 610
    :cond_2
    return-object v2

    .line 603
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newLinkedHashMap(I)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 605
    .local v2, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK1;Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v3

    .line 607
    .local v3, "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 608
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<[BLjava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v3, v4, p3}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected unmarshalCollection(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 6
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p3, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<[B>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p1, "byteCol":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    const/4 v5, 0x0

    .line 546
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p3, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 547
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 549
    :cond_1
    if-nez p1, :cond_2

    .line 559
    :goto_0
    return-object v5

    .line 552
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 554
    .local v1, "col":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v3

    .line 556
    .local v3, "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 557
    .local v0, "bytes":[B
    if-nez v0, :cond_3

    move-object v4, v5

    :goto_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v3, v0, p3}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .end local v0    # "bytes":[B
    :cond_4
    move-object v5, v1

    .line 559
    goto :goto_0
.end method

.method protected final unmarshalInfo(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p3, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 271
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 272
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 274
    :cond_1
    if-eqz p1, :cond_2

    .line 275
    invoke-virtual {p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->unmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    .line 276
    :cond_2
    return-void
.end method

.method protected final unmarshalInfos(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p3, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "infos":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 303
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 305
    :cond_1
    if-eqz p1, :cond_2

    .line 306
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    .line 307
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->unmarshalInfo(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 308
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method protected final unmarshalInvokeArguments([[BLorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .locals 5
    .param p1, "byteCol"    # [[B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p3, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 402
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 403
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 405
    :cond_1
    if-nez p1, :cond_2

    .line 415
    :goto_0
    return-object v4

    .line 408
    :cond_2
    array-length v3, p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 410
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v2

    .line 412
    .local v2, "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_4

    .line 413
    aget-object v3, p1, v1

    if-nez v3, :cond_3

    move-object v3, v4

    :goto_2
    aput-object v3, v0, v1

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 413
    :cond_3
    aget-object v3, p1, v1

    invoke-interface {v2, v3, p3}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v4, v0

    .line 415
    goto :goto_0
.end method

.method protected final unmarshalTx(Ljava/lang/Iterable;ZLorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p2, "near"    # Z
    .param p3, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .param p4, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;Z",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "txEntries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p4, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 356
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 358
    :cond_1
    if-eqz p1, :cond_2

    .line 359
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 360
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v0, p3, p2, p4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->unmarshal(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;ZLjava/lang/ClassLoader;)V

    goto :goto_0

    .line 362
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 615
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 617
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 618
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 645
    :cond_0
    :goto_0
    return v0

    .line 621
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 624
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 645
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 626
    :pswitch_0
    const-string v1, "cacheId"

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->cacheId:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 632
    :pswitch_1
    const-string v1, "depInfo"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 638
    :pswitch_2
    const-string v1, "msgId"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;->msgId:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 624
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

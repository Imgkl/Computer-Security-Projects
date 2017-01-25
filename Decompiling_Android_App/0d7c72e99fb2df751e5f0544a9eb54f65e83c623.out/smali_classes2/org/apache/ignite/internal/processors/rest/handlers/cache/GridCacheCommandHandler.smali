.class public Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;
.super Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;
.source "GridCacheCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$3;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$MetricsCommand;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$PrependCommand;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$AppendCommand;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$ReplaceCommand;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$AddCommand;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$PutCommand;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CasCommand;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$RemoveAllCommand;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$RemoveCommand;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$PutAllCommand;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$GetAllCommand;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$GetCommand;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheOperationCallable;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FlaggedCacheOperationCallable;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheCommand;,
        Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FixedResult;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_FLAGS:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

.field private static final KEY_REQUIRED_REQUESTS:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_COMMANDS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestCommand;",
            ">;"
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

    .line 53
    const-class v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->$assertionsDisabled:Z

    .line 55
    const/16 v0, 0xc

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_GET:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v3, v0, v2

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_GET_ALL:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v3, v0, v1

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_PUT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v3, v0, v5

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_ADD:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v3, v0, v6

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_PUT_ALL:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v3, v0, v7

    const/4 v3, 0x5

    sget-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REMOVE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v4, v0, v3

    const/4 v3, 0x6

    sget-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REMOVE_ALL:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v4, v0, v3

    const/4 v3, 0x7

    sget-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REPLACE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v4, v0, v3

    const/16 v3, 0x8

    sget-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_CAS:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v4, v0, v3

    const/16 v3, 0x9

    sget-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_APPEND:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v4, v0, v3

    const/16 v3, 0xa

    sget-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_PREPEND:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v4, v0, v3

    const/16 v3, 0xb

    sget-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_METRICS:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v4, v0, v3

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sealList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->SUPPORTED_COMMANDS:Ljava/util/Collection;

    .line 71
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_GET:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    const/16 v3, 0x9

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    sget-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_PUT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v4, v3, v2

    sget-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_ADD:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v4, v3, v1

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REMOVE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v1, v3, v5

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_REPLACE:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v1, v3, v6

    sget-object v1, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ATOMIC_INCREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v1, v3, v7

    const/4 v1, 0x5

    sget-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ATOMIC_DECREMENT:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v4, v3, v1

    const/4 v1, 0x6

    sget-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_CAS:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v4, v3, v1

    const/4 v1, 0x7

    sget-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_APPEND:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v4, v3, v1

    const/16 v1, 0x8

    sget-object v4, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->CACHE_PREPEND:Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->KEY_REQUIRED_REQUESTS:Ljava/util/EnumSet;

    .line 85
    new-array v0, v2, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->EMPTY_FLAGS:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    return-void

    :cond_0
    move v0, v2

    .line 53
    goto/16 :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 92
    return-void
.end method

.method static synthetic access$300(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->appendOrPrepend(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/Ignite;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/Ignite;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->cache(Lorg/apache/ignite/Ignite;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->resultWrapper(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->appendOrPrepend(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method private static appendOrPrepend(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 11
    .param p0, "origVal"    # Ljava/lang/Object;
    .param p1, "appendVal"    # Ljava/lang/Object;
    .param p2, "appendPlc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 450
    instance-of v8, p1, Ljava/lang/String;

    if-eqz v8, :cond_1

    instance-of v8, p0, Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 451
    if-eqz p2, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    check-cast p1, Ljava/lang/String;

    .end local p1    # "appendVal":Ljava/lang/Object;
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 490
    :goto_0
    return-object v8

    .line 451
    .restart local p1    # "appendVal":Ljava/lang/Object;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Ljava/lang/String;

    .end local p1    # "appendVal":Ljava/lang/Object;
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 454
    .restart local p1    # "appendVal":Ljava/lang/Object;
    :cond_1
    instance-of v8, p1, Ljava/util/Map;

    if-eqz v8, :cond_5

    instance-of v8, p0, Ljava/util/Map;

    if-eqz v8, :cond_5

    move-object v7, p0

    .line 455
    check-cast v7, Ljava/util/Map;

    .local v7, "origMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v1, p1

    .line 456
    check-cast v1, Ljava/util/Map;

    .line 458
    .local v1, "appendMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-static {v7, v9, v10}, Lorg/apache/ignite/internal/util/typedef/X;->cloneObject(Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 460
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz p2, :cond_3

    .line 461
    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 468
    :goto_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 469
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    .line 470
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 463
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 464
    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 465
    invoke-interface {v5, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    move-object v8, v5

    .line 472
    goto :goto_0

    .line 476
    .end local v1    # "appendMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v7    # "origMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_5
    instance-of v8, p1, Ljava/util/Collection;

    if-eqz v8, :cond_7

    instance-of v8, p0, Ljava/util/Collection;

    if-eqz v8, :cond_7

    move-object v6, p0

    .line 477
    check-cast v6, Ljava/util/Collection;

    .local v6, "origCol":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    move-object v0, p1

    .line 478
    check-cast v0, Ljava/util/Collection;

    .line 480
    .local v0, "appendCol":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-static {v6, v9, v10}, Lorg/apache/ignite/internal/util/typedef/X;->cloneObject(Ljava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 482
    .local v2, "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    if-eqz p2, :cond_6

    .line 483
    invoke-interface {v2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :goto_3
    move-object v8, v2

    .line 490
    goto :goto_0

    .line 485
    :cond_6
    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 486
    invoke-interface {v2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 487
    invoke-interface {v2, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 493
    .end local v0    # "appendCol":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v2    # "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v6    # "origCol":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_7
    new-instance v8, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Incompatible types [appendVal="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", old="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private static appendOrPrepend(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/processors/cache/CacheProjection;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p0, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "req"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;
    .param p4, "prepend"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;",
            "Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "cache":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 409
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 410
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez p3, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 412
    :cond_2
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->value()Ljava/lang/Object;

    move-result-object v0

    .line 414
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_3

    .line 415
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    const-string v2, "val"

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;->missingParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 417
    :cond_3
    invoke-interface {p0}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;

    invoke-direct {v2, p1, p2, v0, p4}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Ljava/lang/Object;Ljava/lang/Object;Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callLocalSafe(Ljava/util/concurrent/Callable;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    return-object v1
.end method

.method private static cache(Lorg/apache/ignite/Ignite;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .locals 4
    .param p0, "ignite"    # Lorg/apache/ignite/Ignite;
    .param p1, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/Ignite;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 556
    check-cast p0, Lorg/apache/ignite/internal/IgniteKernal;

    .end local p0    # "ignite":Lorg/apache/ignite/Ignite;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/IgniteKernal;->getCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    .line 558
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 559
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find cache for given cache name (null for default cache): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 562
    :cond_0
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    return-object v0
.end method

.method private executeCommand(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheCommand;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 12
    .param p1, "destId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "clientId"    # Ljava/util/UUID;
    .param p3, "cacheName"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/Object;
    .param p5, "op"    # Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheCommand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheCommand;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 374
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v8, 0x1

    .line 377
    .local v8, "locExec":Z
    :goto_0
    if-eqz v8, :cond_2

    .line 378
    invoke-virtual {p0, p3}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->localCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->forSubjectId(Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v7

    .line 380
    .local v7, "cache":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v1}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheCommand;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-object/from16 v0, p4

    invoke-static {v7, v0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->resultWrapper(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    .line 387
    .end local v7    # "cache":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_1
    return-object v1

    .line 374
    .end local v8    # "locExec":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 383
    .restart local v8    # "locExec":Z
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->nodeForNodeId(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v9

    .line 385
    .local v9, "prj":Lorg/apache/ignite/cluster/ClusterGroup;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_NO_FAILOVER:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 387
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v10

    sget-object v11, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    new-instance v1, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheOperationCallable;

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheOperationCallable;-><init>(Ljava/util/UUID;Ljava/lang/String;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheCommand;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;)V

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v10, v11, v1, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    goto :goto_1
.end method

.method private executeCommand(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 13
    .param p1, "destId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "clientId"    # Ljava/util/UUID;
    .param p3, "cacheName"    # Ljava/lang/String;
    .param p4, "flags"    # [Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    .param p5, "key"    # Ljava/lang/Object;
    .param p6, "op"    # Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 335
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->replicatedCacheAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v8, 0x1

    .line 338
    .local v8, "locExec":Z
    :goto_0
    if-eqz v8, :cond_2

    .line 339
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->localCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->forSubjectId(Ljava/util/UUID;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-interface {v1, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->flagsOn([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v10

    .line 341
    .local v10, "prj":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<**>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v0, p6

    invoke-virtual {v0, v10, v1}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-object/from16 v0, p5

    invoke-static {v10, v0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->resultWrapper(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    .line 349
    .end local v10    # "prj":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<**>;"
    :goto_1
    return-object v1

    .line 335
    .end local v8    # "locExec":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 345
    .restart local v8    # "locExec":Z
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->nodeForNodeId(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forPredicate(Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/cluster/ClusterGroup;

    move-result-object v9

    .line 347
    .local v9, "prj":Lorg/apache/ignite/cluster/ClusterGroup;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_NO_FAILOVER:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 349
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->closure()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v11

    sget-object v12, Lorg/apache/ignite/internal/GridClosureCallMode;->BALANCE:Lorg/apache/ignite/internal/GridClosureCallMode;

    new-instance v1, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FlaggedCacheOperationCallable;

    const/4 v7, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$FlaggedCacheOperationCallable;-><init>(Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;)V

    invoke-interface {v9}, Lorg/apache/ignite/cluster/ClusterGroup;->nodes()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v11, v12, v1, v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->callAsync(Lorg/apache/ignite/internal/GridClosureCallMode;Ljava/util/concurrent/Callable;Ljava/util/Collection;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    goto :goto_1
.end method

.method public static parseCacheFlags(I)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    .locals 2
    .param p0, "cacheFlagsBits"    # I

    .prologue
    .line 106
    if-nez p0, :cond_0

    .line 107
    sget-object v1, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->EMPTY_FLAGS:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 123
    :goto_0
    return-object v1

    .line 109
    :cond_0
    const-class v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 111
    .local v0, "flagSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    .line 112
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SKIP_STORE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2

    .line 115
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SKIP_SWAP:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_3

    .line 118
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->SYNC_COMMIT:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 121
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->INVALIDATE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_4
    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    goto :goto_0
.end method

.method private replicatedCacheAvailable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 529
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    .line 531
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/cache/CacheMode;->REPLICATED:Lorg/apache/ignite/cache/CacheMode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static resultWrapper(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "c":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$2;

    invoke-direct {v0, p1, p0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$2;-><init>(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheProjection;)V

    return-object v0
.end method


# virtual methods
.method public handleAsync(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 29
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    sget-boolean v2, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command for topology handler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 130
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->SUPPORTED_COMMANDS:Ljava/util/Collection;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 132
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling cache REST request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v24, p1

    .line 135
    check-cast v24, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;

    .line 137
    .local v24, "req0":Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->cacheName()Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "cacheName":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->key()Ljava/lang/Object;

    move-result-object v7

    .line 141
    .local v7, "key":Ljava/lang/Object;
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->cacheFlags()I

    move-result v2

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->parseCacheFlags(I)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    move-result-object v6

    .line 144
    .local v6, "flags":[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    :try_start_0
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->command()Lorg/apache/ignite/internal/processors/rest/GridRestCommand;

    move-result-object v14

    .line 146
    .local v14, "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    if-nez v7, :cond_4

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->KEY_REQUIRED_REQUESTS:Ljava/util/EnumSet;

    invoke-virtual {v2, v14}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 147
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "key"

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;->missingParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    .end local v14    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :catch_0
    move-exception v15

    .line 298
    .local v15, "e":Lorg/apache/ignite/IgniteException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute cache command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v15}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 300
    new-instance v17, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handled cache REST request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .end local v15    # "e":Lorg/apache/ignite/IgniteException;
    :cond_3
    :goto_0
    return-object v17

    .line 149
    .restart local v14    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    :cond_4
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->ttl()Ljava/lang/Long;

    move-result-object v25

    .line 153
    .local v25, "ttl":Ljava/lang/Long;
    sget-object v2, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$3;->$SwitchMap$org$apache$ignite$internal$processors$rest$GridRestCommand:[I

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/rest/GridRestCommand;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 292
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid command for cache handler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Lorg/apache/ignite/IgniteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    .end local v14    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    .end local v25    # "ttl":Ljava/lang/Long;
    :catch_1
    move-exception v15

    .line 303
    .local v15, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute cache command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v15}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 305
    new-instance v17, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handled cache REST request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    .end local v15    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v14    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    .restart local v25    # "ttl":Ljava/lang/Long;
    :pswitch_0
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->destinationId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId()Ljava/util/UUID;

    move-result-object v4

    new-instance v8, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$GetCommand;

    invoke-direct {v8, v7}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$GetCommand;-><init>(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->executeCommand(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_4
    .catch Lorg/apache/ignite/IgniteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v17

    .line 308
    .local v17, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handled cache REST request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    .end local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    :pswitch_1
    :try_start_5
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->values()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    .line 164
    .local v20, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 165
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "keys"

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;->missingParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Lorg/apache/ignite/IgniteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 308
    .end local v14    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    .end local v20    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    .end local v25    # "ttl":Ljava/lang/Long;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 309
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Handled cache REST request: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_5
    throw v2

    .line 168
    .restart local v14    # "cmd":Lorg/apache/ignite/internal/processors/rest/GridRestCommand;
    .restart local v20    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    .restart local v25    # "ttl":Ljava/lang/Long;
    :cond_6
    :try_start_6
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 170
    .local v21, "keys0":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 171
    .local v18, "getKey":Ljava/lang/Object;
    if-nez v18, :cond_7

    .line 172
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "Failing getAll operation (null keys are not allowed)."

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_7
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 177
    .end local v18    # "getKey":Ljava/lang/Object;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->destinationId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId()Ljava/util/UUID;

    move-result-object v4

    new-instance v8, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$GetAllCommand;

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$GetAllCommand;-><init>(Ljava/util/Collection;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->executeCommand(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v17

    .line 180
    .restart local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    goto/16 :goto_1

    .line 184
    .end local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    .end local v21    # "keys0":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    :pswitch_2
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->value()Ljava/lang/Object;

    move-result-object v26

    .line 186
    .local v26, "val":Ljava/lang/Object;
    if-nez v26, :cond_9

    .line 187
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "val"

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;->missingParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->destinationId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId()Ljava/util/UUID;

    move-result-object v4

    new-instance v8, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$PutCommand;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v8, v7, v0, v1}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$PutCommand;-><init>(Ljava/lang/Object;Ljava/lang/Long;Ljava/lang/Object;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->executeCommand(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v17

    .line 192
    .restart local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    goto/16 :goto_1

    .line 196
    .end local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    .end local v26    # "val":Ljava/lang/Object;
    :pswitch_3
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->value()Ljava/lang/Object;

    move-result-object v26

    .line 198
    .restart local v26    # "val":Ljava/lang/Object;
    if-nez v26, :cond_a

    .line 199
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "val"

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;->missingParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->destinationId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId()Ljava/util/UUID;

    move-result-object v4

    new-instance v8, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$AddCommand;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v8, v7, v0, v1}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$AddCommand;-><init>(Ljava/lang/Object;Ljava/lang/Long;Ljava/lang/Object;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->executeCommand(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v17

    .line 204
    .restart local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    goto/16 :goto_1

    .line 208
    .end local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    .end local v26    # "val":Ljava/lang/Object;
    :pswitch_4
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->values()Ljava/util/Map;

    move-result-object v22

    .line 210
    .local v22, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-static/range {v22 .. v22}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 211
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "values"

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;->missingParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    :cond_b
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 214
    .local v16, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d

    .line 215
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "Failing putAll operation (null keys are not allowed)."

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_d
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    .line 218
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "Failing putAll operation (null values are not allowed)."

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    .end local v16    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_e
    new-instance v23, Ljava/util/HashMap;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 224
    .end local v22    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local v23, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->destinationId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId()Ljava/util/UUID;

    move-result-object v4

    new-instance v8, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$PutAllCommand;

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$PutAllCommand;-><init>(Ljava/util/Map;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->executeCommand(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v17

    .line 227
    .restart local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    goto/16 :goto_1

    .line 231
    .end local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v23    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->destinationId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId()Ljava/util/UUID;

    move-result-object v4

    new-instance v8, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$RemoveCommand;

    invoke-direct {v8, v7}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$RemoveCommand;-><init>(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->executeCommand(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v17

    .line 234
    .restart local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    goto/16 :goto_1

    .line 238
    .end local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    :pswitch_6
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->values()Ljava/util/Map;

    move-result-object v22

    .line 241
    .restart local v22    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v22, :cond_f

    const/16 v20, 0x0

    .line 243
    .restart local v20    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->destinationId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId()Ljava/util/UUID;

    move-result-object v4

    new-instance v8, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$RemoveAllCommand;

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$RemoveAllCommand;-><init>(Ljava/util/Collection;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->executeCommand(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v17

    .line 246
    .restart local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    goto/16 :goto_1

    .line 241
    .end local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    .end local v20    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :cond_f
    new-instance v20, Ljava/util/HashSet;

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    .line 250
    .end local v22    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :pswitch_7
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->value()Ljava/lang/Object;

    move-result-object v26

    .line 252
    .restart local v26    # "val":Ljava/lang/Object;
    if-nez v26, :cond_10

    .line 253
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "val"

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/rest/handlers/GridRestCommandHandlerAdapter;->missingParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 255
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->destinationId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId()Ljava/util/UUID;

    move-result-object v4

    new-instance v8, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$ReplaceCommand;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v8, v7, v0, v1}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$ReplaceCommand;-><init>(Ljava/lang/Object;Ljava/lang/Long;Ljava/lang/Object;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->executeCommand(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v17

    .line 258
    .restart local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    goto/16 :goto_1

    .line 262
    .end local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    .end local v26    # "val":Ljava/lang/Object;
    :pswitch_8
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->value()Ljava/lang/Object;

    move-result-object v27

    .line 263
    .local v27, "val1":Ljava/lang/Object;
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;->value2()Ljava/lang/Object;

    move-result-object v28

    .line 265
    .local v28, "val2":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->destinationId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId()Ljava/util/UUID;

    move-result-object v4

    new-instance v8, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CasCommand;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v8, v0, v1, v7}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CasCommand;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->executeCommand(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v17

    .line 268
    .restart local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    goto/16 :goto_1

    .line 272
    .end local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    .end local v27    # "val1":Ljava/lang/Object;
    .end local v28    # "val2":Ljava/lang/Object;
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->destinationId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId()Ljava/util/UUID;

    move-result-object v4

    new-instance v8, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$AppendCommand;

    move-object/from16 v0, v24

    invoke-direct {v8, v7, v0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$AppendCommand;-><init>(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->executeCommand(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v17

    .line 275
    .restart local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    goto/16 :goto_1

    .line 279
    .end local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->destinationId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId()Ljava/util/UUID;

    move-result-object v4

    new-instance v8, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$PrependCommand;

    move-object/from16 v0, v24

    invoke-direct {v8, v7, v0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$PrependCommand;-><init>(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/request/GridRestCacheRequest;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->executeCommand(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheProjectionCommand;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v17

    .line 282
    .restart local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    goto/16 :goto_1

    .line 286
    .end local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->destinationId()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->clientId()Ljava/util/UUID;

    move-result-object v10

    new-instance v13, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$MetricsCommand;

    const/4 v2, 0x0

    invoke-direct {v13, v2}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$MetricsCommand;-><init>(Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;)V

    move-object/from16 v8, p0

    move-object v11, v5

    move-object v12, v7

    invoke-direct/range {v8 .. v13}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->executeCommand(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheCommand;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_6
    .catch Lorg/apache/ignite/IgniteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v17

    .line 288
    .restart local v17    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    goto/16 :goto_1

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected localCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .locals 4
    .param p1, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 540
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->cache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    .line 542
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 543
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find cache for given cache name (null for default cache): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 546
    :cond_0
    return-object v0
.end method

.method public supportedCommands()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    sget-object v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;->SUPPORTED_COMMANDS:Ljava/util/Collection;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    const-class v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

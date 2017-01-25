.class Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask$VisorCachesLoadJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorCacheLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorCachesLoadJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Lorg/apache/ignite/internal/util/lang/GridTuple3",
        "<",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Long;",
        "[",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask$VisorCachesLoadJob;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/util/lang/GridTuple3;Z)V
    .locals 0
    .param p2, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "arg":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/util/Set<Ljava/lang/String;>;Ljava/lang/Long;[Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/lang/GridTuple3;ZLorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/lang/GridTuple3;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask$1;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask$VisorCachesLoadJob;-><init>(Lorg/apache/ignite/internal/util/lang/GridTuple3;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 46
    check-cast p1, Lorg/apache/ignite/internal/util/lang/GridTuple3;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask$VisorCachesLoadJob;->run(Lorg/apache/ignite/internal/util/lang/GridTuple3;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected run(Lorg/apache/ignite/internal/util/lang/GridTuple3;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "arg":Lorg/apache/ignite/internal/util/lang/GridTuple3;, "Lorg/apache/ignite/internal/util/lang/GridTuple3<Ljava/util/Set<Ljava/lang/String;>;Ljava/lang/Long;[Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 62
    .local v2, "cacheNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 63
    .local v7, "ttl":Ljava/lang/Long;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/lang/GridTuple3;->get3()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 65
    .local v4, "ldrArgs":[Ljava/lang/Object;
    sget-boolean v8, Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask$VisorCachesLoadJob;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 66
    :cond_1
    sget-boolean v8, Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask$VisorCachesLoadJob;->$assertionsDisabled:Z

    if-nez v8, :cond_2

    if-nez v7, :cond_2

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 68
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v6

    .line 70
    .local v6, "res":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 72
    .local v5, "plc":Ljavax/cache/expiry/ExpiryPolicy;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, "cacheName":Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask$VisorCachesLoadJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v8, v1}, Lorg/apache/ignite/internal/IgniteEx;->cache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;

    move-result-object v0

    .line 75
    .local v0, "cache":Lorg/apache/ignite/IgniteCache;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 76
    if-nez v5, :cond_3

    .line 77
    new-instance v5, Ljavax/cache/expiry/CreatedExpiryPolicy;

    .end local v5    # "plc":Ljavax/cache/expiry/ExpiryPolicy;
    new-instance v8, Ljavax/cache/expiry/Duration;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v8, v9, v10, v11}, Ljavax/cache/expiry/Duration;-><init>(Ljava/util/concurrent/TimeUnit;J)V

    invoke-direct {v5, v8}, Ljavax/cache/expiry/CreatedExpiryPolicy;-><init>(Ljavax/cache/expiry/Duration;)V

    .line 79
    .restart local v5    # "plc":Ljavax/cache/expiry/ExpiryPolicy;
    :cond_3
    invoke-interface {v0, v5}, Lorg/apache/ignite/IgniteCache;->withExpiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/IgniteCache;

    move-result-object v0

    .line 82
    :cond_4
    const/4 v8, 0x0

    invoke-interface {v0, v8, v4}, Lorg/apache/ignite/IgniteCache;->loadCache(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V

    .line 84
    const/4 v8, 0x1

    new-array v8, v8, [Lorg/apache/ignite/cache/CachePeekMode;

    const/4 v9, 0x0

    sget-object v10, Lorg/apache/ignite/cache/CachePeekMode;->PRIMARY:Lorg/apache/ignite/cache/CachePeekMode;

    aput-object v10, v8, v9

    invoke-interface {v0, v8}, Lorg/apache/ignite/IgniteCache;->size([Lorg/apache/ignite/cache/CachePeekMode;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 87
    .end local v0    # "cache":Lorg/apache/ignite/IgniteCache;
    .end local v1    # "cacheName":Ljava/lang/String;
    :cond_5
    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheLoadTask$VisorCachesLoadJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

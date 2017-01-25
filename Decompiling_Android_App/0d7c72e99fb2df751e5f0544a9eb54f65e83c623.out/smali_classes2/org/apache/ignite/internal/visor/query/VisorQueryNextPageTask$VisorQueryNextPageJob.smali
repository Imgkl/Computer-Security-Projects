.class Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask$VisorQueryNextPageJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorQueryNextPageTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorQueryNextPageJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;",
        "Lorg/apache/ignite/internal/visor/query/VisorQueryResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Lorg/apache/ignite/lang/IgniteBiTuple;Z)V
    .locals 0
    .param p2, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "arg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/lang/IgniteBiTuple;ZLorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/lang/IgniteBiTuple;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask$1;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask$VisorQueryNextPageJob;-><init>(Lorg/apache/ignite/lang/IgniteBiTuple;Z)V

    return-void
.end method

.method private nextScanPage(Lorg/apache/ignite/lang/IgniteBiTuple;)Lorg/apache/ignite/internal/visor/query/VisorQueryResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/apache/ignite/internal/visor/query/VisorQueryResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p1, "arg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x1

    .line 96
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    .line 98
    .local v2, "start":J
    iget-object v6, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask$VisorQueryNextPageJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v6}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->nodeLocalMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    .line 101
    .local v4, "storage":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;

    .line 103
    .local v5, "t":Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;, "Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    if-nez v5, :cond_0

    .line 104
    new-instance v6, Lorg/apache/ignite/internal/GridInternalException;

    const-string v7, "Scan query results are expired."

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/GridInternalException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 106
    :cond_0
    invoke-virtual {v5}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;->future()Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v9

    invoke-virtual {v5}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v9, v6, v7}, Lorg/apache/ignite/internal/visor/query/VisorQueryUtils;->fetchScanQueryRows(Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;Ljava/util/Map$Entry;I)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    .line 109
    .local v1, "rows":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/List<[Ljava/lang/Object;>;Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    move v6, v8

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 111
    .local v0, "hasMore":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 112
    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;->future()Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v7, v9, v10, v8}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;-><init>(Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;Ljava/lang/Object;Ljava/lang/Boolean;)V

    invoke-interface {v4, v6, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :goto_1
    new-instance v7, Lorg/apache/ignite/internal/visor/query/VisorQueryResult;

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-direct {v7, v6, v0, v8, v9}, Lorg/apache/ignite/internal/visor/query/VisorQueryResult;-><init>(Ljava/util/List;Ljava/lang/Boolean;J)V

    return-object v7

    .line 109
    .end local v0    # "hasMore":Ljava/lang/Boolean;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 114
    .restart local v0    # "hasMore":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private nextSqlPage(Lorg/apache/ignite/lang/IgniteBiTuple;)Lorg/apache/ignite/internal/visor/query/VisorQueryResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/apache/ignite/internal/visor/query/VisorQueryResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p1, "arg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x1

    .line 72
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    .line 74
    .local v2, "start":J
    iget-object v6, p0, Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask$VisorQueryNextPageJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v6}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->nodeLocalMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    .line 77
    .local v4, "storage":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder<Ljava/util/List<*>;>;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;

    .line 79
    .local v5, "t":Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;, "Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder<Ljava/util/List<*>;>;"
    if-nez v5, :cond_0

    .line 80
    new-instance v6, Lorg/apache/ignite/internal/GridInternalException;

    const-string v7, "SQL query results are expired."

    invoke-direct {v6, v7}, Lorg/apache/ignite/internal/GridInternalException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 82
    :cond_0
    invoke-virtual {v5}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;->future()Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v9

    invoke-virtual {v5}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v9, v6, v7}, Lorg/apache/ignite/internal/visor/query/VisorQueryUtils;->fetchSqlQueryRows(Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;Ljava/util/List;I)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    .line 84
    .local v1, "nextRows":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/List<[Ljava/lang/Object;>;Ljava/util/List<*>;>;"
    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    move v0, v8

    .line 86
    .local v0, "hasMore":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;->future()Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;

    move-result-object v9

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v7, v9, v10, v8}, Lorg/apache/ignite/internal/visor/query/VisorQueryTask$VisorFutureResultSetHolder;-><init>(Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;Ljava/lang/Object;Ljava/lang/Boolean;)V

    invoke-interface {v4, v6, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :goto_1
    new-instance v7, Lorg/apache/ignite/internal/visor/query/VisorQueryResult;

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-direct {v7, v6, v8, v10, v11}, Lorg/apache/ignite/internal/visor/query/VisorQueryResult;-><init>(Ljava/util/List;Ljava/lang/Boolean;J)V

    return-object v7

    .line 84
    .end local v0    # "hasMore":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    .restart local v0    # "hasMore":Z
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
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
    check-cast p1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask$VisorQueryNextPageJob;->run(Lorg/apache/ignite/lang/IgniteBiTuple;)Lorg/apache/ignite/internal/visor/query/VisorQueryResult;

    move-result-object v0

    return-object v0
.end method

.method protected run(Lorg/apache/ignite/lang/IgniteBiTuple;)Lorg/apache/ignite/internal/visor/query/VisorQueryResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/apache/ignite/internal/visor/query/VisorQueryResult;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "arg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "VISOR_SCAN_QUERY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask$VisorQueryNextPageJob;->nextScanPage(Lorg/apache/ignite/lang/IgniteBiTuple;)Lorg/apache/ignite/internal/visor/query/VisorQueryResult;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask$VisorQueryNextPageJob;->nextSqlPage(Lorg/apache/ignite/lang/IgniteBiTuple;)Lorg/apache/ignite/internal/visor/query/VisorQueryResult;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-class v0, Lorg/apache/ignite/internal/visor/query/VisorQueryNextPageTask$VisorQueryNextPageJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

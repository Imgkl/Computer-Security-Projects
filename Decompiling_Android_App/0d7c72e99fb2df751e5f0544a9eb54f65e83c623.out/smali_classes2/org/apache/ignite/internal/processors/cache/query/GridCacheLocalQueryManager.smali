.class public Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;
.super Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
.source "GridCacheLocalQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;-><init>()V

    return-void
.end method


# virtual methods
.method public loadPage(JLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;Ljava/util/Collection;Z)V
    .locals 0
    .param p1, "id"    # J
    .param p5, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager<TK;TV;>;"
    .local p3, "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter<*>;"
    .local p4, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    return-void
.end method

.method protected onFieldsPageReady(ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;ZLjava/lang/Throwable;)Z
    .locals 6
    .param p1, "loc"    # Z
    .param p2, "qryInfo"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "finished"    # Z
    .param p7, "e"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;Z",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager<TK;TV;>;"
    .local p3, "metaData":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    .local p4, "entities":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p5, "data":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 62
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->localQueryFuture()Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;

    .line 64
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 66
    :cond_1
    if-eqz p7, :cond_2

    .line 67
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;->onPage(Ljava/util/UUID;Ljava/util/List;Ljava/util/Collection;Ljava/lang/Throwable;Z)V

    .line 71
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 69
    :cond_2
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v2, p3

    move-object v3, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;->onPage(Ljava/util/UUID;Ljava/util/List;Ljava/util/Collection;Ljava/lang/Throwable;Z)V

    goto :goto_0
.end method

.method protected onPageReady(ZLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/util/Collection;ZLjava/lang/Throwable;)Z
    .locals 4
    .param p1, "loc"    # Z
    .param p2, "qryInfo"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;
    .param p4, "finished"    # Z
    .param p5, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;",
            "Ljava/util/Collection",
            "<*>;Z",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager<TK;TV;>;"
    .local p3, "data":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;->localQueryFuture()Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    move-result-object v0

    .line 42
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 44
    :cond_0
    if-eqz p5, :cond_1

    .line 45
    invoke-virtual {v0, v2, v2, p5, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->onPage(Ljava/util/UUID;Ljava/util/Collection;Ljava/lang/Throwable;Z)V

    .line 49
    :goto_0
    return v3

    .line 47
    :cond_1
    invoke-virtual {v0, v2, p3, v2, p4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryFutureAdapter;->onPage(Ljava/util/UUID;Ljava/util/Collection;Ljava/lang/Throwable;Z)V

    goto :goto_0
.end method

.method public queryDistributed(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .locals 3
    .param p1, "qry"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager<TK;TV;>;"
    .local p2, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 106
    :cond_0
    new-instance v0, Lorg/apache/ignite/IgniteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Distributed queries are not available for local cache (use \'CacheQuery.execute(grid.forLocal())\' instead) [cacheName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryFieldsDistributed(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;Ljava/util/Collection;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .locals 3
    .param p1, "qry"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager<TK;TV;>;"
    .local p2, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 141
    :cond_0
    new-instance v0, Lorg/apache/ignite/IgniteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Distributed queries are not available for local cache (use \'CacheQuery.execute(grid.forLocal())\' instead) [cacheName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryFieldsLocal(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .locals 5
    .param p1, "qry"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager<TK;TV;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 119
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing query on local node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 122
    :cond_1
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;)V

    .line 125
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->validate()V

    .line 127
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;->execute()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-object v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public queryLocal(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .locals 5
    .param p1, "qry"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager<TK;TV;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 85
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing query on local node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 88
    :cond_1
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;)V

    .line 91
    .local v1, "fut":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture<TK;TV;*>;"
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->validate()V

    .line 93
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->execute()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public start0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->start0()V

    .line 78
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_0
    return-void
.end method

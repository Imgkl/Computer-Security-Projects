.class public Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;
.super Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;
.source "GridCacheDistributedFieldsQueryFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetadataAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetadataAware;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final metaFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;JLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;Ljava/lang/Iterable;)V
    .locals 2
    .param p2, "reqId"    # J
    .param p4, "qry"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;J",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    .local p5, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;JLorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;Ljava/lang/Iterable;)V

    .line 51
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;->metaFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 53
    invoke-virtual {p4}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->includeMetadata()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;->metaFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method fields()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public metadata()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;->metaFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    return-object v0
.end method

.method public onCancelled()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;->metaFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;->metaFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .line 85
    :cond_0
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->onCancelled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;->onDone(Ljava/util/Collection;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onDone(Ljava/util/Collection;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "res":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;->metaFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;->metaFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedQueryFuture;->onDone(Ljava/util/Collection;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onPage(Ljava/util/UUID;Ljava/util/List;Ljava/util/Collection;Ljava/lang/Throwable;Z)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "finished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "metaData":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    .local p3, "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;->metaFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;->metaFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheDistributedFieldsQueryFuture;->onPage(Ljava/util/UUID;Ljava/util/Collection;Ljava/lang/Throwable;Z)V

    .line 70
    return-void
.end method

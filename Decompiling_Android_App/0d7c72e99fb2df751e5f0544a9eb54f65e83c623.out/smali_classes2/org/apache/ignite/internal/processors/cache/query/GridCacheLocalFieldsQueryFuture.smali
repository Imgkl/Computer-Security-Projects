.class public Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;
.super Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;
.source "GridCacheLocalFieldsQueryFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryMetadataAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture",
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
.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;)V
    .locals 1
    .param p2, "qry"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;)V

    .line 47
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;->metaFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 49
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->includeMetadata()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;->metaFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone()Z

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method fields()Z
    .locals 1

    .prologue
    .line 75
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
    .line 70
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;->metaFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    return-object v0
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
            "<*>;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "metaData":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;>;"
    .local p3, "data":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1, p3, p4, p5}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;->onPage(Ljava/util/UUID;Ljava/util/Collection;Ljava/lang/Throwable;Z)V

    .line 64
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;->metaFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalFieldsQueryFuture;->metaFut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    return-void
.end method

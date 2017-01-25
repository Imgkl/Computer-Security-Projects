.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;
.super Ljava/lang/Object;
.source "GridCacheLocalQueryFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridPlainRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalQueryRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/lang/GridPlainRunnable;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;)V
    .locals 0

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture<TK;TV;TR;>.LocalQueryRunnable<TK;TV;TR;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$1;

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture<TK;TV;TR;>.LocalQueryRunnable<TK;TV;TR;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;)V

    return-void
.end method

.method private localQueryInfo()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture<TK;TV;TR;>.LocalQueryRunnable<TK;TV;TR;>;"
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 103
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    move-result-object v13

    .line 105
    .local v13, "qry":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->marshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    .line 107
    .local v0, "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->reducer()Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->reducer()Lorg/apache/ignite/lang/IgniteReducer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteReducer;

    move-object v4, v1

    .line 110
    .local v4, "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->transform()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->transform()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/lang/IgniteClosure;

    move-object v3, v1

    .line 113
    .local v3, "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_1
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    iget-object v7, v7, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    iget-object v8, v8, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->nextIoId()J

    move-result-wide v8

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->includeMetadata()Z

    move-result v10

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->arguments()[Ljava/lang/Object;

    move-result-object v12

    move v11, v2

    invoke-direct/range {v1 .. v12}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;-><init>(ZLorg/apache/ignite/lang/IgniteClosure;Lorg/apache/ignite/lang/IgniteReducer;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;Ljava/util/UUID;JZZ[Ljava/lang/Object;)V

    return-object v1

    .end local v3    # "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    move-object v4, v5

    .line 107
    goto :goto_0

    .restart local v4    # "rdc":Lorg/apache/ignite/lang/IgniteReducer;, "Lorg/apache/ignite/lang/IgniteReducer<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1
    move-object v3, v5

    .line 110
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 85
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture<TK;TV;TR;>.LocalQueryRunnable<TK;TV;TR;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->qry:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryBean;->query()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;->validate()V

    .line 87
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->fields()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;->localQueryInfo()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->runFieldsQuery(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;)V

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->queries()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;->localQueryInfo()Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->runQuery(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture$LocalQueryRunnable;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheLocalQueryFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

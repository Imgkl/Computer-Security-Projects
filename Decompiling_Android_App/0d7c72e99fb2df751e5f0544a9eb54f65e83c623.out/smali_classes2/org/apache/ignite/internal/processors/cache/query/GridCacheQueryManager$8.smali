.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$8;
.super Ljava/util/LinkedHashMap;
.source "GridCacheQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->queryResult(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryInfo;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/Long;",
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult",
        "<TK;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

.field final synthetic val$sndId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;IFZLjava/util/UUID;)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # F
    .param p4, "x2"    # Z

    .prologue
    .line 1448
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$8;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.8;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$8;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$8;->val$sndId:Ljava/util/UUID;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult",
            "<TK;TV;>;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 1450
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$8;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.8;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$8;->size()I

    move-result v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$8;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->maxIterCnt:I
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$1400(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)I

    move-result v3

    if-le v2, v3, :cond_1

    const/4 v1, 0x1

    .line 1452
    .local v1, "rmv":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1454
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$8;->val$sndId:Ljava/util/UUID;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    # invokes: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->recipient(Ljava/util/UUID;J)Ljava/lang/Object;
    invoke-static {v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$100(Ljava/util/UUID;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;->closeIfNotShared(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    :cond_0
    :goto_1
    return v1

    .line 1450
    .end local v1    # "rmv":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1456
    .restart local v1    # "rmv":Z
    :catch_0
    move-exception v0

    .line 1457
    .local v0, "ex":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$8;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$1500(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    const-string v3, "Failed to close query iterator."

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

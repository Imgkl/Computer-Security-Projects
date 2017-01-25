.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1$1;
.super Lorg/apache/ignite/internal/util/typedef/CIX1;
.source "GridCacheQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;->onEvent(Lorg/apache/ignite/events/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CIX1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult",
        "<TK;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;

.field final synthetic val$recipient:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1$1;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1$1;->this$1:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1$1;->val$recipient:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CIX1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1$1;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1.1;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1$1;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1$1;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1.1;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult<TK;TV;>;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1$1;->val$recipient:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$QueryResult;->closeIfNotShared(Ljava/lang/Object;)V

    .line 115
    return-void
.end method

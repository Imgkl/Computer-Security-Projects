.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$2;
.super Ljava/lang/Object;
.source "GridCacheQueryManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->setIterator(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)V
    .locals 0

    .prologue
    .line 709
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$2;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$2;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 709
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$2;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.2;"
    check-cast p1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$2;->apply(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 3
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 711
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$2;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.2;"
    new-instance v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;->item()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

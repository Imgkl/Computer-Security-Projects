.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$3;
.super Ljava/lang/Object;
.source "GridCacheQueryManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


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
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

.field final synthetic val$filter:Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;)V
    .locals 0

    .prologue
    .line 715
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$3;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$3;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$3;->val$filter:Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 715
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$3;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.3;"
    check-cast p1, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$3;->apply(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;)Z
    .locals 2
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetItemKey;

    .prologue
    .line 717
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$3;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.3;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$3;->val$filter:Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/ignite/internal/processors/datastructures/GridSetQueryPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$4;
.super Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.source "GridCacheQueryManager.java"


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
        "Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

.field final synthetic val$it:Lorg/apache/ignite/internal/util/lang/GridIterator;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/util/lang/GridIterator;)V
    .locals 0

    .prologue
    .line 721
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$4;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.4;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$4;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$4;->val$it:Lorg/apache/ignite/internal/util/lang/GridIterator;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClose()V
    .locals 0

    .prologue
    .line 736
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$4;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.4;"
    return-void
.end method

.method protected onHasNext()Z
    .locals 1

    .prologue
    .line 723
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$4;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.4;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$4;->val$it:Lorg/apache/ignite/internal/util/lang/GridIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic onNext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 721
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$4;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.4;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$4;->onNext()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method protected onNext()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 727
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$4;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.4;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$4;->val$it:Lorg/apache/ignite/internal/util/lang/GridIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    return-object v0
.end method

.method protected onRemove()V
    .locals 1

    .prologue
    .line 731
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$4;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.4;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$4;->val$it:Lorg/apache/ignite/internal/util/lang/GridIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridIterator;->remove()V

    .line 732
    return-void
.end method

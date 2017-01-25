.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$6;
.super Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;
.source "GridCacheQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->scanIterator(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryAdapter;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
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

.field final synthetic val$heapIt:Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;

.field final synthetic val$it:Lorg/apache/ignite/internal/util/lang/GridIterator;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/util/lang/GridIterator;Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;)V
    .locals 0

    .prologue
    .line 875
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$6;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.6;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$6;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$6;->val$it:Lorg/apache/ignite/internal/util/lang/GridIterator;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$6;->val$heapIt:Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 889
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$6;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.6;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$6;->val$heapIt:Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridCloseableIteratorAdapter;->close()V

    .line 890
    return-void
.end method

.method protected onHasNext()Z
    .locals 1

    .prologue
    .line 877
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$6;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.6;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$6;->val$it:Lorg/apache/ignite/internal/util/lang/GridIterator;

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
    .line 875
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$6;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.6;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$6;->onNext()Lorg/apache/ignite/lang/IgniteBiTuple;

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
    .line 881
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$6;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.6;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$6;->val$it:Lorg/apache/ignite/internal/util/lang/GridIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    return-object v0
.end method

.method protected onRemove()V
    .locals 1

    .prologue
    .line 885
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$6;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.6;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$6;->val$it:Lorg/apache/ignite/internal/util/lang/GridIterator;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/lang/GridIterator;->remove()V

    .line 886
    return-void
.end method

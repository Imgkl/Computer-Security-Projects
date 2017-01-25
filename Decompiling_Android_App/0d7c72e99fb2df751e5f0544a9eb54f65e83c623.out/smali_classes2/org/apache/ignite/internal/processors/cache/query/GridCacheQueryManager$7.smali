.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;
.super Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;
.source "GridCacheQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->scanIterator(Ljava/util/Iterator;Lorg/apache/ignite/lang/IgniteBiPredicate;Z)Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private next:Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

.field final synthetic val$filter:Lorg/apache/ignite/lang/IgniteBiPredicate;

.field final synthetic val$it:Ljava/util/Iterator;

.field final synthetic val$keepPortable:Z


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Ljava/util/Iterator;Lorg/apache/ignite/lang/IgniteBiPredicate;Z)V
    .locals 0

    .prologue
    .line 940
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.7;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->val$it:Ljava/util/Iterator;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->val$filter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->val$keepPortable:Z

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;-><init>()V

    .line 944
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->advance()V

    .line 945
    return-void
.end method

.method private advance()V
    .locals 6

    .prologue
    .line 967
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.7;"
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->next:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 969
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->val$it:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 970
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->val$it:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v0, v4, v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Ljava/util/Map$Entry;)V

    .line 972
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.LazySwapEntry;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->val$filter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    if-eqz v3, :cond_1

    .line 973
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$1200(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;->key()Ljava/lang/Object;

    move-result-object v4

    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->val$keepPortable:Z

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    .line 974
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$1300(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;->value()Ljava/lang/Object;

    move-result-object v4

    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->val$keepPortable:Z

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapPortableIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    .line 976
    .local v2, "val":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->val$filter:Lorg/apache/ignite/lang/IgniteBiPredicate;

    invoke-interface {v3, v1, v2}, Lorg/apache/ignite/lang/IgniteBiPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 980
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "val":Ljava/lang/Object;, "TV;"
    :cond_1
    new-instance v3, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;->key()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;->value()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->next:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 984
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$LazySwapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.LazySwapEntry;"
    :cond_2
    return-void
.end method


# virtual methods
.method public hasNextX()Z
    .locals 1

    .prologue
    .line 948
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.7;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->next:Lorg/apache/ignite/lang/IgniteBiTuple;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic nextX()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 940
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.7;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->nextX()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method public nextX()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 952
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.7;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->next:Lorg/apache/ignite/lang/IgniteBiTuple;

    if-nez v1, :cond_0

    .line 953
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 955
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->next:Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 957
    .local v0, "next0":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;->advance()V

    .line 959
    return-object v0
.end method

.method public removeX()V
    .locals 1

    .prologue
    .line 963
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$7;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.7;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

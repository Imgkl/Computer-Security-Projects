.class Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;
.source "GridCacheValueCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/GridCacheIterator",
        "<TK;TV;TV;>;"
    }
.end annotation


# instance fields
.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 0

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection.1;"
    .local p2, "x0":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p3, "x1":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    .local p4, "x2":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljavax/cache/Cache$Entry<TK;TV;>;TV;>;"
    .local p5, "x3":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)V

    .line 75
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;->advance()V

    .line 76
    return-void
.end method

.method private advance()V
    .locals 2

    .prologue
    .line 81
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection.1;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;->next:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;->hasNext()Z

    move-result v0

    .local v0, "has":Z
    if-eqz v0, :cond_2

    .line 87
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;->next()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;->next:Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;->next:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 93
    :cond_2
    if-nez v0, :cond_0

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;->next:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection.1;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;->advance()V

    .line 101
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;->next:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection.1;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;->advance()V

    .line 107
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;->next:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;->next:Ljava/lang/Object;

    .line 112
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;->next:Ljava/lang/Object;

    .line 114
    return-object v0
.end method

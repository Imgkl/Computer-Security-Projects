.class public Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;
.super Ljava/lang/Object;
.source "GridCacheIterator.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/GridSerializableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/GridSerializableIterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private cur:Ljavax/cache/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final trans:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;TT;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheIterator<TK;TV;TT;>;"
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p2, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    .local p3, "trans":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<Ljavax/cache/Cache$Entry<TK;TV;>;TT;>;"
    .local p4, "filter":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 60
    const/4 v0, 0x0

    invoke-static {p2, v0, p4}, Lorg/apache/ignite/internal/util/typedef/F;->iterator0(Ljava/lang/Iterable;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;->it:Ljava/util/Iterator;

    .line 62
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;->trans:Lorg/apache/ignite/lang/IgniteClosure;

    .line 63
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheIterator<TK;TV;TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;->cur:Ljavax/cache/Cache$Entry;

    .line 70
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheIterator<TK;TV;TT;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;->trans:Lorg/apache/ignite/lang/IgniteClosure;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/Cache$Entry;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;->cur:Ljavax/cache/Cache$Entry;

    invoke-interface {v1, v0}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheIterator<TK;TV;TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 85
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteEx;->cache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;->cur:Ljavax/cache/Cache$Entry;

    invoke-interface {v1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;->cur:Ljavax/cache/Cache$Entry;

    invoke-interface {v2}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/IgniteCache;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

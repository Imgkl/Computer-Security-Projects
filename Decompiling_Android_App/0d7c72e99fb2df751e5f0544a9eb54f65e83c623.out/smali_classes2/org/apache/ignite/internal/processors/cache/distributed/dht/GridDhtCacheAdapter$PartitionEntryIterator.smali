.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;
.super Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;
.source "GridDhtCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PartitionEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private entry:Ljavax/cache/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private last:Ljavax/cache/Cache$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final partIt:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Ljava/util/Iterator;)V
    .locals 0
    .param p1    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1016
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>.PartitionEntryIterator;"
    .local p2, "partIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;-><init>()V

    .line 1017
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->partIt:Ljava/util/Iterator;

    .line 1019
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->advance()V

    .line 1020
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Ljava/util/Iterator;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .param p2, "x1"    # Ljava/util/Iterator;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$1;

    .prologue
    .line 1000
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>.PartitionEntryIterator;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Ljava/util/Iterator;)V

    return-void
.end method

.method private advance()V
    .locals 2

    .prologue
    .line 1051
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>.PartitionEntryIterator;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->partIt:Ljava/util/Iterator;

    if-eqz v1, :cond_1

    .line 1052
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->partIt:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1053
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->partIt:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .line 1055
    .local v0, "next":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->isInternal()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->visitable([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1058
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->wrapLazyValue()Ljavax/cache/Cache$Entry;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->entry:Ljavax/cache/Cache$Entry;

    .line 1065
    .end local v0    # "next":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :goto_0
    return-void

    .line 1064
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->entry:Ljavax/cache/Cache$Entry;

    goto :goto_0
.end method


# virtual methods
.method public hasNextX()Z
    .locals 1

    .prologue
    .line 1024
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>.PartitionEntryIterator;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->entry:Ljavax/cache/Cache$Entry;

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
    .line 1000
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>.PartitionEntryIterator;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->nextX()Ljavax/cache/Cache$Entry;

    move-result-object v0

    return-object v0
.end method

.method public nextX()Ljavax/cache/Cache$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1029
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>.PartitionEntryIterator;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1030
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1032
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->entry:Ljavax/cache/Cache$Entry;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->last:Ljavax/cache/Cache$Entry;

    .line 1034
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->advance()V

    .line 1036
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->last:Ljavax/cache/Cache$Entry;

    return-object v0
.end method

.method public removeX()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1041
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>.PartitionEntryIterator;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->last:Ljavax/cache/Cache$Entry;

    if-nez v0, :cond_0

    .line 1042
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1044
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$2600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$2500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteEx;->cache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->last:Ljavax/cache/Cache$Entry;

    invoke-interface {v1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;->last:Ljavax/cache/Cache$Entry;

    invoke-interface {v2}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/IgniteCache;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1045
    return-void
.end method

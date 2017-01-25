.class Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;
.super Ljava/lang/Object;
.source "GridCacheMapEntry.java"

# interfaces
.implements Ljavax/cache/Cache$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyValueEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V
    .locals 0
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .prologue
    .line 4341
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4342
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 4343
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$1;

    .prologue
    .line 4334
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 4347
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 4353
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->peekVisibleValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4379
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IteratorEntry [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;->key:Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 4359
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry<TK;TV;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lorg/apache/ignite/IgniteCache;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4360
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteEx;->cache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;

    move-result-object p0

    .line 4372
    .end local p0    # "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry<TK;TV;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 4362
    .restart local p0    # "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry<TK;TV;>;"
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4365
    const-class v0, Lorg/apache/ignite/cache/eviction/EvictableEntry;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4366
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->wrapEviction()Lorg/apache/ignite/cache/eviction/EvictableEntry;

    move-result-object p0

    goto :goto_0

    .line 4368
    :cond_2
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheVersionedEntryImpl;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4369
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->wrapVersioned()Lorg/apache/ignite/internal/processors/cache/CacheVersionedEntryImpl;

    move-result-object p0

    goto :goto_0

    .line 4371
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4372
    iget-object p0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry$LazyValueEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    goto :goto_0

    .line 4374
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unwrapping to class is not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

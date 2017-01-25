.class Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "GridCacheConcurrentMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private set:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2327
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2337
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 2339
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 1
    .param p1, "map"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .prologue
    .line 2346
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)V

    .line 2347
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .param p2, "x1"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;

    .prologue
    .line 2327
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)V
    .locals 2
    .param p1, "map"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p3, "internal"    # Z

    .prologue
    .line 2355
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 2356
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2358
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    if-eqz p3, :cond_1

    .end local p2    # "filter":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :goto_0
    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;->set:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    .line 2359
    return-void

    .line 2358
    .restart local p2    # "filter":[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    :cond_1
    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->nonInternal([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    invoke-static {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->access$1900([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object p2

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;ZLorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .param p2, "x1"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;

    .prologue
    .line 2327
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 2396
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;->set:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->clear()V

    .line 2397
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet<TK;TV;>;"
    const/4 v1, 0x0

    .line 2379
    instance-of v2, p1, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;

    if-eqz v2, :cond_0

    .line 2380
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;->set:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->access$2000(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-result-object v2

    check-cast p1, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->getEntry(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    move-result-object v0

    .line 2382
    .local v0, "unwrapped":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;->set:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 2385
    .end local v0    # "unwrapped":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2373
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;->set:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 2363
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;->set:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2407
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;->set:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    .line 2408
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2391
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;->set:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->removeKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2368
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;->set:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->size()I

    move-result v0

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2401
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntrySet;->set:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 2402
    return-void
.end method

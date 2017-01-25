.class Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;
.super Ljava/util/AbstractCollection;
.source "GridCacheConcurrentMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TV;>;",
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
    .line 2267
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2277
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 2279
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 3
    .param p1, "map"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .prologue
    .line 2285
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 2286
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2288
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->nonInternal([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    invoke-static {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->access$1900([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;->set:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    .line 2289
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .param p2, "x1"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;

    .prologue
    .line 2267
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 2309
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;->set:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->clear()V

    .line 2310
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2304
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;->set:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 2293
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;->set:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->valueIterator()Ljava/util/Iterator;

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
    .line 2320
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;->set:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    .line 2321
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2298
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;->set:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

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
    .line 2314
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Values;->set:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 2315
    return-void
.end method

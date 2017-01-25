.class Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;
.super Ljava/lang/Object;
.source "GridCacheLoaderWriterStore.java"

# interfaces
.implements Lorg/apache/ignite/cache/store/CacheStore;
.implements Lorg/apache/ignite/lifecycle/LifecycleAware;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/cache/store/CacheStore",
        "<TK;TV;>;",
        "Lorg/apache/ignite/lifecycle/LifecycleAware;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final ldr:Ljavax/cache/integration/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/integration/CacheLoader",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final writer:Ljavax/cache/integration/CacheWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/integration/CacheWriter",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljavax/cache/integration/CacheLoader;Ljavax/cache/integration/CacheWriter;)V
    .locals 1
    .param p1    # Ljavax/cache/integration/CacheLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljavax/cache/integration/CacheWriter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/integration/CacheLoader",
            "<TK;TV;>;",
            "Ljavax/cache/integration/CacheWriter",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore<TK;TV;>;"
    .local p1, "ldr":Ljavax/cache/integration/CacheLoader;, "Ljavax/cache/integration/CacheLoader<TK;TV;>;"
    .local p2, "writer":Ljavax/cache/integration/CacheWriter;, "Ljavax/cache/integration/CacheWriter<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->ldr:Ljavax/cache/integration/CacheLoader;

    .line 51
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->writer:Ljavax/cache/integration/CacheWriter;

    .line 52
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 125
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->writer:Ljavax/cache/integration/CacheWriter;

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->writer:Ljavax/cache/integration/CacheWriter;

    invoke-interface {v0, p1}, Ljavax/cache/integration/CacheWriter;->delete(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public deleteAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->writer:Ljavax/cache/integration/CacheWriter;

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->writer:Ljavax/cache/integration/CacheWriter;

    invoke-interface {v0, p1}, Ljavax/cache/integration/CacheWriter;->deleteAll(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->ldr:Ljavax/cache/integration/CacheLoader;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->ldr:Ljavax/cache/integration/CacheLoader;

    invoke-interface {v0, p1}, Ljavax/cache/integration/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->ldr:Ljavax/cache/integration/CacheLoader;

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->ldr:Ljavax/cache/integration/CacheLoader;

    invoke-interface {v0, p1}, Ljavax/cache/integration/CacheLoader;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs loadCache(Lorg/apache/ignite/lang/IgniteBiInClosure;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore<TK;TV;>;"
    .local p1, "clo":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<TK;TV;>;"
    return-void
.end method

.method loader()Ljavax/cache/integration/CacheLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/integration/CacheLoader",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->ldr:Ljavax/cache/integration/CacheLoader;

    return-object v0
.end method

.method public sessionEnd(Z)V
    .locals 0
    .param p1, "commit"    # Z

    .prologue
    .line 142
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore<TK;TV;>;"
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->ldr:Ljavax/cache/integration/CacheLoader;

    instance-of v0, v0, Lorg/apache/ignite/lifecycle/LifecycleAware;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->ldr:Ljavax/cache/integration/CacheLoader;

    check-cast v0, Lorg/apache/ignite/lifecycle/LifecycleAware;

    invoke-interface {v0}, Lorg/apache/ignite/lifecycle/LifecycleAware;->start()V

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->writer:Ljavax/cache/integration/CacheWriter;

    instance-of v0, v0, Lorg/apache/ignite/lifecycle/LifecycleAware;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->writer:Ljavax/cache/integration/CacheWriter;

    check-cast v0, Lorg/apache/ignite/lifecycle/LifecycleAware;

    invoke-interface {v0}, Lorg/apache/ignite/lifecycle/LifecycleAware;->start()V

    .line 75
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->ldr:Ljavax/cache/integration/CacheLoader;

    instance-of v0, v0, Lorg/apache/ignite/lifecycle/LifecycleAware;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->ldr:Ljavax/cache/integration/CacheLoader;

    check-cast v0, Lorg/apache/ignite/lifecycle/LifecycleAware;

    invoke-interface {v0}, Lorg/apache/ignite/lifecycle/LifecycleAware;->stop()V

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->writer:Ljavax/cache/integration/CacheWriter;

    instance-of v0, v0, Lorg/apache/ignite/lifecycle/LifecycleAware;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->writer:Ljavax/cache/integration/CacheWriter;

    check-cast v0, Lorg/apache/ignite/lifecycle/LifecycleAware;

    invoke-interface {v0}, Lorg/apache/ignite/lifecycle/LifecycleAware;->stop()V

    .line 84
    :cond_1
    return-void
.end method

.method public write(Ljavax/cache/Cache$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore<TK;TV;>;"
    .local p1, "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<+TK;+TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->writer:Ljavax/cache/integration/CacheWriter;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->writer:Ljavax/cache/integration/CacheWriter;

    invoke-interface {v0, p1}, Ljavax/cache/integration/CacheWriter;->write(Ljavax/cache/Cache$Entry;)V

    goto :goto_0
.end method

.method public writeAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore<TK;TV;>;"
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/cache/Cache$Entry<+TK;+TV;>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->writer:Ljavax/cache/integration/CacheWriter;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->writer:Ljavax/cache/integration/CacheWriter;

    invoke-interface {v0, p1}, Ljavax/cache/integration/CacheWriter;->writeAll(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method writer()Ljavax/cache/integration/CacheWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/integration/CacheWriter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;, "Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheLoaderWriterStore;->writer:Ljavax/cache/integration/CacheWriter;

    return-object v0
.end method

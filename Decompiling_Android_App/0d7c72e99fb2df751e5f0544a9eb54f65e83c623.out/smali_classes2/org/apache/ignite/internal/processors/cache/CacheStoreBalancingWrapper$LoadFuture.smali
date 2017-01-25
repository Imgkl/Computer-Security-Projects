.class Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "CacheStoreBalancingWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private volatile keys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 222
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;)V
    .locals 0

    .prologue
    .line 232
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 234
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onComplete(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/typedef/F;->asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->onComplete(Ljava/util/Collection;Ljava/util/Map;)V

    .line 256
    return-void
.end method

.method public onComplete(Ljava/util/Collection;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    .local p2, "res":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->keys:Ljava/util/Collection;

    .line 265
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->onDone(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 222
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->onDone(Ljava/util/Map;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onDone(Ljava/util/Map;Ljava/lang/Throwable;)Z
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    .local p1, "res":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->keys:Ljava/util/Collection;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 241
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->keys:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 242
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;

    # getter for: Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->pendingLoads:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;->access$000(Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {v2, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    const/4 v2, 0x1

    .line 247
    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "err"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->keys:Ljava/util/Collection;

    .line 275
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 276
    return-void
.end method

.method public onError(Ljava/util/Collection;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "err"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TK;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;, "Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper<TK;TV;>.LoadFuture;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->keys:Ljava/util/Collection;

    .line 285
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/cache/CacheStoreBalancingWrapper$LoadFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 286
    return-void
.end method

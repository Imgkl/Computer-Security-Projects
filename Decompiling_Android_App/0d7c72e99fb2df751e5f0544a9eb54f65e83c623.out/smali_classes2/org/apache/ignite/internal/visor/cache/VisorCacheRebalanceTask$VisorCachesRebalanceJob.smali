.class Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask$VisorCachesRebalanceJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorCacheRebalanceTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorCachesRebalanceJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/util/Set;Z)V
    .locals 0
    .param p2, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "arg":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;ZLorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Set;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask$1;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask$VisorCachesRebalanceJob;-><init>(Ljava/util/Set;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 45
    check-cast p1, Ljava/util/Set;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask$VisorCachesRebalanceJob;->run(Ljava/util/Set;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected run(Ljava/util/Set;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "cacheNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v3, "futs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask$VisorCachesRebalanceJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v5, v6}, Lorg/apache/ignite/internal/IgniteEx;->cachesx([Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCache;

    .line 63
    .local v0, "c":Lorg/apache/ignite/internal/processors/cache/GridCache;
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCache;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCache;->forceRepartition()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCache;
    .end local v3    # "futs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v5

    throw v5

    .line 67
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v3    # "futs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/IgniteInternalFuture<*>;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 68
    .local v2, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;
    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 70
    .end local v2    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;
    :cond_2
    const/4 v5, 0x0

    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceTask$VisorCachesRebalanceJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

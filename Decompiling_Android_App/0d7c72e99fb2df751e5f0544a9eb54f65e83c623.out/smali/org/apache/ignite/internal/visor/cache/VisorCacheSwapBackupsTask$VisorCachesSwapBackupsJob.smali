.class Lorg/apache/ignite/internal/visor/cache/VisorCacheSwapBackupsTask$VisorCachesSwapBackupsJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorCacheSwapBackupsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/cache/VisorCacheSwapBackupsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorCachesSwapBackupsJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected g:Lorg/apache/ignite/internal/IgniteEx;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field


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
    .line 66
    .local p1, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;ZLorg/apache/ignite/internal/visor/cache/VisorCacheSwapBackupsTask$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Set;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/cache/VisorCacheSwapBackupsTask$1;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/cache/VisorCacheSwapBackupsTask$VisorCachesSwapBackupsJob;-><init>(Ljava/util/Set;Z)V

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
    .line 50
    check-cast p1, Ljava/util/Set;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheSwapBackupsTask$VisorCachesSwapBackupsJob;->run(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected run(Ljava/util/Set;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v10, "total":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    iget-object v11, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheSwapBackupsTask$VisorCachesSwapBackupsJob;->g:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v11}, Lorg/apache/ignite/internal/IgniteEx;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v9

    .line 74
    .local v9, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v11, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheSwapBackupsTask$VisorCachesSwapBackupsJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    const/4 v12, 0x0

    new-array v12, v12, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v11, v12}, Lorg/apache/ignite/internal/IgniteEx;->cachesx([Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCache;

    .line 75
    .local v3, "c":Lorg/apache/ignite/internal/processors/cache/GridCache;
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCache;->name()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "cacheName":Ljava/lang/String;
    iget-object v11, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheSwapBackupsTask$VisorCachesSwapBackupsJob;->g:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCache;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/internal/IgniteEx;->affinity(Ljava/lang/String;)Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v0

    .line 78
    .local v0, "aff":Lorg/apache/ignite/cache/affinity/Affinity;, "Lorg/apache/ignite/cache/affinity/Affinity<Ljava/lang/Object;>;"
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 79
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCache;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 81
    .local v5, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljavax/cache/Cache$Entry;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v2

    .local v2, "before":I
    move v1, v2

    .line 83
    .local v1, "after":I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/cache/Cache$Entry;

    .line 84
    .local v6, "entry":Ljavax/cache/Cache$Entry;
    invoke-interface {v6}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v9, v11}, Lorg/apache/ignite/cache/affinity/Affinity;->isBackup(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v3, v11}, Lorg/apache/ignite/internal/processors/cache/GridCache;->evict(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 85
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 88
    .end local v6    # "entry":Ljavax/cache/Cache$Entry;
    :cond_2
    new-instance v11, Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 92
    .end local v0    # "aff":Lorg/apache/ignite/cache/affinity/Affinity;, "Lorg/apache/ignite/cache/affinity/Affinity<Ljava/lang/Object;>;"
    .end local v1    # "after":I
    .end local v2    # "before":I
    .end local v3    # "c":Lorg/apache/ignite/internal/processors/cache/GridCache;
    .end local v4    # "cacheName":Ljava/lang/String;
    .end local v5    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljavax/cache/Cache$Entry;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_3
    return-object v10
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheSwapBackupsTask$VisorCachesSwapBackupsJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

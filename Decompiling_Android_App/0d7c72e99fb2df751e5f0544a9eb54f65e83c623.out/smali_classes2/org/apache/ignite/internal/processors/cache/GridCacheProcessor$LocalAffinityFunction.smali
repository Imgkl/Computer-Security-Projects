.class Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$LocalAffinityFunction;
.super Ljava/lang/Object;
.source "GridCacheProcessor.java"

# interfaces
.implements Lorg/apache/ignite/cache/affinity/AffinityFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalAffinityFunction"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$1;

    .prologue
    .line 2598
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$LocalAffinityFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public assignPartitions(Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;)Ljava/util/List;
    .locals 7
    .param p1, "affCtx"    # Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2604
    const/4 v1, 0x0

    .line 2606
    .local v1, "locNode":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {p1}, Lorg/apache/ignite/cache/affinity/AffinityFunctionContext;->currentTopologySnapshot()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    .line 2607
    .local v2, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2608
    move-object v1, v2

    .line 2614
    .end local v2    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    if-nez v1, :cond_2

    .line 2615
    new-instance v5, Lorg/apache/ignite/IgniteException;

    const-string v6, "Local node is not included into affinity nodes for \'LOCAL\' cache"

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2617
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$LocalAffinityFunction;->partitions()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2619
    .local v4, "res":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    const/4 v3, 0x0

    .local v3, "part":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$LocalAffinityFunction;->partitions()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 2620
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2619
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2622
    :cond_3
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public partition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2637
    const/4 v0, 0x0

    return v0
.end method

.method public partitions()I
    .locals 1

    .prologue
    .line 2632
    const/4 v0, 0x1

    return v0
.end method

.method public removeNode(Ljava/util/UUID;)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 2643
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 2628
    return-void
.end method

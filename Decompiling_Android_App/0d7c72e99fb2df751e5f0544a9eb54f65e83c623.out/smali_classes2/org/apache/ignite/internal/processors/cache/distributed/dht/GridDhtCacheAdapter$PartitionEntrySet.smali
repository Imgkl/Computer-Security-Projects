.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;
.super Ljava/util/AbstractSet;
.source "GridDhtCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PartitionEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private partId:I

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;I)V
    .locals 0
    .param p2, "partId"    # I

    .prologue
    .line 824
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>.PartitionEntrySet;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 825
    iput p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;->partId:I

    .line 826
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;ILorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$1;

    .prologue
    .line 817
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>.PartitionEntrySet;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;I)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>.PartitionEntrySet;"
    const/4 v1, 0x0

    .line 872
    instance-of v2, p1, Ljavax/cache/Cache$Entry;

    if-nez v2, :cond_1

    .line 877
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 875
    check-cast v0, Ljavax/cache/Cache$Entry;

    .line 877
    .local v0, "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;->partId:I

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$2200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    invoke-interface {v0}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-interface {v0}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->peek(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 7
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
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>.PartitionEntrySet;"
    const/4 v2, 0x0

    .line 830
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$2000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v3

    iget v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;->partId:I

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$1900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersionEx()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v0

    .line 833
    .local v0, "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    if-nez v0, :cond_0

    move-object v1, v2

    .line 835
    .local v1, "partIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    :goto_0
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-direct {v3, v4, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Ljava/util/Iterator;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$1;)V

    return-object v3

    .line 833
    .end local v1    # "partIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->entries()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>.PartitionEntrySet;"
    const/4 v4, 0x0

    .line 840
    instance-of v5, p1, Ljavax/cache/Cache$Entry;

    if-nez v5, :cond_1

    .line 853
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v1, p1

    .line 843
    check-cast v1, Ljavax/cache/Cache$Entry;

    .line 845
    .local v1, "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 846
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 848
    .local v3, "val":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_0

    .line 853
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v4, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v4, Lorg/apache/ignite/IgniteException;

    invoke-direct {v4, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 862
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>.PartitionEntrySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    .line 864
    .local v2, "rmv":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 865
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    .line 867
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    return v2
.end method

.method public size()I
    .locals 8

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>.PartitionEntrySet;"
    const/4 v1, 0x0

    .line 883
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$2400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;->partId:I

    new-instance v4, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->access$2300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->topologyVersion()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(J)V

    invoke-interface {v2, v3, v4, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v0

    .line 886
    .local v0, "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->publicSize()I

    move-result v1

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 891
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>.PartitionEntrySet;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;

    const-string v1, "super"

    invoke-super {p0}, Ljava/util/AbstractSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

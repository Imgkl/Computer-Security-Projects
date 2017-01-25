.class public Lorg/apache/ignite/internal/visor/cache/VisorCache;
.super Ljava/lang/Object;
.source "VisorCache.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DFLT_CACHE_SIZE_SAMPLING:I = 0xa

.field private static final serialVersionUID:J


# instance fields
.field private backupPartitions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/lang/IgnitePair",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private dhtSize:I

.field private memorySize:J

.field private metrics:Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

.field private mode:Lorg/apache/ignite/cache/CacheMode;

.field private name:Ljava/lang/String;

.field private nearSize:I

.field private offHeapAllocatedSize:J

.field private offHeapEntriesCnt:J

.field private partitions:I

.field private partitionsMap:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

.field private primaryPartitions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/lang/IgnitePair",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private primarySize:I

.field private size:I

.field private swapKeys:J

.field private swapSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/Ignite;Ljava/lang/String;I)Lorg/apache/ignite/internal/visor/cache/VisorCache;
    .locals 42
    .param p0, "ignite"    # Lorg/apache/ignite/Ignite;
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "sample"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 103
    sget-boolean v37, Lorg/apache/ignite/internal/visor/cache/VisorCache;->$assertionsDisabled:Z

    if-nez v37, :cond_0

    if-nez p0, :cond_0

    new-instance v37, Ljava/lang/AssertionError;

    invoke-direct/range {v37 .. v37}, Ljava/lang/AssertionError;-><init>()V

    throw v37

    :cond_0
    move-object/from16 v37, p0

    .line 105
    check-cast v37, Lorg/apache/ignite/internal/IgniteKernal;

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v7

    .line 108
    .local v7, "ca":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->started()Z

    move-result v37

    if-nez v37, :cond_2

    .line 109
    :cond_1
    const/4 v8, 0x0

    .line 232
    :goto_0
    return-object v8

    .line 115
    :cond_2
    :try_start_0
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->swapSize()J

    move-result-wide v34

    .line 116
    .local v34, "swapSize":J
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->swapKeys()J
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v32

    .line 123
    .local v32, "swapKeys":J
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v27

    .line 124
    .local v27, "pps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/Integer;>;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 125
    .local v6, "bps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/Integer;>;>;"
    const/16 v25, 0x0

    .line 127
    .local v25, "partsMap":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v9

    .line 129
    .local v9, "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    invoke-virtual {v9}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v18

    .line 132
    .local v18, "mode":Lorg/apache/ignite/cache/CacheMode;
    sget-object v37, Lorg/apache/ignite/cache/CacheMode;->PARTITIONED:Lorg/apache/ignite/cache/CacheMode;

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_3

    sget-object v37, Lorg/apache/ignite/cache/CacheMode;->REPLICATED:Lorg/apache/ignite/cache/CacheMode;

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_6

    :cond_3
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinityNode()Z

    move-result v37

    if-eqz v37, :cond_6

    const/16 v23, 0x1

    .line 135
    .local v23, "partitioned":Z
    :goto_2
    if-eqz v23, :cond_d

    .line 136
    const/4 v11, 0x0

    .line 138
    .local v11, "dca":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    instance-of v0, v7, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move/from16 v37, v0

    if-eqz v37, :cond_7

    move-object/from16 v37, v7

    .line 139
    check-cast v37, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v11

    .line 143
    :cond_4
    :goto_3
    if-eqz v11, :cond_9

    .line 144
    invoke-virtual {v11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v36

    .line 146
    .local v36, "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    invoke-virtual {v9}, Lorg/apache/ignite/configuration/CacheConfiguration;->getCacheMode()Lorg/apache/ignite/cache/CacheMode;

    move-result-object v37

    sget-object v38, Lorg/apache/ignite/cache/CacheMode;->LOCAL:Lorg/apache/ignite/cache/CacheMode;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_5

    invoke-virtual {v9}, Lorg/apache/ignite/configuration/CacheConfiguration;->getBackups()I

    move-result v37

    if-lez v37, :cond_5

    .line 147
    invoke-interface/range {v36 .. v36}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartitionMap()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    move-result-object v25

    .line 149
    :cond_5
    invoke-interface/range {v36 .. v36}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartitions()Ljava/util/List;

    move-result-object v24

    .line 151
    .local v24, "parts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;>;"
    new-instance v27, Ljava/util/ArrayList;

    .end local v27    # "pps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/Integer;>;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v37

    move-object/from16 v0, v27

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .restart local v27    # "pps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/Integer;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "bps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/Integer;>;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v37

    move/from16 v0, v37

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .restart local v6    # "bps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/Integer;>;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    .line 155
    .local v22, "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->id()I

    move-result v21

    .line 157
    .local v21, "p":I
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->size()I

    move-result v31

    .line 159
    .local v31, "sz":I
    sget-object v37, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->primary(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v37

    if-eqz v37, :cond_8

    .line 160
    new-instance v37, Lorg/apache/ignite/internal/util/lang/IgnitePair;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-direct/range {v37 .. v39}, Lorg/apache/ignite/internal/util/lang/IgnitePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 118
    .end local v6    # "bps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/Integer;>;>;"
    .end local v9    # "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .end local v11    # "dca":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v18    # "mode":Lorg/apache/ignite/cache/CacheMode;
    .end local v21    # "p":I
    .end local v22    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .end local v23    # "partitioned":Z
    .end local v24    # "parts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;>;"
    .end local v25    # "partsMap":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    .end local v27    # "pps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/Integer;>;>;"
    .end local v31    # "sz":I
    .end local v32    # "swapKeys":J
    .end local v34    # "swapSize":J
    .end local v36    # "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    :catch_0
    move-exception v13

    .line 119
    .local v13, "ignored":Lorg/apache/ignite/IgniteCheckedException;
    const-wide/16 v34, -0x1

    .line 120
    .restart local v34    # "swapSize":J
    const-wide/16 v32, -0x1

    .restart local v32    # "swapKeys":J
    goto/16 :goto_1

    .line 132
    .end local v13    # "ignored":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v6    # "bps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/Integer;>;>;"
    .restart local v9    # "cfg":Lorg/apache/ignite/configuration/CacheConfiguration;
    .restart local v18    # "mode":Lorg/apache/ignite/cache/CacheMode;
    .restart local v25    # "partsMap":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    .restart local v27    # "pps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/Integer;>;>;"
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 140
    .restart local v11    # "dca":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .restart local v23    # "partitioned":Z
    :cond_7
    instance-of v0, v7, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move/from16 v37, v0

    if-eqz v37, :cond_4

    move-object v11, v7

    .line 141
    check-cast v11, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    goto/16 :goto_3

    .line 162
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v21    # "p":I
    .restart local v22    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .restart local v24    # "parts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;>;"
    .restart local v31    # "sz":I
    .restart local v36    # "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    :cond_8
    new-instance v37, Lorg/apache/ignite/internal/util/lang/IgnitePair;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-direct/range {v37 .. v39}, Lorg/apache/ignite/internal/util/lang/IgnitePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v37

    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 167
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v21    # "p":I
    .end local v22    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .end local v24    # "parts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;>;"
    .end local v31    # "sz":I
    .end local v36    # "top":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    :cond_9
    invoke-interface/range {p0 .. p0}, Lorg/apache/ignite/Ignite;->cluster()Lorg/apache/ignite/IgniteCluster;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/IgniteCluster;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v20

    .line 169
    .local v20, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->affinity()Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/ignite/cache/affinity/Affinity;->primaryPartitions(Lorg/apache/ignite/cluster/ClusterNode;)[I

    move-result-object v26

    .line 171
    .local v26, "pp":[I
    new-instance v27, Ljava/util/ArrayList;

    .end local v27    # "pps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/Integer;>;>;"
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v27

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .restart local v27    # "pps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/Integer;>;>;"
    move-object/from16 v4, v26

    .local v4, "arr$":[I
    array-length v15, v4

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_5
    if-ge v12, v15, :cond_b

    aget v21, v4, v12

    .line 174
    .restart local v21    # "p":I
    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entrySet(I)Ljava/util/Set;

    move-result-object v28

    .line 176
    .local v28, "set":Ljava/util/Set;
    new-instance v38, Lorg/apache/ignite/internal/util/lang/IgnitePair;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    if-eqz v28, :cond_a

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->size()I

    move-result v37

    :goto_6
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/lang/IgnitePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 176
    :cond_a
    const/16 v37, 0x0

    goto :goto_6

    .line 179
    .end local v21    # "p":I
    .end local v28    # "set":Ljava/util/Set;
    :cond_b
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->affinity()Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/ignite/cache/affinity/Affinity;->backupPartitions(Lorg/apache/ignite/cluster/ClusterNode;)[I

    move-result-object v5

    .line 181
    .local v5, "bp":[I
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "bps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/Integer;>;>;"
    array-length v0, v5

    move/from16 v37, v0

    move/from16 v0, v37

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .restart local v6    # "bps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/lang/IgnitePair<Ljava/lang/Integer;>;>;"
    move-object v4, v5

    array-length v15, v4

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v15, :cond_d

    aget v21, v4, v12

    .line 184
    .restart local v21    # "p":I
    move/from16 v0, v21

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entrySet(I)Ljava/util/Set;

    move-result-object v28

    .line 186
    .restart local v28    # "set":Ljava/util/Set;
    new-instance v38, Lorg/apache/ignite/internal/util/lang/IgnitePair;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    if-eqz v28, :cond_c

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->size()I

    move-result v37

    :goto_8
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/lang/IgnitePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v38

    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 186
    :cond_c
    const/16 v37, 0x0

    goto :goto_8

    .line 191
    .end local v4    # "arr$":[I
    .end local v5    # "bp":[I
    .end local v11    # "dca":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    .end local v20    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v21    # "p":I
    .end local v26    # "pp":[I
    .end local v28    # "set":Ljava/util/Set;
    :cond_d
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->size()I

    move-result v30

    .line 192
    .local v30, "size":I
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->nearSize()I

    move-result v19

    .line 194
    .local v19, "near":I
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->entries0()Ljava/util/Set;

    move-result-object v29

    .line 196
    .local v29, "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    const-wide/16 v16, 0x0

    .line 198
    .local v16, "memSz":J
    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 200
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    if-lez p2, :cond_e

    move/from16 v31, p2

    .line 202
    .restart local v31    # "sz":I
    :goto_9
    const/4 v10, 0x0

    .line 204
    .local v10, "cnt":I
    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_f

    move/from16 v0, v31

    if-ge v10, v0, :cond_f

    .line 205
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->memorySize()I

    move-result v37

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v38, v0

    add-long v16, v16, v38

    .line 207
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 200
    .end local v10    # "cnt":I
    .end local v31    # "sz":I
    :cond_e
    const/16 v31, 0xa

    goto :goto_9

    .line 210
    .restart local v10    # "cnt":I
    .restart local v31    # "sz":I
    :cond_f
    if-lez v10, :cond_10

    .line 211
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v38, v0

    int-to-double v0, v10

    move-wide/from16 v40, v0

    div-double v38, v38, v40

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v40, v0

    mul-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-long v0, v0

    move-wide/from16 v16, v0

    .line 213
    :cond_10
    new-instance v8, Lorg/apache/ignite/internal/visor/cache/VisorCache;

    invoke-direct {v8}, Lorg/apache/ignite/internal/visor/cache/VisorCache;-><init>()V

    .line 215
    .local v8, "cache":Lorg/apache/ignite/internal/visor/cache/VisorCache;
    move-object/from16 v0, p1

    iput-object v0, v8, Lorg/apache/ignite/internal/visor/cache/VisorCache;->name:Ljava/lang/String;

    .line 216
    move-object/from16 v0, v18

    iput-object v0, v8, Lorg/apache/ignite/internal/visor/cache/VisorCache;->mode:Lorg/apache/ignite/cache/CacheMode;

    .line 217
    move-wide/from16 v0, v16

    iput-wide v0, v8, Lorg/apache/ignite/internal/visor/cache/VisorCache;->memorySize:J

    .line 218
    move/from16 v0, v30

    iput v0, v8, Lorg/apache/ignite/internal/visor/cache/VisorCache;->size:I

    .line 219
    move/from16 v0, v19

    iput v0, v8, Lorg/apache/ignite/internal/visor/cache/VisorCache;->nearSize:I

    .line 220
    sub-int v37, v30, v19

    move/from16 v0, v37

    iput v0, v8, Lorg/apache/ignite/internal/visor/cache/VisorCache;->dhtSize:I

    .line 221
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->primarySize()I

    move-result v37

    move/from16 v0, v37

    iput v0, v8, Lorg/apache/ignite/internal/visor/cache/VisorCache;->primarySize:I

    .line 222
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->offHeapAllocatedSize()J

    move-result-wide v38

    move-wide/from16 v0, v38

    iput-wide v0, v8, Lorg/apache/ignite/internal/visor/cache/VisorCache;->offHeapAllocatedSize:J

    .line 223
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->offHeapEntriesCount()J

    move-result-wide v38

    move-wide/from16 v0, v38

    iput-wide v0, v8, Lorg/apache/ignite/internal/visor/cache/VisorCache;->offHeapEntriesCnt:J

    .line 224
    move-wide/from16 v0, v34

    iput-wide v0, v8, Lorg/apache/ignite/internal/visor/cache/VisorCache;->swapSize:J

    .line 225
    move-wide/from16 v0, v32

    iput-wide v0, v8, Lorg/apache/ignite/internal/visor/cache/VisorCache;->swapKeys:J

    .line 226
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->affinity()Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Lorg/apache/ignite/cache/affinity/Affinity;->partitions()I

    move-result v37

    move/from16 v0, v37

    iput v0, v8, Lorg/apache/ignite/internal/visor/cache/VisorCache;->partitions:I

    .line 227
    move-object/from16 v0, v27

    iput-object v0, v8, Lorg/apache/ignite/internal/visor/cache/VisorCache;->primaryPartitions:Ljava/util/Collection;

    .line 228
    iput-object v6, v8, Lorg/apache/ignite/internal/visor/cache/VisorCache;->backupPartitions:Ljava/util/Collection;

    .line 229
    invoke-static {v7}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->from(Lorg/apache/ignite/internal/processors/cache/GridCache;)Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    move-result-object v37

    move-object/from16 v0, v37

    iput-object v0, v8, Lorg/apache/ignite/internal/visor/cache/VisorCache;->metrics:Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 230
    move-object/from16 v0, v25

    iput-object v0, v8, Lorg/apache/ignite/internal/visor/cache/VisorCache;->partitionsMap:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    goto/16 :goto_0
.end method


# virtual methods
.method public backupPartitions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/lang/IgnitePair",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->backupPartitions:Ljava/util/Collection;

    return-object v0
.end method

.method public dhtSize()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->dhtSize:I

    return v0
.end method

.method public history()Lorg/apache/ignite/internal/visor/cache/VisorCache;
    .locals 4

    .prologue
    .line 239
    new-instance v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCache;-><init>()V

    .line 241
    .local v0, "c":Lorg/apache/ignite/internal/visor/cache/VisorCache;
    iget-object v1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->name:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->name:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->mode:Lorg/apache/ignite/cache/CacheMode;

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->mode:Lorg/apache/ignite/cache/CacheMode;

    .line 243
    iget-wide v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->memorySize:J

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->memorySize:J

    .line 244
    iget v1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->size:I

    iput v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->size:I

    .line 245
    iget v1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->nearSize:I

    iput v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->nearSize:I

    .line 246
    iget v1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->dhtSize:I

    iput v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->dhtSize:I

    .line 247
    iget v1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->primarySize:I

    iput v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->primarySize:I

    .line 248
    iget-wide v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->offHeapAllocatedSize:J

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->offHeapAllocatedSize:J

    .line 249
    iget-wide v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->offHeapEntriesCnt:J

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->offHeapEntriesCnt:J

    .line 250
    iget-wide v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->swapSize:J

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->swapSize:J

    .line 251
    iget-wide v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->swapKeys:J

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->swapKeys:J

    .line 252
    iget v1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->partitions:I

    iput v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->partitions:I

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->primaryPartitions:Ljava/util/Collection;

    .line 254
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->backupPartitions:Ljava/util/Collection;

    .line 255
    iget-object v1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->metrics:Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->metrics:Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 257
    return-object v0
.end method

.method public memorySize()J
    .locals 2

    .prologue
    .line 278
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->memorySize:J

    return-wide v0
.end method

.method public metrics()Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->metrics:Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    return-object v0
.end method

.method public mode()Lorg/apache/ignite/cache/CacheMode;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->mode:Lorg/apache/ignite/cache/CacheMode;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->name:Ljava/lang/String;

    return-object v0
.end method

.method public nearSize()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->nearSize:I

    return v0
.end method

.method public offHeapAllocatedSize()J
    .locals 2

    .prologue
    .line 313
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->offHeapAllocatedSize:J

    return-wide v0
.end method

.method public offHeapEntriesCount()J
    .locals 2

    .prologue
    .line 320
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->offHeapEntriesCnt:J

    return-wide v0
.end method

.method public partitionMap()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->partitionsMap:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    return-object v0
.end method

.method public partitions()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->partitions:I

    return v0
.end method

.method public primaryPartitions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/lang/IgnitePair",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->primaryPartitions:Ljava/util/Collection;

    return-object v0
.end method

.method public primarySize()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->primarySize:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->size:I

    return v0
.end method

.method public swapKeys()J
    .locals 2

    .prologue
    .line 334
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->swapKeys:J

    return-wide v0
.end method

.method public swapSize()J
    .locals 2

    .prologue
    .line 327
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCache;->swapSize:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCache;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

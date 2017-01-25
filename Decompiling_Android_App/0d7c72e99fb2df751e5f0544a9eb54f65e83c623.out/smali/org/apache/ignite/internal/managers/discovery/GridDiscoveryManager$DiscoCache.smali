.class Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;
.super Ljava/lang/Object;
.source "GridDiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscoCache"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final affCacheNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final aliveCacheNodes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private final aliveNodesWithCaches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private final aliveRmtCacheNodes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private final aliveRmtNodesWithCaches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private final allCacheNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final allNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private final allNodesWithCaches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final daemonNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private final loc:Lorg/apache/ignite/cluster/ClusterNode;

.field private final maxOrder:J

.field private final nearEnabledCaches:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final nodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private final nodesByVer:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteProductVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rmtCacheNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final rmtNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private final rmtNodesWithCaches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1914
    const-class v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;)V
    .locals 33
    .param p2, "loc"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1986
    .local p3, "rmts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1987
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->loc:Lorg/apache/ignite/cluster/ClusterNode;

    .line 1989
    new-instance v26, Ljava/util/ArrayList;

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$1700()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static/range {v26 .. v26}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->rmtNodes:Ljava/util/List;

    .line 1991
    sget-boolean v26, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->$assertionsDisabled:Z

    if-nez v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->rmtNodes:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    new-instance v26, Ljava/lang/AssertionError;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Remote nodes collection shouldn\'t contain local node [rmtNodes="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->rmtNodes:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", loc="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x5d

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v26

    .line 1994
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->rmtNodes:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1996
    .local v4, "all":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/cluster/ClusterNode;->isDaemon()Z

    move-result v26

    if-nez v26, :cond_1

    .line 1997
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1999
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->rmtNodes:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2001
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes:Ljava/util/List;

    .line 2003
    new-instance v5, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    const/high16 v27, 0x3f800000    # 1.0f

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v5, v0, v1}, Ljava/util/HashMap;-><init>(IF)V

    .line 2005
    .local v5, "cacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    new-instance v23, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    const/high16 v27, 0x3f800000    # 1.0f

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 2007
    .local v23, "rmtCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    new-instance v7, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    const/high16 v27, 0x3f800000    # 1.0f

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v7, v0, v1}, Ljava/util/HashMap;-><init>(IF)V

    .line 2009
    .local v7, "dhtNodesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    new-instance v21, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 2010
    .local v21, "nodesWithCaches":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    new-instance v24, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 2012
    .local v24, "rmtNodesWithCaches":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    new-instance v26, Lorg/jsr166/ConcurrentHashMap8;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    const/high16 v28, 0x3f800000    # 1.0f

    invoke-direct/range {v26 .. v28}, Lorg/jsr166/ConcurrentHashMap8;-><init>(IF)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveCacheNodes:Ljava/util/concurrent/ConcurrentMap;

    .line 2013
    new-instance v26, Lorg/jsr166/ConcurrentHashMap8;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    const/high16 v28, 0x3f800000    # 1.0f

    invoke-direct/range {v26 .. v28}, Lorg/jsr166/ConcurrentHashMap8;-><init>(IF)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveRmtCacheNodes:Ljava/util/concurrent/ConcurrentMap;

    .line 2014
    new-instance v26, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveNodesWithCaches:Ljava/util/Collection;

    .line 2015
    new-instance v26, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveRmtNodesWithCaches:Ljava/util/Collection;

    .line 2016
    new-instance v26, Ljava/util/TreeMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->nodesByVer:Ljava/util/NavigableMap;

    .line 2018
    const-wide/16 v14, 0x0

    .line 2020
    .local v14, "maxOrder0":J
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 2022
    .local v16, "nearEnabledSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/cluster/ClusterNode;

    .line 2023
    .local v17, "node":Lorg/apache/ignite/cluster/ClusterNode;
    sget-boolean v26, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->$assertionsDisabled:Z

    if-nez v26, :cond_2

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_2

    new-instance v26, Ljava/lang/AssertionError;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Invalid node order [locNode="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", node="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x5d

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v26

    .line 2025
    :cond_2
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v26

    cmp-long v26, v26, v14

    if-lez v26, :cond_3

    .line 2026
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v14

    .line 2028
    :cond_3
    const/4 v10, 0x0

    .line 2030
    .local v10, "hasCaches":Z
    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$7100(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Ljava/util/Map;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 2031
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2033
    .local v6, "cacheName":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;

    .line 2035
    .local v9, "filter":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->cacheNode(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 2036
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2038
    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v26

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 2039
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2041
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v6, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->addToMap(Ljava/util/Map;Ljava/lang/String;Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 2043
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->alive(Ljava/util/UUID;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 2044
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveCacheNodes:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->addToMap(Ljava/util/Map;Ljava/lang/String;Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 2046
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->dataNode(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 2047
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v6, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->addToMap(Ljava/util/Map;Ljava/lang/String;Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 2049
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;->nearNode(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 2050
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2052
    :cond_8
    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v26

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_9

    .line 2053
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->addToMap(Ljava/util/Map;Ljava/lang/String;Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 2055
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->alive(Ljava/util/UUID;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveRmtCacheNodes:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->addToMap(Ljava/util/Map;Ljava/lang/String;Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 2059
    :cond_9
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 2063
    .end local v6    # "cacheName":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;>;"
    .end local v9    # "filter":Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$CachePredicate;
    :cond_a
    if-eqz v10, :cond_b

    .line 2064
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->alive(Ljava/util/UUID;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 2065
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveNodesWithCaches:Ljava/util/Collection;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2067
    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v26

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_b

    .line 2068
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveRmtNodesWithCaches:Ljava/util/Collection;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2072
    :cond_b
    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/util/typedef/internal/U;->productVersion(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/lang/IgniteProductVersion;

    move-result-object v19

    .line 2075
    .local v19, "nodeVer":Lorg/apache/ignite/lang/IgniteProductVersion;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->nodesByVer:Ljava/util/NavigableMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Collection;

    .line 2077
    .local v20, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    if-nez v20, :cond_c

    .line 2078
    new-instance v20, Ljava/util/ArrayList;

    .end local v20    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2080
    .restart local v20    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->nodesByVer:Ljava/util/NavigableMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2083
    :cond_c
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2087
    .end local v10    # "hasCaches":Z
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v17    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v19    # "nodeVer":Lorg/apache/ignite/lang/IgniteProductVersion;
    .end local v20    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/cluster/ClusterNode;

    .line 2088
    .restart local v17    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-static/range {v17 .. v17}, Lorg/apache/ignite/internal/util/typedef/internal/U;->productVersion(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/lang/IgniteProductVersion;

    move-result-object v19

    .line 2091
    .restart local v19    # "nodeVer":Lorg/apache/ignite/lang/IgniteProductVersion;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->nodesByVer:Ljava/util/NavigableMap;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v25

    .line 2094
    .local v25, "updateView":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Lorg/apache/ignite/lang/IgniteProductVersion;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Collection;

    .line 2095
    .local v22, "prevVersions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2098
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v17    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v19    # "nodeVer":Lorg/apache/ignite/lang/IgniteProductVersion;
    .end local v22    # "prevVersions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v25    # "updateView":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Lorg/apache/ignite/lang/IgniteProductVersion;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    :cond_f
    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->maxOrder:J

    .line 2100
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allCacheNodes:Ljava/util/Map;

    .line 2101
    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->rmtCacheNodes:Ljava/util/Map;

    .line 2102
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->affCacheNodes:Ljava/util/Map;

    .line 2103
    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodesWithCaches:Ljava/util/Collection;

    .line 2104
    invoke-static/range {v24 .. v24}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->rmtNodesWithCaches:Ljava/util/Collection;

    .line 2105
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->nearEnabledCaches:Ljava/util/Set;

    .line 2107
    new-instance v26, Ljava/util/ArrayList;

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$1700()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v30 .. v30}, Lorg/apache/ignite/internal/util/F0;->not([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static/range {v26 .. v26}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->daemonNodes:Ljava/util/List;

    .line 2110
    new-instance v18, Ljava/util/HashMap;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->size()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->daemonNodes:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    add-int v26, v26, v27

    const/high16 v27, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 2112
    .local v18, "nodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterNode;>;"
    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes()Ljava/util/Collection;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->daemonNodes()Ljava/util/Collection;

    move-result-object v28

    invoke-static/range {v26 .. v28}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/ignite/cluster/ClusterNode;

    .line 2113
    .local v13, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v13}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2115
    .end local v13    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_10
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->nodeMap:Ljava/util/Map;

    .line 2116
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;
    .param p2, "x1"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p3, "x2"    # Ljava/util/Collection;
    .param p4, "x3"    # Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$1;

    .prologue
    .line 1914
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Collection;)V

    return-void
.end method

.method private addToMap(Ljava/util/Map;Ljava/lang/String;Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 2
    .param p2, "cacheName"    # Ljava/lang/String;
    .param p3, "rich"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2126
    .local p1, "cacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 2128
    .local v0, "cacheNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    if-nez v0, :cond_0

    .line 2129
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "cacheNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2131
    .restart local v0    # "cacheNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2134
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2135
    return-void
.end method

.method private filter(JLjava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .param p1, "topVer"    # J
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2347
    .local p3, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    if-nez p3, :cond_1

    .line 2348
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 2351
    .end local p3    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_0
    :goto_0
    return-object p3

    .restart local p3    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_1
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->maxOrder:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache$1;

    invoke-direct {v2, p0, p1, p2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache$1;-><init>(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;J)V

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object p3

    goto :goto_0
.end method

.method private filterNodeMap(Ljava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 6
    .param p2, "exclNode"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2311
    .local p1, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->this$0:Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    invoke-static {v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$7100(Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2312
    .local v0, "cacheName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2315
    .local v2, "maskedName":Ljava/lang/String;
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 2317
    .local v4, "oldNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2320
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2322
    .local v3, "newNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v3, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2325
    invoke-interface {p1, v2, v4, v3}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 2329
    .end local v0    # "cacheName":Ljava/lang/String;
    .end local v2    # "maskedName":Ljava/lang/String;
    .end local v3    # "newNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v4    # "oldNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_2
    return-void
.end method

.method private maskNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2338
    if-nez p1, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->access$7200()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "cacheName":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method aliveCacheNodes(Ljava/lang/String;J)Ljava/util/Collection;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2243
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveCacheNodes:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->filter(JLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method aliveNodesWithCaches(J)Ljava/util/Collection;
    .locals 1
    .param p1, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2274
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveNodesWithCaches:Ljava/util/Collection;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->filter(JLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method aliveRemoteCacheNodes(Ljava/lang/String;J)Ljava/util/Collection;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2254
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveRmtCacheNodes:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->maskNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->filter(JLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method aliveRemoteNodesWithCaches(J)Ljava/util/Collection;
    .locals 1
    .param p1, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2264
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveRmtNodesWithCaches:Ljava/util/Collection;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->filter(JLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method allNodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2149
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes:Ljava/util/List;

    return-object v0
.end method

.method allNodesWithCaches()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2156
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodesWithCaches:Ljava/util/Collection;

    return-object v0
.end method

.method allNodesWithCaches(J)Ljava/util/Collection;
    .locals 1
    .param p1, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2188
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodesWithCaches:Ljava/util/Collection;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->filter(JLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method cacheAffinityNodes(Ljava/lang/String;J)Ljava/util/Collection;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2232
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->affCacheNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->filter(JLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method cacheNodes(Ljava/lang/String;J)Ljava/util/Collection;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2199
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allCacheNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->filter(JLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method daemonNodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2362
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->daemonNodes:Ljava/util/List;

    return-object v0
.end method

.method elderNodes(Lorg/apache/ignite/lang/IgniteProductVersion;)Ljava/util/Collection;
    .locals 2
    .param p1, "ver"    # Lorg/apache/ignite/lang/IgniteProductVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteProductVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2166
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->nodesByVer:Ljava/util/NavigableMap;

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2168
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/lang/IgniteProductVersion;Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    if-nez v0, :cond_0

    .line 2169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 2171
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0
.end method

.method hasNearCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2284
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->nearEnabledCaches:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method localNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 2139
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->loc:Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p1, "id"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2370
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cluster/ClusterNode;

    return-object v0
.end method

.method remoteCacheNodes(J)Ljava/util/Collection;
    .locals 1
    .param p1, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2220
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->rmtNodesWithCaches:Ljava/util/Collection;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->filter(JLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method remoteCacheNodes(Ljava/lang/String;J)Ljava/util/Collection;
    .locals 2
    .param p1, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "topVer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2210
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->rmtCacheNodes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->filter(JLjava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method remoteNodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2144
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->rmtNodes:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2375
    const-class v0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    const-string v1, "allNodesWithDaemons"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->allNodes:Ljava/util/List;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateAlives(Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 4
    .param p1, "leftNode"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 2293
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->order()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->maxOrder:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2302
    :goto_0
    return-void

    .line 2296
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveCacheNodes:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->filterNodeMap(Ljava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 2298
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveRmtCacheNodes:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->filterNodeMap(Ljava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/cluster/ClusterNode;)V

    .line 2300
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveNodesWithCaches:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2301
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->aliveRmtNodesWithCaches:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method versionsMap()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteProductVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2178
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;->nodesByVer:Ljava/util/NavigableMap;

    return-object v0
.end method

.class Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;
.super Ljava/lang/Object;
.source "GridAffinityAssignment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private assignment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private final backup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final primary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 1
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->primary:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->backup:Ljava/util/Map;

    .line 54
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/List;)V
    .locals 1
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "assignment":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 62
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->assignment:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->primary:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->backup:Ljava/util/Map;

    .line 67
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->initPrimaryBackupMaps()V

    .line 68
    return-void
.end method

.method private initPrimaryBackupMaps()V
    .locals 11

    .prologue
    .line 126
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v9, "tmpPrm":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v8, "tmpBkp":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->assignment:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "partsCnt":I
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 131
    move-object v7, v9

    .line 132
    .local v7, "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->primary:Ljava/util/Map;

    .line 134
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->assignment:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/cluster/ClusterNode;

    .line 135
    .local v3, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v3}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    .line 137
    .local v1, "id":Ljava/util/UUID;
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 139
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v6, :cond_0

    .line 140
    new-instance v6, Ljava/util/HashSet;

    .end local v6    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .restart local v6    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v7, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v2, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    move-object v7, v8

    .line 148
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->backup:Ljava/util/Map;

    .line 149
    goto :goto_1

    .line 129
    .end local v1    # "id":Ljava/util/UUID;
    .end local v3    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v6    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .end local v7    # "tmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public assignment()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->assignment:Ljava/util/List;

    return-object v0
.end method

.method public backupPartitions(Ljava/util/UUID;)Ljava/util/Set;
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->backup:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 118
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 161
    if-ne p1, p0, :cond_0

    .line 162
    const/4 v0, 0x1

    .line 167
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 164
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 165
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    check-cast p1, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)Ljava/util/List;
    .locals 3
    .param p1, "part"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    sget-boolean v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->assignment:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Affinity partition is out of range [part="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", partitions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->assignment:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 94
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->assignment:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->hashCode()I

    move-result v0

    return v0
.end method

.method public primaryPartitions(Ljava/util/UUID;)Ljava/util/Set;
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->primary:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 106
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    const-class v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;->topVer:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

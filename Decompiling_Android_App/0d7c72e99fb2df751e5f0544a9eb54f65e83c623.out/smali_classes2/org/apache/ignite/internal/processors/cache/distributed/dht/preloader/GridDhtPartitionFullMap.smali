.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;
.super Ljava/util/HashMap;
.source "GridDhtPartitionFullMap.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/util/UUID;",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private nodeId:Ljava/util/UUID;

.field private nodeOrder:J

.field private updateSeq:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;JJ)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "nodeOrder"    # J
    .param p4, "updateSeq"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 48
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmp-long v0, p2, v2

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    cmp-long v0, p4, v2

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    .line 53
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeOrder:J

    .line 54
    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSeq:J

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;JJLjava/util/Map;Z)V
    .locals 10
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "nodeOrder"    # J
    .param p4, "updateSeq"    # J
    .param p7, "onlyActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "JJ",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p6, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 66
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    .line 71
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeOrder:J

    .line 72
    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSeq:J

    .line 74
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 75
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    .line 77
    .local v8, "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    if-eqz p7, :cond_3

    .line 78
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->nodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSequence()J

    move-result-wide v2

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->map()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;-><init>(Ljava/util/UUID;JLjava/util/Map;Z)V

    invoke-virtual {p0, v9, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 80
    :cond_3
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;>;"
    .end local v8    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    :cond_4
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;J)V
    .locals 2
    .param p1, "m"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;
    .param p2, "updateSeq"    # J

    .prologue
    .line 89
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 91
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    .line 92
    iget-wide v0, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeOrder:J

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeOrder:J

    .line 93
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSeq:J

    .line 94
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->compareTo(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;)I
    .locals 6
    .param p1, "o"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    .prologue
    .line 149
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeOrder:J

    iget-wide v4, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeOrder:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    iget-object v2, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeOrder:J

    iget-wide v4, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeOrder:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    iget-object v2, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent node order and ID [id1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", order1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeOrder:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", order2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeOrder:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 152
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    if-nez v1, :cond_4

    iget-object v1, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    if-eqz v1, :cond_4

    .line 153
    const/4 v0, -0x1

    .line 164
    :cond_3
    :goto_0
    return v0

    .line 154
    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    if-nez v1, :cond_5

    .line 155
    const/4 v0, 0x1

    goto :goto_0

    .line 156
    :cond_5
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    if-nez v1, :cond_6

    iget-object v1, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    if-nez v1, :cond_6

    .line 157
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :cond_6
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeOrder:J

    iget-wide v4, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeOrder:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 161
    .local v0, "res":I
    if-nez v0, :cond_3

    .line 162
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSeq:J

    iget-wide v4, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSeq:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 189
    if-ne p0, p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 192
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    .line 194
    .local v0, "other":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;
    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSeq:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSeq:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSeq:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSeq:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public map2string()Ljava/lang/String;
    .locals 7

    .prologue
    .line 206
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 208
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;>;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 209
    const-string v5, "{}"

    .line 225
    :goto_0
    return-object v5

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v5, 0x7b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 218
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    .line 220
    .local v3, "nodeId":Ljava/util/UUID;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    .line 222
    .local v4, "partMap":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->toFullString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 225
    const/16 v5, 0x7d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 227
    :cond_1
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public nodeOrder()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeOrder:J

    return-wide v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    .line 181
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeOrder:J

    .line 182
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSeq:J

    .line 184
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readMap(Ljava/io/ObjectInput;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->putAll(Ljava/util/Map;)V

    .line 185
    return-void
.end method

.method public toFullString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 235
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    const-string v2, "size"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "map"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->map2string()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 240
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;

    const-string v1, "size"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateSequence()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSeq:J

    return-wide v0
.end method

.method public updateSequence(J)J
    .locals 5
    .param p1, "updateSeq"    # J

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSeq:J

    .line 138
    .local v0, "old":J
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid update sequence [cur="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", partMap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->toFullString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 141
    :cond_0
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSeq:J

    .line 143
    return-wide v0
.end method

.method public valid()Z
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeOrder:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeId:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 171
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->nodeOrder:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 172
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionFullMap;->updateSeq:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 174
    invoke-static {p1, p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeMap(Ljava/io/ObjectOutput;Ljava/util/Map;)V

    .line 175
    return-void
.end method

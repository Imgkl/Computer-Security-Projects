.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
.super Ljava/lang/Object;
.source "GridDhtPartitionMap.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;",
            ">;"
        }
    .end annotation
.end field

.field private nodeId:Ljava/util/UUID;

.field private updateSeq:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;J)V
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "updateSeq"    # J

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->nodeId:Ljava/util/UUID;

    .line 51
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSeq:J

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->map:Ljava/util/Map;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;JLjava/util/Map;Z)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "updateSeq"    # J
    .param p5, "onlyActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p4, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 64
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 66
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->nodeId:Ljava/util/UUID;

    .line 67
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSeq:J

    .line 69
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->map:Ljava/util/Map;

    .line 71
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    .line 74
    .local v2, "state":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    if-eqz p5, :cond_3

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->active()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    :cond_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;>;"
    .end local v2    # "state":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    :cond_4
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->compareTo(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;)I
    .locals 4
    .param p1, "o"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    .prologue
    .line 168
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->nodeId:Ljava/util/UUID;

    iget-object v1, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->nodeId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 170
    :cond_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSeq:J

    iget-wide v2, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSeq:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "part"    # Ljava/lang/Integer;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 223
    if-ne p0, p1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 226
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    .line 228
    .local v0, "other":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;
    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->nodeId:Ljava/util/UUID;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->nodeId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSeq:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSeq:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Integer;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    .locals 1
    .param p1, "part"    # Ljava/lang/Integer;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->nodeId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSeq:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSeq:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->map:Ljava/util/Map;

    return-object v0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public put(Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;)V
    .locals 1
    .param p1, "part"    # Ljava/lang/Integer;
    .param p2, "state"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 8
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->nodeId:Ljava/util/UUID;

    .line 205
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSeq:J

    .line 207
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    .line 209
    .local v4, "size":I
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->map:Ljava/util/Map;

    .line 211
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 212
    invoke-interface {p1}, Ljava/io/ObjectInput;->readShort()S

    move-result v5

    const v6, 0xffff

    and-int v0, v5, v6

    .line 214
    .local v0, "entry":I
    and-int/lit16 v3, v0, 0x3fff

    .line 215
    .local v3, "part":I
    shr-int/lit8 v2, v0, 0xe

    .line 217
    .local v2, "ordinal":I
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->map:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->fromOrdinal(I)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "entry":I
    .end local v2    # "ordinal":I
    .end local v3    # "part":I
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toFullString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 240
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    const-string v2, "size"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "map"

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;

    const-string v1, "size"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->size()I

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
    .line 149
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSeq:J

    return-wide v0
.end method

.method public updateSequence(J)J
    .locals 5
    .param p1, "updateSeq"    # J

    .prologue
    .line 157
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSeq:J

    .line 159
    .local v0, "old":J
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->$assertionsDisabled:Z

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

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 161
    :cond_0
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSeq:J

    .line 163
    return-wide v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 8
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->nodeId:Ljava/util/UUID;

    invoke-static {p1, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 177
    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->updateSeq:J

    invoke-interface {p1, v6, v7}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 179
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->map:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v5

    .line 181
    .local v5, "size":I
    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 183
    const/4 v2, 0x0

    .line 185
    .local v2, "i":I
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->map:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 186
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;->ordinal()I

    move-result v4

    .line 188
    .local v4, "ordinal":I
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    and-int/lit8 v6, v4, 0x3

    if-eq v4, v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 189
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit16 v6, v6, 0x3fff

    if-eq v7, v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 191
    :cond_1
    shl-int/lit8 v7, v4, 0xe

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    or-int v0, v7, v6

    .line 193
    .local v0, "coded":I
    int-to-short v6, v0

    invoke-interface {p1, v6}, Ljava/io/ObjectOutput;->writeShort(I)V

    .line 195
    add-int/lit8 v2, v2, 0x1

    .line 196
    goto :goto_0

    .line 198
    .end local v0    # "coded":I
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;>;"
    .end local v4    # "ordinal":I
    :cond_2
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionMap;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    if-eq v2, v5, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 199
    :cond_3
    return-void
.end method

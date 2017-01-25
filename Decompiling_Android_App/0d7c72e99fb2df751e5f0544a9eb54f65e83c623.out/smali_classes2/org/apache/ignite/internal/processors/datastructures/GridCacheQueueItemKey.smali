.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;
.super Ljava/lang/Object;
.source "GridCacheQueueItemKey.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private idx:J

.field private queueId:Lorg/apache/ignite/lang/IgniteUuid;

.field private queueName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;J)V
    .locals 1
    .param p1, "queueId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "queueName"    # Ljava/lang/String;
    .param p3, "idx"    # J

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->queueId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 56
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->queueName:Ljava/lang/String;

    .line 57
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->idx:J

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    if-ne p0, p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 101
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 103
    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;

    .line 105
    .local v0, "itemKey":Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->idx:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->idx:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->queueId:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->queueId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 110
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->queueId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v0

    .line 112
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->idx:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->idx:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 114
    return v0
.end method

.method public index()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->idx:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public queueId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->queueId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public queueName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->queueName:Ljava/lang/String;

    return-object v0
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
    .line 90
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->queueId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 91
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->queueName:Ljava/lang/String;

    .line 92
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->idx:J

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->queueId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 84
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->queueName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 85
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueItemKey;->idx:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 86
    return-void
.end method

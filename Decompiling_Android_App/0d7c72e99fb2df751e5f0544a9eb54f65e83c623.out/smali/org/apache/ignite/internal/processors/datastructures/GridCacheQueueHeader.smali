.class public Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;
.super Ljava/lang/Object;
.source "GridCacheQueueHeader.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private cap:I

.field private collocated:Z

.field private head:J

.field private id:Lorg/apache/ignite/lang/IgniteUuid;

.field private rmvIdxs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private tail:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;IZJJLjava/util/Set;)V
    .locals 2
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "cap"    # I
    .param p3, "collocated"    # Z
    .param p4, "head"    # J
    .param p6, "tail"    # J
    .param p8    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "IZJJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p8, "rmvIdxs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmp-long v0, p4, p6

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 77
    iput p2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->cap:I

    .line 78
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->collocated:Z

    .line 79
    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->head:J

    .line 80
    iput-wide p6, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail:J

    .line 81
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->rmvIdxs:Ljava/util/Set;

    .line 82
    return-void
.end method


# virtual methods
.method public bounded()Z
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->cap:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->cap:I

    return v0
.end method

.method public collocated()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->collocated:Z

    return v0
.end method

.method public empty()Z
    .locals 4

    .prologue
    .line 130
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->head:J

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public full()Z
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->bounded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->capacity()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public head()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->head:J

    return-wide v0
.end method

.method public id()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->id:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 180
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->cap:I

    .line 181
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->collocated:Z

    .line 182
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->head:J

    .line 183
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail:J

    .line 185
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 188
    .local v1, "size":I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->rmvIdxs:Ljava/util/Set;

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 191
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->rmvIdxs:Ljava/util/Set;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method public removedIndexes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->rmvIdxs:Ljava/util/Set;

    return-object v0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 144
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->removedIndexes()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 146
    .local v0, "rmvSize":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->head()J

    move-result-wide v4

    sub-long/2addr v2, v4

    int-to-long v4, v0

    sub-long/2addr v2, v4

    long-to-int v1, v2

    .line 148
    .local v1, "size":I
    sget-boolean v2, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-gez v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 144
    .end local v0    # "rmvSize":I
    .end local v1    # "size":I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->removedIndexes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0

    .line 150
    .restart local v0    # "rmvSize":I
    .restart local v1    # "size":I
    :cond_1
    return v1
.end method

.method public tail()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const-class v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 163
    iget v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->cap:I

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 164
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->collocated:Z

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 165
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->head:J

    invoke-interface {p1, v2, v3}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 166
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->tail:J

    invoke-interface {p1, v2, v3}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 167
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->rmvIdxs:Ljava/util/Set;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 169
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->rmvIdxs:Ljava/util/Set;

    if-eqz v2, :cond_1

    .line 170
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->rmvIdxs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 172
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheQueueHeader;->rmvIdxs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 173
    .local v1, "idx":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Ljava/io/ObjectOutput;->writeLong(J)V

    goto :goto_1

    .line 167
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "idx":Ljava/lang/Long;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 175
    :cond_1
    return-void
.end method

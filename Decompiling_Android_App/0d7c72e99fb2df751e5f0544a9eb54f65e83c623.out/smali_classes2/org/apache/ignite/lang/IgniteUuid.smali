.class public final Lorg/apache/ignite/lang/IgniteUuid;
.super Ljava/lang/Object;
.source "IgniteUuid.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/ignite/lang/IgniteUuid;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/ignite/lang/IgniteUuid;",
        ">;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final VM_ID:Ljava/util/UUID;

.field private static final cntGen:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final serialVersionUID:J


# instance fields
.field private gid:Ljava/util/UUID;

.field private locId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/lang/IgniteUuid;->$assertionsDisabled:Z

    .line 38
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/lang/IgniteUuid;->VM_ID:Ljava/util/UUID;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/apache/ignite/lang/IgniteUuid;->cntGen:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;J)V
    .locals 2
    .param p1, "gid"    # Ljava/util/UUID;
    .param p2, "locId"    # J

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-boolean v0, Lorg/apache/ignite/lang/IgniteUuid;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/lang/IgniteUuid;->gid:Ljava/util/UUID;

    .line 66
    iput-wide p2, p0, Lorg/apache/ignite/lang/IgniteUuid;->locId:J

    .line 67
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 116
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 118
    .local v0, "firstDash":I
    new-instance v1, Lorg/apache/ignite/lang/IgniteUuid;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Lorg/apache/ignite/lang/IgniteUuid;-><init>(Ljava/util/UUID;J)V

    return-object v1
.end method

.method public static fromUuid(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 4
    .param p0, "id"    # Ljava/util/UUID;

    .prologue
    .line 103
    const-string v0, "id"

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    new-instance v0, Lorg/apache/ignite/lang/IgniteUuid;

    sget-object v1, Lorg/apache/ignite/lang/IgniteUuid;->cntGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Lorg/apache/ignite/lang/IgniteUuid;-><init>(Ljava/util/UUID;J)V

    return-object v0
.end method

.method public static lastLocalId()J
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lorg/apache/ignite/lang/IgniteUuid;->cntGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static randomUuid()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 4

    .prologue
    .line 93
    new-instance v0, Lorg/apache/ignite/lang/IgniteUuid;

    sget-object v1, Lorg/apache/ignite/lang/IgniteUuid;->VM_ID:Ljava/util/UUID;

    sget-object v2, Lorg/apache/ignite/lang/IgniteUuid;->cntGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/lang/IgniteUuid;-><init>(Ljava/util/UUID;J)V

    return-object v0
.end method

.method public static vmId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/apache/ignite/lang/IgniteUuid;->VM_ID:Ljava/util/UUID;

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Lorg/apache/ignite/lang/IgniteUuid;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/lang/IgniteUuid;->compareTo(Lorg/apache/ignite/lang/IgniteUuid;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/ignite/lang/IgniteUuid;)I
    .locals 6
    .param p1, "o"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 169
    if-ne p1, p0, :cond_1

    .line 170
    const/4 v0, 0x0

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    if-nez p1, :cond_2

    .line 173
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    :cond_2
    iget-wide v2, p0, Lorg/apache/ignite/lang/IgniteUuid;->locId:J

    iget-wide v4, p1, Lorg/apache/ignite/lang/IgniteUuid;->locId:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 177
    .local v0, "res":I
    if-nez v0, :cond_0

    .line 178
    iget-object v1, p0, Lorg/apache/ignite/lang/IgniteUuid;->gid:Ljava/util/UUID;

    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteUuid;->globalId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    if-ne p1, p0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/lang/IgniteUuid;

    if-nez v3, :cond_2

    move v1, v2

    .line 194
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 196
    check-cast v0, Lorg/apache/ignite/lang/IgniteUuid;

    .line 198
    .local v0, "that":Lorg/apache/ignite/lang/IgniteUuid;
    iget-wide v4, v0, Lorg/apache/ignite/lang/IgniteUuid;->locId:J

    iget-wide v6, p0, Lorg/apache/ignite/lang/IgniteUuid;->locId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-object v3, v0, Lorg/apache/ignite/lang/IgniteUuid;->gid:Ljava/util/UUID;

    iget-object v4, p0, Lorg/apache/ignite/lang/IgniteUuid;->gid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public globalId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteUuid;->gid:Ljava/util/UUID;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteUuid;->gid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/apache/ignite/lang/IgniteUuid;->locId:J

    iget-wide v4, p0, Lorg/apache/ignite/lang/IgniteUuid;->locId:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/apache/ignite/lang/IgniteUuid;->iterator()Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/apache/ignite/internal/util/lang/GridIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/lang/GridIterator",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->identity()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/ignite/internal/util/typedef/F;->iterator(Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteClosure;Z[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/util/lang/GridIterator;

    move-result-object v0

    return-object v0
.end method

.method public localId()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lorg/apache/ignite/lang/IgniteUuid;->locId:J

    return-wide v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/lang/IgniteUuid;->gid:Ljava/util/UUID;

    .line 164
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/lang/IgniteUuid;->locId:J

    .line 165
    return-void
.end method

.method public shortString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/ignite/lang/IgniteUuid;->locId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/ignite/lang/IgniteUuid;->shortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/lang/IgniteUuid;->gid:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/lang/IgniteUuid;->gid:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 157
    iget-wide v0, p0, Lorg/apache/ignite/lang/IgniteUuid;->locId:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 158
    return-void
.end method

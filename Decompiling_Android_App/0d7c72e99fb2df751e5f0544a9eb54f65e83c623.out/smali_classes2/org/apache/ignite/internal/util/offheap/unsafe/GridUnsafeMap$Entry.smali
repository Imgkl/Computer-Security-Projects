.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;
.super Ljava/lang/Object;
.source "GridUnsafeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1514
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearQueueAddress(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)Z
    .locals 8
    .param p0, "ptr"    # J
    .param p2, "qAddr"    # J
    .param p4, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1626
    const-wide/16 v0, 0xc

    add-long v2, p0, v0

    const-wide/16 v6, 0x0

    move-object v1, p4

    move-wide v4, p2

    invoke-virtual/range {v1 .. v7}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->casLong(JJJ)Z

    move-result v0

    return v0
.end method

.method static hash(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I
    .locals 2
    .param p0, "ptr"    # J
    .param p2, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1539
    invoke-virtual {p2, p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readInt(J)I

    move-result v0

    return v0
.end method

.method static hash(JILorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V
    .locals 0
    .param p0, "ptr"    # J
    .param p2, "hash"    # I
    .param p3, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1548
    invoke-virtual {p3, p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeInt(JI)V

    .line 1549
    return-void
.end method

.method static keyEquals(J[BLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)Z
    .locals 4
    .param p0, "ptr"    # J
    .param p2, "keyBytes"    # [B
    .param p3, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1748
    invoke-static {p0, p1, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readKeyLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v2

    int-to-long v0, v2

    .line 1750
    .local v0, "len":J
    array-length v2, p2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x1c

    add-long/2addr v2, p0

    invoke-static {v2, v3, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->compare(J[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static nextAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J
    .locals 2
    .param p0, "ptr"    # J
    .param p2, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1635
    const-wide/16 v0, 0x14

    add-long/2addr v0, p0

    invoke-virtual {p2, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static nextAddress(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V
    .locals 2
    .param p0, "ptr"    # J
    .param p2, "addr"    # J
    .param p4, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1646
    const-wide/16 v0, 0x14

    add-long/2addr v0, p0

    invoke-virtual {p4, v0, v1, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeLong(JJ)V

    .line 1647
    return-void
.end method

.method static queueAddress(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J
    .locals 2
    .param p0, "ptr"    # J
    .param p2, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1607
    const-wide/16 v0, 0xc

    add-long/2addr v0, p0

    invoke-virtual {p2, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static queueAddress(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V
    .locals 2
    .param p0, "ptr"    # J
    .param p2, "qAddr"    # J
    .param p4, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1616
    const-wide/16 v0, 0xc

    add-long/2addr v0, p0

    invoke-virtual {p4, v0, v1, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeLong(JJ)V

    .line 1617
    return-void
.end method

.method static readKeyBytes(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)[B
    .locals 4
    .param p0, "ptr"    # J
    .param p2, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1655
    invoke-static {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readKeyLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v0

    .line 1657
    .local v0, "keyLen":I
    const-wide/16 v2, 0x1c

    add-long/2addr v2, p0

    invoke-virtual {p2, v2, v3, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readBytes(JI)[B

    move-result-object v1

    return-object v1
.end method

.method static readKeyLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I
    .locals 8
    .param p0, "ptr"    # J
    .param p2, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1557
    const-wide/16 v2, 0x4

    add-long/2addr v2, p0

    invoke-virtual {p2, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readInt(J)I

    move-result v0

    .line 1559
    .local v0, "len":I
    sget-boolean v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key length [addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0x%08x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1562
    :cond_0
    return v0
.end method

.method static readValueBytes(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)[B
    .locals 6
    .param p0, "ptr"    # J
    .param p2, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1675
    invoke-static {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readKeyLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v0

    .line 1676
    .local v0, "keyLen":I
    invoke-static {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readValueLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v1

    .line 1678
    .local v1, "valLen":I
    const-wide/16 v2, 0x1c

    add-long/2addr v2, p0

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-virtual {p2, v2, v3, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readBytes(JI)[B

    move-result-object v2

    return-object v2
.end method

.method static readValueLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I
    .locals 8
    .param p0, "ptr"    # J
    .param p2, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1582
    const-wide/16 v2, 0x8

    add-long/2addr v2, p0

    invoke-virtual {p2, v2, v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readInt(J)I

    move-result v0

    .line 1584
    .local v0, "len":I
    sget-boolean v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value length [addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0x%08x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1587
    :cond_0
    return v0
.end method

.method static size(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I
    .locals 2
    .param p0, "addr"    # J
    .param p2, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1530
    invoke-static {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readKeyLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1c

    invoke-static {p0, p1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readValueLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static size([B[B)I
    .locals 2
    .param p0, "keyBytes"    # [B
    .param p1, "valBytes"    # [B

    .prologue
    .line 1521
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1c

    array-length v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method static write(JI[B[BJJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V
    .locals 2
    .param p0, "ptr"    # J
    .param p2, "hash"    # I
    .param p3, "keyBytes"    # [B
    .param p4, "valBytes"    # [B
    .param p5, "queueAddr"    # J
    .param p7, "next"    # J
    .param p9, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1730
    invoke-static {p0, p1, p2, p9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->hash(JILorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1731
    array-length v0, p3

    invoke-static {p0, p1, v0, p9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->writeKeyLength(JILorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1732
    array-length v0, p4

    invoke-static {p0, p1, v0, p9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->writeValueLength(JILorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1733
    invoke-static {p0, p1, p5, p6, p9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->queueAddress(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1734
    invoke-static {p0, p1, p7, p8, p9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->nextAddress(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1735
    invoke-static {p0, p1, p3, p9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->writeKeyBytes(J[BLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1736
    array-length v0, p3

    invoke-static {p0, p1, v0, p4, p9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->writeValueBytes(JI[BLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1737
    return-void
.end method

.method static write(JI[B[BLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V
    .locals 2
    .param p0, "ptr"    # J
    .param p2, "hash"    # I
    .param p3, "keyBytes"    # [B
    .param p4, "valBytes"    # [B
    .param p5, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1710
    invoke-static {p0, p1, p2, p5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->hash(JILorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1711
    array-length v0, p3

    invoke-static {p0, p1, v0, p5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->writeKeyLength(JILorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1712
    array-length v0, p4

    invoke-static {p0, p1, v0, p5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->writeValueLength(JILorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1713
    invoke-static {p0, p1, p3, p5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->writeKeyBytes(J[BLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1714
    array-length v0, p3

    invoke-static {p0, p1, v0, p4, p5}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->writeValueBytes(JI[BLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1715
    return-void
.end method

.method static writeKeyBytes(J[BLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V
    .locals 2
    .param p0, "ptr"    # J
    .param p2, "keyBytes"    # [B
    .param p3, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1666
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p0

    invoke-virtual {p3, v0, v1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeBytes(J[B)V

    .line 1667
    return-void
.end method

.method static writeKeyLength(JILorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V
    .locals 2
    .param p0, "ptr"    # J
    .param p2, "len"    # I
    .param p3, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1573
    const-wide/16 v0, 0x4

    add-long/2addr v0, p0

    invoke-virtual {p3, v0, v1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeInt(JI)V

    .line 1574
    return-void
.end method

.method static writeValueBytes(JI[BLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V
    .locals 4
    .param p0, "ptr"    # J
    .param p2, "keyLen"    # I
    .param p3, "valBytes"    # [B
    .param p4, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1697
    const-wide/16 v0, 0x1c

    add-long/2addr v0, p0

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-virtual {p4, v0, v1, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeBytes(J[B)V

    .line 1698
    return-void
.end method

.method static writeValueBytes(J[BLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V
    .locals 2
    .param p0, "ptr"    # J
    .param p2, "valBytes"    # [B
    .param p3, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1687
    invoke-static {p0, p1, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->readKeyLength(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)I

    move-result v0

    invoke-static {p0, p1, v0, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Entry;->writeValueBytes(JI[BLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V

    .line 1688
    return-void
.end method

.method static writeValueLength(JILorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V
    .locals 2
    .param p0, "ptr"    # J
    .param p2, "len"    # I
    .param p3, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1598
    const-wide/16 v0, 0x8

    add-long/2addr v0, p0

    invoke-virtual {p3, v0, v1, p2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeInt(JI)V

    .line 1599
    return-void
.end method

.class public Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
.super Ljava/lang/Object;
.source "GridCacheVersion.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/plugin/extensions/communication/Message;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DR_ID_MASK:I = 0x1f

.field private static final DR_ID_SHIFT:I = 0x1b

.field private static final NODE_ORDER_MASK:I = 0x7ffffff

.field private static final serialVersionUID:J


# instance fields
.field private globalTime:J

.field private nodeOrderDrId:I

.field private order:J

.field private topVer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->$assertionsDisabled:Z

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

.method public constructor <init>(IIJJ)V
    .locals 1
    .param p1, "topVer"    # I
    .param p2, "nodeOrderDrId"    # I
    .param p3, "globalTime"    # J
    .param p5, "order"    # J

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topVer:I

    .line 95
    iput p2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrderDrId:I

    .line 96
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->globalTime:J

    .line 97
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order:J

    .line 98
    return-void
.end method

.method public constructor <init>(IJJII)V
    .locals 4
    .param p1, "topVer"    # I
    .param p2, "globalTime"    # J
    .param p4, "order"    # J
    .param p6, "nodeOrder"    # I
    .param p7, "dataCenterId"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 73
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-gez p6, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    const/16 v0, 0x20

    if-ge p7, v0, :cond_3

    if-gez p7, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_4
    const v0, 0x7ffffff

    if-le p6, v0, :cond_5

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Node order overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_5
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topVer:I

    .line 80
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->globalTime:J

    .line 81
    iput-wide p4, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order:J

    .line 83
    shl-int/lit8 v0, p7, 0x1b

    or-int/2addr v0, p6

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrderDrId:I

    .line 84
    return-void
.end method


# virtual methods
.method public asGridUuid()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 6

    .prologue
    .line 187
    new-instance v0, Lorg/apache/ignite/lang/IgniteUuid;

    new-instance v1, Ljava/util/UUID;

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topVer:I

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    iget v4, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrderDrId:I

    int-to-long v4, v4

    or-long/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->globalTime:J

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order:J

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/lang/IgniteUuid;-><init>(Ljava/util/UUID;J)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->compareTo(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)I
    .locals 6
    .param p1, "other"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 233
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topologyVersion()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topologyVersion()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 235
    .local v0, "res":I
    if-eqz v0, :cond_0

    move v1, v0

    .line 243
    :goto_0
    return v1

    .line 238
    :cond_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order:J

    iget-wide v4, p1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 240
    if-eqz v0, :cond_1

    move v1, v0

    .line 241
    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrder()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrder()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    goto :goto_0
.end method

.method public conflictVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 0

    .prologue
    .line 148
    return-object p0
.end method

.method public dataCenterId()B
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrderDrId:I

    shr-int/lit8 v0, v0, 0x1b

    and-int/lit8 v0, v0, 0x1f

    int-to-byte v0, v0

    return v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 334
    const/16 v0, 0x56

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    if-ne p0, p1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v1

    .line 211
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    if-nez v3, :cond_2

    move v1, v2

    .line 212
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 214
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 216
    .local v0, "that":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget v3, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topVer:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topVer:I

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrder()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrder()I

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x4

    return v0
.end method

.method public globalTime()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->globalTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 221
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topVer:I

    .line 223
    .local v0, "res":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrder()I

    move-result v2

    add-int v0, v1, v2

    .line 225
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 227
    return v0
.end method

.method public isGreater(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 1
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->compareTo(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGreaterEqual(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 1
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->compareTo(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLess(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 1
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->compareTo(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLessEqual(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 1
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->compareTo(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nodeOrder()I
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrderDrId:I

    const v1, 0x7ffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public nodeOrderAndDrIdRaw()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrderDrId:I

    return v0
.end method

.method public order()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order:J

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
    .line 200
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topVer:I

    .line 201
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->globalTime:J

    .line 202
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order:J

    .line 203
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrderDrId:I

    .line 204
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 289
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 291
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 329
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 296
    :pswitch_0
    const-string v1, "globalTime"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->globalTime:J

    .line 298
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 304
    :pswitch_1
    const-string v1, "nodeOrderDrId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrderDrId:I

    .line 306
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 312
    :pswitch_2
    const-string v1, "order"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order:J

    .line 314
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 320
    :pswitch_3
    const-string v1, "topVer"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topVer:I

    .line 322
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    const-class v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topVer:I

    return v0
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
    .line 192
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topVer:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 193
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->globalTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 194
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 195
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrderDrId:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 196
    return-void
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 248
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 250
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 251
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 257
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 284
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 259
    :pswitch_0
    const-string v1, "globalTime"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->globalTime:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 265
    :pswitch_1
    const-string v1, "nodeOrderDrId"

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->nodeOrderDrId:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 271
    :pswitch_2
    const-string v1, "order"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->order:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 277
    :pswitch_3
    const-string v1, "topVer"

    iget v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->topVer:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

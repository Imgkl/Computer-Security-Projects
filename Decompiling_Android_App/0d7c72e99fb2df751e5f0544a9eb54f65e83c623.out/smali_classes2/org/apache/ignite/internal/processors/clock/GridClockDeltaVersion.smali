.class public Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;
.super Ljava/lang/Object;
.source "GridClockDeltaVersion.java"

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
        "Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private topVer:J

.field private ver:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "ver"    # J
    .param p3, "topVer"    # J

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->ver:J

    .line 52
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->topVer:J

    .line 53
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->compareTo(Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;)I
    .locals 6
    .param p1, "o"    # Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    .prologue
    .line 71
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->topVer:J

    iget-wide v4, p1, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->topVer:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 73
    .local v0, "res":I
    if-nez v0, :cond_0

    .line 74
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->ver:J

    iget-wide v4, p1, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->ver:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 76
    :cond_0
    return v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 173
    const/16 v0, 0x53

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    if-ne p0, p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    if-nez v3, :cond_2

    move v1, v2

    .line 85
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 87
    check-cast v0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    .line 89
    .local v0, "that":Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->topVer:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->topVer:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->ver:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->ver:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x2

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 94
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->ver:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->ver:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    .line 96
    .local v0, "res":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->topVer:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->topVer:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 98
    return v0
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
    .line 109
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->ver:J

    .line 110
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->topVer:J

    .line 111
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 146
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 168
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :pswitch_0
    const-string v1, "topVer"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->topVer:J

    .line 153
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 159
    :pswitch_1
    const-string v1, "ver"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->ver:J

    .line 161
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const-class v0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->topVer:J

    return-wide v0
.end method

.method public version()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->ver:J

    return-wide v0
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
    .line 103
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->ver:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 104
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->topVer:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 105
    return-void
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 117
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 118
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 124
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 139
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 126
    :pswitch_0
    const-string v1, "topVer"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->topVer:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 132
    :pswitch_1
    const-string v1, "ver"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;->ver:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

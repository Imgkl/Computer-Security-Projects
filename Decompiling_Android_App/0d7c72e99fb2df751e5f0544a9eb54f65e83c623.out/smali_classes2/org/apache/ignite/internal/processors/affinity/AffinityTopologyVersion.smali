.class public Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
.super Ljava/lang/Object;
.source "AffinityTopologyVersion.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Externalizable;
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
        ">;",
        "Ljava/io/Externalizable;",
        "Lorg/apache/ignite/plugin/extensions/communication/Message;"
    }
.end annotation


# static fields
.field public static final NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field public static final ZERO:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

.field private static final serialVersionUID:J


# instance fields
.field private minorTopVer:I

.field private topVer:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 34
    new-instance v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(JI)V

    sput-object v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 37
    new-instance v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;-><init>(JI)V

    sput-object v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->ZERO:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "topVer"    # J

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topVer:J

    .line 57
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "topVer"    # J
    .param p3, "minorTopVer"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topVer:J

    .line 68
    iput p3, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->minorTopVer:I

    .line 69
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I
    .locals 6
    .param p1, "o"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 94
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topVer:J

    iget-wide v4, p1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topVer:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 96
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 97
    iget v1, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->minorTopVer:I

    iget v2, p1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->minorTopVer:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 99
    .end local v0    # "cmp":I
    :cond_0
    return v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 192
    const/16 v0, 0x6f

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    if-ne p0, p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    if-nez v3, :cond_2

    move v1, v2

    .line 108
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 110
    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 112
    .local v0, "that":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    iget v3, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->minorTopVer:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->minorTopVer:I

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topVer:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topVer:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x2

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topVer:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->minorTopVer:I

    add-int/2addr v0, v1

    return v0
.end method

.method public minorTopologyVersion()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->minorTopVer:I

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
    .line 128
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topVer:J

    .line 129
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->minorTopVer:I

    .line 130
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 165
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 187
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 170
    :pswitch_0
    const-string v1, "minorTopVer"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->minorTopVer:I

    .line 172
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 178
    :pswitch_1
    const-string v1, "topVer"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topVer:J

    .line 180
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 168
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
    .line 202
    const-class v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topVer:J

    return-wide v0
.end method

.method public topologyVersion(J)V
    .locals 1
    .param p1, "topVer"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topVer:J

    .line 83
    return-void
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
    .line 122
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topVer:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 123
    iget v0, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->minorTopVer:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 124
    return-void
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 136
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 137
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 143
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 158
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :pswitch_0
    const-string v1, "minorTopVer"

    iget v2, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->minorTopVer:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 151
    :pswitch_1
    const-string v1, "topVer"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->topVer:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

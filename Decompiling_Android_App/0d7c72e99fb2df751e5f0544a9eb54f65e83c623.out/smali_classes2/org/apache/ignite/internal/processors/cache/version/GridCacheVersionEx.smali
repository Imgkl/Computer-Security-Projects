.class public Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;
.super Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
.source "GridCacheVersionEx.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private drVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(IIJJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 1
    .param p1, "topVer"    # I
    .param p2, "nodeOrderDrId"    # I
    .param p3, "globalTime"    # J
    .param p5, "order"    # J
    .param p7, "drVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 71
    invoke-direct/range {p0 .. p6}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;-><init>(IIJJ)V

    .line 73
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p7, :cond_0

    instance-of v0, p7, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 75
    :cond_1
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;->drVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 76
    return-void
.end method

.method public constructor <init>(IJJIBLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 2
    .param p1, "topVer"    # I
    .param p2, "globalTime"    # J
    .param p4, "order"    # J
    .param p6, "nodeOrder"    # I
    .param p7, "dataCenterId"    # B
    .param p8, "drVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 54
    invoke-direct/range {p0 .. p7}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;-><init>(IJJII)V

    .line 56
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p8, :cond_0

    instance-of v0, p8, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_1
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;->drVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 59
    return-void
.end method


# virtual methods
.method public conflictVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;->drVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0x68

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x5

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->readExternal(Ljava/io/ObjectInput;)V

    .line 147
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;->drVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 149
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;->drVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->readExternal(Ljava/io/ObjectInput;)V

    .line 150
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 123
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 140
    :goto_0
    return v0

    .line 126
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 127
    goto :goto_0

    .line 129
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :pswitch_0
    const-string v0, "drVer"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;->drVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 133
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 134
    goto :goto_0

    .line 136
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 156
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;->drVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 157
    return-void
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 97
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 107
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 116
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 109
    :pswitch_0
    const-string v1, "drVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;->drVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.class public Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;
.super Ljava/lang/Object;
.source "GridClockDeltaSnapshotMessage.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private deltas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectMap;
        keyType = Ljava/util/UUID;
        valueType = J
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private snapVer:Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;Ljava/util/Map;)V
    .locals 0
    .param p1, "snapVer"    # Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "deltas":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;->snapVer:Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    .line 57
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;->deltas:Ljava/util/Map;

    .line 58
    return-void
.end method


# virtual methods
.method public deltas()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;->deltas:Ljava/util/Map;

    return-object v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 134
    const/16 v0, 0x3c

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x2

    return v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 107
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 129
    :goto_0
    return v0

    .line 110
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 112
    :pswitch_0
    const-string v0, "deltas"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->LONG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMap(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;->deltas:Ljava/util/Map;

    .line 114
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 115
    goto :goto_0

    .line 117
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 120
    :pswitch_1
    const-string v0, "snapVer"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;->snapVer:Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    .line 122
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 123
    goto :goto_0

    .line 125
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public snapshotVersion()Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;->snapVer:Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-class v0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 78
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 85
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 100
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :pswitch_0
    const-string v1, "deltas"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;->deltas:Ljava/util/Map;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->LONG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMap(Ljava/lang/String;Ljava/util/Map;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 93
    :pswitch_1
    const-string v1, "snapVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockDeltaSnapshotMessage;->snapVer:Lorg/apache/ignite/internal/processors/clock/GridClockDeltaVersion;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class public Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;
.super Ljava/lang/Object;
.source "GridContinuousMessage.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private data:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private dataBytes:[B

.field private futId:Lorg/apache/ignite/lang/IgniteUuid;

.field private msgs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/plugin/extensions/communication/Message;
    .end annotation
.end field

.field private routineId:Ljava/util/UUID;

.field private type:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "type"    # Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;
    .param p2, "routineId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "futId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "data"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "msgs"    # Z

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    sget-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->MSG_EVT_ACK:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    if-eq p1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->type:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    .line 84
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->routineId:Ljava/util/UUID;

    .line 85
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 87
    if-eqz p5, :cond_2

    .line 88
    check-cast p4, Ljava/util/Collection;

    .end local p4    # "data":Ljava/lang/Object;
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->msgs:Ljava/util/Collection;

    .line 91
    :goto_0
    return-void

    .line 90
    .restart local p4    # "data":Ljava/lang/Object;
    :cond_2
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->data:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public data()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->msgs:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->msgs:Ljava/util/Collection;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->data:Ljava/lang/Object;

    goto :goto_0
.end method

.method public data(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 126
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->data:Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public dataBytes([B)V
    .locals 0
    .param p1, "dataBytes"    # [B

    .prologue
    .line 140
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->dataBytes:[B

    .line 141
    return-void
.end method

.method public dataBytes()[B
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->dataBytes:[B

    return-object v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 256
    const/16 v0, 0x3d

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x5

    return v0
.end method

.method public futureId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public messages()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->msgs:Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 201
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v2

    if-nez v2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v1

    .line 204
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 251
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 206
    :pswitch_0
    const-string v2, "dataBytes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->dataBytes:[B

    .line 208
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 214
    :pswitch_1
    const-string v2, "futId"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 216
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 222
    :pswitch_2
    const-string v2, "msgs"

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->msgs:Ljava/util/Collection;

    .line 224
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 230
    :pswitch_3
    const-string v2, "routineId"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readUuid(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->routineId:Ljava/util/UUID;

    .line 232
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 240
    :pswitch_4
    const-string/jumbo v2, "type"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v0

    .line 242
    .local v0, "typeOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->fromOrdinal(B)Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->type:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    .line 247
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public routineId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->routineId:Ljava/util/UUID;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->type:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 154
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->directType()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 194
    :goto_0
    return v0

    .line 158
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 161
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    :pswitch_0
    const-string v0, "dataBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->dataBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 164
    goto :goto_0

    .line 166
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 169
    :pswitch_1
    const-string v0, "futId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->futId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 170
    goto :goto_0

    .line 172
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 175
    :pswitch_2
    const-string v0, "msgs"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->msgs:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 176
    goto :goto_0

    .line 178
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 181
    :pswitch_3
    const-string v0, "routineId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->routineId:Ljava/util/UUID;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeUuid(Ljava/lang/String;Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 182
    goto :goto_0

    .line 184
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 187
    :pswitch_4
    const-string/jumbo v2, "type"

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->type:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessage;->type:Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousMessageType;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    :goto_2
    invoke-interface {p2, v2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 188
    goto :goto_0

    .line 187
    :cond_6
    const/4 v0, -0x1

    goto :goto_2

    .line 190
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

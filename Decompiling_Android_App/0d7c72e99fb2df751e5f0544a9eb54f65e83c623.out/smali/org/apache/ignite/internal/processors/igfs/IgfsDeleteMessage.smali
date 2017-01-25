.class public Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;
.source "IgfsDeleteMessage.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private err:Lorg/apache/ignite/IgniteCheckedException;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private errBytes:[B

.field private id:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 1
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;-><init>()V

    .line 61
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/IgniteCheckedException;)V
    .locals 1
    .param p1, "id"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "err"    # Lorg/apache/ignite/IgniteCheckedException;

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;-><init>()V

    .line 73
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 76
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->err:Lorg/apache/ignite/IgniteCheckedException;

    .line 77
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 175
    const/16 v0, 0x43

    return v0
.end method

.method public error()Lorg/apache/ignite/IgniteCheckedException;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->err:Lorg/apache/ignite/IgniteCheckedException;

    return-object v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x2

    return v0
.end method

.method public finishUnmarshal(Lorg/apache/ignite/marshaller/Marshaller;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "marsh"    # Lorg/apache/ignite/marshaller/Marshaller;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;->finishUnmarshal(Lorg/apache/ignite/marshaller/Marshaller;Ljava/lang/ClassLoader;)V

    .line 105
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->errBytes:[B

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->errBytes:[B

    invoke-interface {p1, v0, p2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteCheckedException;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->err:Lorg/apache/ignite/IgniteCheckedException;

    .line 107
    :cond_0
    return-void
.end method

.method public id()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->id:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public prepareMarshal(Lorg/apache/ignite/marshaller/Marshaller;)V
    .locals 1
    .param p1, "marsh"    # Lorg/apache/ignite/marshaller/Marshaller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;->prepareMarshal(Lorg/apache/ignite/marshaller/Marshaller;)V

    .line 97
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->err:Lorg/apache/ignite/IgniteCheckedException;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->err:Lorg/apache/ignite/IgniteCheckedException;

    invoke-interface {p1, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->errBytes:[B

    .line 99
    :cond_0
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 145
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 170
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 153
    :pswitch_0
    const-string v1, "errBytes"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->errBytes:[B

    .line 155
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 161
    :pswitch_1
    const-string v1, "id"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 163
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 151
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
    .line 185
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 113
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsCommunicationMessage;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 117
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 123
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 138
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    :pswitch_0
    const-string v1, "errBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->errBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 131
    :pswitch_1
    const-string v1, "id"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDeleteMessage;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

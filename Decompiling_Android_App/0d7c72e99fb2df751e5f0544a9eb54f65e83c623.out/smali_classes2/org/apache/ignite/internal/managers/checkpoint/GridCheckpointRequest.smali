.class public Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;
.super Ljava/lang/Object;
.source "GridCheckpointRequest.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private cpSpi:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private sesId:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sesId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "cpSpi"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-boolean v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 60
    iput-object p2, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->key:Ljava/lang/String;

    .line 62
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 p3, 0x0

    .end local p3    # "cpSpi":Ljava/lang/String;
    :cond_3
    iput-object p3, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->cpSpi:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x7

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x3

    return v0
.end method

.method public getCheckpointSpi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->cpSpi:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 125
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 155
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 130
    :pswitch_0
    const-string v1, "cpSpi"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->cpSpi:Ljava/lang/String;

    .line 132
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 138
    :pswitch_1
    const-string v1, "key"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->key:Ljava/lang/String;

    .line 140
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 146
    :pswitch_2
    const-string v1, "sesId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 148
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const-class v0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;

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

    .line 88
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 90
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 97
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 118
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :pswitch_0
    const-string v1, "cpSpi"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->cpSpi:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 105
    :pswitch_1
    const-string v1, "key"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->key:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 111
    :pswitch_2
    const-string v1, "sesId"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointRequest;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

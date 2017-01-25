.class public Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;
.super Ljava/lang/Object;
.source "GridDeploymentResponse.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private byteSrc:Lorg/apache/ignite/internal/util/GridByteArrayList;

.field private errMsg:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method byteSource()Lorg/apache/ignite/internal/util/GridByteArrayList;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->byteSrc:Lorg/apache/ignite/internal/util/GridByteArrayList;

    return-object v0
.end method

.method byteSource(Lorg/apache/ignite/internal/util/GridByteArrayList;)V
    .locals 0
    .param p1, "byteSrc"    # Lorg/apache/ignite/internal/util/GridByteArrayList;

    .prologue
    .line 58
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->byteSrc:Lorg/apache/ignite/internal/util/GridByteArrayList;

    .line 59
    return-void
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 182
    const/16 v0, 0xc

    return v0
.end method

.method errorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method errorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->errMsg:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x3

    return v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 147
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 177
    :goto_0
    return v0

    .line 150
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    :pswitch_0
    const-string v0, "byteSrc"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMessage(Ljava/lang/String;)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridByteArrayList;

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->byteSrc:Lorg/apache/ignite/internal/util/GridByteArrayList;

    .line 154
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 155
    goto :goto_0

    .line 157
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 160
    :pswitch_1
    const-string v0, "errMsg"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->errMsg:Ljava/lang/String;

    .line 162
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 163
    goto :goto_0

    .line 165
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 168
    :pswitch_2
    const-string v0, "success"

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->success:Z

    .line 170
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 171
    goto :goto_0

    .line 173
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method success(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->success:Z

    .line 87
    return-void
.end method

.method success()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->success:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;

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

    .line 110
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 112
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 119
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 140
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    :pswitch_0
    const-string v1, "byteSrc"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->byteSrc:Lorg/apache/ignite/internal/util/GridByteArrayList;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMessage(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 127
    :pswitch_1
    const-string v1, "errMsg"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->errMsg:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 133
    :pswitch_2
    const-string v1, "success"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentResponse;->success:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

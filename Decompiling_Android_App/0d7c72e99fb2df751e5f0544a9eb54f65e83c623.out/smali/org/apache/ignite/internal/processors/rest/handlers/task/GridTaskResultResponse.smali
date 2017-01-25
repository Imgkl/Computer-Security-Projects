.class public Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;
.super Ljava/lang/Object;
.source "GridTaskResultResponse.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private err:Ljava/lang/String;

.field private finished:Z

.field private found:Z

.field private res:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private resBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 207
    const/16 v0, 0x4d

    return v0
.end method

.method public error()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->err:Ljava/lang/String;

    return-object v0
.end method

.method public error(Ljava/lang/String;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->err:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x4

    return v0
.end method

.method public finished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->finished:Z

    .line 89
    return-void
.end method

.method public finished()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->finished:Z

    return v0
.end method

.method public found(Z)V
    .locals 0
    .param p1, "found"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->found:Z

    .line 103
    return-void
.end method

.method public found()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->found:Z

    return v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 164
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 202
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 169
    :pswitch_0
    const-string v1, "err"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->err:Ljava/lang/String;

    .line 171
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 177
    :pswitch_1
    const-string v1, "finished"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->finished:Z

    .line 179
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 185
    :pswitch_2
    const-string v1, "found"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->found:Z

    .line 187
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 193
    :pswitch_3
    const-string v1, "resBytes"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->resBytes:[B

    .line 195
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public result()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->res:Ljava/lang/Object;

    return-object v0
.end method

.method public result(Ljava/lang/Object;)V
    .locals 0
    .param p1, "res"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->res:Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public resultBytes([B)V
    .locals 0
    .param p1, "resBytes"    # [B

    .prologue
    .line 67
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->resBytes:[B

    .line 68
    return-void
.end method

.method public resultBytes()[B
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->resBytes:[B

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 123
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 130
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 157
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 132
    :pswitch_0
    const-string v1, "err"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->err:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 138
    :pswitch_1
    const-string v1, "finished"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->finished:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 144
    :pswitch_2
    const-string v1, "found"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->found:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 150
    :pswitch_3
    const-string v1, "resBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultResponse;->resBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

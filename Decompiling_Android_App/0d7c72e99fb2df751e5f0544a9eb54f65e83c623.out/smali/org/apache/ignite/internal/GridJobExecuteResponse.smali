.class public Lorg/apache/ignite/internal/GridJobExecuteResponse;
.super Ljava/lang/Object;
.source "GridJobExecuteResponse.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;
.implements Lorg/apache/ignite/internal/GridTaskMessage;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private fakeEx:Lorg/apache/ignite/IgniteException;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private gridEx:Lorg/apache/ignite/IgniteException;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private gridExBytes:[B

.field private isCancelled:Z

.field private jobAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private jobAttrsBytes:[B

.field private jobId:Lorg/apache/ignite/lang/IgniteUuid;

.field private nodeId:Ljava/util/UUID;

.field private res:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private resBytes:[B

.field private sesId:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/GridJobExecuteResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;[BLorg/apache/ignite/IgniteException;[BLjava/lang/Object;[BLjava/util/Map;Z)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "sesId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "jobId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "gridExBytes"    # [B
    .param p5, "gridEx"    # Lorg/apache/ignite/IgniteException;
    .param p6, "resBytes"    # [B
    .param p7, "res"    # Ljava/lang/Object;
    .param p8, "jobAttrsBytes"    # [B
    .param p10, "isCancelled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "[B",
            "Lorg/apache/ignite/IgniteException;",
            "[B",
            "Ljava/lang/Object;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p9, "jobAttrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    sget-boolean v0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 108
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 109
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->nodeId:Ljava/util/UUID;

    .line 112
    iput-object p2, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 113
    iput-object p3, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 114
    iput-object p4, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->gridExBytes:[B

    .line 115
    iput-object p5, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->gridEx:Lorg/apache/ignite/IgniteException;

    .line 116
    iput-object p6, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->resBytes:[B

    .line 117
    iput-object p7, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->res:Ljava/lang/Object;

    .line 118
    iput-object p8, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->jobAttrsBytes:[B

    .line 119
    iput-object p9, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->jobAttrs:Ljava/util/Map;

    .line 120
    iput-boolean p10, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->isCancelled:Z

    .line 121
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x2

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x7

    return v0
.end method

.method public getException()Lorg/apache/ignite/IgniteException;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->gridEx:Lorg/apache/ignite/IgniteException;

    return-object v0
.end method

.method public getExceptionBytes()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->gridExBytes:[B

    return-object v0
.end method

.method public getFakeException()Lorg/apache/ignite/IgniteException;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->fakeEx:Lorg/apache/ignite/IgniteException;

    return-object v0
.end method

.method public getJobAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->jobAttrs:Ljava/util/Map;

    return-object v0
.end method

.method public getJobAttributesBytes()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->jobAttrsBytes:[B

    return-object v0
.end method

.method public getJobId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public getJobResult()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->res:Ljava/lang/Object;

    return-object v0
.end method

.method public getJobResultBytes()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->resBytes:[B

    return-object v0
.end method

.method public getNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public getSessionId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->isCancelled:Z

    return v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 268
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 270
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v0

    .line 273
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 332
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 275
    :pswitch_0
    const-string v1, "gridExBytes"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->gridExBytes:[B

    .line 277
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 283
    :pswitch_1
    const-string v1, "isCancelled"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->isCancelled:Z

    .line 285
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 291
    :pswitch_2
    const-string v1, "jobAttrsBytes"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->jobAttrsBytes:[B

    .line 293
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 299
    :pswitch_3
    const-string v1, "jobId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 301
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 307
    :pswitch_4
    const-string v1, "nodeId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readUuid(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->nodeId:Ljava/util/UUID;

    .line 309
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 315
    :pswitch_5
    const-string v1, "resBytes"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->resBytes:[B

    .line 317
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 323
    :pswitch_6
    const-string v1, "sesId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 325
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setFakeException(Lorg/apache/ignite/IgniteException;)V
    .locals 0
    .param p1, "fakeEx"    # Lorg/apache/ignite/IgniteException;

    .prologue
    .line 204
    iput-object p1, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->fakeEx:Lorg/apache/ignite/IgniteException;

    .line 205
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    const-class v0, Lorg/apache/ignite/internal/GridJobExecuteResponse;

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

    .line 209
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 211
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 212
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 218
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 263
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 220
    :pswitch_0
    const-string v1, "gridExBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->gridExBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 226
    :pswitch_1
    const-string v1, "isCancelled"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->isCancelled:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 232
    :pswitch_2
    const-string v1, "jobAttrsBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->jobAttrsBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 238
    :pswitch_3
    const-string v1, "jobId"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 244
    :pswitch_4
    const-string v1, "nodeId"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->nodeId:Ljava/util/UUID;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeUuid(Ljava/lang/String;Ljava/util/UUID;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 250
    :pswitch_5
    const-string v1, "resBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->resBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 256
    :pswitch_6
    const-string v1, "sesId"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobExecuteResponse;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

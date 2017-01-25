.class public Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;
.super Ljava/lang/Object;
.source "GridTaskResultRequest.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private taskId:Lorg/apache/ignite/lang/IgniteUuid;

.field private topic:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private topicBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;[B)V
    .locals 0
    .param p1, "taskId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "topic"    # Ljava/lang/Object;
    .param p3, "topicBytes"    # [B

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->taskId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 58
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->topic:Ljava/lang/Object;

    .line 59
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->topicBytes:[B

    .line 60
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 161
    const/16 v0, 0x4c

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x2

    return v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 134
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 156
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 139
    :pswitch_0
    const-string/jumbo v1, "taskId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->taskId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 141
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 147
    :pswitch_1
    const-string/jumbo v1, "topicBytes"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->topicBytes:[B

    .line 149
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public taskId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->taskId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public taskId(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 1
    .param p1, "taskId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 73
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->taskId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 76
    return-void
.end method

.method public topic()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->topic:Ljava/lang/Object;

    return-object v0
.end method

.method public topic(Ljava/lang/String;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 98
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->topic:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public topicBytes()[B
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->topicBytes:[B

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 105
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 106
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 112
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 127
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :pswitch_0
    const-string/jumbo v1, "taskId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->taskId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 120
    :pswitch_1
    const-string/jumbo v1, "topicBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskResultRequest;->topicBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

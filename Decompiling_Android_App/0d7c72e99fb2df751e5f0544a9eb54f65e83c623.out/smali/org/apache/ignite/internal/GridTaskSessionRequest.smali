.class public Lorg/apache/ignite/internal/GridTaskSessionRequest;
.super Ljava/lang/Object;
.source "GridTaskSessionRequest.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;
.implements Lorg/apache/ignite/internal/GridTaskMessage;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private attrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private attrsBytes:[B

.field private jobId:Lorg/apache/ignite/lang/IgniteUuid;

.field private sesId:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/GridTaskSessionRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/GridTaskSessionRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;[BLjava/util/Map;)V
    .locals 1
    .param p1, "sesId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "jobId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "attrsBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "[B",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p4, "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-boolean v0, Lorg/apache/ignite/internal/GridTaskSessionRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/GridTaskSessionRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/GridTaskSessionRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/GridTaskSessionRequest;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 67
    iput-object p2, p0, Lorg/apache/ignite/internal/GridTaskSessionRequest;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 68
    iput-object p3, p0, Lorg/apache/ignite/internal/GridTaskSessionRequest;->attrsBytes:[B

    .line 69
    iput-object p4, p0, Lorg/apache/ignite/internal/GridTaskSessionRequest;->attrs:Ljava/util/Map;

    .line 70
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x6

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x3

    return v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionRequest;->attrs:Ljava/util/Map;

    return-object v0
.end method

.method public getAttributesBytes()[B
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionRequest;->attrsBytes:[B

    return-object v0
.end method

.method public getJobId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionRequest;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public getSessionId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTaskSessionRequest;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 139
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 169
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 144
    :pswitch_0
    const-string v1, "attrsBytes"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionRequest;->attrsBytes:[B

    .line 146
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 152
    :pswitch_1
    const-string v1, "jobId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionRequest;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 154
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 160
    :pswitch_2
    const-string v1, "sesId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/GridTaskSessionRequest;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 162
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 142
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
    .line 184
    const-class v0, Lorg/apache/ignite/internal/GridTaskSessionRequest;

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

    .line 102
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 104
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 105
    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionRequest;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/GridTaskSessionRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 111
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 132
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 113
    :pswitch_0
    const-string v1, "attrsBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridTaskSessionRequest;->attrsBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 119
    :pswitch_1
    const-string v1, "jobId"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridTaskSessionRequest;->jobId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 125
    :pswitch_2
    const-string v1, "sesId"

    iget-object v2, p0, Lorg/apache/ignite/internal/GridTaskSessionRequest;->sesId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

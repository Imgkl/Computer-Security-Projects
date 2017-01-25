.class public Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;
.super Ljava/lang/Object;
.source "GridQueryRequest.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private pageSize:I

.field private qrys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private qrysBytes:[B

.field private reqId:J

.field private space:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/util/Collection;[B)V
    .locals 1
    .param p1, "reqId"    # J
    .param p3, "pageSize"    # I
    .param p4, "space"    # Ljava/lang/String;
    .param p6, "qrysBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p5, "qrys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->reqId:J

    .line 71
    iput p3, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->pageSize:I

    .line 72
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->space:Ljava/lang/String;

    .line 74
    sget-boolean v0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p6, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_0
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->qrys:Ljava/util/Collection;

    .line 77
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->qrysBytes:[B

    .line 78
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 204
    const/16 v0, 0x6e

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x4

    return v0
.end method

.method public pageSize()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->pageSize:I

    return v0
.end method

.method public queries(Lorg/apache/ignite/marshaller/Marshaller;)Ljava/util/Collection;
    .locals 2
    .param p1, "m"    # Lorg/apache/ignite/marshaller/Marshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/marshaller/Marshaller;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlQuery;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->qrys:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->qrysBytes:[B

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->qrysBytes:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->qrys:Ljava/util/Collection;

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->qrys:Ljava/util/Collection;

    return-object v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 161
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 199
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    :pswitch_0
    const-string v1, "pageSize"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->pageSize:I

    .line 168
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 174
    :pswitch_1
    const-string v1, "qrysBytes"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->qrysBytes:[B

    .line 176
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 182
    :pswitch_2
    const-string v1, "reqId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->reqId:J

    .line 184
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 190
    :pswitch_3
    const-string v1, "space"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->space:Ljava/lang/String;

    .line 192
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public requestId()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->reqId:J

    return-wide v0
.end method

.method public space()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->space:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-class v0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 120
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 127
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 154
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    :pswitch_0
    const-string v1, "pageSize"

    iget v2, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->pageSize:I

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 135
    :pswitch_1
    const-string v1, "qrysBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->qrysBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 141
    :pswitch_2
    const-string v1, "reqId"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->reqId:J

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 147
    :pswitch_3
    const-string v1, "space"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/query/h2/twostep/messages/GridQueryRequest;->space:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

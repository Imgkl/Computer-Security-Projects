.class Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;
.super Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;
.source "GridTcpRouterNioParser.java"


# instance fields
.field private volatile rcvCnt:J

.field private volatile sndCnt:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;-><init>(Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 11
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v10, -0x70

    .line 61
    iget-wide v6, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;->sndCnt:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;->sndCnt:J

    .line 63
    instance-of v5, p2, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;

    if-eqz v5, :cond_0

    move-object v3, p2

    .line 64
    check-cast v3, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;

    .line 66
    .local v3, "resp":Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->body()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x2d

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 68
    .local v2, "res":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->body()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x28

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->requestId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->clientId()Ljava/util/UUID;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->destinationId()Ljava/util/UUID;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->body()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 97
    .end local v2    # "res":Ljava/nio/ByteBuffer;
    .end local v3    # "resp":Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;
    :goto_0
    return-object v2

    .line 79
    :cond_0
    instance-of v5, p2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;

    if-eqz v5, :cond_1

    .line 80
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;->marshaller(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    move-result-object v1

    .local v1, "marsh":Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;
    move-object v0, p2

    .line 82
    check-cast v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    .line 84
    .local v0, "clientMsg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    const/16 v5, 0x2d

    invoke-interface {v1, p2, v5}, Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;->marshal(Ljava/lang/Object;I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 86
    .restart local v2    # "res":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 88
    .local v4, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 90
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->requestId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 91
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->clientId()Ljava/util/UUID;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 92
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->destinationId()Ljava/util/UUID;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 96
    .end local v0    # "clientMsg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    .end local v1    # "marsh":Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;
    .end local v2    # "res":Ljava/nio/ByteBuffer;
    .end local v4    # "slice":Ljava/nio/ByteBuffer;
    :cond_1
    instance-of v5, p2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPingPacket;

    if-nez v5, :cond_2

    instance-of v5, p2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;

    if-eqz v5, :cond_3

    .line 97
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->encode(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v2

    goto :goto_0

    .line 99
    :cond_3
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getReceivedCount()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;->rcvCnt:J

    return-wide v0
.end method

.method public getSendCount()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;->sndCnt:J

    return-wide v0
.end method

.method protected parseClientMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    .locals 5
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "state"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;

    .prologue
    .line 50
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;->rcvCnt:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioParser;->rcvCnt:J

    .line 52
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->buffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->header()Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;->reqId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->header()Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;->clientId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->header()Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;->destinationId()Ljava/util/UUID;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;-><init>([BLjava/lang/Long;Ljava/util/UUID;Ljava/util/UUID;)V

    return-object v0
.end method

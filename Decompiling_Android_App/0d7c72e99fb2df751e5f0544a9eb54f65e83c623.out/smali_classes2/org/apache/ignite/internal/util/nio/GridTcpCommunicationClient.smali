.class public Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;
.super Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;
.source "GridTcpCommunicationClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final bufSizeRatio:D

.field private final formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

.field private final minBufferedMsgCnt:I

.field private final out:Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;

.field private final sock:Ljava/net/Socket;

.field private final writeBuf:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;Ljava/net/InetSocketAddress;Ljava/net/InetAddress;JZIIIIDLorg/apache/ignite/plugin/extensions/communication/MessageFormatter;)V
    .locals 7
    .param p1, "metricsLsnr"    # Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;
    .param p2, "addr"    # Ljava/net/InetSocketAddress;
    .param p3, "locHost"    # Ljava/net/InetAddress;
    .param p4, "connTimeout"    # J
    .param p6, "tcpNoDelay"    # Z
    .param p7, "sockRcvBuf"    # I
    .param p8, "sockSndBuf"    # I
    .param p9, "bufSize"    # I
    .param p10, "minBufferedMsgCnt"    # I
    .param p11, "bufSizeRatio"    # D
    .param p13, "formatter"    # Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;)V

    .line 83
    sget-boolean v4, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 84
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 85
    :cond_1
    sget-boolean v4, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    if-nez p3, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 86
    :cond_2
    sget-boolean v4, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-gez v4, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 87
    :cond_3
    sget-boolean v4, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    if-gez p9, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 89
    :cond_4
    if-ltz p10, :cond_8

    const/4 v4, 0x1

    :goto_0
    const-string v5, "Value of minBufferedMessageCount property cannot be less than zero."

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 91
    const-wide/16 v4, 0x0

    cmpl-double v4, p11, v4

    if-lez v4, :cond_9

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, p11, v4

    if-gez v4, :cond_9

    const/4 v4, 0x1

    :goto_1
    const-string v5, "Value of bufSizeRatio property must be between 0 and 1 (exclusive)."

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 94
    move/from16 v0, p10

    iput v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->minBufferedMsgCnt:I

    .line 95
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->bufSizeRatio:D

    .line 96
    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    .line 98
    const/16 v4, 0x2000

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->writeBuf:Ljava/nio/ByteBuffer;

    .line 100
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->writeBuf:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 102
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    iput-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->sock:Ljava/net/Socket;

    .line 104
    const/4 v3, 0x0

    .line 107
    .local v3, "success":Z
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->sock:Ljava/net/Socket;

    new-instance v5, Ljava/net/InetSocketAddress;

    const/4 v6, 0x0

    invoke-direct {v5, p3, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v5}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 109
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->sock:Ljava/net/Socket;

    invoke-virtual {v4, p6}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 111
    if-lez p7, :cond_5

    .line 112
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->sock:Ljava/net/Socket;

    invoke-virtual {v4, p7}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 114
    :cond_5
    if-lez p8, :cond_6

    .line 115
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->sock:Ljava/net/Socket;

    invoke-virtual {v4, p8}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 117
    :cond_6
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->sock:Ljava/net/Socket;

    long-to-int v5, p4

    invoke-virtual {v4, p2, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 119
    new-instance v4, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;

    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->sock:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    move/from16 v0, p9

    invoke-direct {v4, p0, v5, v0}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;-><init>(Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;Ljava/io/OutputStream;I)V

    iput-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->out:Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    const/4 v3, 0x1

    .line 128
    if-nez v3, :cond_7

    .line 129
    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->sock:Ljava/net/Socket;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 131
    :cond_7
    return-void

    .line 89
    .end local v3    # "success":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_0

    .line 91
    :cond_9
    const/4 v4, 0x0

    goto :goto_1

    .line 123
    .restart local v3    # "success":Z
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to connect to remote host [addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", localHost="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-nez v3, :cond_a

    .line 129
    iget-object v5, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->sock:Ljava/net/Socket;

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    :cond_a
    throw v4
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;

    .prologue
    .line 35
    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->minBufferedMsgCnt:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;)D
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;

    .prologue
    .line 35
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->bufSizeRatio:D

    return-wide v0
.end method


# virtual methods
.method public close()Z
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->close()Z

    move-result v0

    .line 148
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->out:Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 150
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->sock:Ljava/net/Socket;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 153
    :cond_0
    return v0
.end method

.method public doHandshake(Lorg/apache/ignite/internal/util/lang/IgniteInClosure2X;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/lang/IgniteInClosure2X",
            "<",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "handshakeC":Lorg/apache/ignite/internal/util/lang/IgniteInClosure2X;, "Lorg/apache/ignite/internal/util/lang/IgniteInClosure2X<Ljava/io/InputStream;Ljava/io/OutputStream;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->sock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->sock:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/ignite/internal/util/lang/IgniteInClosure2X;->applyx(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to access IO streams when executing handshake with remote node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->sock:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flushIfNeeded(J)V
    .locals 3
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->out:Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->flushOnTimeout(J)V

    .line 221
    return-void
.end method

.method public forceClose()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->forceClose()V

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->out:Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->out:Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->forceClose()V

    .line 171
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->sock:Ljava/net/Socket;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 172
    return-void

    .line 163
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendMessage(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public sendMessage([BI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->closed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client was closed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->out:Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;->write([BII)V

    .line 182
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->metricsLsnr:Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    invoke-interface {v1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;->onBytesSent(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->markUsed()V

    .line 189
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send message to remote node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->sock:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sendMessage(Ljava/util/UUID;Lorg/apache/ignite/plugin/extensions/communication/Message;)Z
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->closed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client was closed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->writeBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 200
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->out:Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient$UnsafeBufferedOutputStream;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->writeBuf:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->formatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    invoke-interface {v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;->writer()Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    move-result-object v4

    invoke-static {p2, v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeMessageFully(Lorg/apache/ignite/plugin/extensions/communication/Message;Ljava/io/OutputStream;Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)I

    move-result v0

    .line 202
    .local v0, "cnt":I
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->metricsLsnr:Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    invoke-interface {v2, v0}, Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;->onBytesSent(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->markUsed()V

    .line 210
    const/4 v2, 0x0

    return v2

    .line 204
    .end local v0    # "cnt":I
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message to remote node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;->sock:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridTcpCommunicationClient;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

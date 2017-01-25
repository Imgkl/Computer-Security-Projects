.class public Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;
.super Ljava/lang/Object;
.source "TcpCommunicationSpi.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandshakeMessage"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private connectCnt:J

.field private nodeId:Ljava/util/UUID;

.field private rcvCnt:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2650
    const-class v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2669
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;JJ)V
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "connectCnt"    # J
    .param p4, "rcvCnt"    # J

    .prologue
    .line 2676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2677
    sget-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2678
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p4, p5}, Ljava/lang/AssertionError;-><init>(J)V

    throw v0

    .line 2680
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->nodeId:Ljava/util/UUID;

    .line 2681
    iput-wide p2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->connectCnt:J

    .line 2682
    iput-wide p4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->rcvCnt:J

    .line 2683
    return-void
.end method


# virtual methods
.method public connectCount()J
    .locals 2

    .prologue
    .line 2689
    iget-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->connectCnt:J

    return-wide v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 2746
    const/4 v0, -0x3

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 2751
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 2703
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 2728
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    .line 2741
    :goto_0
    return v1

    .line 2731
    :cond_0
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 2733
    .local v0, "nodeIdBytes":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2735
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToUuid([BI)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->nodeId:Ljava/util/UUID;

    .line 2737
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->rcvCnt:J

    .line 2739
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->connectCnt:J

    .line 2741
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public received()J
    .locals 2

    .prologue
    .line 2696
    iget-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->rcvCnt:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2756
    const-class v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    .line 2708
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x21

    if-ge v1, v2, :cond_0

    .line 2709
    const/4 v1, 0x0

    .line 2723
    :goto_0
    return v1

    .line 2711
    :cond_0
    const/4 v1, -0x3

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2713
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->nodeId:Ljava/util/UUID;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object v0

    .line 2715
    .local v0, "bytes":[B
    sget-boolean v1, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    array-length v1, v0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 2717
    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2719
    iget-wide v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->rcvCnt:J

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 2721
    iget-wide v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$HandshakeMessage;->connectCnt:J

    invoke-virtual {p1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 2723
    const/4 v1, 0x1

    goto :goto_0
.end method

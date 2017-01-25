.class public Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;
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
    name = "NodeIdMessage"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private nodeIdBytes:[B

.field private nodeIdBytesWithType:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2833
    const-class v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2847
    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    const/4 v4, 0x0

    .line 2852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2853
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->nodeIdBytes:[B

    .line 2855
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->nodeIdBytes:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->nodeIdBytesWithType:[B

    .line 2857
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->nodeIdBytesWithType:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v4

    .line 2859
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->nodeIdBytes:[B

    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->nodeIdBytesWithType:[B

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->nodeIdBytes:[B

    array-length v3, v3

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2860
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/UUID;
    .param p2, "x1"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;

    .prologue
    .line 2834
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;-><init>(Ljava/util/UUID;)V

    return-void
.end method

.method static synthetic access$3000(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;

    .prologue
    .line 2834
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->nodeIdBytesWithType:[B

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;

    .prologue
    .line 2834
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->nodeIdBytes:[B

    return-object v0
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 2889
    const/4 v0, -0x1

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 2894
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/16 v1, 0x10

    .line 2877
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 2878
    const/4 v0, 0x0

    .line 2884
    :goto_0
    return v0

    .line 2880
    :cond_0
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->nodeIdBytes:[B

    .line 2882
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->nodeIdBytes:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 2884
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2899
    const-class v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    .line 2864
    sget-boolean v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->nodeIdBytes:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2866
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    .line 2867
    const/4 v0, 0x0

    .line 2872
    :goto_0
    return v0

    .line 2869
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2870
    iget-object v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$NodeIdMessage;->nodeIdBytes:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2872
    const/4 v0, 0x1

    goto :goto_0
.end method

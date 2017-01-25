.class public Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsSniffing;
.super Ljava/lang/Object;
.source "ActivMetricsSniffing.java"


# static fields
.field public static final ENDIANNESS:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsSniffing;->ENDIANNESS:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytesFromInteger(I)[B
    .locals 2
    .param p0, "integer"    # I

    .prologue
    .line 66
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsSniffing;->ENDIANNESS:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private sendData([B)V
    .locals 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    .line 45
    .local v1, "clientSocket":Ljava/net/DatagramSocket;
    const-string v3, "192.168.254.254"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 46
    .local v0, "IPAddress":Ljava/net/InetAddress;
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, p1

    const/16 v4, 0x11d7

    invoke-direct {v2, p1, v3, v0, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 47
    .local v2, "sendPacket":Ljava/net/DatagramPacket;
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 48
    return-void
.end method


# virtual methods
.method public sniffingDataForActivMetrics(I)V
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 51
    const/16 v3, 0x10

    new-array v1, v3, [B

    .line 53
    .local v1, "sendData":[B
    invoke-static {p1}, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsSniffing;->getBytesFromInteger(I)[B

    move-result-object v2

    .line 55
    .local v2, "uidBytes":[B
    const/4 v3, 0x4

    array-length v4, v2

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    const/16 v3, 0xc

    array-length v4, v2

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    const/16 v0, 0x8

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 59
    aget-byte v3, v1, v0

    xor-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0, v1}, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsSniffing;->sendData([B)V

    .line 63
    return-void
.end method

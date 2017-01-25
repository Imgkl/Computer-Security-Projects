.class Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;
.super Ljava/lang/Object;
.source "TcpCommunicationSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientKey"
.end annotation


# instance fields
.field private nodeId:Ljava/util/UUID;

.field private order:J


# direct methods
.method private constructor <init>(Ljava/util/UUID;J)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "order"    # J

    .prologue
    .line 2114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2115
    iput-object p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;->nodeId:Ljava/util/UUID;

    .line 2116
    iput-wide p2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;->order:J

    .line 2117
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/UUID;JLorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/UUID;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$1;

    .prologue
    .line 2103
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;-><init>(Ljava/util/UUID;J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2121
    if-ne p0, p1, :cond_1

    .line 2129
    :cond_0
    :goto_0
    return v1

    .line 2124
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 2125
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 2127
    check-cast v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;

    .line 2129
    .local v0, "other":Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;
    iget-wide v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;->order:J

    iget-wide v6, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;->order:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;->nodeId:Ljava/util/UUID;

    iget-object v4, v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;->nodeId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 2135
    iget-object v1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;->nodeId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v0

    .line 2137
    .local v0, "res":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;->order:J

    iget-wide v4, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;->order:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 2139
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2144
    const-class v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$ClientKey;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

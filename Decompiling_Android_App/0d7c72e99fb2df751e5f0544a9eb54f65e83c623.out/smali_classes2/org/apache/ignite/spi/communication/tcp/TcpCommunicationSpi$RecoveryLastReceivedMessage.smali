.class public Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;
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
    name = "RecoveryLastReceivedMessage"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private rcvCnt:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2776
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "rcvCnt"    # J

    .prologue
    .line 2781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2782
    iput-wide p1, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;->rcvCnt:J

    .line 2783
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 2816
    const/4 v0, -0x2

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 2821
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    .line 2806
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 2807
    const/4 v0, 0x0

    .line 2811
    :goto_0
    return v0

    .line 2809
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;->rcvCnt:J

    .line 2811
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public received()J
    .locals 2

    .prologue
    .line 2789
    iget-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;->rcvCnt:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2826
    const-class v0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    .line 2794
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 2795
    const/4 v0, 0x0

    .line 2801
    :goto_0
    return v0

    .line 2797
    :cond_0
    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2799
    iget-wide v0, p0, Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpi$RecoveryLastReceivedMessage;->rcvCnt:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 2801
    const/4 v0, 0x1

    goto :goto_0
.end method

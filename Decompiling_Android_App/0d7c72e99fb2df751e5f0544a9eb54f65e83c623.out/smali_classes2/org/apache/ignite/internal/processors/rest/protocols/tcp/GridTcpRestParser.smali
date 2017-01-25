.class public Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;
.super Ljava/lang/Object;
.source "GridTcpRestParser.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/nio/GridNioParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$1;,
        Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;,
        Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final jdkMarshaller:Lorg/apache/ignite/marshaller/Marshaller;

.field private final routerClient:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->$assertionsDisabled:Z

    .line 43
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->UTF_8:Ljava/nio/charset/Charset;

    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "routerClient"    # Z

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;

    invoke-direct {v0}, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->jdkMarshaller:Lorg/apache/ignite/marshaller/Marshaller;

    .line 55
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->routerClient:Z

    .line 56
    return-void
.end method

.method private assemble(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    .locals 12
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 600
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->extras()[B

    move-result-object v1

    .line 603
    .local v1, "extras":[B
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->value()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 604
    :cond_0
    const/4 v2, 0x0

    .line 605
    .local v2, "keyFlags":S
    const/4 v6, 0x0

    .line 607
    .local v6, "valFlags":S
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->hasFlags()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 608
    if-eqz v1, :cond_1

    array-length v7, v1

    const/4 v8, 0x4

    if-ge v7, v8, :cond_2

    .line 609
    :cond_1
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse incoming packet (flags required for command) [ses="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", opCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->operationCode()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 612
    :cond_2
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToShort([BI)S

    move-result v2

    .line 613
    const/4 v7, 0x2

    invoke-static {v1, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToShort([BI)S

    move-result v6

    .line 616
    :cond_3
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 617
    sget-boolean v7, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->$assertionsDisabled:Z

    if-nez v7, :cond_4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, [B

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 619
    :cond_4
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v4, v7

    check-cast v4, [B

    .line 622
    .local v4, "rawKey":[B
    invoke-direct {p0, v2, v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->decodeObj(S[B)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key(Ljava/lang/Object;)V

    .line 625
    .end local v4    # "rawKey":[B
    :cond_5
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->value()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 626
    sget-boolean v7, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->$assertionsDisabled:Z

    if-nez v7, :cond_6

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->value()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, [B

    if-nez v7, :cond_6

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 628
    :cond_6
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->value()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v5, v7

    check-cast v5, [B

    .line 630
    .local v5, "rawVal":[B
    invoke-direct {p0, v6, v5}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->decodeObj(S[B)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->value(Ljava/lang/Object;)V

    .line 634
    .end local v2    # "keyFlags":S
    .end local v5    # "rawVal":[B
    .end local v6    # "valFlags":S
    :cond_7
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->hasExpiration()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 635
    if-eqz v1, :cond_8

    array-length v7, v1

    const/16 v8, 0x8

    if-ge v7, v8, :cond_9

    .line 636
    :cond_8
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse incoming packet (expiration value required for command) [ses="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", opCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->operationCode()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 639
    :cond_9
    const/4 v7, 0x4

    invoke-static {v1, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v7

    int-to-long v8, v7

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    invoke-virtual {p2, v8, v9}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->expiration(J)V

    .line 642
    :cond_a
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->hasInitial()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 643
    if-eqz v1, :cond_b

    array-length v7, v1

    const/16 v8, 0x10

    if-ge v7, v8, :cond_c

    .line 644
    :cond_b
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse incoming packet (initial value required for command) [ses="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", opCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->operationCode()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 647
    :cond_c
    const/16 v7, 0x8

    invoke-static {v1, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->initial(J)V

    .line 650
    :cond_d
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->hasDelta()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 651
    if-eqz v1, :cond_e

    array-length v7, v1

    const/16 v8, 0x8

    if-ge v7, v8, :cond_f

    .line 652
    :cond_e
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse incoming packet (delta value required for command) [ses="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", opCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->operationCode()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 655
    :cond_f
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->delta(J)V

    .line 658
    :cond_10
    if-eqz v1, :cond_14

    .line 660
    const/4 v3, 0x4

    .line 662
    .local v3, "len":I
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->hasExpiration()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 663
    add-int/lit8 v3, v3, 0x4

    .line 665
    :cond_11
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->hasDelta()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 666
    add-int/lit8 v3, v3, 0x8

    .line 668
    :cond_12
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->hasInitial()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 669
    add-int/lit8 v3, v3, 0x8

    .line 671
    :cond_13
    array-length v7, v1

    sub-int/2addr v7, v3

    if-lez v7, :cond_14

    .line 672
    array-length v7, v1

    sub-int/2addr v7, v3

    new-array v0, v7, [B

    .line 674
    .local v0, "cacheName":[B
    const/4 v7, 0x0

    array-length v8, v1

    sub-int/2addr v8, v3

    invoke-static {v1, v3, v0, v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 676
    new-instance v7, Ljava/lang/String;

    sget-object v8, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, v7}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->cacheName(Ljava/lang/String;)V

    .line 680
    .end local v0    # "cacheName":[B
    .end local v3    # "len":I
    :cond_14
    return-object p2
.end method

.method private copyRemaining(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dest"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 469
    .local v0, "b":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 471
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 472
    return-void
.end method

.method private decodeObj(S[B)Ljava/lang/Object;
    .locals 6
    .param p1, "flags"    # S
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 692
    sget-boolean v2, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 694
    :cond_0
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    .line 695
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->jdkMarshaller:Lorg/apache/ignite/marshaller/Marshaller;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p2

    .line 717
    .end local p2    # "bytes":[B
    :goto_0
    :sswitch_0
    return-object p2

    .line 697
    .restart local p2    # "bytes":[B
    :cond_1
    const v2, 0xff00

    and-int v0, p1, v2

    .line 699
    .local v0, "masked":I
    sparse-switch v0, :sswitch_data_0

    .line 717
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p2, v1

    goto :goto_0

    .line 701
    :sswitch_1
    aget-byte v2, p2, v1

    const/16 v3, 0x31

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    .line 703
    :sswitch_2
    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 705
    :sswitch_3
    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    .line 707
    :sswitch_4
    new-instance v2, Ljava/util/Date;

    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    move-object p2, v2

    goto :goto_0

    .line 709
    :sswitch_5
    aget-byte v1, p2, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    goto :goto_0

    .line 711
    :sswitch_6
    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_0

    .line 713
    :sswitch_7
    invoke-static {p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    goto :goto_0

    .line 699
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_1
        0x200 -> :sswitch_2
        0x300 -> :sswitch_3
        0x400 -> :sswitch_4
        0x500 -> :sswitch_5
        0x600 -> :sswitch_6
        0x700 -> :sswitch_7
        0x800 -> :sswitch_0
    .end sparse-switch
.end method

.method private encodeMemcache(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)Ljava/nio/ByteBuffer;
    .locals 12
    .param p1, "msg"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x18

    const/4 v10, 0x0

    .line 514
    new-instance v6, Lorg/apache/ignite/internal/util/GridByteArrayList;

    invoke-direct {v6, v11}, Lorg/apache/ignite/internal/util/GridByteArrayList;-><init>(I)V

    .line 516
    .local v6, "res":Lorg/apache/ignite/internal/util/GridByteArrayList;
    const/4 v3, 0x0

    .line 518
    .local v3, "keyLen":I
    const/4 v2, 0x0

    .line 520
    .local v2, "keyFlags":I
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 521
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 523
    .local v4, "rawKey":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key()Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->encodeObj(Ljava/lang/Object;Ljava/io/ByteArrayOutputStream;)I

    move-result v2

    .line 525
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key(Ljava/lang/Object;)V

    .line 527
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    .line 530
    .end local v4    # "rawKey":Ljava/io/ByteArrayOutputStream;
    :cond_0
    const/4 v0, 0x0

    .line 532
    .local v0, "dataLen":I
    const/4 v7, 0x0

    .line 534
    .local v7, "valFlags":I
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->value()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 535
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 537
    .local v5, "rawVal":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->value()Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v8, v5}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->encodeObj(Ljava/lang/Object;Ljava/io/ByteArrayOutputStream;)I

    move-result v7

    .line 539
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->value(Ljava/lang/Object;)V

    .line 541
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 544
    .end local v5    # "rawVal":Ljava/io/ByteArrayOutputStream;
    :cond_1
    const/4 v1, 0x0

    .line 546
    .local v1, "flagsLen":I
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->addFlags()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 547
    const/4 v1, 0x4

    .line 549
    :cond_2
    const/16 v8, -0x7f

    invoke-virtual {v6, v8}, Lorg/apache/ignite/internal/util/GridByteArrayList;->add(B)V

    .line 551
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->operationCode()B

    move-result v8

    invoke-virtual {v6, v8}, Lorg/apache/ignite/internal/util/GridByteArrayList;->add(B)V

    .line 554
    int-to-short v8, v3

    invoke-virtual {v6, v8}, Lorg/apache/ignite/internal/util/GridByteArrayList;->add(S)V

    .line 557
    int-to-byte v8, v1

    invoke-virtual {v6, v8}, Lorg/apache/ignite/internal/util/GridByteArrayList;->add(B)V

    .line 560
    invoke-virtual {v6, v10}, Lorg/apache/ignite/internal/util/GridByteArrayList;->add(B)V

    .line 562
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->status()I

    move-result v8

    int-to-short v8, v8

    invoke-virtual {v6, v8}, Lorg/apache/ignite/internal/util/GridByteArrayList;->add(S)V

    .line 564
    add-int v8, v3, v1

    add-int/2addr v8, v0

    invoke-virtual {v6, v8}, Lorg/apache/ignite/internal/util/GridByteArrayList;->add(I)V

    .line 566
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opaque()[B

    move-result-object v8

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opaque()[B

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v6, v8, v10, v9}, Lorg/apache/ignite/internal/util/GridByteArrayList;->add([BII)V

    .line 569
    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/apache/ignite/internal/util/GridByteArrayList;->add(J)V

    .line 571
    sget-boolean v8, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->$assertionsDisabled:Z

    if-nez v8, :cond_3

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/GridByteArrayList;->size()I

    move-result v8

    if-eq v8, v11, :cond_3

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 573
    :cond_3
    if-lez v1, :cond_4

    .line 574
    int-to-short v8, v2

    invoke-virtual {v6, v8}, Lorg/apache/ignite/internal/util/GridByteArrayList;->add(S)V

    .line 575
    int-to-short v8, v7

    invoke-virtual {v6, v8}, Lorg/apache/ignite/internal/util/GridByteArrayList;->add(S)V

    .line 578
    :cond_4
    sget-boolean v8, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->$assertionsDisabled:Z

    if-nez v8, :cond_5

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, [B

    if-nez v8, :cond_5

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 579
    :cond_5
    sget-boolean v8, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->$assertionsDisabled:Z

    if-nez v8, :cond_6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->value()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->value()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, [B

    if-nez v8, :cond_6

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 581
    :cond_6
    if-lez v3, :cond_7

    .line 582
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    check-cast v8, [B

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    check-cast v9, [B

    array-length v9, v9

    invoke-virtual {v6, v8, v10, v9}, Lorg/apache/ignite/internal/util/GridByteArrayList;->add([BII)V

    .line 584
    :cond_7
    if-lez v0, :cond_8

    .line 585
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->value()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    check-cast v8, [B

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->value()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    check-cast v9, [B

    array-length v9, v9

    invoke-virtual {v6, v8, v10, v9}, Lorg/apache/ignite/internal/util/GridByteArrayList;->add([BII)V

    .line 587
    :cond_8
    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/GridByteArrayList;->entireArray()[B

    move-result-object v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    return-object v8
.end method

.method private encodeObj(Ljava/lang/Object;Ljava/io/ByteArrayOutputStream;)I
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 730
    const/4 v1, 0x0

    .line 732
    .local v1, "flags":I
    const/4 v0, 0x0

    .line 734
    .local v0, "data":[B
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 735
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    sget-object v2, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 782
    :goto_0
    if-eqz v0, :cond_0

    .line 783
    array-length v2, v0

    invoke-virtual {p2, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 785
    :cond_0
    return v1

    .line 736
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 737
    new-array v0, v3, [B

    .end local v0    # "data":[B
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x31

    :goto_1
    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 739
    .restart local v0    # "data":[B
    or-int/lit16 v1, v1, 0x100

    goto :goto_0

    .line 737
    .end local v0    # "data":[B
    :cond_2
    const/16 v2, 0x30

    goto :goto_1

    .line 741
    .restart local v0    # "data":[B
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 742
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I)[B

    move-result-object v0

    .line 744
    or-int/lit16 v1, v1, 0x200

    goto :goto_0

    .line 746
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_5

    .line 747
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J)[B

    move-result-object v0

    .line 749
    or-int/lit16 v1, v1, 0x300

    goto :goto_0

    .line 751
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v2, p1, Ljava/util/Date;

    if-eqz v2, :cond_6

    .line 752
    check-cast p1, Ljava/util/Date;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J)[B

    move-result-object v0

    .line 754
    or-int/lit16 v1, v1, 0x400

    goto :goto_0

    .line 756
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_6
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_7

    .line 757
    new-array v0, v3, [B

    .end local v0    # "data":[B
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v4

    .line 759
    .restart local v0    # "data":[B
    or-int/lit16 v1, v1, 0x500

    goto :goto_0

    .line 761
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_7
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_8

    .line 762
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->intToBytes(I)[B

    move-result-object v0

    .line 764
    or-int/lit16 v1, v1, 0x600

    goto :goto_0

    .line 766
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_8
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_9

    .line 767
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J)[B

    move-result-object v0

    .line 769
    or-int/lit16 v1, v1, 0x700

    goto/16 :goto_0

    .line 771
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_9
    instance-of v2, p1, [B

    if-eqz v2, :cond_a

    .line 772
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [B

    .line 774
    or-int/lit16 v1, v1, 0x800

    goto/16 :goto_0

    .line 777
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_a
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->jdkMarshaller:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-interface {v2, p1, p2}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 779
    or-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private parseCustomPacket(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/nio/ByteBuffer;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    .locals 15
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .param p3, "state"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 361
    sget-boolean v3, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packetType()Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    move-result-object v3

    sget-object v8, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->IGNITE:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    if-eq v3, v8, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 362
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packet()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 364
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->buffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v13

    .line 366
    .local v13, "tmp":Ljava/io/ByteArrayOutputStream;
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->index()I

    move-result v10

    .line 368
    .local v10, "len":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_8

    .line 369
    if-nez v10, :cond_4

    .line 370
    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v13, v3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->statefulRead(Ljava/nio/ByteBuffer;Ljava/io/ByteArrayOutputStream;I)[B

    move-result-object v11

    .line 372
    .local v11, "lenBytes":[B
    if-eqz v11, :cond_4

    .line 373
    const/4 v3, 0x0

    invoke-static {v11, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v10

    .line 375
    if-nez v10, :cond_2

    .line 376
    sget-object v3, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPingPacket;->PING_MESSAGE:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    .line 416
    .end local v11    # "lenBytes":[B
    :goto_0
    return-object v3

    .line 377
    .restart local v11    # "lenBytes":[B
    :cond_2
    if-gez v10, :cond_3

    .line 378
    new-instance v3, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to parse incoming packet (invalid packet length) [ses="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, ", len="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v14, 0x5d

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 381
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->index(I)V

    .line 385
    .end local v11    # "lenBytes":[B
    :cond_4
    if-lez v10, :cond_5

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->header()Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;

    move-result-object v3

    if-nez v3, :cond_5

    .line 386
    const/16 v3, 0x28

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v13, v3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->statefulRead(Ljava/nio/ByteBuffer;Ljava/io/ByteArrayOutputStream;I)[B

    move-result-object v9

    .line 388
    .local v9, "hdrBytes":[B
    if-eqz v9, :cond_5

    .line 389
    const/4 v3, 0x0

    invoke-static {v9, v3}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->bytesToLong([BI)J

    move-result-wide v4

    .line 390
    .local v4, "reqId":J
    const/16 v3, 0x8

    invoke-static {v9, v3}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->bytesToUuid([BI)Ljava/util/UUID;

    move-result-object v6

    .line 391
    .local v6, "clientId":Ljava/util/UUID;
    const/16 v3, 0x18

    invoke-static {v9, v3}, Lorg/apache/ignite/internal/util/GridClientByteUtils;->bytesToUuid([BI)Ljava/util/UUID;

    move-result-object v7

    .line 393
    .local v7, "destId":Ljava/util/UUID;
    new-instance v3, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;-><init>(JLjava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$1;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->header(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;)V

    .line 397
    .end local v4    # "reqId":J
    .end local v6    # "clientId":Ljava/util/UUID;
    .end local v7    # "destId":Ljava/util/UUID;
    .end local v9    # "hdrBytes":[B
    :cond_5
    if-lez v10, :cond_8

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->header()Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 398
    add-int/lit8 v12, v10, -0x28

    .line 400
    .local v12, "packetSize":I
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    add-int/2addr v3, v8

    if-lt v3, v12, :cond_7

    .line 401
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_6

    .line 402
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    sub-int v3, v12, v3

    new-array v2, v3, [B

    .line 404
    .local v2, "bodyBytes":[B
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 406
    invoke-virtual {v13, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 409
    .end local v2    # "bodyBytes":[B
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->parseClientMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    move-result-object v3

    goto/16 :goto_0

    .line 412
    :cond_7
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v13}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->copyRemaining(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V

    .line 416
    .end local v12    # "packetSize":I
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private parseHandshake(Ljava/nio/ByteBuffer;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    .locals 10
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "state"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x4

    .line 306
    sget-boolean v7, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packetType()Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->IGNITE_HANDSHAKE:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    if-eq v7, v8, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 308
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->index()I

    move-result v1

    .line 310
    .local v1, "idx":I
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packet()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;

    .line 312
    .local v5, "packet":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;
    if-nez v5, :cond_1

    .line 313
    new-instance v5, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;

    .end local v5    # "packet":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;
    invoke-direct {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;-><init>()V

    .line 315
    .restart local v5    # "packet":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;
    invoke-virtual {p2, v5}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packet(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;)V

    .line 318
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 320
    .local v6, "rem":I
    if-lez v6, :cond_5

    .line 321
    const/4 v7, 0x5

    new-array v0, v7, [B

    .line 323
    .local v0, "bbuf":[B
    array-length v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 325
    .local v4, "nRead":I
    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 327
    move v3, v4

    .line 329
    .local v3, "nAvailable":I
    if-ge v1, v9, :cond_2

    .line 330
    rsub-int/lit8 v7, v1, 0x4

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 332
    .local v2, "len":I
    invoke-virtual {v5, v0, v1, v2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->putBytes([BII)V

    .line 334
    add-int/2addr v1, v2

    .line 335
    invoke-virtual {p2, v1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->index(I)V

    .line 336
    sub-int/2addr v3, v2

    .line 339
    .end local v2    # "len":I
    :cond_2
    sget-boolean v7, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->$assertionsDisabled:Z

    if-nez v7, :cond_3

    if-le v1, v9, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong idx: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 340
    :cond_3
    sget-boolean v7, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->$assertionsDisabled:Z

    if-nez v7, :cond_4

    if-eqz v3, :cond_4

    const/4 v7, 0x1

    if-eq v3, v7, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong nav: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 342
    :cond_4
    if-ne v1, v9, :cond_5

    if-lez v3, :cond_5

    .line 346
    .end local v0    # "bbuf":[B
    .end local v3    # "nAvailable":I
    .end local v4    # "nRead":I
    .end local v5    # "packet":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;
    :goto_0
    return-object v5

    .restart local v5    # "packet":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;
    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private parseMemcachePacket(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/nio/ByteBuffer;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    .locals 10
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .param p3, "state"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/16 v9, 0xf

    const/16 v8, 0xb

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 211
    sget-boolean v4, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packetType()Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->MEMCACHE:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 212
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packet()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 213
    :cond_1
    sget-boolean v4, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packet()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 215
    :cond_2
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packet()Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    .line 216
    .local v2, "req":Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->buffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v3

    .line 217
    .local v3, "tmp":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->index()I

    move-result v1

    .line 219
    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_e

    .line 220
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 222
    .local v0, "b":B
    if-nez v1, :cond_4

    .line 223
    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->requestFlag(B)V

    .line 285
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->totalLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x18

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_d

    .line 287
    invoke-direct {p0, p1, v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->assemble(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    move-result-object v4

    .line 294
    .end local v0    # "b":B
    :goto_2
    return-object v4

    .line 224
    .restart local v0    # "b":B
    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 225
    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->operationCode(B)V

    goto :goto_1

    .line 226
    :cond_5
    const/4 v4, 0x2

    if-eq v1, v4, :cond_6

    if-ne v1, v7, :cond_7

    .line 227
    :cond_6
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 229
    if-ne v1, v7, :cond_3

    .line 230
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToShort([BI)S

    move-result v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->keyLength(S)V

    .line 232
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_1

    .line 235
    :cond_7
    const/4 v4, 0x4

    if-ne v1, v4, :cond_8

    .line 236
    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->extrasLength(B)V

    goto :goto_1

    .line 237
    :cond_8
    const/16 v4, 0x8

    if-lt v1, v4, :cond_9

    if-gt v1, v8, :cond_9

    .line 238
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 240
    if-ne v1, v8, :cond_3

    .line 241
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToInt([BI)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->totalLength(I)V

    .line 243
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_1

    .line 246
    :cond_9
    const/16 v4, 0xc

    if-lt v1, v4, :cond_a

    if-gt v1, v9, :cond_a

    .line 247
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 249
    if-ne v1, v9, :cond_3

    .line 250
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->opaque([B)V

    .line 252
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_1

    .line 255
    :cond_a
    const/16 v4, 0x18

    if-lt v1, v4, :cond_b

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->extrasLength()B

    move-result v4

    add-int/lit8 v4, v4, 0x18

    if-ge v1, v4, :cond_b

    .line 256
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 258
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->extrasLength()B

    move-result v4

    add-int/lit8 v4, v4, 0x18

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_3

    .line 259
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->extras([B)V

    .line 261
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto/16 :goto_1

    .line 264
    :cond_b
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->extrasLength()B

    move-result v4

    add-int/lit8 v4, v4, 0x18

    if-lt v1, v4, :cond_c

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->extrasLength()B

    move-result v4

    add-int/lit8 v4, v4, 0x18

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->keyLength()S

    move-result v5

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_c

    .line 266
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 268
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->extrasLength()B

    move-result v4

    add-int/lit8 v4, v4, 0x18

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->keyLength()S

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_3

    .line 269
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->key(Ljava/lang/Object;)V

    .line 271
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto/16 :goto_1

    .line 274
    :cond_c
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->extrasLength()B

    move-result v4

    add-int/lit8 v4, v4, 0x18

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->keyLength()S

    move-result v5

    add-int/2addr v4, v5

    if-lt v1, v4, :cond_3

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->totalLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x18

    if-ge v1, v4, :cond_3

    .line 276
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 278
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->totalLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x18

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_3

    .line 279
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;->value(Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto/16 :goto_1

    .line 289
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 290
    goto/16 :goto_0

    .line 292
    .end local v0    # "b":B
    :cond_e
    invoke-virtual {p3, v1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->index(I)V

    .line 294
    const/4 v4, 0x0

    goto/16 :goto_2
.end method

.method private statefulRead(Ljava/nio/ByteBuffer;Ljava/io/ByteArrayOutputStream;I)[B
    .locals 6
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "intBuf"    # Ljava/io/ByteArrayOutputStream;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 432
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v3, v4

    if-lt v3, p3, :cond_2

    .line 433
    const/4 v1, 0x0

    .line 434
    .local v1, "off":I
    new-array v0, p3, [B

    .line 436
    .local v0, "bytes":[B
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 437
    sget-boolean v3, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-lt v3, p3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 439
    :cond_0
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 441
    .local v2, "tmpBytes":[B
    array-length v3, v2

    invoke-static {v2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    .line 445
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 448
    .end local v2    # "tmpBytes":[B
    :cond_1
    sub-int v3, p3, v1

    invoke-virtual {p1, v0, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 455
    .end local v0    # "bytes":[B
    .end local v1    # "off":I
    :goto_0
    return-object v0

    .line 453
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->copyRemaining(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V

    .line 455
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "x1"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->decode(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/nio/ByteBuffer;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/nio/ByteBuffer;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    .locals 7
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 61
    sget-object v4, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->PARSER_STATE:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v4

    invoke-interface {p1, v4}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->removeMeta(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;

    .line 63
    .local v2, "state":Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;
    if-nez v2, :cond_0

    .line 64
    new-instance v2, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;

    .end local v2    # "state":Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;
    invoke-direct {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;-><init>()V

    .line 66
    .restart local v2    # "state":Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;
    :cond_0
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packetType()Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    move-result-object v3

    .line 68
    .local v3, "type":Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;
    if-nez v3, :cond_1

    .line 69
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 71
    .local v0, "hdr":B
    sparse-switch v0, :sswitch_data_0

    .line 102
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse incoming packet (invalid packet start) [ses="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", b="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v6, v0, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    :sswitch_0
    new-instance v4, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    invoke-direct {v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;-><init>()V

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packet(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;)V

    .line 74
    sget-object v4, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->MEMCACHE:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packetType(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;)V

    .line 107
    .end local v0    # "hdr":B
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 109
    .local v1, "res":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    sget-object v4, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$1;->$SwitchMap$org$apache$ignite$internal$processors$rest$protocols$tcp$GridClientPacketType:[I

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packetType()Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 132
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 134
    sget-object v4, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->PARSER_STATE:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v4

    invoke-interface {p1, v4, v2}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_3
    return-object v1

    .line 80
    .end local v1    # "res":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    .restart local v0    # "hdr":B
    :sswitch_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 82
    sget-object v4, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->IGNITE:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packetType(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;)V

    goto :goto_0

    .line 88
    :sswitch_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 90
    sget-object v4, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->IGNITE_HANDSHAKE:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packetType(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;)V

    goto :goto_0

    .line 95
    :sswitch_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 97
    sget-object v4, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;->IGNITE_HANDSHAKE_RES:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->packetType(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridClientPacketType;)V

    goto :goto_0

    .line 111
    .end local v0    # "hdr":B
    .restart local v1    # "res":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    :pswitch_0
    invoke-direct {p0, p1, p2, v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->parseMemcachePacket(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/nio/ByteBuffer;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    move-result-object v1

    .line 113
    goto :goto_1

    .line 116
    :pswitch_1
    invoke-direct {p0, p2, v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->parseHandshake(Ljava/nio/ByteBuffer;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    move-result-object v1

    .line 118
    goto :goto_1

    .line 121
    :pswitch_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    new-instance v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;

    .end local v1    # "res":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-direct {v1, v4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;-><init>(B)V

    .restart local v1    # "res":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    goto :goto_1

    .line 127
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->parseCustomPacket(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/nio/ByteBuffer;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    move-result-object v1

    goto :goto_1

    .line 71
    :sswitch_data_0
    .sparse-switch
        -0x80 -> :sswitch_0
        -0x70 -> :sswitch_1
        -0x6f -> :sswitch_2
        -0x6e -> :sswitch_3
    .end sparse-switch

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public encode(Lorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 10
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msg0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v8, -0x70

    .line 141
    sget-boolean v7, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p2, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_0
    move-object v4, p2

    .line 143
    check-cast v4, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    .line 145
    .local v4, "msg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    instance-of v7, v4, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    if-eqz v7, :cond_1

    .line 146
    check-cast v4, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;

    .end local v4    # "msg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    invoke-direct {p0, v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->encodeMemcache(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridMemcachedMessage;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 195
    :goto_0
    return-object v1

    .line 147
    .restart local v4    # "msg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    :cond_1
    instance-of v7, v4, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPingPacket;

    if-eqz v7, :cond_2

    .line 148
    sget-object v7, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPingPacket;->PING_PACKET:[B

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 149
    :cond_2
    instance-of v7, v4, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;

    if-eqz v7, :cond_3

    .line 150
    check-cast v4, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;

    .end local v4    # "msg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeRequest;->rawBytes()[B

    move-result-object v2

    .line 152
    .local v2, "bytes":[B
    array-length v7, v2

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 154
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/16 v7, -0x6f

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 155
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    .line 161
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "bytes":[B
    .restart local v4    # "msg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    :cond_3
    instance-of v7, v4, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;

    if-eqz v7, :cond_4

    .line 162
    const/4 v7, 0x2

    new-array v7, v7, [B

    const/4 v8, 0x0

    const/16 v9, -0x6e

    aput-byte v9, v7, v8

    const/4 v8, 0x1

    check-cast v4, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;

    .end local v4    # "msg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientHandshakeResponse;->resultCode()B

    move-result v9

    aput-byte v9, v7, v8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 166
    .restart local v4    # "msg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    :cond_4
    instance-of v7, v4, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;

    if-eqz v7, :cond_5

    move-object v7, v4

    .line 167
    check-cast v7, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;->body()[B

    move-result-object v0

    .line 169
    .local v0, "body":[B
    array-length v7, v0

    add-int/lit8 v7, v7, 0x2d

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 171
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 172
    array-length v7, v0

    add-int/lit8 v7, v7, 0x28

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 173
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->requestId()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 174
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->clientId()Ljava/util/UUID;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 175
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->destinationId()Ljava/util/UUID;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 176
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 178
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 183
    .end local v0    # "body":[B
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_5
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->marshaller(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    move-result-object v3

    .line 185
    .local v3, "marsh":Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;
    const/16 v7, 0x2d

    invoke-interface {v3, v4, v7}, Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;->marshal(Ljava/lang/Object;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 187
    .local v5, "res":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 189
    .local v6, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 190
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    add-int/lit8 v7, v7, -0x5

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 191
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->requestId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 192
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->clientId()Ljava/util/UUID;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 193
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->destinationId()Ljava/util/UUID;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-object v1, v5

    .line 195
    goto/16 :goto_0
.end method

.method protected marshaller(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;
    .locals 2
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .prologue
    .line 794
    sget-object v1, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->MARSHALLER:Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/nio/GridNioSessionMetaKey;->ordinal()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->meta(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    .line 796
    .local v0, "marsh":Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 798
    :cond_0
    return-object v0
.end method

.method protected parseClientMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    .locals 6
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "state"    # Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 486
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->routerClient:Z

    if-eqz v2, :cond_0

    .line 487
    new-instance v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->buffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->header()Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;->reqId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->header()Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;->clientId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->header()Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;->destinationId()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;-><init>([BLjava/lang/Long;Ljava/util/UUID;Ljava/util/UUID;)V

    .line 503
    .local v1, "msg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    :goto_0
    return-object v1

    .line 494
    .end local v1    # "msg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;->marshaller(Lorg/apache/ignite/internal/util/nio/GridNioSession;)Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;

    move-result-object v0

    .line 496
    .local v0, "marsh":Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->buffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;->unmarshal([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    .line 498
    .restart local v1    # "msg":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->header()Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;->reqId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->requestId(J)V

    .line 499
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->header()Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;->clientId()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->clientId(Ljava/util/UUID;)V

    .line 500
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$ParserState;->header()Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser$HeaderData;->destinationId()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->destinationId(Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 803
    const-class v0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestParser;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

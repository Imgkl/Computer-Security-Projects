.class public Lcom/genie_connect/common/utils/StreamUtils;
.super Ljava/lang/Object;
.source "StreamUtils.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final GZIP_MAGIC_NUMBER:[B

.field private static final sDebug:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/genie_connect/common/utils/StreamUtils;->sDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/genie_connect/common/utils/StreamUtils;->GZIP_MAGIC_NUMBER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1ft
        -0x75t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteToBinary(B)Ljava/lang/String;
    .locals 4
    .param p0, "bite"    # B

    .prologue
    .line 49
    const-string v0, "%8s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    and-int/lit16 v3, p0, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closable"    # Ljava/io/Closeable;

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "^ NET: Error while closing closable."

    invoke-static {v1, v0}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;

    .prologue
    .line 172
    if-nez p0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 179
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "output"    # Ljava/io/OutputStream;

    .prologue
    .line 149
    if-nez p0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 156
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static convertStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 69
    :try_start_0
    invoke-static {p0, p1}, Lcom/genie_connect/common/utils/StreamUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    :goto_0
    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    const-string v1, ""

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 202
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 203
    .local v1, "count":I
    const/4 v2, 0x0

    .line 204
    .local v2, "n":I
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v3, v2, :cond_0

    .line 205
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 206
    add-int/2addr v1, v2

    goto :goto_0

    .line 208
    :cond_0
    return v1
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 4
    .param p0, "input"    # Ljava/io/Reader;
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    const/16 v3, 0x1000

    new-array v0, v3, [C

    .line 242
    .local v0, "buffer":[C
    const/4 v1, 0x0

    .line 243
    .local v1, "count":I
    const/4 v2, 0x0

    .line 244
    .local v2, "n":I
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    if-eq v3, v2, :cond_0

    .line 245
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 246
    add-int/2addr v1, v2

    goto :goto_0

    .line 248
    :cond_0
    return v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/Writer;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 227
    .local v0, "in":Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lcom/genie_connect/common/utils/StreamUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 228
    return-void
.end method

.method private static debugBinary([B[B)Ljava/lang/String;
    .locals 5
    .param p0, "actual"    # [B
    .param p1, "expected"    # [B

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Got \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    aget-byte v1, p0, v2

    invoke-static {v1}, Lcom/genie_connect/common/utils/StreamUtils;->byteToBinary(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    aget-byte v1, p0, v3

    invoke-static {v1}, Lcom/genie_connect/common/utils/StreamUtils;->byteToBinary(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "\' Expected \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    aget-byte v1, p1, v2

    invoke-static {v1}, Lcom/genie_connect/common/utils/StreamUtils;->byteToBinary(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    aget-byte v1, p1, v3

    invoke-static {v1}, Lcom/genie_connect/common/utils/StreamUtils;->byteToBinary(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDecompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 8
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 102
    const/4 v0, 0x2

    .line 104
    .local v0, "bytesToPeek":I
    new-instance v1, Ljava/io/PushbackInputStream;

    invoke-direct {v1, p0, v4}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 105
    .local v1, "pb":Ljava/io/PushbackInputStream;
    new-array v3, v4, [B

    .line 107
    .local v3, "signature":[B
    invoke-virtual {v1, v3}, Ljava/io/PushbackInputStream;->read([B)I

    .line 108
    invoke-virtual {v1, v3}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 113
    aget-byte v4, v3, v6

    sget-object v5, Lcom/genie_connect/common/utils/StreamUtils;->GZIP_MAGIC_NUMBER:[B

    aget-byte v5, v5, v6

    if-ne v4, v5, :cond_1

    aget-byte v4, v3, v7

    sget-object v5, Lcom/genie_connect/common/utils/StreamUtils;->GZIP_MAGIC_NUMBER:[B

    aget-byte v5, v5, v7

    if-ne v4, v5, :cond_1

    .line 115
    sget-object v4, Lcom/genie_connect/common/utils/StreamUtils;->sDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: Stream is GZIPPED! - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/common/utils/StreamUtils;->GZIP_MAGIC_NUMBER:[B

    invoke-static {v3, v5}, Lcom/genie_connect/common/utils/StreamUtils;->debugBinary([B[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/common/utils/CommonLog;->info(Ljava/lang/String;)V

    .line 119
    :cond_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 129
    .local v2, "result":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 122
    .end local v2    # "result":Ljava/io/InputStream;
    :cond_1
    sget-object v4, Lcom/genie_connect/common/utils/StreamUtils;->sDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ NET: Stream is NOT GZIPPED! - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/common/utils/StreamUtils;->GZIP_MAGIC_NUMBER:[B

    invoke-static {v3, v5}, Lcom/genie_connect/common/utils/StreamUtils;->debugBinary([B[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/common/utils/CommonLog;->info(Ljava/lang/String;)V

    .line 126
    :cond_2
    move-object v2, v1

    .restart local v2    # "result":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/genie_connect/common/utils/StreamUtils;->sDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static setDebugEnabled(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 137
    sget-object v0, Lcom/genie_connect/common/utils/StreamUtils;->sDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 138
    return-void
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 266
    .local v0, "sw":Ljava/io/StringWriter;
    invoke-static {p0, v0, p1}, Lcom/genie_connect/common/utils/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

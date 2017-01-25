.class public Lcom/genie_connect/common/utils/crypt/HashHelper;
.super Ljava/lang/Object;
.source "HashHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/common/utils/crypt/HashHelper;->base64Decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static base64Decode([B)[B
    .locals 1
    .param p0, "input"    # [B

    .prologue
    .line 41
    invoke-static {p0}, Lorg/apache/commons/codec_1_9/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static base64Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/common/utils/crypt/HashHelper;->base64Encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static base64Encode([B)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # [B

    .prologue
    .line 49
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec_1_9/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static blankIfNull([B)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # [B

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const-string v0, ""

    .line 60
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/apache/commons/codec_1_9/binary/Hex;->encodeHex([BZ)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static md5(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 73
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/codec_1_9/digest/DigestUtils;->md5(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/common/utils/crypt/HashHelper;->blankIfNull([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 78
    invoke-static {p0}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 81
    :goto_0
    return-object v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "^ HASHHELPER: Unable to process stream for MD5 hashing."

    invoke-static {v1}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-static {p0}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 81
    const-string v1, ""

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-static {p0}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p0}, Lorg/apache/commons/codec_1_9/digest/DigestUtils;->md5(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/common/utils/crypt/HashHelper;->blankIfNull([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha1(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 96
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/codec_1_9/digest/DigestUtils;->sha1(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/common/utils/crypt/HashHelper;->blankIfNull([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 101
    invoke-static {p0}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 104
    :goto_0
    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "^ HASHHELPER: Unable to process stream for SHA1 hashing."

    invoke-static {v1}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    invoke-static {p0}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 104
    const-string v1, ""

    goto :goto_0

    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-static {p0}, Lcom/genie_connect/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p0}, Lorg/apache/commons/codec_1_9/digest/DigestUtils;->sha1(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/common/utils/crypt/HashHelper;->blankIfNull([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

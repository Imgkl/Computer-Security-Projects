.class public abstract Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;
.super Ljava/lang/Object;
.source "GridRestProtocolAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/rest/GridRestProtocol;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field protected final ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field protected host:Ljava/net/InetAddress;

.field protected final log:Lorg/apache/ignite/IgniteLogger;

.field protected port:I

.field protected final secretKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->$assertionsDisabled:Z

    .line 41
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->UTF_8:Ljava/nio/charset/Charset;

    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    .line 70
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->secretKey:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method protected final assertParameter(ZLjava/lang/String;)V
    .locals 3
    .param p1, "cond"    # Z
    .param p2, "condDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REST protocol parameter failed condition check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    return-void
.end method

.method protected authenticate(Ljava/lang/String;)Z
    .locals 11
    .param p1, "tok"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    .line 86
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->secretKey:Ljava/lang/String;

    invoke-static {v9}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 87
    const/4 v8, 0x1

    .line 117
    :cond_0
    :goto_0
    return v8

    .line 89
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 92
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v9, ":"

    invoke-direct {v6, p1, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v6, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 97
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "ts":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "hash":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->secretKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "s":Ljava/lang/String;
    :try_start_0
    const-string v9, "SHA-1"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 105
    .local v4, "md":Ljava/security/MessageDigest;
    new-instance v2, Lsun/misc/BASE64Encoder;

    invoke-direct {v2}, Lsun/misc/BASE64Encoder;-><init>()V

    .line 107
    .local v2, "enc":Lsun/misc/BASE64Encoder;
    sget-object v9, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 109
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-virtual {v2, v9}, Lsun/misc/BASE64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "compHash":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_0

    .line 113
    .end local v0    # "compHash":Ljava/lang/String;
    .end local v2    # "enc":Lsun/misc/BASE64Encoder;
    .end local v4    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v10, "Failed to check authentication signature."

    invoke-static {v9, v10, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected config()Lorg/apache/ignite/configuration/ConnectorConfiguration;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getAddressPropertyName()Ljava/lang/String;
.end method

.method protected abstract getHostNamePropertyName()Ljava/lang/String;
.end method

.method protected abstract getPortPropertyName()Ljava/lang/String;
.end method

.method public getProperties()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 155
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->host:Ljava/net/InetAddress;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->host:Ljava/net/InetAddress;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveLocalAddresses(Ljava/net/InetAddress;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    .line 158
    .local v0, "addrs":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/String;>;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :goto_0
    iget v3, p0, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->port:I

    if-lez v3, :cond_1

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/apache/ignite/lang/IgniteBiTuple;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->getAddressPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->getHostNamePropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->getPortPropertyName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->port:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 167
    .end local v0    # "addrs":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/String;>;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :goto_1
    return-object v2

    :cond_0
    move-object v0, v2

    .line 155
    goto :goto_0

    .line 158
    .restart local v0    # "addrs":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/String;>;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_1

    .line 166
    .end local v0    # "addrs":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/util/Collection<Ljava/lang/String;>;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :catch_0
    move-exception v1

    .line 167
    .local v1, "ignored":Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 166
    .end local v1    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public onKernalStart()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method protected startInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command protocol successfully started [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->host:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected stopInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command protocol successfully stopped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/protocols/GridRestProtocolAdapter;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

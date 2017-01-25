.class public Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;
.super Ljava/lang/Object;
.source "GridTcpRouterConfiguration.java"


# static fields
.field public static final DFLT_PORT_RANGE:I = 0x0

.field public static final DFLT_SERVERS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DFLT_TCP_HOST:Ljava/lang/String; = "0.0.0.0"

.field public static final DFLT_TCP_NODELAY:Z = true

.field public static final DFLT_TCP_PORT:I = 0x2bcc


# instance fields
.field private credsProvider:Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;

.field private host:Ljava/lang/String;

.field private idleTimeout:J

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private noDelay:Z

.field private port:I

.field private portRange:I

.field private srvrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sslClientAuth:Z

.field private sslCtxFactory:Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "127.0.0.1:11211"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->DFLT_SERVERS:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->host:Ljava/lang/String;

    .line 61
    const/16 v0, 0x2bcc

    iput v0, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->port:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->portRange:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->noDelay:Z

    .line 71
    const-wide/16 v0, 0x1b58

    iput-wide v0, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->idleTimeout:J

    .line 80
    sget-object v0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->DFLT_SERVERS:Ljava/util/Collection;

    iput-object v0, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->srvrs:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getIdleTimeout()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->idleTimeout:J

    return-wide v0
.end method

.method public getLogger()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->port:I

    return v0
.end method

.method public getPortRange()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->portRange:I

    return v0
.end method

.method public getSecurityCredentialsProvider()Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->credsProvider:Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;

    return-object v0
.end method

.method public getServers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->srvrs:Ljava/util/Collection;

    return-object v0
.end method

.method public getSslContextFactory()Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->sslCtxFactory:Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

    return-object v0
.end method

.method public isNoDelay()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->noDelay:Z

    return v0
.end method

.method public isSslClientAuth()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->sslClientAuth:Z

    return v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->host:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setIdleTimeout(J)V
    .locals 1
    .param p1, "idleTimeout"    # J

    .prologue
    .line 252
    iput-wide p1, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->idleTimeout:J

    .line 253
    return-void
.end method

.method public setLogger(Lorg/apache/ignite/IgniteLogger;)V
    .locals 0
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 290
    iput-object p1, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->log:Lorg/apache/ignite/IgniteLogger;

    .line 291
    return-void
.end method

.method public setNoDelay(Z)V
    .locals 0
    .param p1, "noDelay"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->noDelay:Z

    .line 244
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 219
    iput p1, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->port:I

    .line 220
    return-void
.end method

.method public setPortRange(I)V
    .locals 2
    .param p1, "portRange"    # I

    .prologue
    .line 231
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "portRange >= 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 233
    iput p1, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->portRange:I

    .line 234
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSecurityCredentialsProvider(Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;)V
    .locals 0
    .param p1, "credsProvider"    # Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;

    .prologue
    .line 299
    iput-object p1, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->credsProvider:Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;

    .line 300
    return-void
.end method

.method public setServers(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "srvrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->srvrs:Ljava/util/Collection;

    .line 282
    return-void
.end method

.method public setSslClientAuth(Z)V
    .locals 0
    .param p1, "sslClientAuth"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->sslClientAuth:Z

    .line 263
    return-void
.end method

.method public setSslContextFactory(Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;)V
    .locals 0
    .param p1, "sslCtxFactory"    # Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

    .prologue
    .line 272
    iput-object p1, p0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->sslCtxFactory:Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

    .line 273
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    const-class v0, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

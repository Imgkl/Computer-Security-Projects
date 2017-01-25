.class public Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridUrlConnection;
.super Ljava/net/URLConnection;
.source "GridUrlConnection.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private in:Ljava/io/InputStream;

.field private mgr:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridUrlConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridUrlConnection;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URL;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "mgr"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 45
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridUrlConnection;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_0
    iput-object p2, p0, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridUrlConnection;->mgr:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    .line 48
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridUrlConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    .line 55
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/lang/IgniteUuid;->fromString(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    .line 58
    .local v1, "ldrId":Lorg/apache/ignite/lang/IgniteUuid;
    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridUrlConnection;->mgr:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    invoke-virtual {v4, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getDeployment(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v0

    .line 62
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridUrlConnection;->in:Ljava/io/InputStream;

    .line 66
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridUrlConnection;->connected:Z

    .line 68
    :cond_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridUrlConnection;->in:Ljava/io/InputStream;

    return-object v0
.end method

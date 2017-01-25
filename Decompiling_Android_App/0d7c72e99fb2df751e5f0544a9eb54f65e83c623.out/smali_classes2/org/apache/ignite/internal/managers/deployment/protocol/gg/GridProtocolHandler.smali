.class public Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridProtocolHandler;
.super Ljava/net/URLStreamHandler;
.source "GridProtocolHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static mgr:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridProtocolHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridProtocolHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method

.method public static deregisterDeploymentManager()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridProtocolHandler;->mgr:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    .line 48
    return-void
.end method

.method public static registerDeploymentManager(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;)V
    .locals 1
    .param p0, "mgr"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    .prologue
    .line 38
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridProtocolHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_0
    sput-object p0, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridProtocolHandler;->mgr:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    .line 41
    return-void
.end method


# virtual methods
.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridUrlConnection;

    sget-object v1, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridProtocolHandler;->mgr:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    invoke-direct {v0, p1, v1}, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridUrlConnection;-><init>(Ljava/net/URL;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;)V

    return-object v0
.end method

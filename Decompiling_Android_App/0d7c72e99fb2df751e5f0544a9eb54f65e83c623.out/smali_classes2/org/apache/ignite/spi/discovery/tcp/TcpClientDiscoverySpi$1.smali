.class Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$1;
.super Ljava/lang/Object;
.source "TcpClientDiscoverySpi.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;->getRemoteNodes()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$1;->this$0:Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 338
    check-cast p1, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpi$1;->apply(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;)Z
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;

    .prologue
    .line 340
    invoke-virtual {p1}, Lorg/apache/ignite/spi/discovery/tcp/internal/TcpDiscoveryNode;->visible()Z

    move-result v0

    return v0
.end method

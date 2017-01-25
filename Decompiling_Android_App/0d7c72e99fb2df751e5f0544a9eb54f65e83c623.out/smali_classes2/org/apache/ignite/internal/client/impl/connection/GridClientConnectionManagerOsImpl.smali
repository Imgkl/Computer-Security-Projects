.class public Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerOsImpl;
.super Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;
.source "GridClientConnectionManagerOsImpl.java"


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljavax/net/ssl/SSLContext;Lorg/apache/ignite/internal/client/GridClientConfiguration;Ljava/util/Collection;Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;Ljava/lang/Byte;Z)V
    .locals 0
    .param p1, "clientId"    # Ljava/util/UUID;
    .param p2, "sslCtx"    # Ljavax/net/ssl/SSLContext;
    .param p3, "cfg"    # Lorg/apache/ignite/internal/client/GridClientConfiguration;
    .param p5, "top"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;
    .param p6, "marshId"    # Ljava/lang/Byte;
    .param p7, "routerClient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljavax/net/ssl/SSLContext;",
            "Lorg/apache/ignite/internal/client/GridClientConfiguration;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;",
            "Ljava/lang/Byte;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 41
    .local p4, "routers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetSocketAddress;>;"
    invoke-direct/range {p0 .. p7}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionManagerAdapter;-><init>(Ljava/util/UUID;Ljavax/net/ssl/SSLContext;Lorg/apache/ignite/internal/client/GridClientConfiguration;Ljava/util/Collection;Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;Ljava/lang/Byte;Z)V

    .line 42
    return-void
.end method


# virtual methods
.method protected init0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 47
    return-void
.end method

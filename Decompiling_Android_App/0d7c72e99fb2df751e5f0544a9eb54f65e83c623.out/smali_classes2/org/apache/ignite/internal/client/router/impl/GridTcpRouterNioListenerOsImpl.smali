.class Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerOsImpl;
.super Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;
.source "GridTcpRouterNioListenerOsImpl.java"


# direct methods
.method constructor <init>(Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;)V
    .locals 0
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p2, "client"    # Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;-><init>(Lorg/apache/ignite/IgniteLogger;Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

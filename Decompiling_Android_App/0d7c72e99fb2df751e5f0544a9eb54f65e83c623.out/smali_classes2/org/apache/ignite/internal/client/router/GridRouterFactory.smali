.class public final Lorg/apache/ignite/internal/client/router/GridRouterFactory;
.super Ljava/lang/Object;
.source "GridRouterFactory.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static tcpRouters:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/apache/ignite/internal/client/router/GridRouterFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/client/router/GridRouterFactory;->$assertionsDisabled:Z

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/client/router/GridRouterFactory;->tcpRouters:Ljava/util/concurrent/ConcurrentMap;

    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static allTcpRouters()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/client/router/GridTcpRouter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lorg/apache/ignite/internal/client/router/GridRouterFactory;->tcpRouters:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static startTcpRouter(Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;)Lorg/apache/ignite/internal/client/router/GridTcpRouter;
    .locals 6
    .param p0, "cfg"    # Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v2, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;-><init>(Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;)V

    .line 70
    .local v2, "router":Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    sget-object v3, Lorg/apache/ignite/internal/client/router/GridRouterFactory;->tcpRouters:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;

    .line 78
    .local v1, "old":Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;
    sget-boolean v3, Lorg/apache/ignite/internal/client/router/GridRouterFactory;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UUIDs collision happens [tcpRouters="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/client/router/GridRouterFactory;->tcpRouters:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", router="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 72
    .end local v1    # "old":Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start router: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "old":Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;
    :cond_0
    return-object v2
.end method

.method public static stopAllRouters()V
    .locals 3

    .prologue
    .line 118
    sget-object v2, Lorg/apache/ignite/internal/client/router/GridRouterFactory;->tcpRouters:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;

    .line 121
    .local v1, "router":Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 123
    invoke-virtual {v1}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->stop()V

    goto :goto_0

    .line 125
    .end local v1    # "router":Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;
    :cond_0
    return-void
.end method

.method public static stopTcpRouter(Ljava/util/UUID;)V
    .locals 2
    .param p0, "tcpRouterId"    # Ljava/util/UUID;

    .prologue
    .line 89
    sget-object v1, Lorg/apache/ignite/internal/client/router/GridRouterFactory;->tcpRouters:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;

    .line 91
    .local v0, "router":Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;->stop()V

    .line 93
    :cond_0
    return-void
.end method

.method public static tcpRouter(Ljava/util/UUID;)Lorg/apache/ignite/internal/client/router/GridTcpRouter;
    .locals 1
    .param p0, "id"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 102
    sget-object v0, Lorg/apache/ignite/internal/client/router/GridRouterFactory;->tcpRouters:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/router/GridTcpRouter;

    return-object v0
.end method

.class public Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;
.super Ljava/lang/Object;
.source "GridRouterCommandLineStartup.java"


# instance fields
.field private log:Lorg/apache/ignite/IgniteLogger;

.field private tcpRouter:Lorg/apache/ignite/lifecycle/LifecycleAware;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 15
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 99
    const-string v10, "   __________  ________________ "

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    const-string v12, "  /  _/ ___/ |/ /  _/_  __/ __/ "

    aput-object v12, v11, v9

    const-string v12, " _/ // (_ /    // /  / / / _/   "

    aput-object v12, v11, v4

    const-string v12, "/___/\\___/_/|_/___/ /_/ /___/  "

    aput-object v12, v11, v13

    const/4 v12, 0x3

    const-string v13, " "

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "Ignite Router Command Line Loader"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ver. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lorg/apache/ignite/internal/IgniteVersionUtils;->ACK_VER_STR:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, "2015 Copyright(C) Apache Software Foundation"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    const-string v13, " "

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    sget-object v10, Lorg/apache/ignite/internal/IgniteComponentType;->SPRING:Lorg/apache/ignite/internal/IgniteComponentType;

    invoke-virtual {v10, v9}, Lorg/apache/ignite/internal/IgniteComponentType;->create(Z)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/util/spring/IgniteSpringHelper;

    .line 113
    .local v7, "spring":Lorg/apache/ignite/internal/util/spring/IgniteSpringHelper;
    array-length v10, p0

    if-ge v10, v4, :cond_0

    .line 114
    const-string v10, "Missing XML configuration path."

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/typedef/X;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 119
    :cond_0
    aget-object v1, p0, v9

    .line 121
    .local v1, "cfgPath":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveIgniteUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 123
    .local v2, "cfgUrl":Ljava/net/URL;
    if-nez v2, :cond_1

    .line 124
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Spring XML file not found (is IGNITE_HOME set?): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lorg/apache/ignite/internal/util/typedef/X;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 129
    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const-string v11, "org/apache/log4j/Appender.class"

    invoke-virtual {v10, v11}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 131
    .local v4, "isLog4jUsed":Z
    :goto_0
    const/4 v8, 0x0

    .line 132
    .local v8, "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 134
    .local v6, "savedHnds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/logging/Handler;>;"
    if-eqz v4, :cond_2

    .line 136
    :try_start_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addLog4jNoOpLogger()Lorg/apache/ignite/lang/IgniteBiTuple;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 143
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 144
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->addJavaNoOpLogger()Ljava/util/Collection;

    move-result-object v6

    .line 149
    :cond_3
    const/4 v9, 0x2

    :try_start_1
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Lorg/apache/ignite/IgniteLogger;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    aput-object v11, v9, v10

    invoke-interface {v7, v2, v9}, Lorg/apache/ignite/internal/util/spring/IgniteSpringHelper;->loadBeans(Ljava/net/URL;[Ljava/lang/Class;)Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 152
    .local v0, "beans":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    if-eqz v4, :cond_4

    if-eqz v8, :cond_4

    .line 153
    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->removeLog4jNoOpLogger(Lorg/apache/ignite/lang/IgniteBiTuple;)V

    .line 155
    :cond_4
    if-nez v4, :cond_5

    .line 156
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->removeJavaNoOpLogger(Ljava/util/Collection;)V

    .line 159
    :cond_5
    new-instance v5, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;

    invoke-direct {v5}, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;-><init>()V

    .line 161
    .local v5, "routerStartup":Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;
    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;->start(Ljava/util/Map;)V

    .line 163
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    new-instance v10, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup$1;

    invoke-direct {v10, v5}, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup$1;-><init>(Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;)V

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 168
    return-void

    .end local v0    # "beans":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    .end local v4    # "isLog4jUsed":Z
    .end local v5    # "routerStartup":Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;
    .end local v6    # "savedHnds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/logging/Handler;>;"
    .end local v8    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_6
    move v4, v9

    .line 129
    goto :goto_0

    .line 138
    .restart local v4    # "isLog4jUsed":Z
    .restart local v6    # "savedHnds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/logging/Handler;>;"
    .restart local v8    # "t":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_0
    move-exception v3

    .line 139
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_1

    .line 152
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v4, :cond_7

    if-eqz v8, :cond_7

    .line 153
    invoke-static {v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->removeLog4jNoOpLogger(Lorg/apache/ignite/lang/IgniteBiTuple;)V

    .line 155
    :cond_7
    if-nez v4, :cond_8

    .line 156
    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->removeJavaNoOpLogger(Ljava/util/Collection;)V

    :cond_8
    throw v9
.end method


# virtual methods
.method public start(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "beans":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    const-class v2, Lorg/apache/ignite/IgniteLogger;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/IgniteLogger;

    iput-object v2, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;->log:Lorg/apache/ignite/IgniteLogger;

    .line 54
    iget-object v2, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;->log:Lorg/apache/ignite/IgniteLogger;

    if-nez v2, :cond_0

    .line 55
    iget-object v2, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "Failed to find logger definition in application context. Stopping the router."

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 76
    :goto_0
    return-void

    .line 60
    :cond_0
    const-class v2, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;

    .line 62
    .local v1, "tcpCfg":Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;
    if-nez v1, :cond_1

    .line 63
    iget-object v2, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v3, "TCP router startup skipped (configuration not found)."

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_1
    new-instance v2, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;

    invoke-direct {v2, v1}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterImpl;-><init>(Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;->tcpRouter:Lorg/apache/ignite/lifecycle/LifecycleAware;

    .line 68
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;->tcpRouter:Lorg/apache/ignite/lifecycle/LifecycleAware;

    invoke-interface {v2}, Lorg/apache/ignite/lifecycle/LifecycleAware;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start TCP router on port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/ignite/internal/client/router/GridTcpRouterConfiguration;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 73
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;->tcpRouter:Lorg/apache/ignite/lifecycle/LifecycleAware;

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;->tcpRouter:Lorg/apache/ignite/lifecycle/LifecycleAware;

    if-eqz v1, :cond_0

    .line 84
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;->tcpRouter:Lorg/apache/ignite/lifecycle/LifecycleAware;

    invoke-interface {v1}, Lorg/apache/ignite/lifecycle/LifecycleAware;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Error while stopping the router."

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

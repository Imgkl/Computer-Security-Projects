.class public Lorg/apache/ignite/Ignition;
.super Ljava/lang/Object;
.source "Ignition.java"


# static fields
.field public static final KILL_EXIT_CODE:I = 0x82

.field public static final RESTART_EXIT_CODE:I = 0xfa


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public static addListener(Lorg/apache/ignite/IgnitionListener;)V
    .locals 0
    .param p0, "lsnr"    # Lorg/apache/ignite/IgnitionListener;

    .prologue
    .line 473
    invoke-static {p0}, Lorg/apache/ignite/internal/IgnitionEx;->addListener(Lorg/apache/ignite/IgnitionListener;)V

    .line 474
    return-void
.end method

.method public static allGrids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/Ignite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    invoke-static {}, Lorg/apache/ignite/internal/IgnitionEx;->allGrids()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static ignite()Lorg/apache/ignite/Ignite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteIllegalStateException;
        }
    .end annotation

    .prologue
    .line 412
    invoke-static {}, Lorg/apache/ignite/internal/IgnitionEx;->grid()Lorg/apache/ignite/Ignite;

    move-result-object v0

    return-object v0
.end method

.method public static ignite(Ljava/lang/String;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteIllegalStateException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-static {p0}, Lorg/apache/ignite/internal/IgnitionEx;->grid(Ljava/lang/String;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    return-object v0
.end method

.method public static ignite(Ljava/util/UUID;)Lorg/apache/ignite/Ignite;
    .locals 1
    .param p0, "locNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteIllegalStateException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-static {p0}, Lorg/apache/ignite/internal/IgnitionEx;->grid(Ljava/util/UUID;)Lorg/apache/ignite/Ignite;

    move-result-object v0

    return-object v0
.end method

.method public static isClientMode()Z
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lorg/apache/ignite/internal/IgnitionEx;->isClientMode()Z

    move-result v0

    return v0
.end method

.method public static isDaemon()Z
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lorg/apache/ignite/internal/IgnitionEx;->isDaemon()Z

    move-result v0

    return v0
.end method

.method public static kill(Z)V
    .locals 0
    .param p0, "cancel"    # Z

    .prologue
    .line 274
    invoke-static {p0}, Lorg/apache/ignite/internal/IgnitionEx;->kill(Z)V

    .line 275
    return-void
.end method

.method public static loadSpringBean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "springXmlPath"    # Ljava/lang/String;
    .param p1, "beanName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 374
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/IgnitionEx;->loadSpringBean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public static loadSpringBean(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "springXmlUrl"    # Ljava/net/URL;
    .param p1, "beanName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 392
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/IgnitionEx;->loadSpringBean(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public static removeListener(Lorg/apache/ignite/IgnitionListener;)Z
    .locals 1
    .param p0, "lsnr"    # Lorg/apache/ignite/IgnitionListener;

    .prologue
    .line 483
    invoke-static {p0}, Lorg/apache/ignite/internal/IgnitionEx;->removeListener(Lorg/apache/ignite/IgnitionListener;)Z

    move-result v0

    return v0
.end method

.method public static restart(Z)V
    .locals 0
    .param p0, "cancel"    # Z

    .prologue
    .line 251
    invoke-static {p0}, Lorg/apache/ignite/internal/IgnitionEx;->restart(Z)V

    .line 252
    return-void
.end method

.method public static setClientMode(Z)V
    .locals 0
    .param p0, "clientMode"    # Z

    .prologue
    .line 140
    invoke-static {p0}, Lorg/apache/ignite/internal/IgnitionEx;->setClientMode(Z)V

    .line 141
    return-void
.end method

.method public static setDaemon(Z)V
    .locals 0
    .param p0, "daemon"    # Z

    .prologue
    .line 117
    invoke-static {p0}, Lorg/apache/ignite/internal/IgnitionEx;->setDaemon(Z)V

    .line 118
    return-void
.end method

.method public static start()Lorg/apache/ignite/Ignite;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 288
    :try_start_0
    invoke-static {}, Lorg/apache/ignite/internal/IgnitionEx;->start()Lorg/apache/ignite/Ignite;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public static start(Ljava/lang/String;)Lorg/apache/ignite/Ignite;
    .locals 2
    .param p0, "springCfgPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 331
    :try_start_0
    invoke-static {p0}, Lorg/apache/ignite/internal/IgnitionEx;->start(Ljava/lang/String;)Lorg/apache/ignite/Ignite;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public static start(Ljava/net/URL;)Lorg/apache/ignite/Ignite;
    .locals 2
    .param p0, "springCfgUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 356
    :try_start_0
    invoke-static {p0}, Lorg/apache/ignite/internal/IgnitionEx;->start(Ljava/net/URL;)Lorg/apache/ignite/Ignite;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public static start(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/Ignite;
    .locals 2
    .param p0, "cfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 306
    :try_start_0
    invoke-static {p0}, Lorg/apache/ignite/internal/IgnitionEx;->start(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/Ignite;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v1

    throw v1
.end method

.method public static state()Lorg/apache/ignite/IgniteState;
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lorg/apache/ignite/internal/IgnitionEx;->state()Lorg/apache/ignite/IgniteState;

    move-result-object v0

    return-object v0
.end method

.method public static state(Ljava/lang/String;)Lorg/apache/ignite/IgniteState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 170
    invoke-static {p0}, Lorg/apache/ignite/internal/IgnitionEx;->state(Ljava/lang/String;)Lorg/apache/ignite/IgniteState;

    move-result-object v0

    return-object v0
.end method

.method public static stop(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1, "cancel"    # Z

    .prologue
    .line 208
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/IgnitionEx;->stop(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static stop(Z)Z
    .locals 1
    .param p0, "cancel"    # Z

    .prologue
    .line 185
    invoke-static {p0}, Lorg/apache/ignite/internal/IgnitionEx;->stop(Z)Z

    move-result v0

    return v0
.end method

.method public static stopAll(Z)V
    .locals 0
    .param p0, "cancel"    # Z

    .prologue
    .line 227
    invoke-static {p0}, Lorg/apache/ignite/internal/IgnitionEx;->stopAll(Z)V

    .line 228
    return-void
.end method

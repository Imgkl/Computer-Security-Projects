.class public interface abstract Lorg/apache/ignite/internal/client/router/GridTcpRouterMBean;
.super Ljava/lang/Object;
.source "GridTcpRouterMBean.java"


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean for TCP router."
.end annotation


# virtual methods
.method public abstract getHost()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Host for TCP binary protocol server."
    .end annotation
.end method

.method public abstract getPort()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Port for TCP binary protocol server."
    .end annotation
.end method

.method public abstract getReceivedCount()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of messages received by this router."
    .end annotation
.end method

.method public abstract getSendCount()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of responses returned by this router."
    .end annotation
.end method

.method public abstract getServers()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Gets list of server addresses where router\'s embedded client should connect."
    .end annotation
.end method

.method public abstract isSslClientAuth()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Flag indicating whether or not remote clients are required to have a valid SSL certificate."
    .end annotation
.end method

.method public abstract isSslEnabled()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Flag indicating whether or not SSL is enabled for incoming connections."
    .end annotation
.end method

.class public interface abstract Lorg/apache/ignite/spi/loadbalancing/roundrobin/RoundRobinLoadBalancingSpiMBean;
.super Ljava/lang/Object;
.source "RoundRobinLoadBalancingSpiMBean.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiManagementMBean;


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean that provides access to round robin load balancing SPI configuration."
.end annotation


# virtual methods
.method public abstract isPerTask()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Configuration parameter indicating whether a new round robin order should be created for every task."
    .end annotation
.end method

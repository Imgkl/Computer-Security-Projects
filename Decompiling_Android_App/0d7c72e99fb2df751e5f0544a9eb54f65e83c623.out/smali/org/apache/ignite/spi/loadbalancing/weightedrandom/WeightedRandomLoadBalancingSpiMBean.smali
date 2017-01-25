.class public interface abstract Lorg/apache/ignite/spi/loadbalancing/weightedrandom/WeightedRandomLoadBalancingSpiMBean;
.super Ljava/lang/Object;
.source "WeightedRandomLoadBalancingSpiMBean.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiManagementMBean;


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean that provides access to weighted random load balancing SPI configuration."
.end annotation


# virtual methods
.method public abstract getNodeWeight()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Weight of this node."
    .end annotation
.end method

.method public abstract isUseWeights()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Whether node weights are considered when doing random load balancing."
    .end annotation
.end method

.class public interface abstract Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpiMBean;
.super Ljava/lang/Object;
.source "AdaptiveLoadBalancingSpiMBean.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiManagementMBean;


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean that provides access to adaptive load balancing SPI configuration."
.end annotation


# virtual methods
.method public abstract getLoadProbeFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Text description of current load probing implementation used."
    .end annotation
.end method

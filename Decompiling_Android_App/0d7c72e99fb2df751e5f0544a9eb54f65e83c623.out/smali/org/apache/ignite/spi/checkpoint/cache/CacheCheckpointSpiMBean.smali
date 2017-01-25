.class public interface abstract Lorg/apache/ignite/spi/checkpoint/cache/CacheCheckpointSpiMBean;
.super Ljava/lang/Object;
.source "CacheCheckpointSpiMBean.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiManagementMBean;


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean provides information about cache checkpoint SPI."
.end annotation


# virtual methods
.method public abstract getCacheName()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Cache name to be used by this SPI."
    .end annotation
.end method

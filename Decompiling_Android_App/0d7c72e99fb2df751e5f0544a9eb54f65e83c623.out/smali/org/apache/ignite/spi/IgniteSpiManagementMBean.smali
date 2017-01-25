.class public interface abstract Lorg/apache/ignite/spi/IgniteSpiManagementMBean;
.super Ljava/lang/Object;
.source "IgniteSpiManagementMBean.java"


# virtual methods
.method public abstract getIgniteHome()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Ignite installation home folder."
    .end annotation
.end method

.method public abstract getLocalNodeId()Ljava/util/UUID;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "ID of the local node."
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Name of the SPI."
    .end annotation
.end method

.method public abstract getStartTimestamp()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Start timestamp of this SPI."
    .end annotation
.end method

.method public abstract getStartTimestampFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "String presentation of the start timestamp."
    .end annotation
.end method

.method public abstract getUpTime()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Up-time of this SPI in milliseconds."
    .end annotation
.end method

.method public abstract getUpTimeFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "String presentation of up-time for this SPI."
    .end annotation
.end method

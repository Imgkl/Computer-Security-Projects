.class public interface abstract Lorg/apache/ignite/spi/discovery/tcp/TcpClientDiscoverySpiMBean;
.super Ljava/lang/Object;
.source "TcpClientDiscoverySpiMBean.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiManagementMBean;


# virtual methods
.method public abstract getAckTimeout()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Message acknowledgement timeout."
    .end annotation
.end method

.method public abstract getAvgMessageProcessingTime()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Avg message processing time."
    .end annotation
.end method

.method public abstract getDisconnectCheckInterval()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Disconnect check interval."
    .end annotation
.end method

.method public abstract getHeartbeatFrequency()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Heartbeat frequency."
    .end annotation
.end method

.method public abstract getIpFinderFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "IP Finder."
    .end annotation
.end method

.method public abstract getMaxMessageProcessingTime()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Max message processing time."
    .end annotation
.end method

.method public abstract getMessageWorkerQueueSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Message worker queue current size."
    .end annotation
.end method

.method public abstract getNetworkTimeout()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Network timeout."
    .end annotation
.end method

.method public abstract getNodesFailed()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Nodes failed count."
    .end annotation
.end method

.method public abstract getNodesJoined()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Nodes joined count."
    .end annotation
.end method

.method public abstract getNodesLeft()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Nodes left count."
    .end annotation
.end method

.method public abstract getProcessedMessages()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Received messages by type."
    .end annotation
.end method

.method public abstract getReceivedMessages()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Received messages by type."
    .end annotation
.end method

.method public abstract getSocketTimeout()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Socket timeout."
    .end annotation
.end method

.method public abstract getThreadPriority()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Threads priority."
    .end annotation
.end method

.method public abstract getTotalProcessedMessages()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Total processed messages count."
    .end annotation
.end method

.method public abstract getTotalReceivedMessages()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Total received messages count."
    .end annotation
.end method

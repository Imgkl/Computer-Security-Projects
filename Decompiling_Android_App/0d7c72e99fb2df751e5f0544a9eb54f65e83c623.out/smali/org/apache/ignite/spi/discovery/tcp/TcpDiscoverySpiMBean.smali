.class public interface abstract Lorg/apache/ignite/spi/discovery/tcp/TcpDiscoverySpiMBean;
.super Ljava/lang/Object;
.source "TcpDiscoverySpiMBean.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiManagementMBean;


# virtual methods
.method public abstract dumpDebugInfo()V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Dump debug info."
    .end annotation
.end method

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

.method public abstract getCoordinator()Ljava/util/UUID;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Coordinator node ID."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getCoordinatorSinceTimestamp()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Local node is coordinator since."
    .end annotation
.end method

.method public abstract getHeartbeatFrequency()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Heartbeat frequency."
    .end annotation
.end method

.method public abstract getIpFinderCleanFrequency()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "IP finder clean frequency."
    .end annotation
.end method

.method public abstract getIpFinderFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "IP Finder."
    .end annotation
.end method

.method public abstract getJoinTimeout()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Join timeout."
    .end annotation
.end method

.method public abstract getLocalPort()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Local TCP port."
    .end annotation
.end method

.method public abstract getLocalPortRange()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Local TCP port range."
    .end annotation
.end method

.method public abstract getMaxAckTimeout()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum message acknowledgement timeout."
    .end annotation
.end method

.method public abstract getMaxMessageProcessingTime()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Max message processing time."
    .end annotation
.end method

.method public abstract getMaxMissedClientHeartbeats()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Max missed client heartbeats."
    .end annotation
.end method

.method public abstract getMaxMissedHeartbeats()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Max missed heartbeats."
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

.method public abstract getPendingMessagesDiscarded()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Pending messages discarded."
    .end annotation
.end method

.method public abstract getPendingMessagesRegistered()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Pending messages registered."
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

.method public abstract getReconnectCount()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Reconnect count."
    .end annotation
.end method

.method public abstract getSocketTimeout()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Socket timeout."
    .end annotation
.end method

.method public abstract getSpiState()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "SPI state."
    .end annotation
.end method

.method public abstract getStatisticsPrintFrequency()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Statistics print frequency."
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

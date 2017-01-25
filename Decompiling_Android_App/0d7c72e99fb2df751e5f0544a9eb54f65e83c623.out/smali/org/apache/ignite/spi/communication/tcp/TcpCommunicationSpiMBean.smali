.class public interface abstract Lorg/apache/ignite/spi/communication/tcp/TcpCommunicationSpiMBean;
.super Ljava/lang/Object;
.source "TcpCommunicationSpiMBean.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiManagementMBean;


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean provide access to TCP-based communication SPI."
.end annotation


# virtual methods
.method public abstract getAckSendThreshold()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of received messages after which acknowledgment is sent."
    .end annotation
.end method

.method public abstract getBufferSizeRatio()D
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Buffer size ratio."
    .end annotation
.end method

.method public abstract getConnectTimeout()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Connect timeout."
    .end annotation
.end method

.method public abstract getConnectionBufferFlushFrequency()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Connection buffer flush frequency."
    .end annotation
.end method

.method public abstract getConnectionBufferSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Connection buffer size."
    .end annotation
.end method

.method public abstract getIdleConnectionTimeout()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum idle connection time."
    .end annotation
.end method

.method public abstract getLocalAddress()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Grid node IP address."
    .end annotation
.end method

.method public abstract getLocalPort()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Port number."
    .end annotation
.end method

.method public abstract getLocalPortRange()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Local port range."
    .end annotation
.end method

.method public abstract getMaxConnectTimeout()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum connect timeout."
    .end annotation
.end method

.method public abstract getMessageQueueLimit()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Message queue size limit."
    .end annotation
.end method

.method public abstract getMinimumBufferedMessageCount()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Minimum buffered message count."
    .end annotation
.end method

.method public abstract getOutboundMessagesQueueSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Outbound messages queue size."
    .end annotation
.end method

.method public abstract getReceivedBytesCount()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Received bytes count."
    .end annotation
.end method

.method public abstract getReceivedMessagesCount()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Received messages count."
    .end annotation
.end method

.method public abstract getReconnectCount()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Reconnect count on connection failure."
    .end annotation
.end method

.method public abstract getSelectorsCount()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Count of selectors used in TCP server."
    .end annotation
.end method

.method public abstract getSentBytesCount()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Sent bytes count."
    .end annotation
.end method

.method public abstract getSentMessagesCount()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Sent messages count."
    .end annotation
.end method

.method public abstract getSocketReceiveBuffer()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Socket receive buffer."
    .end annotation
.end method

.method public abstract getSocketSendBuffer()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Socket send buffer."
    .end annotation
.end method

.method public abstract getSocketWriteTimeout()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Socket write timeout."
    .end annotation
.end method

.method public abstract getUnacknowledgedMessagesBufferSize()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum number of unacknowledged messages."
    .end annotation
.end method

.method public abstract isDirectBuffer()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Flag that indicates whether direct or heap allocated buffer is used."
    .end annotation
.end method

.method public abstract isDirectSendBuffer()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Direct send buffer."
    .end annotation
.end method

.method public abstract isTcpNoDelay()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "TCP_NODELAY socket option value."
    .end annotation
.end method

.method public abstract setConnectionBufferFlushFrequency(J)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Sets connection buffer flush frequency."
    .end annotation
.end method

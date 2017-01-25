.class public interface abstract Lorg/apache/ignite/mxbean/ClusterLocalNodeMetricsMXBean;
.super Ljava/lang/Object;
.source "ClusterLocalNodeMetricsMXBean.java"

# interfaces
.implements Lorg/apache/ignite/cluster/ClusterMetrics;


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean that provides access to all local node metrics."
.end annotation


# virtual methods
.method public abstract getAverageActiveJobs()F
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Average number of active jobs concurrently executing on the node."
    .end annotation
.end method

.method public abstract getAverageCancelledJobs()F
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Average number of cancelled jobs this node ever had running concurrently."
    .end annotation
.end method

.method public abstract getAverageCpuLoad()D
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Average of CPU load values over all metrics kept in the history."
    .end annotation
.end method

.method public abstract getAverageJobExecuteTime()D
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Average time a job takes to execute on the node."
    .end annotation
.end method

.method public abstract getAverageJobWaitTime()D
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Average time jobs spend waiting in the queue to be executed."
    .end annotation
.end method

.method public abstract getAverageRejectedJobs()F
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Average number of jobs this node rejects during collision resolution operations."
    .end annotation
.end method

.method public abstract getAverageWaitingJobs()F
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Average number of waiting jobs this node had queued."
    .end annotation
.end method

.method public abstract getBusyTimePercentage()F
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Percentage of time this node is busy executing jobs vs. idling."
    .end annotation
.end method

.method public abstract getCurrentActiveJobs()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of currently active jobs concurrently executing on the node."
    .end annotation
.end method

.method public abstract getCurrentCancelledJobs()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of cancelled jobs that are still running."
    .end annotation
.end method

.method public abstract getCurrentCpuLoad()D
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "The system load average; or a negative value if not available."
    .end annotation
.end method

.method public abstract getCurrentDaemonThreadCount()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Current number of live daemon threads."
    .end annotation
.end method

.method public abstract getCurrentGcCpuLoad()D
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Average time spent in CG since the last update."
    .end annotation
.end method

.method public abstract getCurrentIdleTime()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Time this node spend idling since executing last job."
    .end annotation
.end method

.method public abstract getCurrentJobExecuteTime()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Longest time a current job has been executing for."
    .end annotation
.end method

.method public abstract getCurrentJobWaitTime()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Current wait time of oldest job."
    .end annotation
.end method

.method public abstract getCurrentRejectedJobs()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of jobs rejected after more recent collision resolution operation."
    .end annotation
.end method

.method public abstract getCurrentThreadCount()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Current number of live threads."
    .end annotation
.end method

.method public abstract getCurrentWaitingJobs()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Number of queued jobs currently waiting to be executed."
    .end annotation
.end method

.method public abstract getHeapMemoryCommitted()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "The amount of committed memory in bytes."
    .end annotation
.end method

.method public abstract getHeapMemoryInitialized()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "The initial size of memory in bytes; -1 if undefined."
    .end annotation
.end method

.method public abstract getHeapMemoryMaximum()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "The maximum amount of memory in bytes; -1 if undefined."
    .end annotation
.end method

.method public abstract getHeapMemoryTotal()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "The total amount of memory in bytes; -1 if undefined."
    .end annotation
.end method

.method public abstract getHeapMemoryUsed()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Current heap size that is used for object allocation."
    .end annotation
.end method

.method public abstract getIdleTimePercentage()F
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Percentage of time this node is idling vs. executing jobs."
    .end annotation
.end method

.method public abstract getLastDataVersion()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Last data version."
    .end annotation
.end method

.method public abstract getLastUpdateTime()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Last update time of this node metrics."
    .end annotation
.end method

.method public abstract getMaximumActiveJobs()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum number of jobs that ever ran concurrently on this node."
    .end annotation
.end method

.method public abstract getMaximumCancelledJobs()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum number of cancelled jobs this node ever had running concurrently."
    .end annotation
.end method

.method public abstract getMaximumJobExecuteTime()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Time it took to execute the longest job on the node."
    .end annotation
.end method

.method public abstract getMaximumJobWaitTime()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum time a job ever spent waiting in a queue to be executed."
    .end annotation
.end method

.method public abstract getMaximumRejectedJobs()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum number of jobs rejected at once during a single collision resolution operation."
    .end annotation
.end method

.method public abstract getMaximumThreadCount()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "The peak live thread count."
    .end annotation
.end method

.method public abstract getMaximumWaitingJobs()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum number of waiting jobs this node had."
    .end annotation
.end method

.method public abstract getNodeStartTime()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Start time of the grid node in milliseconds."
    .end annotation
.end method

.method public abstract getNonHeapMemoryCommitted()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Amount of non-heap memory in bytes that is committed for the JVM to use."
    .end annotation
.end method

.method public abstract getNonHeapMemoryInitialized()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "The initial size of memory in bytes; -1 if undefined."
    .end annotation
.end method

.method public abstract getNonHeapMemoryMaximum()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Maximum amount of non-heap memory in bytes that can be used for memory management. -1 if undefined."
    .end annotation
.end method

.method public abstract getNonHeapMemoryTotal()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Total amount of non-heap memory in bytes that can be used for memory management. -1 if undefined."
    .end annotation
.end method

.method public abstract getNonHeapMemoryUsed()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Current non-heap memory size that is used by Java VM."
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

.method public abstract getStartTime()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Start time of the JVM in milliseconds."
    .end annotation
.end method

.method public abstract getTotalBusyTime()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Total time this node spent executing jobs."
    .end annotation
.end method

.method public abstract getTotalCancelledJobs()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Total number of cancelled jobs since node startup."
    .end annotation
.end method

.method public abstract getTotalCpus()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "The number of CPUs available to the Java Virtual Machine."
    .end annotation
.end method

.method public abstract getTotalExecutedJobs()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Total number of jobs handled by the node."
    .end annotation
.end method

.method public abstract getTotalExecutedTasks()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Total number of tasks handled by the node."
    .end annotation
.end method

.method public abstract getTotalIdleTime()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Total time this node spent idling (not executing any jobs)."
    .end annotation
.end method

.method public abstract getTotalNodes()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Total number of nodes."
    .end annotation
.end method

.method public abstract getTotalRejectedJobs()I
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Total number of jobs this node rejects during collision resolution operations since node startup."
    .end annotation
.end method

.method public abstract getTotalStartedThreadCount()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "The total number of threads started."
    .end annotation
.end method

.method public abstract getUpTime()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Uptime of the JVM in milliseconds."
    .end annotation
.end method

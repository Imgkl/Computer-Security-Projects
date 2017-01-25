.class public interface abstract Lorg/apache/ignite/mxbean/IgniteMXBean;
.super Ljava/lang/Object;
.source "IgniteMXBean.java"


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean that provides access to Kernal information."
.end annotation


# virtual methods
.method public abstract executeTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/JMException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "A shortcut method that executes given task assuming single String argument and String return type. Returns Task return value (assumed of String type)."
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;
        value = {
            "Name of the task to execute.",
            "Single task execution argument (can be null)."
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersNames;
        value = {
            "taskName",
            "arg"
        }
    .end annotation
.end method

.method public abstract getCheckpointSpiFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Formatted instance of configured checkpoint SPI implementation."
    .end annotation
.end method

.method public abstract getCollisionSpiFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Formatted instance of configured collision SPI implementations."
    .end annotation
.end method

.method public abstract getCommunicationSpiFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Formatted instance of fully configured SPI communication implementation."
    .end annotation
.end method

.method public abstract getCopyright()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Copyright statement for Ignite product."
    .end annotation
.end method

.method public abstract getDeploymentSpiFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Formatted instance of fully configured deployment SPI implementation."
    .end annotation
.end method

.method public abstract getDiscoverySpiFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Formatted instance of configured discovery SPI implementation."
    .end annotation
.end method

.method public abstract getEventStorageSpiFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Formatted instance of fully configured event SPI implementation."
    .end annotation
.end method

.method public abstract getExecutorServiceFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Formatted instance of fully configured thread pool that is used in grid."
    .end annotation
.end method

.method public abstract getFailoverSpiFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Formatted instance of fully configured failover SPI implementations."
    .end annotation
.end method

.method public abstract getFullVersion()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "String presentation of the Ignite version."
    .end annotation
.end method

.method public abstract getGridLoggerFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Formatted instance of logger that is in grid."
    .end annotation
.end method

.method public abstract getIgniteHome()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Ignite installation home folder."
    .end annotation
.end method

.method public abstract getInstanceName()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Optional kernal instance name."
    .end annotation
.end method

.method public abstract getJdkInformation()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "JDK information."
    .end annotation
.end method

.method public abstract getLifecycleBeansFormatted()Ljava/util/Collection;
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
        value = "String representation of lifecycle beans."
    .end annotation
.end method

.method public abstract getLoadBalancingSpiFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Formatted instance of fully configured load balancing SPI implementations."
    .end annotation
.end method

.method public abstract getLocalNodeId()Ljava/util/UUID;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Unique identifier for this node within grid."
    .end annotation
.end method

.method public abstract getMBeanServerFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Formatted instance of MBean server instance."
    .end annotation
.end method

.method public abstract getOsInformation()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "OS information."
    .end annotation
.end method

.method public abstract getOsUser()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "OS user name."
    .end annotation
.end method

.method public abstract getStartTimestamp()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Start timestamp of the kernal."
    .end annotation
.end method

.method public abstract getStartTimestampFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "String presentation of the kernal start timestamp."
    .end annotation
.end method

.method public abstract getSwapSpaceSpiFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Formatted instance of configured swapspace SPI implementations."
    .end annotation
.end method

.method public abstract getUpTime()J
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Up-time of the kernal."
    .end annotation
.end method

.method public abstract getUpTimeFormatted()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "String presentation of up-time for the kernal."
    .end annotation
.end method

.method public abstract getUserAttributesFormatted()Ljava/util/Collection;
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
        value = "Collection of formatted user-defined attributes added to this node."
    .end annotation
.end method

.method public abstract getVmName()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "VM name."
    .end annotation
.end method

.method public abstract isPeerClassLoadingEnabled()Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Whether or not peer class loading (a.k.a. P2P class loading) is enabled."
    .end annotation
.end method

.method public abstract pingNode(Ljava/lang/String;)Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Pings node with given node ID to see whether it is alive. Returns whether or not node is alive."
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;
        value = {
            "String presentation of node ID. See java.util.UUID class for details."
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersNames;
        value = {
            "nodeId"
        }
    .end annotation
.end method

.method public abstract pingNodeByAddress(Ljava/lang/String;)Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Pings node with given host name to see if it is alive. Returns whether or not node is alive."
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;
        value = {
            "Host name or IP address of the node to ping."
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersNames;
        value = {
            "host"
        }
    .end annotation
.end method

.method public abstract printLastErrors()V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Prints last suppressed errors."
    .end annotation
.end method

.method public abstract removeCheckpoint(Ljava/lang/String;)Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "This method allows manually remove the checkpoint with given key. Return true if specified checkpoint was indeed removed, false otherwise."
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;
        value = {
            "Checkpoint key to remove."
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersNames;
        value = {
            "key"
        }
    .end annotation
.end method

.method public abstract undeployTaskFromGrid(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/JMException;
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Makes the best attempt to undeploy a task from the whole grid."
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;
        value = {
            "Name of the task to undeploy."
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersNames;
        value = {
            "taskName"
        }
    .end annotation
.end method

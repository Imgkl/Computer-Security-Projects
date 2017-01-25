.class public interface abstract Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpiMBean;
.super Ljava/lang/Object;
.source "SharedFsCheckpointSpiMBean.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpiManagementMBean;


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean for shared file system based checkpoint SPI."
.end annotation


# virtual methods
.method public abstract getCurrentDirectoryPath()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Gets path to the directory where all checkpoints are saved."
    .end annotation
.end method

.method public abstract getDirectoryPaths()Ljava/util/Collection;
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
        value = "Gets collection of all configured paths where checkpoints can be saved."
    .end annotation
.end method

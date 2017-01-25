.class public interface abstract Lorg/apache/ignite/mxbean/IgnitionMXBean;
.super Ljava/lang/Object;
.source "IgnitionMXBean.java"


# annotations
.annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
    value = "MBean that provides access to grid life-cycle operations."
.end annotation


# virtual methods
.method public abstract getState()Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "State of default grid instance."
    .end annotation
.end method

.method public abstract getState(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Gets state for a given grid instance. Returns state of grid instance with given name."
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;
        value = {
            "Name of grid instance."
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersNames;
        value = {
            "name"
        }
    .end annotation
.end method

.method public abstract restart(Z)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Restart JVM."
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;
        value = {
            "If true then all jobs currently executing on default grid will be cancelled.",
            "If true then method will wait for all task being executed until they finish their execution."
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersNames;
        value = {
            "cancel",
            "wait"
        }
    .end annotation
.end method

.method public abstract stop(Ljava/lang/String;Z)Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Stops grid by name. Cancels running jobs if cancel is true. Returns true if named grid instance was indeed found and stopped, false otherwise."
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;
        value = {
            "Grid instance name to stop.",
            "Whether or not running jobs should be cancelled."
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersNames;
        value = {
            "name",
            "cancel"
        }
    .end annotation
.end method

.method public abstract stop(Z)Z
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Stops default grid instance. Return true if default grid instance was indeed stopped, false otherwise (if it was not started)."
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;
        value = {
            "If true then all jobs currently executing on default grid will be cancelled."
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersNames;
        value = {
            "cancel"
        }
    .end annotation
.end method

.method public abstract stopAll(Z)V
    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanDescription;
        value = "Stops all started grids."
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersDescriptions;
        value = {
            "If true then all jobs currently executing on all grids will be cancelled."
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/mxbean/MXBeanParametersNames;
        value = {
            "cancel"
        }
    .end annotation
.end method

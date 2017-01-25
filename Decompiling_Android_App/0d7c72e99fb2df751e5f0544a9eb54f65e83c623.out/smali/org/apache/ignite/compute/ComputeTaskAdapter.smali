.class public abstract Lorg/apache/ignite/compute/ComputeTaskAdapter;
.super Ljava/lang/Object;
.source "ComputeTaskAdapter.java"

# interfaces
.implements Lorg/apache/ignite/compute/ComputeTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/compute/ComputeTask",
        "<TT;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/ignite/compute/ComputeTaskAdapter;, "Lorg/apache/ignite/compute/ComputeTaskAdapter<TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result(Lorg/apache/ignite/compute/ComputeJobResult;Ljava/util/List;)Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    .locals 4
    .param p1, "res"    # Lorg/apache/ignite/compute/ComputeJobResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Lorg/apache/ignite/compute/ComputeJobResultPolicy;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lorg/apache/ignite/compute/ComputeTaskAdapter;, "Lorg/apache/ignite/compute/ComputeTaskAdapter<TT;TR;>;"
    .local p2, "rcvd":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    invoke-interface {p1}, Lorg/apache/ignite/compute/ComputeJobResult;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v0

    .line 94
    .local v0, "e":Lorg/apache/ignite/IgniteException;
    if-eqz v0, :cond_2

    .line 96
    instance-of v1, v0, Lorg/apache/ignite/compute/ComputeExecutionRejectedException;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/apache/ignite/cluster/ClusterTopologyException;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/apache/ignite/compute/ComputeJobFailoverException;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/IgniteException;->hasCause([Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    sget-object v1, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->FAILOVER:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    .line 107
    :goto_0
    return-object v1

    .line 102
    :cond_1
    new-instance v1, Lorg/apache/ignite/IgniteException;

    const-string v2, "Remote job threw user exception (override or implement ComputeTask.result(..) method if you would like to have automatic failover for this exception)."

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 107
    :cond_2
    sget-object v1, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->WAIT:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    goto :goto_0
.end method

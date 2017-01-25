.class Lorg/apache/ignite/internal/cluster/IgniteKillTask;
.super Lorg/apache/ignite/compute/ComputeTaskAdapter;
.source "IgniteKillTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/cluster/IgniteKillTask$1;,
        Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/compute/ComputeTaskAdapter",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private restart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/cluster/IgniteKillTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/cluster/IgniteKillTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/ignite/compute/ComputeTaskAdapter;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/cluster/IgniteKillTask;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/cluster/IgniteKillTask;

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/apache/ignite/internal/cluster/IgniteKillTask;->restart:Z

    return v0
.end method

.method private daemon(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 2
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 63
    const-string/jumbo v1, "true"

    const-string v0, "org.apache.ignite.daemon"

    invoke-interface {p1, v0}, Lorg/apache/ignite/cluster/ClusterNode;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public map(Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/Map;
    .locals 5
    .param p2, "restart"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/Map",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/cluster/IgniteKillTask;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 45
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lorg/apache/ignite/internal/cluster/IgniteKillTask;->restart:Z

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v1

    .line 49
    .local v1, "jobs":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    .line 50
    .local v2, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-direct {p0, v2}, Lorg/apache/ignite/internal/cluster/IgniteKillTask;->daemon(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    new-instance v3, Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob;-><init>(Lorg/apache/ignite/internal/cluster/IgniteKillTask;Lorg/apache/ignite/internal/cluster/IgniteKillTask$1;)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    .end local v2    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_2
    return-object v1
.end method

.method public bridge synthetic map(Ljava/util/List;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 33
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/cluster/IgniteKillTask;->map(Ljava/util/List;Ljava/lang/Boolean;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reduce(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/cluster/IgniteKillTask;->reduce(Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public reduce(Ljava/util/List;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public result(Lorg/apache/ignite/compute/ComputeJobResult;Ljava/util/List;)Lorg/apache/ignite/compute/ComputeJobResultPolicy;
    .locals 1
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

    .prologue
    .line 68
    .local p2, "rcvd":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    sget-object v0, Lorg/apache/ignite/compute/ComputeJobResultPolicy;->WAIT:Lorg/apache/ignite/compute/ComputeJobResultPolicy;

    return-object v0
.end method

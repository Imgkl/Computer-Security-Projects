.class final Lorg/apache/ignite/internal/ComputeTaskInternalFuture$1;
.super Ljava/lang/Object;
.source "ComputeTaskInternalFuture.java"

# interfaces
.implements Lorg/apache/ignite/compute/ComputeTaskSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->finishedFuture(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Class;Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field final synthetic val$id:Lorg/apache/ignite/lang/IgniteUuid;

.field final synthetic val$taskCls:Ljava/lang/Class;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Ljava/lang/Class;Lorg/apache/ignite/internal/GridKernalContext;JLorg/apache/ignite/lang/IgniteUuid;)V
    .locals 1

    .prologue
    .line 80
    iput-object p1, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture$1;->val$taskCls:Ljava/lang/Class;

    iput-object p2, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iput-wide p3, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture$1;->val$time:J

    iput-object p5, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture$1;->val$id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAttributeListener(Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;Z)V
    .locals 0
    .param p1, "lsnr"    # Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;
    .param p2, "rewind"    # Z

    .prologue
    .line 134
    return-void
.end method

.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 121
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture$1;->val$time:J

    return-wide v0
.end method

.method public getId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture$1;->val$id:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public getJobSibling(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/compute/ComputeJobSibling;
    .locals 1
    .param p1, "jobId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJobSiblings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobSibling;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture$1;->val$time:J

    return-wide v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture$1;->val$taskCls:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTaskNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture$1;->val$ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public getTopology()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadCheckpoint(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 177
    new-instance v0, Lorg/apache/ignite/IgniteException;

    const-string v1, "Session was closed."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mapFuture()Lorg/apache/ignite/lang/IgniteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl;-><init>()V

    return-object v0
.end method

.method public refreshJobSiblings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobSibling;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAttributeListener(Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;)Z
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/compute/ComputeTaskSessionAttributeListener;

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public removeCheckpoint(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Lorg/apache/ignite/IgniteException;

    const-string v1, "Session was closed."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveCheckpoint(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 157
    new-instance v0, Lorg/apache/ignite/IgniteException;

    const-string v1, "Session was closed."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveCheckpoint(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/compute/ComputeTaskSessionScope;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "scope"    # Lorg/apache/ignite/compute/ComputeTaskSessionScope;
    .param p4, "timeout"    # J

    .prologue
    .line 165
    new-instance v0, Lorg/apache/ignite/IgniteException;

    const-string v1, "Session was closed."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveCheckpoint(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/ignite/compute/ComputeTaskSessionScope;JZ)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "scope"    # Lorg/apache/ignite/compute/ComputeTaskSessionScope;
    .param p4, "timeout"    # J
    .param p6, "overwrite"    # Z

    .prologue
    .line 173
    new-instance v0, Lorg/apache/ignite/IgniteException;

    const-string v1, "Session was closed."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttribute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 118
    return-void
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    return-void
.end method

.method public waitForAttribute(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;J)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Session was closed."

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public waitForAttribute(Ljava/lang/Object;Ljava/lang/Object;J)Z
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;J)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Session was closed."

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public waitForAttributes(Ljava/util/Collection;J)Ljava/util/Map;
    .locals 2
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;J)",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Session was closed."

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public waitForAttributes(Ljava/util/Map;J)Z
    .locals 2
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;J)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Session was closed."

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "ComputeTaskInternalFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/ComputeTaskInternalFuture$ComputeFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private ses:Lorg/apache/ignite/compute/ComputeTaskSession;

.field private userFut:Lorg/apache/ignite/internal/ComputeTaskInternalFuture$ComputeFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture$ComputeFuture",
            "<TR;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/compute/ComputeTaskSession;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 2
    .param p1, "ses"    # Lorg/apache/ignite/compute/ComputeTaskSession;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 53
    .local p0, "this":Lorg/apache/ignite/internal/ComputeTaskInternalFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture<TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 54
    sget-boolean v0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->ses:Lorg/apache/ignite/compute/ComputeTaskSession;

    .line 58
    iput-object p2, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 60
    new-instance v0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture$ComputeFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture$ComputeFuture;-><init>(Lorg/apache/ignite/internal/ComputeTaskInternalFuture;Lorg/apache/ignite/internal/ComputeTaskInternalFuture$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->userFut:Lorg/apache/ignite/internal/ComputeTaskInternalFuture$ComputeFuture;

    .line 61
    return-void
.end method

.method public static finishedFuture(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Class;Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 7
    .param p0, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "e"    # Lorg/apache/ignite/IgniteCheckedException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/ignite/IgniteCheckedException;",
            ")",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v2, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 73
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 74
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 76
    :cond_2
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    .line 78
    .local v4, "time":J
    invoke-interface {p0}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/lang/IgniteUuid;->fromUuid(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    .line 80
    .local v6, "id":Lorg/apache/ignite/lang/IgniteUuid;
    new-instance v1, Lorg/apache/ignite/internal/ComputeTaskInternalFuture$1;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture$1;-><init>(Ljava/lang/Class;Lorg/apache/ignite/internal/GridKernalContext;JLorg/apache/ignite/lang/IgniteUuid;)V

    .line 193
    .local v1, "ses":Lorg/apache/ignite/compute/ComputeTaskSession;
    new-instance v0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    invoke-direct {v0, v1, p0}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;-><init>(Lorg/apache/ignite/compute/ComputeTaskSession;Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 195
    .local v0, "fut":Lorg/apache/ignite/internal/ComputeTaskInternalFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture<TR;>;"
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 197
    return-object v0
.end method


# virtual methods
.method public cancel()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lorg/apache/ignite/internal/ComputeTaskInternalFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->ses:Lorg/apache/ignite/compute/ComputeTaskSession;

    invoke-interface {v1}, Lorg/apache/ignite/compute/ComputeTaskSession;->getTaskName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->TASK_CANCEL:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->authorize(Ljava/lang/String;Lorg/apache/ignite/plugin/security/GridSecurityPermission;Lorg/apache/ignite/internal/processors/security/SecurityContext;)V

    .line 223
    invoke-virtual {p0}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->onCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->ses:Lorg/apache/ignite/compute/ComputeTaskSession;

    invoke-interface {v1}, Lorg/apache/ignite/compute/ComputeTaskSession;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->onCancelled(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 226
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->isCancelled()Z

    move-result v0

    goto :goto_0
.end method

.method public getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;
    .locals 2

    .prologue
    .line 213
    .local p0, "this":Lorg/apache/ignite/internal/ComputeTaskInternalFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->ses:Lorg/apache/ignite/compute/ComputeTaskSession;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access task session after future has been deserialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->ses:Lorg/apache/ignite/compute/ComputeTaskSession;

    return-object v0
.end method

.method public publicFuture()Lorg/apache/ignite/compute/ComputeTaskFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/compute/ComputeTaskFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lorg/apache/ignite/internal/ComputeTaskInternalFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->userFut:Lorg/apache/ignite/internal/ComputeTaskInternalFuture$ComputeFuture;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 234
    .local p0, "this":Lorg/apache/ignite/internal/ComputeTaskInternalFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture<TR;>;"
    const-class v0, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    const-string v1, "super"

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lorg/apache/ignite/internal/GridJobContextImpl$1;
.super Ljava/lang/Object;
.source "GridJobContextImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/GridJobContextImpl;->holdcc(J)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final id:Lorg/apache/ignite/lang/IgniteUuid;

.field final synthetic this$0:Lorg/apache/ignite/internal/GridJobContextImpl;

.field final synthetic val$endTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    const-class v0, Lorg/apache/ignite/internal/GridJobContextImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/GridJobContextImpl$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/GridJobContextImpl;J)V
    .locals 2

    .prologue
    .line 178
    iput-object p1, p0, Lorg/apache/ignite/internal/GridJobContextImpl$1;->this$0:Lorg/apache/ignite/internal/GridJobContextImpl;

    iput-wide p2, p0, Lorg/apache/ignite/internal/GridJobContextImpl$1;->val$endTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl$1;->id:Lorg/apache/ignite/lang/IgniteUuid;

    return-void
.end method


# virtual methods
.method public endTime()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl$1;->val$endTime:J

    return-wide v0
.end method

.method public onTimeout()V
    .locals 4

    .prologue
    .line 191
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobContextImpl$1;->this$0:Lorg/apache/ignite/internal/GridJobContextImpl;

    invoke-static {v2}, Lorg/apache/ignite/internal/GridJobContextImpl;->access$000(Lorg/apache/ignite/internal/GridJobContextImpl;)Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isInternal()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobContextImpl$1;->this$0:Lorg/apache/ignite/internal/GridJobContextImpl;

    invoke-static {v2}, Lorg/apache/ignite/internal/GridJobContextImpl;->access$100(Lorg/apache/ignite/internal/GridJobContextImpl;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->getManagementExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 194
    .local v1, "execSvc":Ljava/util/concurrent/ExecutorService;
    :goto_0
    sget-boolean v2, Lorg/apache/ignite/internal/GridJobContextImpl$1;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v1    # "execSvc":Ljava/util/concurrent/ExecutorService;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobContextImpl$1;->this$0:Lorg/apache/ignite/internal/GridJobContextImpl;

    invoke-static {v2}, Lorg/apache/ignite/internal/GridJobContextImpl;->access$200(Lorg/apache/ignite/internal/GridJobContextImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    const-string v3, "Failed to execute job (will execute synchronously)."

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 205
    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobContextImpl$1;->this$0:Lorg/apache/ignite/internal/GridJobContextImpl;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridJobContextImpl;->callcc()V

    .line 207
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :goto_1
    return-void

    .line 191
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/GridJobContextImpl$1;->this$0:Lorg/apache/ignite/internal/GridJobContextImpl;

    invoke-static {v2}, Lorg/apache/ignite/internal/GridJobContextImpl;->access$100(Lorg/apache/ignite/internal/GridJobContextImpl;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    goto :goto_0

    .line 196
    .restart local v1    # "execSvc":Ljava/util/concurrent/ExecutorService;
    :cond_1
    new-instance v2, Lorg/apache/ignite/internal/GridJobContextImpl$1$1;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/GridJobContextImpl$1$1;-><init>(Lorg/apache/ignite/internal/GridJobContextImpl$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public timeoutId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl$1;->id:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

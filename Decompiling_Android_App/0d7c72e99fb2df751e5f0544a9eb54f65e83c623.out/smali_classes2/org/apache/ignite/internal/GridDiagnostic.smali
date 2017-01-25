.class final Lorg/apache/ignite/internal/GridDiagnostic;
.super Ljava/lang/Object;
.source "GridDiagnostic.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final REACH_TIMEOUT:I = 0x7d0


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/GridDiagnostic;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/GridDiagnostic;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method static runBackgroundCheck(Ljava/lang/String;Ljava/util/concurrent/Executor;Lorg/apache/ignite/IgniteLogger;)V
    .locals 6
    .param p0, "gridName"    # Ljava/lang/String;
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .param p2, "parentLog"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 51
    sget-boolean v4, Lorg/apache/ignite/internal/GridDiagnostic;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 52
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/GridDiagnostic;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 54
    :cond_1
    const-class v4, Lorg/apache/ignite/internal/GridDiagnostic;

    invoke-interface {p2, v4}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    .line 57
    .local v3, "log":Lorg/apache/ignite/IgniteLogger;
    :try_start_0
    new-instance v4, Lorg/apache/ignite/internal/GridDiagnostic$1;

    const-string v5, "grid-diagnostic-1"

    invoke-direct {v4, p0, v5, v3}, Lorg/apache/ignite/internal/GridDiagnostic$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    invoke-interface {p1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 76
    new-instance v4, Lorg/apache/ignite/internal/GridDiagnostic$2;

    const-string v5, "grid-diagnostic-2"

    invoke-direct {v4, p0, v5, v3}, Lorg/apache/ignite/internal/GridDiagnostic$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    invoke-interface {p1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 95
    new-instance v4, Lorg/apache/ignite/internal/GridDiagnostic$3;

    const-string v5, "grid-diagnostic-4"

    invoke-direct {v4, p0, v5, v3}, Lorg/apache/ignite/internal/GridDiagnostic$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    invoke-interface {p1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 107
    new-instance v4, Lorg/apache/ignite/internal/GridDiagnostic$4;

    const-string v5, "grid-diagnostic-5"

    invoke-direct {v4, p0, v5, v3}, Lorg/apache/ignite/internal/GridDiagnostic$4;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    invoke-interface {p1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 117
    new-instance v4, Lorg/apache/ignite/internal/GridDiagnostic$5;

    const-string v5, "grid-diagnostic-6"

    invoke-direct {v4, p0, v5, v3}, Lorg/apache/ignite/internal/GridDiagnostic$5;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    invoke-interface {p1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 139
    const-wide/32 v0, 0x20000000

    .line 141
    .local v0, "HALF_GB":J
    new-instance v4, Lorg/apache/ignite/internal/GridDiagnostic$6;

    const-string v5, "grid-diagnostic-7"

    invoke-direct {v4, p0, v5, v3}, Lorg/apache/ignite/internal/GridDiagnostic$6;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    invoke-interface {p1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v0    # "HALF_GB":J
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v4, "Failed to start background network diagnostics check due to thread pool execution rejection. In most cases it indicates a severe configuration problem with Ignite."

    const-string v5, "Failed to start background network diagnostics."

    invoke-static {v3, v4, v5, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

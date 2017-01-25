.class abstract Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;
.super Ljava/lang/Object;
.source "GridServiceProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BusyRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)V
    .locals 0

    .prologue
    .line 1232
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;

    .prologue
    .line 1232
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1235
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->enterBusy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1251
    :goto_0
    return-void

    .line 1238
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->svcName:Ljava/lang/ThreadLocal;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1000(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1241
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;->run0()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1247
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    .line 1249
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->svcName:Ljava/lang/ThreadLocal;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1000(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1243
    :catch_0
    move-exception v0

    .line 1244
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$4300(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when executing service: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->svcName:Ljava/lang/ThreadLocal;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1000(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1247
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    .line 1249
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->svcName:Ljava/lang/ThreadLocal;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1000(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1247
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->busyLock:Lorg/apache/ignite/internal/util/GridSpinBusyLock;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2600(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Lorg/apache/ignite/internal/util/GridSpinBusyLock;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinBusyLock;->leaveBusy()V

    .line 1249
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$BusyRunnable;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->svcName:Ljava/lang/ThreadLocal;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$1000(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v1
.end method

.method public abstract run0()V
.end method

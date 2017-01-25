.class Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$2;
.super Ljava/lang/Thread;
.source "IgnitionEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->start0(Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;)V
    .locals 0

    .prologue
    .line 1479
    iput-object p1, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$2;->this$0:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1481
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$2;->this$0:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    # getter for: Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->access$000(Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$2;->this$0:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    # getter for: Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->access$000(Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    const-string v1, "Invoking shutdown hook..."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 1484
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance$2;->this$0:Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/IgnitionEx$IgniteNamedInstance;->stop(Z)V

    .line 1485
    return-void
.end method

.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$3;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->globalSampling(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

.field final synthetic val$val:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$3;->val$val:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$3;->val$val:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->sampling(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$3;->val$val:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    const-string v1, "Sampling flag has been cleared. All further file system connections will perform logging depending on their configuration."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    .line 430
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 422
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$3;->val$val:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    const-string v1, "Sampling flag has been set to \"true\". All further file system connections will perform logging."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$3;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;->access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    const-string v1, "Sampling flag has been set to \"false\". All further file system connections will not perform logging."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

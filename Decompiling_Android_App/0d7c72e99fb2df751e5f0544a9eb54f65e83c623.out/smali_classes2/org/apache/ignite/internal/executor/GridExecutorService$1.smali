.class Lorg/apache/ignite/internal/executor/GridExecutorService$1;
.super Lorg/apache/ignite/internal/util/typedef/CX1;
.source "GridExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/executor/GridExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CX1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<*>;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/executor/GridExecutorService;

.field final synthetic val$res:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/executor/GridExecutorService;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$1;->this$0:Lorg/apache/ignite/internal/executor/GridExecutorService;

    iput-object p2, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$1;->val$res:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CX1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 261
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/executor/GridExecutorService$1;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lorg/apache/ignite/internal/executor/GridExecutorService$1;->val$res:Ljava/lang/Object;

    return-object v0
.end method

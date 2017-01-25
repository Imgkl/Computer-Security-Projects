.class Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$1;
.super Ljava/lang/Object;
.source "GridRestProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/rest/GridRestProtocolHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    .locals 1
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$1;->handleAsync(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    return-object v0
.end method

.method public handleAsync(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;

    # invokes: Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->handleAsync0(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    invoke-static {v0, p1}, Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;->access$000(Lorg/apache/ignite/internal/processors/rest/GridRestProcessor;Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

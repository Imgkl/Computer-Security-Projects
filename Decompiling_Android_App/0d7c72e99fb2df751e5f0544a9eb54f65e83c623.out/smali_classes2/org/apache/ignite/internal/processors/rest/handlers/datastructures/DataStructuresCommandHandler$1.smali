.class Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler$1;
.super Lorg/apache/ignite/internal/util/typedef/CX1;
.source "DataStructuresCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;->handleAsync(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
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
        "<*>;",
        "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler$1;->this$0:Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler;

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
    .line 61
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/datastructures/DataStructuresCommandHandler$1;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    move-result-object v0

    return-object v0
.end method

.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    invoke-direct {v0}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;-><init>()V

    .line 65
    .local v0, "res":Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->setResponse(Ljava/lang/Object;)V

    .line 67
    return-object v0
.end method

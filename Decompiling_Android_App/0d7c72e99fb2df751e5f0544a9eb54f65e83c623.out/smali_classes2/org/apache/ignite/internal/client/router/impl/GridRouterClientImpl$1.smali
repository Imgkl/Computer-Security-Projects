.class Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl$1;
.super Ljava/lang/Object;
.source "GridRouterClientImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClientPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->forwardMessage(Ljava/lang/Object;Ljava/util/UUID;B)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/client/GridClientPredicate",
        "<",
        "Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl$1;->this$0:Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p1, Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl$1;->apply(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;)Z
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/client/impl/GridClientNodeImpl;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl$1;->this$0:Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;

    # getter for: Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->cliCfg:Lorg/apache/ignite/internal/client/GridClientConfiguration;
    invoke-static {v0}, Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;->access$000(Lorg/apache/ignite/internal/client/router/impl/GridRouterClientImpl;)Lorg/apache/ignite/internal/client/GridClientConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/GridClientConfiguration;->getProtocol()Lorg/apache/ignite/internal/client/GridClientProtocol;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->restAvailable(Lorg/apache/ignite/internal/client/GridClientNode;Lorg/apache/ignite/internal/client/GridClientProtocol;)Z

    move-result v0

    return v0
.end method

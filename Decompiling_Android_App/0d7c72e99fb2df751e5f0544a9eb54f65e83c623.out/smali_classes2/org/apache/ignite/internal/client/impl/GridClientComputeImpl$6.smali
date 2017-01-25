.class Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$6;
.super Ljava/lang/Object;
.source "GridClientComputeImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->refreshNodeAsync(Ljava/util/UUID;ZZ)Lorg/apache/ignite/internal/client/GridClientFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure",
        "<",
        "Lorg/apache/ignite/internal/client/GridClientNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;

.field final synthetic val$id:Ljava/util/UUID;

.field final synthetic val$includeAttrs:Z

.field final synthetic val$includeMetrics:Z


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;Ljava/util/UUID;ZZ)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$6;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$6;->val$id:Ljava/util/UUID;

    iput-boolean p3, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$6;->val$includeAttrs:Z

    iput-boolean p4, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$6;->val$includeMetrics:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 3
    .param p1, "conn"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .param p2, "destNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientNode;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$6;->val$id:Ljava/util/UUID;

    iget-boolean v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$6;->val$includeAttrs:Z

    iget-boolean v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$6;->val$includeMetrics:Z

    invoke-virtual {p1, v0, v1, v2, p2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->node(Ljava/util/UUID;ZZLjava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientFuture;

    move-result-object v0

    return-object v0
.end method

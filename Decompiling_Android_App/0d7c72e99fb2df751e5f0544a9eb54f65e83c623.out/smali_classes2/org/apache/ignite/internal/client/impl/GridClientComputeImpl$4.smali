.class Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$4;
.super Ljava/lang/Object;
.source "GridClientComputeImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;->executeAsync(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;

.field final synthetic val$keepPortables:Z

.field final synthetic val$taskArg:Ljava/lang/Object;

.field final synthetic val$taskName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$4;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$4;->val$taskName:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$4;->val$taskArg:Ljava/lang/Object;

    iput-boolean p4, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$4;->val$keepPortables:Z

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
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/impl/connection/GridClientConnectionResetException;,
            Lorg/apache/ignite/internal/client/GridClientClosedException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$4;->val$taskName:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$4;->val$taskArg:Ljava/lang/Object;

    iget-boolean v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientComputeImpl$4;->val$keepPortables:Z

    invoke-virtual {p1, v0, v1, p2, v2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->execute(Ljava/lang/String;Ljava/lang/Object;Ljava/util/UUID;Z)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v0

    return-object v0
.end method

.class Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$9;
.super Ljava/lang/Object;
.source "GridClientDataImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->metricsAsync()Lorg/apache/ignite/internal/client/GridClientFuture;
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
        "Lorg/apache/ignite/internal/client/GridClientDataMetrics;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$9;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 1
    .param p1, "conn"    # Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;
    .param p2, "affinityNodeId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;",
            "Ljava/util/UUID;",
            ")",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientDataMetrics;",
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
    .line 278
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$9;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    # getter for: Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->access$000(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->cacheMetrics(Ljava/lang/String;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v0

    return-object v0
.end method

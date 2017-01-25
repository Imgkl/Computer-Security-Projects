.class Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$6;
.super Ljava/lang/Object;
.source "GridClientDataImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->removeAllAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientFuture;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

.field final synthetic val$keys:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$6;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$6;->val$keys:Ljava/util/Collection;

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
            "Ljava/lang/Boolean;",
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
    .line 203
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$6;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    # getter for: Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->access$000(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$6;->val$keys:Ljava/util/Collection;

    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$6;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    # getter for: Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->flags:Ljava/util/Set;
    invoke-static {v2}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->access$100(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2, p2}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->cacheRemoveAll(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v0

    return-object v0
.end method

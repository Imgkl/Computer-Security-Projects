.class Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$8;
.super Ljava/lang/Object;
.source "GridClientDataImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/impl/GridClientAbstractProjection$ClientProjectionClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->casAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/client/GridClientFuture;
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

.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$val1:Ljava/lang/Object;

.field final synthetic val$val2:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$8;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    iput-object p2, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$8;->val$key:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$8;->val$val1:Ljava/lang/Object;

    iput-object p4, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$8;->val$val2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/GridClientFuture;
    .locals 7
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
    .line 238
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$8;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    # getter for: Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->cacheName:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->access$000(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$8;->val$key:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$8;->val$val1:Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$8;->val$val2:Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$8;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    # getter for: Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->flags:Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->access$100(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;)Ljava/util/Set;

    move-result-object v5

    move-object v0, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->cacheCompareAndSet(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;

    move-result-object v0

    return-object v0
.end method

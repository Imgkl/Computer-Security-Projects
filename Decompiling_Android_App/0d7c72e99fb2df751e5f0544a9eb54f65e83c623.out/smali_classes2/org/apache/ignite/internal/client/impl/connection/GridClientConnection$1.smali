.class Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection$1;
.super Ljava/lang/Object;
.source "GridClientConnection.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;->cacheGet(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection$1;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lorg/apache/ignite/internal/client/GridClientFuture;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "fut":Lorg/apache/ignite/internal/client/GridClientFuture;, "Lorg/apache/ignite/internal/client/GridClientFuture<Ljava/util/Map<TK;TV;>;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 159
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->firstValue(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.class Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$10;
.super Ljava/lang/Object;
.source "GridClientDataImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClientFutureListener;


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
        "Lorg/apache/ignite/internal/client/GridClientFutureListener",
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
    .line 283
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$10;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lorg/apache/ignite/internal/client/GridClientFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Lorg/apache/ignite/internal/client/GridClientDataMetrics;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "fut":Lorg/apache/ignite/internal/client/GridClientFuture;, "Lorg/apache/ignite/internal/client/GridClientFuture<Lorg/apache/ignite/internal/client/GridClientDataMetrics;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl$10;->this$0:Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;

    invoke-interface {p1}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/client/GridClientDataMetrics;

    # setter for: Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->metrics:Lorg/apache/ignite/internal/client/GridClientDataMetrics;
    invoke-static {v1, v0}, Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;->access$202(Lorg/apache/ignite/internal/client/impl/GridClientDataImpl;Lorg/apache/ignite/internal/client/GridClientDataMetrics;)Lorg/apache/ignite/internal/client/GridClientDataMetrics;
    :try_end_0
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    goto :goto_0
.end method

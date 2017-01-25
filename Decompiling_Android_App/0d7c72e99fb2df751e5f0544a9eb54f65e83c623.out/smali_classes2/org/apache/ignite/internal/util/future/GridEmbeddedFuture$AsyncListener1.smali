.class abstract Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AsyncListener1;
.super Ljava/lang/Object;
.source "GridEmbeddedFuture.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AsyncListener1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteInClosure",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<TB;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;)V
    .locals 0

    .prologue
    .line 233
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AsyncListener1;, "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture<TA;TB;>.AsyncListener1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AsyncListener1;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$1;

    .prologue
    .line 233
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AsyncListener1;, "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture<TA;TB;>.AsyncListener1;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AsyncListener1;-><init>(Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 233
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AsyncListener1;, "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture<TA;TB;>.AsyncListener1;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AsyncListener1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public final apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AsyncListener1;, "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture<TA;TB;>.AsyncListener1;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TB;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AsyncListener1;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteIllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 253
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "ignore":Lorg/apache/ignite/IgniteIllegalStateException;
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Will not execute future listener (grid is stopping): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    .end local v1    # "ignore":Lorg/apache/ignite/IgniteIllegalStateException;
    :catch_1
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AsyncListener1;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 248
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Error;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AsyncListener1;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 251
    throw v0
.end method

.method protected abstract applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TB;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.class abstract Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AL2;
.super Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AsyncListener2;
.source "GridEmbeddedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AL2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture",
        "<TA;TB;>.Async",
        "Listener2;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;)V
    .locals 1

    .prologue
    .line 225
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AL2;, "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture<TA;TB;>.AL2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AL2;->this$0:Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AsyncListener2;-><init>(Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$1;

    .prologue
    .line 225
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AL2;, "Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture<TA;TB;>.AL2;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture$AL2;-><init>(Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;)V

    return-void
.end method
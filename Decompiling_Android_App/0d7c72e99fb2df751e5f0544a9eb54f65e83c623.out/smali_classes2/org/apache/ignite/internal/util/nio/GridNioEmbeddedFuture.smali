.class public Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;
.super Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;
.source "GridNioEmbeddedFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture<TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDone(Lorg/apache/ignite/internal/util/nio/GridNioFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture<TR;>;"
    .local p1, "res":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<TR;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;->onDone(Lorg/apache/ignite/internal/util/nio/GridNioFuture;Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method

.method public onDone(Lorg/apache/ignite/internal/util/nio/GridNioFuture;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lorg/apache/ignite/internal/util/nio/GridNioFuture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture<TR;>;"
    .local p1, "delegate":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<TR;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_0
    if-eqz p2, :cond_1

    .line 54
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 65
    :goto_0
    return-void

    .line 55
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture$1;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;)V

    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture<TR;>;"
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioEmbeddedFuture;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

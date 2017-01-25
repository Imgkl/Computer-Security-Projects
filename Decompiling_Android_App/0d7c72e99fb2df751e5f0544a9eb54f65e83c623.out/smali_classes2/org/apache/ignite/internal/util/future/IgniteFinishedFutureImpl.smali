.class public Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl;
.super Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;
.source "IgniteFinishedFutureImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/IgniteFutureImpl",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl;, "Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl<TV;>;"
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl;, "Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl<TV;>;"
    .local p1, "res":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "err"    # Ljava/lang/Throwable;

    .prologue
    .line 44
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl;, "Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl<TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/future/IgniteFutureImpl;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 45
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl;, "Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl<TV;>;"
    const-class v0, Lorg/apache/ignite/internal/util/future/IgniteFinishedFutureImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

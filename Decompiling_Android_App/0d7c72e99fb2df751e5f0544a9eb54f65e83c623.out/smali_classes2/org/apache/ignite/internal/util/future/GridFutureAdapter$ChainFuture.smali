.class Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ChainFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridFutureAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChainFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private doneCb:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;TT;>;"
        }
    .end annotation
.end field

.field private fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 439
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ChainFuture;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ChainFuture<TR;TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 441
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Lorg/apache/ignite/lang/IgniteClosure;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<TR;>;",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<-",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ChainFuture;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ChainFuture<TR;TT;>;"
    .local p1, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<TR;>;"
    .local p2, "doneCb":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<-Lorg/apache/ignite/internal/IgniteInternalFuture<TR;>;TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 451
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ChainFuture;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 452
    iput-object p2, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ChainFuture;->doneCb:Lorg/apache/ignite/lang/IgniteClosure;

    .line 454
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFutureChainListener;

    invoke-direct {v0, p0, p2}, Lorg/apache/ignite/internal/util/future/GridFutureChainListener;-><init>(Lorg/apache/ignite/internal/util/future/GridFutureAdapter;Lorg/apache/ignite/lang/IgniteClosure;)V

    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 455
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 459
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ChainFuture;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ChainFuture<TR;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChainFuture [orig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ChainFuture;->fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", doneCb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ChainFuture;->doneCb:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

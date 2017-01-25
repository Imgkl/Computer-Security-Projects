.class public Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridWorkerFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private w:Lorg/apache/ignite/internal/util/worker/GridWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    .local p0, "this":Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;, "Lorg/apache/ignite/internal/util/worker/GridWorkerFuture<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;, "Lorg/apache/ignite/internal/util/worker/GridWorkerFuture<TT;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->w:Lorg/apache/ignite/internal/util/worker/GridWorker;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->onCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    .line 40
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->w:Lorg/apache/ignite/internal/util/worker/GridWorker;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/worker/GridWorker;->cancel()V

    .line 42
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setWorker(Lorg/apache/ignite/internal/util/worker/GridWorker;)V
    .locals 1
    .param p1, "w"    # Lorg/apache/ignite/internal/util/worker/GridWorker;

    .prologue
    .line 49
    .local p0, "this":Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;, "Lorg/apache/ignite/internal/util/worker/GridWorkerFuture<TT;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/worker/GridWorkerFuture;->w:Lorg/apache/ignite/internal/util/worker/GridWorker;

    .line 52
    return-void
.end method

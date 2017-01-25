.class Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridContinuousProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private volatile loc:Z

.field private volatile rmt:Z

.field private routineId:Ljava/util/UUID;

.field private volatile timeoutObj:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1699
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1721
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 1723
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "routineId"    # Ljava/util/UUID;

    .prologue
    .line 1729
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 1730
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 1732
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->routineId:Ljava/util/UUID;

    .line 1733
    return-void
.end method


# virtual methods
.method public addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V
    .locals 1
    .param p1, "timeoutObj"    # Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;

    .prologue
    .line 1759
    sget-boolean v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1761
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;

    .line 1763
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 1764
    return-void
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 1699
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->onDone(Ljava/util/UUID;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onDone(Ljava/util/UUID;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "res"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1768
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;

    if-eqz v0, :cond_0

    .line 1769
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->timeoutObj:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 1771
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onLocalRegistered()V
    .locals 1

    .prologue
    .line 1739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->loc:Z

    .line 1741
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->rmt:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1742
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->routineId:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->onDone(Ljava/lang/Object;)Z

    .line 1743
    :cond_0
    return-void
.end method

.method public onRemoteRegistered()V
    .locals 1

    .prologue
    .line 1749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->rmt:Z

    .line 1751
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->loc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1752
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->routineId:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;->onDone(Ljava/lang/Object;)Z

    .line 1753
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1776
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousProcessor$StartFuture;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

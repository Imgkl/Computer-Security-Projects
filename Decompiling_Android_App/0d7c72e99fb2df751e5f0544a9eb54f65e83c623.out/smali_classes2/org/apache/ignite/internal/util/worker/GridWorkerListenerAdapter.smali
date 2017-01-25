.class public Lorg/apache/ignite/internal/util/worker/GridWorkerListenerAdapter;
.super Ljava/lang/Object;
.source "GridWorkerListenerAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/worker/GridWorkerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStarted(Lorg/apache/ignite/internal/util/worker/GridWorker;)V
    .locals 0
    .param p1, "w"    # Lorg/apache/ignite/internal/util/worker/GridWorker;

    .prologue
    .line 27
    return-void
.end method

.method public onStopped(Lorg/apache/ignite/internal/util/worker/GridWorker;)V
    .locals 0
    .param p1, "w"    # Lorg/apache/ignite/internal/util/worker/GridWorker;

    .prologue
    .line 32
    return-void
.end method

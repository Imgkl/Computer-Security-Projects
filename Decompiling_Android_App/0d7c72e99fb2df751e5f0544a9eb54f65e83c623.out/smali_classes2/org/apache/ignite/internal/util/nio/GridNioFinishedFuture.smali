.class public Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;
.super Lorg/apache/ignite/internal/util/future/GridFinishedFuture;
.source "GridNioFinishedFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/nio/GridNioFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/GridFinishedFuture",
        "<TR;>;",
        "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private msgThread:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture<TR;>;"
    .local p1, "res":Ljava/lang/Object;, "TR;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture<TR;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method


# virtual methods
.method public messageThread(Z)V
    .locals 0
    .param p1, "msgThread"    # Z

    .prologue
    .line 46
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture<TR;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;->msgThread:Z

    .line 47
    return-void
.end method

.method public messageThread()Z
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture<TR;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;->msgThread:Z

    return v0
.end method

.method public skipRecovery()Z
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture<TR;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture<TR;>;"
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioFinishedFuture;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

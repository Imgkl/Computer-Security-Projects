.class public Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridNioFutureImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/nio/GridNioFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<TR;>;",
        "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
        "<TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected msgThread:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;, "Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl<TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public messageThread(Z)V
    .locals 0
    .param p1, "msgThread"    # Z

    .prologue
    .line 35
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;, "Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl<TR;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;->msgThread:Z

    .line 36
    return-void
.end method

.method public messageThread()Z
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;, "Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl<TR;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;->msgThread:Z

    return v0
.end method

.method public skipRecovery()Z
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;, "Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl<TR;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;, "Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl<TR;>;"
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioFutureImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

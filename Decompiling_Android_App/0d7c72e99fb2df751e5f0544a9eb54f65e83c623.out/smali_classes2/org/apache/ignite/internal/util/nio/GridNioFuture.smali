.class public interface abstract Lorg/apache/ignite/internal/util/nio/GridNioFuture;
.super Ljava/lang/Object;
.source "GridNioFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/IgniteInternalFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<TR;>;"
    }
.end annotation


# virtual methods
.method public abstract messageThread(Z)V
.end method

.method public abstract messageThread()Z
.end method

.method public abstract skipRecovery()Z
.end method

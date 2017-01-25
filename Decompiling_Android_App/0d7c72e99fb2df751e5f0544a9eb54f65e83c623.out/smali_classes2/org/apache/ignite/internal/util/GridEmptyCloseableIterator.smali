.class public Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;
.super Lorg/apache/ignite/internal/util/GridEmptyIterator;
.source "GridEmptyCloseableIterator.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/GridEmptyIterator",
        "<TT;>;",
        "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    .local p0, "this":Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;, "Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridEmptyIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;, "Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;->closed:Z

    .line 36
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;, "Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator<TT;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/GridEmptyCloseableIterator;->closed:Z

    return v0
.end method

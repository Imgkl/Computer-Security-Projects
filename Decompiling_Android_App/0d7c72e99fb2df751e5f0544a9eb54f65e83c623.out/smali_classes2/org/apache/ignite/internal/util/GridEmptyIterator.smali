.class public Lorg/apache/ignite/internal/util/GridEmptyIterator;
.super Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;
.source "GridEmptyIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    .local p0, "this":Lorg/apache/ignite/internal/util/GridEmptyIterator;, "Lorg/apache/ignite/internal/util/GridEmptyIterator<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNextX()Z
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lorg/apache/ignite/internal/util/GridEmptyIterator;, "Lorg/apache/ignite/internal/util/GridEmptyIterator<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public nextX()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lorg/apache/ignite/internal/util/GridEmptyIterator;, "Lorg/apache/ignite/internal/util/GridEmptyIterator<TT;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iterator is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeX()V
    .locals 2

    .prologue
    .line 44
    .local p0, "this":Lorg/apache/ignite/internal/util/GridEmptyIterator;, "Lorg/apache/ignite/internal/util/GridEmptyIterator<TT;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iterator is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lorg/apache/ignite/internal/util/GridEmptyIterator;, "Lorg/apache/ignite/internal/util/GridEmptyIterator<TT;>;"
    const-class v0, Lorg/apache/ignite/internal/util/GridEmptyIterator;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

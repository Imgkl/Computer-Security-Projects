.class public Lorg/apache/commons/collections/buffer/CircularFifoBuffer;
.super Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;
.source "CircularFifoBuffer.java"


# static fields
.field private static final serialVersionUID:J = -0x74e5fa40e2e0baa6L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;-><init>(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;-><init>(I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .param p1, "coll"    # Ljava/util/Collection;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;-><init>(Ljava/util/Collection;)V

    .line 80
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/CircularFifoBuffer;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/CircularFifoBuffer;->remove()Ljava/lang/Object;

    .line 94
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

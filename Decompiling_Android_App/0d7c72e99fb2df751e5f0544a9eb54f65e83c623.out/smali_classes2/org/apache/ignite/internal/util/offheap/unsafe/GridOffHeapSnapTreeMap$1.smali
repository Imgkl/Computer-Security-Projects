.class final Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap$1;
.super Ljava/lang/Object;
.source "GridOffHeapSnapTreeMap.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSmartPointer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridOffHeapSnapTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrementRefCount()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public incrementRefCount()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public pointer()J
    .locals 1

    .prologue
    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.class Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap$Bin;
.super Ljava/lang/Object;
.source "GridUnsafeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bin"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clear(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V
    .locals 2
    .param p0, "binAddr"    # J
    .param p2, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1485
    const-wide/16 v0, 0x0

    invoke-virtual {p2, p0, p1, v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeLong(JJ)V

    .line 1486
    return-void
.end method

.method static first(JLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)J
    .locals 2
    .param p0, "binAddr"    # J
    .param p2, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1507
    invoke-virtual {p2, p0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->readLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static first(JJLorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;)V
    .locals 0
    .param p0, "binAddr"    # J
    .param p2, "entryAddr"    # J
    .param p4, "mem"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;

    .prologue
    .line 1496
    invoke-virtual {p4, p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMemory;->writeLong(JJ)V

    .line 1497
    return-void
.end method

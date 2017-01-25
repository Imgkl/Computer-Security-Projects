.class public Lorg/apache/ignite/internal/util/offheap/GridOffHeapMapFactory;
.super Ljava/lang/Object;
.source "GridOffHeapMapFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unsafeMap(IFJ)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;
    .locals 10
    .param p0, "concurrency"    # I
    .param p1, "load"    # F
    .param p2, "initCap"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(IFJ)",
            "Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;-><init>(IFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V

    return-object v1
.end method

.method public static unsafeMap(IFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;
    .locals 10
    .param p0, "concurrency"    # I
    .param p1, "load"    # F
    .param p2, "initCap"    # J
    .param p4, "totalMem"    # J
    .param p6, "lruStripes"    # S
    .param p7, "lsnr"    # Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(IFJJS",
            "Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;",
            ")",
            "Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    move v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;-><init>(IFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V

    return-object v1
.end method

.method public static unsafeMap(IJ)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;
    .locals 11
    .param p0, "concurrency"    # I
    .param p1, "initCap"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(IJ)",
            "Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    const/high16 v3, 0x3f400000    # 0.75f

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;-><init>(IFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V

    return-object v1
.end method

.method public static unsafeMap(IJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;
    .locals 11
    .param p0, "concurrency"    # I
    .param p1, "initCap"    # J
    .param p3, "totalMem"    # J
    .param p5, "lruStripes"    # S
    .param p6, "lsnr"    # Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(IJJS",
            "Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;",
            ")",
            "Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    const/high16 v3, 0x3f400000    # 0.75f

    move v2, p0

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;-><init>(IFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V

    return-object v1
.end method

.method public static unsafeMap(J)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;
    .locals 10
    .param p0, "initCap"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(J)",
            "Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    const/16 v2, 0x80

    const/high16 v3, 0x3f400000    # 0.75f

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, p0

    invoke-direct/range {v1 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;-><init>(IFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V

    return-object v1
.end method

.method public static unsafeMap(JJS)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;
    .locals 10
    .param p0, "initCap"    # J
    .param p2, "totalMem"    # J
    .param p4, "lruStripes"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(JJS)",
            "Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    const/16 v2, 0x80

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v9, 0x0

    move-wide v4, p0

    move-wide v6, p2

    move v8, p4

    invoke-direct/range {v1 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;-><init>(IFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V

    return-object v1
.end method

.method public static unsafeMap(JJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap;
    .locals 10
    .param p0, "initCap"    # J
    .param p2, "totalMem"    # J
    .param p4, "lruStripes"    # S
    .param p5, "lsnr"    # Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(JJS",
            "Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;",
            ")",
            "Lorg/apache/ignite/internal/util/offheap/GridOffHeapMap",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;

    const/16 v2, 0x80

    const/high16 v3, 0x3f400000    # 0.75f

    move-wide v4, p0

    move-wide v6, p2

    move v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeMap;-><init>(IFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V

    return-object v1
.end method

.method public static unsafePartitionedMap(IIFJ)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    .locals 11
    .param p0, "parts"    # I
    .param p1, "concurrency"    # I
    .param p2, "load"    # F
    .param p3, "initCap"    # J

    .prologue
    .line 157
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;-><init>(IIFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V

    return-object v0
.end method

.method public static unsafePartitionedMap(IIFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    .locals 11
    .param p0, "parts"    # I
    .param p1, "concurrency"    # I
    .param p2, "load"    # F
    .param p3, "initCap"    # J
    .param p5, "totalMem"    # J
    .param p7, "lruStripes"    # S
    .param p8, "lsnr"    # Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 223
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    move v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;-><init>(IIFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V

    return-object v0
.end method

.method public static unsafePartitionedMap(IIJ)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    .locals 10
    .param p0, "parts"    # I
    .param p1, "concurrency"    # I
    .param p2, "initCap"    # J

    .prologue
    .line 143
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    const/high16 v3, 0x3f400000    # 0.75f

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v1, p0

    move v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;-><init>(IIFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V

    return-object v0
.end method

.method public static unsafePartitionedMap(IIJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    .locals 10
    .param p0, "parts"    # I
    .param p1, "concurrency"    # I
    .param p2, "initCap"    # J
    .param p4, "totalMem"    # J
    .param p6, "lruStripes"    # S
    .param p7, "lsnr"    # Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 205
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    const/high16 v3, 0x3f400000    # 0.75f

    move v1, p0

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;-><init>(IIFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V

    return-object v0
.end method

.method public static unsafePartitionedMap(IJ)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    .locals 11
    .param p0, "parts"    # I
    .param p1, "initCap"    # J

    .prologue
    .line 131
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    const/16 v2, 0x80

    const/high16 v3, 0x3f400000    # 0.75f

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;-><init>(IIFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V

    return-object v0
.end method

.method public static unsafePartitionedMap(IJJS)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    .locals 11
    .param p0, "parts"    # I
    .param p1, "initCap"    # J
    .param p3, "totalMem"    # J
    .param p5, "lruStripes"    # S

    .prologue
    .line 172
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    const/16 v2, 0x80

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v9, 0x0

    move v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;-><init>(IIFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V

    return-object v0
.end method

.method public static unsafePartitionedMap(IJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)Lorg/apache/ignite/internal/util/offheap/GridOffHeapPartitionedMap;
    .locals 11
    .param p0, "parts"    # I
    .param p1, "initCap"    # J
    .param p3, "totalMem"    # J
    .param p5, "lruStripes"    # S
    .param p6, "lsnr"    # Lorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 188
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;

    const/16 v2, 0x80

    const/high16 v3, 0x3f400000    # 0.75f

    move v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafePartitionedMap;-><init>(IIFJJSLorg/apache/ignite/internal/util/offheap/GridOffHeapEvictListener;)V

    return-object v0
.end method

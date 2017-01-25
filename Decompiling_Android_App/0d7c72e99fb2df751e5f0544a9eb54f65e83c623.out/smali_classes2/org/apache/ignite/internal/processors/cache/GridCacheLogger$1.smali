.class final Lorg/apache/ignite/internal/processors/cache/GridCacheLogger$1;
.super Ljava/lang/ThreadLocal;
.source "GridCacheLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/String;",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheLogger$1;->initialValue()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->t2()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

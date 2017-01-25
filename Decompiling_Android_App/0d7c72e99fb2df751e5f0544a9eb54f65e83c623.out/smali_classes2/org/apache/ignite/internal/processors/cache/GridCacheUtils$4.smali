.class final Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$4;
.super Ljava/lang/Object;
.source "GridCacheUtils.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Ljava/lang/Integer;",
        "[",
        "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 127
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$4;->apply(Ljava/lang/Integer;)[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Integer;)[Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .param p1, "size"    # Ljava/lang/Integer;

    .prologue
    .line 129
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

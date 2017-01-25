.class final Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$1;
.super Ljava/lang/ThreadLocal;
.source "GridCacheUtils.java"


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
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$1;->initialValue()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

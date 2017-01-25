.class Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper$1;
.super Ljava/lang/Object;
.source "GridCacheDefaultAffinityKeyMapper.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper$1;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Ljava/lang/reflect/Field;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper$1;->apply(Ljava/lang/reflect/Field;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 55
    const-class v0, Lorg/apache/ignite/cache/affinity/AffinityKeyMapped;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

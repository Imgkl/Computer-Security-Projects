.class Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper$2;
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
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper$2;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 58
    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheDefaultAffinityKeyMapper$2;->apply(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/reflect/Method;)Z
    .locals 4
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 61
    const-class v1, Lorg/apache/ignite/cache/affinity/AffinityKeyMapped;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 63
    .local v0, "ann":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method annotated with @AffinityKeyMapped annotation cannot have parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_0
    const/4 v1, 0x1

    .line 71
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

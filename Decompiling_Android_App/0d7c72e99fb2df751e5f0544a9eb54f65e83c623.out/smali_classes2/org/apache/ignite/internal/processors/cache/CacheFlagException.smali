.class public Lorg/apache/ignite/internal/processors/cache/CacheFlagException;
.super Lorg/apache/ignite/IgniteException;
.source "CacheFlagException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private flags:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "flags":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/processors/cache/CacheFlagException;->message(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheFlagException;->flags:Ljava/util/Collection;

    .line 50
    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V
    .locals 1
    .param p1, "flags"    # [Lorg/apache/ignite/internal/processors/cache/CacheFlag;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/cache/CacheFlagException;-><init>(Ljava/util/Collection;)V

    .line 41
    return-void
.end method

.method private static message(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "flags":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/CacheFlag;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache projection flag violation (if flag is LOCAL, make sure to use peek(..) instead of get(..) methods)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "."

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [flags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public flags()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheFlagException;->flags:Ljava/util/Collection;

    return-object v0
.end method

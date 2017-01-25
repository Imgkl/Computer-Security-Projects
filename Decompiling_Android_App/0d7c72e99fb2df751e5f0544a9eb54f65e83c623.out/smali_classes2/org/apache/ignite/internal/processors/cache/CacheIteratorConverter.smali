.class public abstract Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;
.super Ljava/lang/Object;
.source "CacheIteratorConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;, "Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter<TT;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract convert(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TT;"
        }
    .end annotation
.end method

.method protected abstract remove(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

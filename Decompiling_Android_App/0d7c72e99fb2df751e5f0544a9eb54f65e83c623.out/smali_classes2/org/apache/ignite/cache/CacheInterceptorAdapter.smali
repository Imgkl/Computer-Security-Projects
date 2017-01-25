.class public Lorg/apache/ignite/cache/CacheInterceptorAdapter;
.super Ljava/lang/Object;
.source "CacheInterceptorAdapter.java"

# interfaces
.implements Lorg/apache/ignite/cache/CacheInterceptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/cache/CacheInterceptor",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lorg/apache/ignite/cache/CacheInterceptorAdapter;, "Lorg/apache/ignite/cache/CacheInterceptorAdapter<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterPut(Ljavax/cache/Cache$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/apache/ignite/cache/CacheInterceptorAdapter;, "Lorg/apache/ignite/cache/CacheInterceptorAdapter<TK;TV;>;"
    .local p1, "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    return-void
.end method

.method public onAfterRemove(Ljavax/cache/Cache$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lorg/apache/ignite/cache/CacheInterceptorAdapter;, "Lorg/apache/ignite/cache/CacheInterceptorAdapter<TK;TV;>;"
    .local p1, "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    return-void
.end method

.method public onBeforePut(Ljavax/cache/Cache$Entry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/cache/CacheInterceptorAdapter;, "Lorg/apache/ignite/cache/CacheInterceptorAdapter<TK;TV;>;"
    .local p1, "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    .local p2, "newVal":Ljava/lang/Object;, "TV;"
    return-object p2
.end method

.method public onBeforeRemove(Ljavax/cache/Cache$Entry;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Boolean;",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/cache/CacheInterceptorAdapter;, "Lorg/apache/ignite/cache/CacheInterceptorAdapter<TK;TV;>;"
    .local p1, "entry":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public onGet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/apache/ignite/cache/CacheInterceptorAdapter;, "Lorg/apache/ignite/cache/CacheInterceptorAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    return-object p2
.end method

.class final Lorg/apache/ignite/internal/util/GridStringBuilderFactory$1;
.super Ljava/lang/ThreadLocal;
.source "GridStringBuilderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridStringBuilderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridStringBuilderFactory$1;->initialValue()Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;-><init>(Lorg/apache/ignite/internal/util/GridStringBuilderFactory$1;)V

    return-object v0
.end method

.class final Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy$1;
.super Ljava/lang/Object;
.source "IgniteCacheProxy.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteBiPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

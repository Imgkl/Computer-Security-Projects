.class public final Lorg/apache/ignite/internal/util/GridStringBuilderFactory;
.super Ljava/lang/Object;
.source "GridStringBuilderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;
    }
.end annotation


# static fields
.field private static builders:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lorg/apache/ignite/internal/util/GridStringBuilderFactory$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridStringBuilderFactory$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/util/GridStringBuilderFactory;->builders:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static acquire()Lorg/apache/ignite/internal/util/typedef/internal/SB;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/apache/ignite/internal/util/GridStringBuilderFactory;->builders:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;->acquire()Lorg/apache/ignite/internal/util/typedef/internal/SB;

    move-result-object v0

    return-object v0
.end method

.method public static release(Lorg/apache/ignite/internal/util/typedef/internal/SB;)V
    .locals 1
    .param p0, "builder"    # Lorg/apache/ignite/internal/util/typedef/internal/SB;

    .prologue
    .line 50
    sget-object v0, Lorg/apache/ignite/internal/util/GridStringBuilderFactory;->builders:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;

    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/util/GridStringBuilderFactory$CachedBuilder;->release(Lorg/apache/ignite/internal/util/typedef/internal/SB;)V

    .line 51
    return-void
.end method

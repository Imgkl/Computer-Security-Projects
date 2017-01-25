.class final Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder$1;
.super Ljava/lang/ThreadLocal;
.source "GridToStringBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/Queue",
        "<",
        "Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder$1;->initialValue()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 80
    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;>;"
    new-instance v1, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/tostring/GridToStringThreadLocal;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 82
    return-object v0
.end method

.class Lorg/apache/ignite/internal/util/GridSpinReadWriteLock$1;
.super Ljava/lang/ThreadLocal;
.source "GridSpinReadWriteLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock$1;->this$0:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock$1;->initialValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

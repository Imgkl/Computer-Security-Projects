.class final Lorg/apache/ignite/internal/util/lang/GridFunc$86;
.super Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;
.source "GridFunc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->flat(Ljava/lang/Iterable;)Lorg/apache/ignite/internal/util/lang/GridIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Ljava/lang/Iterable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private more:Z

.field private moved:Z

.field final synthetic val$c:Ljava/lang/Iterable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2913
    const-class v0, Lorg/apache/ignite/internal/util/lang/GridFunc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 1

    .prologue
    .line 2913
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->val$c:Ljava/lang/Iterable;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;-><init>()V

    .line 2915
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->val$c:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->a:Ljava/util/Iterator;

    .line 2921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->moved:Z

    return-void
.end method


# virtual methods
.method public hasNextX()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2927
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->moved:Z

    if-nez v0, :cond_0

    .line 2928
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->more:Z

    .line 2942
    :goto_0
    return v0

    .line 2930
    :cond_0
    iput-boolean v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->moved:Z

    .line 2932
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->b:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2933
    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->more:Z

    move v0, v1

    goto :goto_0

    .line 2935
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2936
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->b:Ljava/util/Iterator;

    .line 2938
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2939
    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->more:Z

    move v0, v1

    goto :goto_0

    .line 2942
    :cond_2
    iput-boolean v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->more:Z

    move v0, v2

    goto :goto_0
.end method

.method public nextX()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2946
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->moved:Z

    .line 2949
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2952
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public removeX()V
    .locals 1

    .prologue
    .line 2956
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->b:Ljava/util/Iterator;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2958
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$86;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2959
    return-void
.end method

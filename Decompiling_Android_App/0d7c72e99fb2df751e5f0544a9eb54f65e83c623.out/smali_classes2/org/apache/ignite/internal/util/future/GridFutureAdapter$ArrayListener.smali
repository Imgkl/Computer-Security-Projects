.class Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;
.super Ljava/lang/Object;
.source "GridFutureAdapter.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteInClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteInClosure",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<TR;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private arr:[Lorg/apache/ignite/lang/IgniteInClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>([Lorg/apache/ignite/lang/IgniteInClosure;)V
    .locals 0
    .param p1, "lsnrs"    # [Lorg/apache/ignite/lang/IgniteInClosure;

    .prologue
    .line 398
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;->arr:[Lorg/apache/ignite/lang/IgniteInClosure;

    .line 400
    return-void
.end method

.method synthetic constructor <init>([Lorg/apache/ignite/lang/IgniteInClosure;Lorg/apache/ignite/internal/util/future/GridFutureAdapter$1;)V
    .locals 0
    .param p1, "x0"    # [Lorg/apache/ignite/lang/IgniteInClosure;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/future/GridFutureAdapter$1;

    .prologue
    .line 388
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener<TR;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;-><init>([Lorg/apache/ignite/lang/IgniteInClosure;)V

    return-void
.end method


# virtual methods
.method add(Lorg/apache/ignite/lang/IgniteInClosure;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteInClosure",
            "<-",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener<TR;>;"
    .local p1, "lsnr":Lorg/apache/ignite/lang/IgniteInClosure;, "Lorg/apache/ignite/lang/IgniteInClosure<-Lorg/apache/ignite/internal/IgniteInternalFuture<TR;>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;->arr:[Lorg/apache/ignite/lang/IgniteInClosure;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;->arr:[Lorg/apache/ignite/lang/IgniteInClosure;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/lang/IgniteInClosure;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;->arr:[Lorg/apache/ignite/lang/IgniteInClosure;

    .line 414
    iget-object v0, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;->arr:[Lorg/apache/ignite/lang/IgniteInClosure;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;->arr:[Lorg/apache/ignite/lang/IgniteInClosure;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 415
    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 388
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener<TR;>;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener<TR;>;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TR;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;->arr:[Lorg/apache/ignite/lang/IgniteInClosure;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 405
    iget-object v1, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;->arr:[Lorg/apache/ignite/lang/IgniteInClosure;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/ignite/lang/IgniteInClosure;->apply(Ljava/lang/Object;)V

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 419
    .local p0, "this":Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener<TR;>;"
    const-class v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;

    const-string v1, "arr"

    iget-object v2, p0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter$ArrayListener;->arr:[Lorg/apache/ignite/lang/IgniteInClosure;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

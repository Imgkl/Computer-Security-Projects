.class final Lorg/apache/ignite/internal/util/lang/GridFunc$26;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Ljava/lang/Runnable;",
        "Lorg/apache/ignite/internal/util/lang/GridAbsClosure;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 302
    check-cast p1, Ljava/lang/Runnable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$26;->apply(Ljava/lang/Runnable;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Runnable;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 304
    invoke-static {p1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->as(Ljava/lang/Runnable;)Lorg/apache/ignite/internal/util/lang/GridAbsClosure;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    const-string v0, "Runnable to absolute closure transformer."

    return-object v0
.end method

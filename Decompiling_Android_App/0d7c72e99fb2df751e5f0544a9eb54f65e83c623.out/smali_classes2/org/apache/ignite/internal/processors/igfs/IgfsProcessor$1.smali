.class final Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor$1;
.super Ljava/lang/Object;
.source "IgfsProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;
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
        "Lorg/apache/ignite/internal/processors/igfs/IgfsContext;",
        "Lorg/apache/ignite/IgniteFileSystem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor$1;->apply(Lorg/apache/ignite/internal/processors/igfs/IgfsContext;)Lorg/apache/ignite/IgniteFileSystem;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/igfs/IgfsContext;)Lorg/apache/ignite/IgniteFileSystem;
    .locals 1
    .param p1, "igfsCtx"    # Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    .prologue
    .line 56
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    move-result-object v0

    return-object v0
.end method

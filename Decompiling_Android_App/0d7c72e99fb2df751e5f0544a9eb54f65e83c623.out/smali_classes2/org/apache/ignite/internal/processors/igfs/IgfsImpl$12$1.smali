.class Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12$1;
.super Ljava/lang/Object;
.source "IgfsImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->call()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Ljava/lang/String;",
        "Lorg/apache/ignite/igfs/IgfsPath;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 898
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12$1;->apply(Ljava/lang/String;)Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/String;)Lorg/apache/ignite/igfs/IgfsPath;
    .locals 2
    .param p1, "e"    # Ljava/lang/String;

    .prologue
    .line 901
    new-instance v0, Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/igfs/IgfsImpl$12;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-direct {v0, v1, p1}, Lorg/apache/ignite/igfs/IgfsPath;-><init>(Lorg/apache/ignite/igfs/IgfsPath;Ljava/lang/String;)V

    return-object v0
.end method

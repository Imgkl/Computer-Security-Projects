.class final Lorg/apache/ignite/internal/util/IgniteUtils$20;
.super Ljava/lang/Object;
.source "IgniteUtils.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/IgniteUtils;->peerDeployAware(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private ldr:Ljava/lang/ClassLoader;

.field final synthetic val$cls:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 5402
    iput-object p1, p0, Lorg/apache/ignite/internal/util/IgniteUtils$20;->val$cls:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public classLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 5411
    iget-object v0, p0, Lorg/apache/ignite/internal/util/IgniteUtils$20;->ldr:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 5412
    iget-object v0, p0, Lorg/apache/ignite/internal/util/IgniteUtils$20;->val$cls:Ljava/lang/Class;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/IgniteUtils;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/IgniteUtils$20;->ldr:Ljava/lang/ClassLoader;

    .line 5414
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/IgniteUtils$20;->ldr:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public deployClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 5407
    iget-object v0, p0, Lorg/apache/ignite/internal/util/IgniteUtils$20;->val$cls:Ljava/lang/Class;

    return-object v0
.end method

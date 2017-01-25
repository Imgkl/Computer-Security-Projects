.class final Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;
.super Ljava/lang/Object;
.source "IgnitionEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/IgnitionEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GridStartContext"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

.field private cfgUrl:Ljava/net/URL;

.field private single:Z

.field private springCtx:Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1088
    const-class v0, Lorg/apache/ignite/internal/IgnitionEx;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/configuration/IgniteConfiguration;Ljava/net/URL;Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;)V
    .locals 1
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;
    .param p2, "cfgUrl"    # Ljava/net/URL;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "springCtx"    # Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    sget-boolean v0, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1110
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    .line 1111
    iput-object p2, p0, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->cfgUrl:Ljava/net/URL;

    .line 1112
    iput-object p3, p0, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->springCtx:Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;

    .line 1113
    return-void
.end method


# virtual methods
.method config()Lorg/apache/ignite/configuration/IgniteConfiguration;
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    return-object v0
.end method

.method config(Lorg/apache/ignite/configuration/IgniteConfiguration;)V
    .locals 0
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;

    .prologue
    .line 1140
    iput-object p1, p0, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->cfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    .line 1141
    return-void
.end method

.method configUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->cfgUrl:Ljava/net/URL;

    return-object v0
.end method

.method configUrl(Ljava/net/URL;)V
    .locals 0
    .param p1, "cfgUrl"    # Ljava/net/URL;

    .prologue
    .line 1154
    iput-object p1, p0, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->cfgUrl:Ljava/net/URL;

    .line 1155
    return-void
.end method

.method public single(Z)V
    .locals 0
    .param p1, "single"    # Z

    .prologue
    .line 1126
    iput-boolean p1, p0, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->single:Z

    .line 1127
    return-void
.end method

.method public single()Z
    .locals 1

    .prologue
    .line 1119
    iget-boolean v0, p0, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->single:Z

    return v0
.end method

.method public springContext()Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lorg/apache/ignite/internal/IgnitionEx$GridStartContext;->springCtx:Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;

    return-object v0
.end method

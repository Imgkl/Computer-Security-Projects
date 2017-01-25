.class public Lorg/apache/ignite/spi/swapspace/SwapContext;
.super Ljava/lang/Object;
.source "SwapContext.java"


# instance fields
.field private clsLdr:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public classLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/apache/ignite/spi/swapspace/SwapContext;->clsLdr:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public classLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "clsLdr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/apache/ignite/spi/swapspace/SwapContext;->clsLdr:Ljava/lang/ClassLoader;

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/apache/ignite/spi/swapspace/SwapContext;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

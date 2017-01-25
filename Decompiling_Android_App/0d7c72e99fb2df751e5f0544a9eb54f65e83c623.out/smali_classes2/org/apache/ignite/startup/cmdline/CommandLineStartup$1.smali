.class final Lorg/apache/ignite/startup/cmdline/CommandLineStartup$1;
.super Ljava/lang/Object;
.source "CommandLineStartup.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/startup/cmdline/CommandLineStartup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bannerUrl:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lorg/apache/ignite/startup/cmdline/CommandLineStartup$1;->val$bannerUrl:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "mtd"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 113
    const-string v0, "Ignite Node"

    iget-object v1, p0, Lorg/apache/ignite/startup/cmdline/CommandLineStartup$1;->val$bannerUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/IgniteVersionUtils;->VER_STR:Ljava/lang/String;

    # getter for: Lorg/apache/ignite/startup/cmdline/CommandLineStartup;->releaseDate:Ljava/util/Date;
    invoke-static {}, Lorg/apache/ignite/startup/cmdline/CommandLineStartup;->access$000()Ljava/util/Date;

    move-result-object v3

    const-string v4, "2015 Copyright(C) Apache Software Foundation"

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->centerShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

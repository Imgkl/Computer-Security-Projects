.class final Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup$1;
.super Ljava/lang/Thread;
.source "GridRouterCommandLineStartup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$routerStartup:Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup$1;->val$routerStartup:Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup$1;->val$routerStartup:Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/client/router/impl/GridRouterCommandLineStartup;->stop()V

    .line 166
    return-void
.end method

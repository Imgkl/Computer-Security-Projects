.class Lcom/julysystems/appx/AppX$1;
.super Ljava/lang/Object;
.source "AppX.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/julysystems/appx/AppX;->handleNotification(Landroid/content/Context;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$pageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/julysystems/appx/AppX$1;->val$pageUrl:Ljava/lang/String;

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/julysystems/appx/AppX$1;->val$pageUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/julysystems/appx/AppX;->loadUrl(Ljava/lang/String;)V

    .line 590
    return-void
.end method

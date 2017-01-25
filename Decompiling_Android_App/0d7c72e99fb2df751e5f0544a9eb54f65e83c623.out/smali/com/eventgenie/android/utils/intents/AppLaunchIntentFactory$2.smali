.class final Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory$2;
.super Ljava/lang/Object;
.source "AppLaunchIntentFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory;->openAppLaunchWidget(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieMobileModule;Lcom/genie_connect/android/db/config/widgets/AppLaunchConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 413
    return-void
.end method

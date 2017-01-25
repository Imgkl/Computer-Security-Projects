.class final Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory$1;
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


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory$1;->val$context:Landroid/content/Context;

    new-instance v1, Lcom/eventgenie/android/utils/intents/IntentFactory;

    iget-object v2, p0, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/eventgenie/android/utils/intents/AppLaunchIntentFactory$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getMarketIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 419
    return-void
.end method

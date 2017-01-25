.class Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment$1;
.super Ljava/lang/Object;
.source "GoogleServicesNeededFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment$1;->this$0:Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment$1;->this$0:Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/eventgenie/android/utils/intents/IntentFactory;

    iget-object v2, p0, Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment$1;->this$0:Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/base/GoogleServicesNeededFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getMarketIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 60
    return-void
.end method

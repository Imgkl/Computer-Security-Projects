.class Lcom/eventgenie/android/activities/others/PreferencesActivity$14;
.super Landroid/content/BroadcastReceiver;
.source "PreferencesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/others/PreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$14;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$14;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->finish()V

    .line 668
    return-void
.end method

.class Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiEventSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity$1;->this$0:Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity$1;->this$0:Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->finish()V

    .line 80
    return-void
.end method

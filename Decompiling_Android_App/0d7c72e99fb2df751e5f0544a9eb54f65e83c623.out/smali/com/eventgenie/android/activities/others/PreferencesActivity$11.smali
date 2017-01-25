.class Lcom/eventgenie/android/activities/others/PreferencesActivity$11;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/PreferencesActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 527
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$11;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$11;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-static {v0}, Lcom/eventgenie/android/utils/intents/Navigation;->goHome(Landroid/app/Activity;)V

    .line 532
    const/4 v0, 0x1

    return v0
.end method

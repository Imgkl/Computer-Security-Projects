.class Lcom/eventgenie/android/activities/others/PreferencesActivity$12;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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

.field final synthetic val$wifiInfoPageId:J


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;J)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$12;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    iput-wide p2, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$12;->val$wifiInfoPageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 542
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$12;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->INFOPAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-wide v4, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$12;->val$wifiInfoPageId:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v5, v3}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    .line 547
    .local v0, "navIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity$12;->this$0:Lcom/eventgenie/android/activities/others/PreferencesActivity;

    invoke-static {v1, v0}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 550
    const/4 v1, 0x1

    return v1
.end method

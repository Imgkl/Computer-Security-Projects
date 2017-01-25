.class public Lcom/eventgenie/android/activities/others/PreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesActivity.java"


# static fields
.field private static final DEV_OPTIONS_CLICK_THRESHOLD:I = 0x5


# instance fields
.field private mAppVersionPreference:Landroid/preference/Preference;

.field private mBeaconScanForeverPreference:Landroid/preference/Preference;

.field private mBuildFlagsPreference:Landroid/preference/Preference;

.field private mCheckNowPreference:Landroid/preference/Preference;

.field public mConfig:Lcom/genie_connect/android/db/config/AppConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCurrentServer:Landroid/preference/Preference;

.field public mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public mDefaultPrefs:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "defaultPrefs"
    .end annotation
.end field

.field private mDevOptionsClickCount:I

.field public mEventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mFireFfqPreference:Landroid/preference/Preference;

.field private mHotspotActionReceiver:Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;

.field private mIsDevEnabled:Z

.field private mIsLoginEnabled:Z

.field private mIsProoferAvailable:Z

.field private mLastCheckedPreference:Landroid/preference/Preference;

.field private mLocaleUsed:Landroid/preference/Preference;

.field private mNotificationLedPreference:Landroid/preference/Preference;

.field private mNotificationSoundPreference:Landroid/preference/Preference;

.field private mNotificationVibratePreference:Landroid/preference/Preference;

.field private mPreferedLanguagePreference:Landroid/preference/ListPreference;

.field private mPrimaryVersionPreference:Landroid/preference/Preference;

.field private mPushEnabledPreference:Landroid/preference/Preference;

.field protected final mReceiverFinishHomeAction:Landroid/content/BroadcastReceiver;

.field private mSecondaryVersionPreference:Landroid/preference/Preference;

.field private mSignInPreference:Landroid/preference/Preference;

.field private mSignOutPreference:Landroid/preference/Preference;

.field private mSignOutProoferPreference:Landroid/preference/Preference;

.field private mUaAlias:Landroid/preference/Preference;

.field private mWifiInformation:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDevOptionsClickCount:I

    .line 664
    new-instance v0, Lcom/eventgenie/android/activities/others/PreferencesActivity$14;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity$14;-><init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mReceiverFinishHomeAction:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/others/PreferencesActivity;)Lcom/genie_connect/android/db/config/AppConfig;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/PreferencesActivity;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/PreferencesActivity;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->reloadActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/others/PreferencesActivity;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/PreferencesActivity;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSignOutProoferPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/others/PreferencesActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/PreferencesActivity;

    .prologue
    .line 103
    iget v0, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDevOptionsClickCount:I

    return v0
.end method

.method static synthetic access$312(Lcom/eventgenie/android/activities/others/PreferencesActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/PreferencesActivity;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iget v0, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDevOptionsClickCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDevOptionsClickCount:I

    return v0
.end method

.method private doBuildInfoStuff()V
    .locals 4

    .prologue
    .line 145
    iget-boolean v2, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mIsDevEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mIsProoferAvailable:Z

    if-eqz v2, :cond_1

    .line 146
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mIsProoferAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " D: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mIsDevEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v2, "\nIFDEFS:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Games: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isGamificationEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mBuildFlagsPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 156
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 153
    :cond_1
    const-string v2, "info_build"

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 154
    .local v0, "category":Landroid/preference/PreferenceCategory;
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mBuildFlagsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private doLoginPrefsStuff()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 160
    const-string/jumbo v5, "user_accounts"

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 162
    .local v0, "accountsCategory":Landroid/preference/PreferenceCategory;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ PREFS: L: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mIsLoginEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ PREFS: P: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mIsProoferAvailable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ PREFS: D: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mIsDevEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 166
    iget-boolean v5, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mIsLoginEnabled:Z

    if-nez v5, :cond_0

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 168
    .local v3, "showUserLoginSection":Z
    :goto_0
    iget-boolean v5, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mIsProoferAvailable:Z

    if-nez v5, :cond_2

    if-nez v3, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string/jumbo v5, "user_accounts"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 170
    .local v1, "cat":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    const-string v4, "^ PREFS: Hiding login section"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 259
    .end local v1    # "cat":Landroid/preference/Preference;
    :goto_1
    return-void

    .end local v3    # "showUserLoginSection":Z
    :cond_1
    move v3, v4

    .line 166
    goto :goto_0

    .line 175
    .restart local v3    # "showUserLoginSection":Z
    :cond_2
    if-eqz v3, :cond_4

    .line 176
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSignInPreference:Landroid/preference/Preference;

    new-instance v6, Lcom/eventgenie/android/activities/others/PreferencesActivity$1;

    invoke-direct {v6, p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity$1;-><init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 184
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSignOutPreference:Landroid/preference/Preference;

    new-instance v6, Lcom/eventgenie/android/activities/others/PreferencesActivity$2;

    invoke-direct {v6, p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity$2;-><init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 221
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v5

    if-nez v5, :cond_3

    .line 222
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSignOutPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 233
    :goto_2
    iget-boolean v5, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mIsProoferAvailable:Z

    if-eqz v5, :cond_6

    .line 234
    invoke-static {p0}, Lcom/genie_connect/android/security/CmsLoginManager;->getCurrentCmsLoginManager(Landroid/content/Context;)Lcom/genie_connect/android/security/CmsLoginManager;

    move-result-object v2

    .line 236
    .local v2, "cmsLogin":Lcom/genie_connect/android/security/CmsLoginManager;
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSignOutProoferPreference:Landroid/preference/Preference;

    new-instance v6, Lcom/eventgenie/android/activities/others/PreferencesActivity$3;

    invoke-direct {v6, p0, v2}, Lcom/eventgenie/android/activities/others/PreferencesActivity$3;-><init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;Lcom/genie_connect/android/security/CmsLoginManager;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 247
    invoke-virtual {v2}, Lcom/genie_connect/android/security/CmsLoginManager;->isCMSUserAuthenticated()Z

    move-result v5

    if-nez v5, :cond_5

    .line 248
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSignOutProoferPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 224
    .end local v2    # "cmsLogin":Lcom/genie_connect/android/security/CmsLoginManager;
    :cond_3
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSignInPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSignOutPreference:Landroid/preference/Preference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Lcom/eventgenie/android/R$string;->label_current_user:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorCredentials()Lcom/genie_connect/android/net/container/LoginCredentials;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/LoginCredentials;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 229
    :cond_4
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSignInPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 230
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSignOutPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 250
    .restart local v2    # "cmsLogin":Lcom/genie_connect/android/security/CmsLoginManager;
    :cond_5
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSignOutProoferPreference:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/eventgenie/android/R$string;->label_current_user:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/genie_connect/android/security/CmsLoginManager;->getCMSUserCredentials()Lcom/genie_connect/android/net/container/LoginCredentials;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/net/container/LoginCredentials;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 257
    .end local v2    # "cmsLogin":Lcom/genie_connect/android/security/CmsLoginManager;
    :cond_6
    iget-object v4, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSignOutProoferPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method private static extractUsefulServerUrlPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 618
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 619
    :cond_0
    const-string p0, ""

    .line 630
    .end local p0    # "url":Ljava/lang/String;
    .local v0, "urlArray":[Ljava/lang/String;
    :goto_0
    return-object p0

    .line 622
    .end local v0    # "urlArray":[Ljava/lang/String;
    .restart local p0    # "url":Ljava/lang/String;
    :cond_1
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 624
    .restart local v0    # "urlArray":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_2

    .line 625
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "https://"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 627
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ PREFS: URL array length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getAppBinaryInfo()Lcom/eventgenie/android/utils/help/BuildInfo;
    .locals 1

    .prologue
    .line 634
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v0

    return-object v0
.end method

.method private getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method private reloadActivity()V
    .locals 1

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    .line 606
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->finish()V

    .line 607
    return-void
.end method

.method private setupPreferedLanguageListPreferenceData(Landroid/preference/ListPreference;)V
    .locals 4
    .param p1, "listPreference"    # Landroid/preference/ListPreference;

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v2

    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getAvailableLocaleLabels(Lcom/genie_connect/android/db/config/AppConfig;)[Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v2

    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getAvailableLocaleValues(Lcom/genie_connect/android/db/config/AppConfig;)[Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 613
    const-string v2, "_default_locale_"

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 614
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 615
    return-void
.end method


# virtual methods
.method public getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 271
    invoke-static {p0, p1, p2}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->doLoginActivityResult(Landroid/app/Activity;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->reloadActivity()V

    .line 274
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 275
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 280
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/eventgenie/android/utils/managers/LocaleManager;->updateLocale(Landroid/content/res/Configuration;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V

    .line 283
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 288
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 289
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v9

    invoke-virtual {v9, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v9, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 292
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 293
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v9, "com.eventgenie.android.FINISH_HOME"

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mReceiverFinishHomeAction:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v6}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 298
    .local v4, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v9

    iget-object v12, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    const/4 v13, 0x0

    invoke-virtual {v12, p0, v13}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v12

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v9, v4, v12, v13}, Lcom/eventgenie/android/utils/managers/LocaleManager;->updateLocale(Landroid/content/res/Configuration;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V

    .line 304
    sget v9, Lcom/eventgenie/android/R$xml;->preferences:I

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->addPreferencesFromResource(I)V

    .line 306
    sget v9, Lcom/eventgenie/android/R$string;->settings_title:I

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->setTitle(I)V

    .line 307
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/AppConfig;->isLoginEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mIsLoginEnabled:Z

    .line 308
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/help/BuildInfo;->isProoferAvailable()Z

    move-result v9

    iput-boolean v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mIsProoferAvailable:Z

    .line 309
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/help/BuildInfo;->isDevModeEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mIsDevEnabled:Z

    .line 311
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDefaultPrefs:Landroid/content/SharedPreferences;

    .line 314
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "check_now"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mCheckNowPreference:Landroid/preference/Preference;

    .line 315
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "last_checked"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mLastCheckedPreference:Landroid/preference/Preference;

    .line 316
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "current_version"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mPrimaryVersionPreference:Landroid/preference/Preference;

    .line 317
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "current_version_secondary"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSecondaryVersionPreference:Landroid/preference/Preference;

    .line 318
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "allow_push"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mPushEnabledPreference:Landroid/preference/Preference;

    .line 319
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "enable_sounds"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mNotificationSoundPreference:Landroid/preference/Preference;

    .line 320
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "enable_vibration"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mNotificationVibratePreference:Landroid/preference/Preference;

    .line 321
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "enable_leds"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mNotificationLedPreference:Landroid/preference/Preference;

    .line 323
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "sign_out"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSignOutPreference:Landroid/preference/Preference;

    .line 324
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "sign_in"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSignInPreference:Landroid/preference/Preference;

    .line 325
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "sign_out_proofer"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSignOutProoferPreference:Landroid/preference/Preference;

    .line 326
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v12, "version_info"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mAppVersionPreference:Landroid/preference/Preference;

    .line 327
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "build_flags"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mBuildFlagsPreference:Landroid/preference/Preference;

    .line 328
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v12, "ua_alias"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mUaAlias:Landroid/preference/Preference;

    .line 329
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "current_server"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mCurrentServer:Landroid/preference/Preference;

    .line 330
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "fire_ffq"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mFireFfqPreference:Landroid/preference/Preference;

    .line 331
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "prefered_language"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mPreferedLanguagePreference:Landroid/preference/ListPreference;

    .line 332
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "locale_used"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mLocaleUsed:Landroid/preference/Preference;

    .line 333
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v12, "wifi_info"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mWifiInformation:Landroid/preference/Preference;

    .line 334
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "beacon_scan_forever"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mBeaconScanForeverPreference:Landroid/preference/Preference;

    .line 336
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mPreferedLanguagePreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v9}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->setupPreferedLanguageListPreferenceData(Landroid/preference/ListPreference;)V

    .line 338
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mNotificationVibratePreference:Landroid/preference/Preference;

    new-instance v12, Lcom/eventgenie/android/activities/others/PreferencesActivity$4;

    invoke-direct {v12, p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity$4;-><init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 357
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mNotificationLedPreference:Landroid/preference/Preference;

    new-instance v12, Lcom/eventgenie/android/activities/others/PreferencesActivity$5;

    invoke-direct {v12, p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity$5;-><init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 370
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mFireFfqPreference:Landroid/preference/Preference;

    new-instance v12, Lcom/eventgenie/android/activities/others/PreferencesActivity$6;

    invoke-direct {v12, p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity$6;-><init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 383
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mAppVersionPreference:Landroid/preference/Preference;

    new-instance v12, Lcom/eventgenie/android/activities/others/PreferencesActivity$7;

    invoke-direct {v12, p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity$7;-><init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 396
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mNotificationSoundPreference:Landroid/preference/Preference;

    new-instance v12, Lcom/eventgenie/android/activities/others/PreferencesActivity$8;

    invoke-direct {v12, p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity$8;-><init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 437
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mPushEnabledPreference:Landroid/preference/Preference;

    new-instance v12, Lcom/eventgenie/android/activities/others/PreferencesActivity$9;

    invoke-direct {v12, p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity$9;-><init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 451
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mCheckNowPreference:Landroid/preference/Preference;

    new-instance v12, Lcom/eventgenie/android/activities/others/PreferencesActivity$10;

    invoke-direct {v12, p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity$10;-><init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 463
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/help/BuildInfo;->isDevModeEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v12, "dev_category"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 465
    .local v1, "cat1":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 467
    const-string v9, "^ PREFS: Development menu unavailable!"

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 470
    .end local v1    # "cat1":Landroid/preference/Preference;
    :cond_0
    invoke-static {}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getAppBinaryInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/help/BuildInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v12, "com.eventgenie.android.devapp"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v12, "ui_preferences"

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 472
    .local v2, "cat2":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 475
    .end local v2    # "cat2":Landroid/preference/Preference;
    :cond_1
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mLocaleUsed:Landroid/preference/Preference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Current Locale: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getCurrentLocale()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\nConfig Locale: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    const/4 v14, 0x0

    invoke-virtual {v13, p0, v14}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v13

    invoke-virtual {v13}, Lcom/genie_connect/android/db/config/AppConfig;->getLocale()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\nLanguage File: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/eventgenie/android/R$string;->language_file:I

    invoke-virtual {p0, v13}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mLastCheckedPreference:Landroid/preference/Preference;

    iget-object v12, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDefaultPrefs:Landroid/content/SharedPreferences;

    const-string v13, "last_checked"

    sget v14, Lcom/eventgenie/android/R$string;->checked_never:I

    invoke-virtual {p0, v14}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 482
    invoke-static {}, Lcom/urbanairship/UAirship;->isFlying()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 483
    invoke-static {p0}, Lcom/eventgenie/android/push/UrbanAirshipControl;->getUrbanAirshipAlias(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "alias":Ljava/lang/String;
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mUaAlias:Landroid/preference/Preference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v0, :cond_2

    const-string v0, "n/a"

    .end local v0    # "alias":Ljava/lang/String;
    :cond_2
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 489
    :goto_0
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/genie_connect/android/net/ReachabilityManager;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->extractUsefulServerUrlPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 490
    .local v7, "server":Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 491
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mCurrentServer:Landroid/preference/Preference;

    invoke-virtual {v9, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 496
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget v12, Lcom/eventgenie/android/R$string;->prefs_current_data_version_title:I

    invoke-virtual {p0, v12}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 497
    .local v5, "dataVersion":Ljava/lang/String;
    invoke-static {p0}, Lcom/genie_connect/android/net/providers/DeltaUtils;->canRecieveUpdates(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 498
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDefaultPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->getCurrentVersionPrefsKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    sget v14, Lcom/eventgenie/android/R$string;->event_packaged_data_version:I

    invoke-virtual {p0, v14}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 504
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    const/4 v13, 0x0

    invoke-virtual {v12, p0, v13}, Lcom/genie_connect/android/db/datastore/Datastore;->getPrimaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 505
    .local v8, "summary":Ljava/lang/String;
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mPrimaryVersionPreference:Landroid/preference/Preference;

    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v9}, Lcom/genie_connect/android/db/datastore/Datastore;->isMultiEventActive()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 508
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget v12, Lcom/eventgenie/android/R$string;->prefs_current_data_version_title:I

    invoke-virtual {p0, v12}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 509
    invoke-static {p0}, Lcom/genie_connect/android/net/providers/DeltaUtils;->canRecieveUpdates(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 510
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDefaultPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->getCurrentVersionPrefsKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "N/A"

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 514
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    const/4 v13, 0x0

    invoke-virtual {v12, p0, v13}, Lcom/genie_connect/android/db/datastore/Datastore;->getSecondaryConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 515
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSecondaryVersionPreference:Landroid/preference/Preference;

    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 520
    :goto_4
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mAppVersionPreference:Landroid/preference/Preference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getAppBinaryInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/eventgenie/android/utils/help/BuildInfo;->getVersionName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getAppBinaryInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/eventgenie/android/utils/help/BuildInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getAppBinaryInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/eventgenie/android/utils/help/BuildInfo;->getVersionCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mPreferedLanguagePreference:Landroid/preference/ListPreference;

    new-instance v12, Lcom/eventgenie/android/activities/others/PreferencesActivity$11;

    invoke-direct {v12, p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity$11;-><init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V

    invoke-virtual {v9, v12}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 537
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/SetupConfig;->getWifiInstructionsInfopage()J

    move-result-wide v10

    .line 538
    .local v10, "wifiInfoPageId":J
    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_8

    .line 539
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mWifiInformation:Landroid/preference/Preference;

    new-instance v12, Lcom/eventgenie/android/activities/others/PreferencesActivity$12;

    invoke-direct {v12, p0, v10, v11}, Lcom/eventgenie/android/activities/others/PreferencesActivity$12;-><init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;J)V

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 559
    :goto_5
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mBeaconScanForeverPreference:Landroid/preference/Preference;

    new-instance v12, Lcom/eventgenie/android/activities/others/PreferencesActivity$13;

    invoke-direct {v12, p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity$13;-><init>(Lcom/eventgenie/android/activities/others/PreferencesActivity;)V

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 571
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->doBuildInfoStuff()V

    .line 572
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->doLoginPrefsStuff()V

    .line 573
    return-void

    .line 486
    .end local v5    # "dataVersion":Ljava/lang/String;
    .end local v7    # "server":Ljava/lang/String;
    .end local v8    # "summary":Ljava/lang/String;
    .end local v10    # "wifiInfoPageId":J
    :cond_3
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mUaAlias:Landroid/preference/Preference;

    const-string v12, "UA is not flying"

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 493
    .restart local v7    # "server":Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mUaAlias:Landroid/preference/Preference;

    const-string v12, "No current server!"

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 500
    .restart local v5    # "dataVersion":Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mCheckNowPreference:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 501
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "LIVE"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 512
    .restart local v8    # "summary":Ljava/lang/String;
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "LIVE"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 517
    :cond_7
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mSecondaryVersionPreference:Landroid/preference/Preference;

    const-string v12, "N/A"

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 554
    .restart local v10    # "wifiInfoPageId":J
    :cond_8
    const-string v9, "advanced_preferences"

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 555
    .local v3, "category":Landroid/preference/PreferenceCategory;
    iget-object v9, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mWifiInformation:Landroid/preference/Preference;

    invoke-virtual {v3, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 556
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "^ PREFS: Hiding Wifi info preference. Id = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_5
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 578
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mReceiverFinishHomeAction:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 579
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 580
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpToDateEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpToDateEvent;

    .prologue
    .line 638
    const-string v1, "^ PREFS: DataUpToDateEvent, data is up to date. displaying toast only."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "last_checked"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 642
    .local v0, "lastCheckedPreference":Landroid/preference/Preference;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/eventgenie/android/eventbus/events/notification/ToastNotificationEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getEventName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->update_msg_up_to_date:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-direct {v2, v3, v4}, Lcom/eventgenie/android/eventbus/events/notification/ToastNotificationEvent;-><init>(Ljava/lang/String;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 645
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;

    .prologue
    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ PREFS: DataUpdateAvailableEvent triggered with the newVersion =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;->getNewVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 656
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 657
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 658
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.eventgenie.android.EXTRA_VERSION"

    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;->getNewVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 661
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/PreferencesActivity;->startActivity(Landroid/content/Intent;)V

    .line 662
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 584
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 585
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->activityPaused()V

    .line 587
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mHotspotActionReceiver:Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 588
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 592
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 593
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->activityResumed()V

    .line 595
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 596
    .local v0, "syncFilter":Landroid/content/IntentFilter;
    const-string v1, "com.eventgenie.android.BROADCAST_VIEW_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 597
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mHotspotActionReceiver:Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;

    if-nez v1, :cond_0

    .line 598
    new-instance v1, Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mHotspotActionReceiver:Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;

    .line 600
    :cond_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/PreferencesActivity;->mHotspotActionReceiver:Lcom/genie_connect/android/bl/hotspots/HotspotActionBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 601
    return-void
.end method

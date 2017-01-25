.class public final Lcom/genie_connect/android/db/config/SetupConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "SetupConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;
    }
.end annotation


# static fields
.field private static final TWITTER_FALLBACK_KEY:Ljava/lang/String; = "0cix5Si6KRau9cDruTZBg"

.field private static final TWITTER_FALLBACK_SECRET:Ljava/lang/String; = "vlZEFLEq8wo1TteOG4aNL6MCf1EOuMIoAabQwKlcG9A"


# instance fields
.field private final mAppXClientId:Ljava/lang/String;

.field private final mAppXSecretKey:Ljava/lang/String;

.field private final mContinueAsGuestEnabled:Z

.field private final mEmspApiDomain:Ljava/lang/String;

.field private final mEmspAuthToken:Ljava/lang/String;

.field private final mEventExpiryDate:Ljava/util/Date;

.field private final mEventExpiryMessage:Ljava/lang/String;

.field private final mEventTimeZone:Ljava/lang/String;

.field private final mFavouritesEnabled:Z

.field private final mFeedbackEmail:Ljava/lang/String;

.field private final mForgottenPasswordEnabled:Z

.field private final mIsDesignerLayout:Ljava/lang/Boolean;

.field private final mIsNewTagsForSessions:Z

.field private final mLocale:Ljava/lang/String;

.field private final mLoginEnabled:Z

.field private final mManageTimeFormat:I

.field private final mNewSponsorship:Z

.field private final mNotesEnabled:Z

.field private final mPleaseRegisterEnabled:Z

.field private final mRegistrationUrl:Ljava/lang/String;

.field private final mSecureApp:Z

.field private final mSecureFavourites:Z

.field private final mSsoConfig:Lcom/genie_connect/android/db/config/SsoConfig;

.field private final mTwitterKey:Ljava/lang/String;

.field private final mTwitterSecret:Ljava/lang/String;

.field private final mUrbanAirshipAppSecret:Ljava/lang/String;

.field private final mUrbanAirshipKey:Ljava/lang/String;

.field private final mUrbanAirshipMasterSecret:Ljava/lang/String;

.field private final mUseEventSelectorAsHomescreen:Z

.field private final mWifiAndroidBeheviour:Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

.field private final mWifiInstructionsInfopage:J

.field private final mWifiSettings:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 56
    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->NONE:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v1, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 57
    const-string v1, "setup"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 60
    .local v0, "configSetup":Lorg/json/JSONObject;
    const-string/jumbo v1, "urbanAirshipMasterSecret"

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mUrbanAirshipMasterSecret:Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "urbanAirshipAppSecret"

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mUrbanAirshipAppSecret:Ljava/lang/String;

    .line 62
    const-string/jumbo v1, "urbanAirshipKey"

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mUrbanAirshipKey:Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "twitterKey"

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mTwitterKey:Ljava/lang/String;

    .line 64
    const-string/jumbo v1, "twitterSecret"

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mTwitterSecret:Ljava/lang/String;

    .line 67
    const-string/jumbo v1, "timeZone"

    const-string v2, "UTC"

    invoke-static {v0, v1, v2}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mEventTimeZone:Ljava/lang/String;

    .line 68
    const-string v1, "isDesignerLayout"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mIsDesignerLayout:Ljava/lang/Boolean;

    .line 69
    const-string v1, "isNewTagsForSessions"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mIsNewTagsForSessions:Z

    .line 70
    const-string v1, "isSecureApp"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mSecureApp:Z

    .line 71
    const-string v1, "isSecureFavourites"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mSecureFavourites:Z

    .line 72
    const-string v1, "feedbackEmail"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mFeedbackEmail:Ljava/lang/String;

    .line 73
    const-string v1, "isFavouritesEnabled"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mFavouritesEnabled:Z

    .line 74
    const-string/jumbo v1, "useEventSelectorAsHomescreen"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mUseEventSelectorAsHomescreen:Z

    .line 75
    const-string v1, "isNewSponsorship"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mNewSponsorship:Z

    .line 76
    const-string v1, "isPleaseRegisterEnabled"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mPleaseRegisterEnabled:Z

    .line 77
    const-string v1, "isContinueAsGuestEnabled"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mContinueAsGuestEnabled:Z

    .line 78
    const-string v1, "isLoginEnabled"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mLoginEnabled:Z

    .line 79
    const-string v1, "locale"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mLocale:Ljava/lang/String;

    .line 80
    const-string v1, "registrationUrl"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mRegistrationUrl:Ljava/lang/String;

    .line 81
    const-string v1, "isForgottenPasswordEnabled"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mForgottenPasswordEnabled:Z

    .line 82
    const-string v1, "isNotesEnabled"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mNotesEnabled:Z

    .line 83
    const-string v1, "appXClientId"

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mAppXClientId:Ljava/lang/String;

    .line 84
    const-string v1, "appXSecretKey"

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mAppXSecretKey:Ljava/lang/String;

    .line 85
    const-string v1, "eventExpiryDate"

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertJsonStringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mEventExpiryDate:Ljava/util/Date;

    .line 86
    const-string v1, "eventExpiryMessage"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mEventExpiryMessage:Ljava/lang/String;

    .line 87
    new-instance v1, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    const-string/jumbo v2, "wifiSsid"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wifiPassword"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wifiSecurity"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->fromInt(I)Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;)V

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mWifiSettings:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    .line 91
    const-string/jumbo v1, "wifiAndroidBehaviour"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;->fromInt(I)Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mWifiAndroidBeheviour:Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    .line 92
    const-string/jumbo v1, "wifiInstructionsInfoPage"

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/config/SetupConfig;->optNestedEntityId(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mWifiInstructionsInfopage:J

    .line 93
    const-string v1, "emspApiDomain"

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mEmspApiDomain:Ljava/lang/String;

    .line 94
    const-string v1, "emspAuthToken"

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mEmspAuthToken:Ljava/lang/String;

    .line 95
    const-string v1, "manageTimeFormat"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mManageTimeFormat:I

    .line 97
    new-instance v1, Lcom/genie_connect/android/db/config/SsoConfig;

    const-string v2, "ssoConfig"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/SsoConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mSsoConfig:Lcom/genie_connect/android/db/config/SsoConfig;

    .line 99
    return-void
.end method


# virtual methods
.method public getAppXClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mAppXClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppXSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mAppXSecretKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEmspApiDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mEmspApiDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getEmspAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mEmspAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getEventExpiryDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mEventExpiryDate:Ljava/util/Date;

    return-object v0
.end method

.method public getEventExpiryMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mEventExpiryMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mEventTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedbackEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mFeedbackEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getManageTimeFormat()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mManageTimeFormat:I

    return v0
.end method

.method public getRegistrationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mRegistrationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSsoConfig()Lcom/genie_connect/android/db/config/SsoConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mSsoConfig:Lcom/genie_connect/android/db/config/SsoConfig;

    return-object v0
.end method

.method public getTwitterKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mTwitterKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mTwitterKey:Ljava/lang/String;

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0cix5Si6KRau9cDruTZBg"

    goto :goto_0
.end method

.method public getTwitterSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mTwitterSecret:Ljava/lang/String;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mTwitterSecret:Ljava/lang/String;

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "vlZEFLEq8wo1TteOG4aNL6MCf1EOuMIoAabQwKlcG9A"

    goto :goto_0
.end method

.method public getUrbanAirshipAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mUrbanAirshipAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getUrbanAirshipKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mUrbanAirshipKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUrbanAirshipMasterSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mUrbanAirshipMasterSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getWiFiAndroidBehaviour()Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mWifiAndroidBeheviour:Lcom/genie_connect/android/db/config/SetupConfig$WiFiAndroidBehaviour;

    return-object v0
.end method

.method public getWifiInstructionsInfopage()J
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mWifiInstructionsInfopage:J

    return-wide v0
.end method

.method public getWifiNetworkSettings()Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mWifiSettings:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    return-object v0
.end method

.method public hasEventExpired()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 203
    iget-object v1, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mEventExpiryDate:Ljava/util/Date;

    if-nez v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 204
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mEventExpiryDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isContinueAsGuestEnabled()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mContinueAsGuestEnabled:Z

    return v0
.end method

.method public isDesignerLayout()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mIsDesignerLayout:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isFavouritesEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mFavouritesEnabled:Z

    return v0
.end method

.method public isForgottenPasswordEnabled()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mForgottenPasswordEnabled:Z

    return v0
.end method

.method public isLoginEnabled()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mLoginEnabled:Z

    return v0
.end method

.method public isNewSponsorship()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mNewSponsorship:Z

    return v0
.end method

.method public isNewTagsForSessions()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mIsNewTagsForSessions:Z

    return v0
.end method

.method public isNotesEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mNotesEnabled:Z

    return v0
.end method

.method public isPleaseRegisterEnabled()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mPleaseRegisterEnabled:Z

    return v0
.end method

.method public isSecureApp()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mContinueAsGuestEnabled:Z

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x0

    .line 268
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mSecureApp:Z

    goto :goto_0
.end method

.method public isSecureFavourites()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mSecureFavourites:Z

    return v0
.end method

.method public isUseEventSelectorAsHomescreen()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/SetupConfig;->mUseEventSelectorAsHomescreen:Z

    return v0
.end method

.class public Lcom/eventgenie/android/activities/developer/TokenReplacementTest;
.super Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;
.source "TokenReplacementTest.java"


# static fields
.field private static final INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sput-object v0, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;-><init>()V

    return-void
.end method

.method private populate()V
    .locals 6

    .prologue
    .line 30
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v1

    .line 32
    .local v1, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    if-nez v1, :cond_0

    .line 33
    const-string v3, "No visitor record! -- Not Logged in!"

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->appendBold(Ljava/lang/String;)V

    .line 38
    :goto_0
    new-instance v2, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;

    const-string v3, "Sample SSID"

    const-string v4, "Sample Password"

    sget-object v5, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;->WPA:Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;

    invoke-direct {v2, v3, v4, v5}, Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/utils/helper/WifiNetworkSettings$WiFiSecurity;)V

    .line 40
    .local v2, "wifi":Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;
    new-instance v0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;-><init>(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)V

    .line 41
    .local v0, "rep":Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->appendSectionLine()V

    .line 42
    const-string v3, "The following should remain unreplaced"

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->append(Ljava/lang/String;)V

    .line 43
    const-string v3, "##ENTITY_ID##"

    const-string v4, "##ENTITY_ID##"

    invoke-static {v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v3, "##ENTITY_TITLE##"

    const-string v4, "##ENTITY_TITLE##"

    invoke-static {v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->appendSectionLine()V

    .line 46
    const-string v3, "These should always be replaced"

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->append(Ljava/lang/String;)V

    .line 47
    const-string v3, "##VISITOR_EMAIL##"

    const-string v4, "##VISITOR_EMAIL##"

    invoke-static {v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v3, "##VISITOR_FAX##"

    const-string v4, "##VISITOR_FAX##"

    invoke-static {v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v3, "##VISITOR_ID##"

    const-string v4, "##VISITOR_ID##"

    invoke-static {v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v3, "##VISITOR_IMPORTKEY##"

    const-string v4, "##VISITOR_IMPORTKEY##"

    invoke-static {v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "##VISITOR_NAME##"

    const-string v4, "##VISITOR_NAME##"

    invoke-static {v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v3, "##VISITOR_USERNAME##"

    const-string v4, "##VISITOR_USERNAME##"

    invoke-static {v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "##WIFI_SSID##"

    const-string v4, "##WIFI_SSID##"

    invoke-static {v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v3, "##WIFI_PASSWORD##"

    const-string v4, "##WIFI_PASSWORD##"

    invoke-static {v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v3, "##WIFI_SECURITY##"

    const-string v4, "##WIFI_SECURITY##"

    invoke-static {v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->writeToTextView()V

    .line 59
    return-void

    .line 35
    .end local v0    # "rep":Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;
    .end local v2    # "wifi":Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;
    :cond_0
    const-string v3, "Visitor record found!"

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->appendBold(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getInternalSecurityGroupRequirement()Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-object v0
.end method

.method protected getMinimumLabelCharCount()I
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x14

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/developer/BaseTextOnlyDebugScreen;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    const-string v1, "Token Replacement"

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/TokenReplacementTest;->populate()V

    .line 27
    return-void
.end method
